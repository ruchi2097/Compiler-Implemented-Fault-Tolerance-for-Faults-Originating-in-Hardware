#include <fstream>
#include <memory>
#include <algorithm>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <set>
#include <vector>
#include <utility>

#include "llvm-c/Core.h"

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/Bitcode/BitcodeReader.h"
#include "llvm/ADT/StringSet.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/LinkAllPasses.h"
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Analysis/InstructionSimplify.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/IR/PassManager.h"
// #include "llvm/Analysis/CGSCCAnalysisManager.h"
// #include "llvm/Analysis/ModuleAnalysisManager.h"

using namespace llvm;
using namespace std;

static LLVMContext Context;

LLVMContext &getGlobalContext()
{
  return Context;
}

static void SoftwareFaultTolerance(Module *);

static void print_csv_file(std::string outputfile);

static cl::opt<std::string>
    InputFilename(cl::Positional, cl::desc("<input bitcode>"), cl::Required, cl::init("-"));

static cl::opt<std::string>
    OutputFilename(cl::Positional, cl::desc("<output bitcode>"), cl::Required, cl::init("out.bc"));

static cl::opt<bool>
    NoSWFT("no-swft",
           cl::desc("Do not perform SWFT."),
           cl::init(false));

static cl::opt<bool>
    Verbose("verbose",
            cl::desc("Verbose stats."),
            cl::init(false));

static cl::opt<bool>
    NoCheck("no",
            cl::desc("Do not check for valid IR."),
            cl::init(false));

// Use this to enable your bonus code
static cl::opt<bool>
    Bonus("bonus",
          cl::desc("Run the bonus code."),
          cl::init(false));

// Use these to control whether or not parts of your pass run
static cl::opt<bool>
    NoReplicate("no-replicate",
                cl::desc("Do not perform code replication."),
                cl::init(false));

static cl::opt<bool>
    NoControlProtection("no-control-protection",
                        cl::desc("Do not perform control flow protection."),
                        cl::init(false));

void RunO2(Module *M);
void BuildHelperFunctions(Module *);
void summarize(Module *M);
FunctionCallee AssertFT;
FunctionCallee AssertCFG;

int main(int argc, char **argv)
{
  // Parse command line arguments
  cl::ParseCommandLineOptions(argc, argv, "llvm system compiler\n");

  // Handle creating output files and shutting down properly
  llvm_shutdown_obj Y; // Call llvm_shutdown() on exit.

  // LLVM idiom for constructing output file.
  std::unique_ptr<ToolOutputFile> Out;
  std::string ErrorInfo;
  std::error_code EC;
  Out.reset(new ToolOutputFile(OutputFilename.c_str(), EC,
                               sys::fs::OF_None));

  EnableStatistics();

  // Read in module
  SMDiagnostic Err;
  std::unique_ptr<Module> M;
  M = parseIRFile(InputFilename, Err, Context);

  // If errors, fail
  if (M.get() == 0)
  {
    Err.print(argv[0], errs());
    return 1;
  }

  // Run O2 optimizations
  RunO2(M.get());

  BuildHelperFunctions(M.get());

  if (!NoSWFT)
  {
    SoftwareFaultTolerance(M.get());
  }

  // Collect statistics on Module
  summarize(M.get());
  print_csv_file(OutputFilename);

  if (Verbose)
    PrintStatistics(errs());

  // Verify integrity of Module, do this by default
  if (!NoCheck)
  {
    legacy::PassManager Passes;
    Passes.add(createVerifierPass());
    Passes.run(*M.get());
  }

  // Write final bitcode
  WriteBitcodeToFile(*M.get(), Out->os());
  Out->keep();

  return 0;
}

static void print_csv_file(std::string outputfile)
{
  std::ofstream stats(outputfile + ".stats");
  auto a = GetStatistics();
  for (auto p : a)
  {
    stats << p.first.str() << "," << p.second << std::endl;
  }
  stats.close();
}

// Collect this statistic; increment for each instruction you add.
static llvm::Statistic SWFTAdded = {"", "SWFTadd", "SWFT added instructions"};

bool CloneValid(Instruction *I)
{
  bool lCloneAllowed = true; // Check wether we can clone the instructions or not
  if (isa<StoreInst>(I) ||
      isa<CallInst>(I) ||
      isa<AllocaInst>(I) ||
      isa<BranchInst>(I) ||
      isa<IndirectBrInst>(I) ||
      isa<SwitchInst>(I) ||
      isa<ReturnInst>(I) ||
      isa<UnreachableInst>(I))
    lCloneAllowed = false;

  return lCloneAllowed;
}

// Function to generate a unique ID
uint32_t generateUniqueId()
{
  static uint32_t counter = 0;
  return ++counter;
}

std::map<Instruction *, Instruction *> cloneMap;
std::map<BasicBlock *, int> BlockMap;
std::map<BasicBlock *, Value *> DiffMap;
std::map<BasicBlock *, Value *> DestMap;

void CallToAssert(Module *M);

void duplicateOperands(Instruction *clone)
{
  Instruction *c = clone;
  unsigned int num = c->getNumOperands(); // Find the number of operands in cloned instruction
  for (int i = 0; i < num; i++)
  {
    Value *Operand = c->getOperand(i); // Get each operand
    if (Instruction *operandInst = dyn_cast<Instruction>(Operand))
    { // Check if the operand is type of instruction
      if (cloneMap.count(operandInst))
      {                                          // Check if that instruction exists in clone map
        c->setOperand(i, cloneMap[operandInst]); // Change original operands
      }
    }
  }
}

void CFGVerification(Module *M, Function *F)
{

  for (BasicBlock &bb : *F)
  {
    BasicBlock *BB = &bb;
    IRBuilder<> startbuilder(BB);

    BasicBlock::iterator it(BB->begin());
    startbuilder.SetInsertPoint(BB, it);

    if (BB->isEntryBlock())
    {
      DestMap[BB] = startbuilder.getInt32(BlockMap[BB]); // For the entry block, no dest and diff phi nodes will be inserted
    }
    else
    {
      PHINode *Diff = startbuilder.CreatePHI(IntegerType::get(Context, 32), 0, "Diff_phi");
      SWFTAdded++;
      PHINode *Dest = startbuilder.CreatePHI(IntegerType::get(Context, 32), 0, "Dest_phi");
      SWFTAdded++;

      Instruction *NonPhi = BB->getFirstNonPHI(); // All the rest instructions should be added after phi nodes
      it = BasicBlock::iterator(NonPhi);          // So update the iterator
      if (it != BB->end())
      {
        startbuilder.SetInsertPoint(BB, it);
      }

      Value *NextDest = startbuilder.CreateXor(Diff, Dest); // The correct destination will be created by xoring current destination and diff
      SWFTAdded++;
      Value *icmpResult = startbuilder.CreateICmpEQ(NextDest, startbuilder.getInt32(BlockMap[BB])); // Both arguments should be integers
      SWFTAdded++;
      Value *zextResult = startbuilder.CreateZExt(icmpResult, IntegerType::get(Context, 32)); // Insert zext instruction after icmp instruction
      SWFTAdded++;

      std::vector<Value *> args; // Now call assert_cfg_ft that checks assertion for cfg
      args.push_back(zextResult);
      args.push_back(NextDest);
      args.push_back(startbuilder.getInt32(0));
      Function *Fi = M->getFunction("assert_cfg_ft");
      startbuilder.CreateCall(Fi, args);
      SWFTAdded++;
      DestMap[BB] = NextDest;
    }

    // Now at the end we have to calculate predicate that decides which block to jump to and then find the difference that will be used in next block
    IRBuilder<> endbuilder(BB);
    Instruction *lastInst = BB->getTerminator();
    endbuilder.SetInsertPoint(lastInst);

    Value *select;
    Value *NextDiff;

    BranchInst *branchInst = dyn_cast<BranchInst>(lastInst);
    if (branchInst)
    {
      // Handle branch instruction
      if (branchInst->isConditional())
      {
        // Conditional branch
        Value *condition = branchInst->getCondition();
        BasicBlock *trueBlock = branchInst->getSuccessor(0);
        BasicBlock *falseBlock = branchInst->getSuccessor(1);
        select = endbuilder.CreateSelect(condition, endbuilder.getInt32(BlockMap[trueBlock]), endbuilder.getInt32(BlockMap[falseBlock]));
        SWFTAdded++;
        NextDiff = endbuilder.CreateXor(endbuilder.getInt32(BlockMap[BB]), select);
        SWFTAdded++;
        DiffMap[BB] = NextDiff;
      }
      else
      {
        // Unconditional branch
        BasicBlock *trueBlock = branchInst->getSuccessor(0);
        NextDiff = endbuilder.CreateXor(endbuilder.getInt32(BlockMap[BB]), endbuilder.getInt32(BlockMap[trueBlock]));
        SWFTAdded++;
        DiffMap[BB] = NextDiff;
      }
    }
    else
    {
      // Handle switch instruction
      SwitchInst *switchInst = dyn_cast<SwitchInst>(lastInst);
      if (switchInst)
      {
        Value *condition = switchInst->getCondition();
        BasicBlock *defaultBlock = switchInst->getDefaultDest();
        select = endbuilder.getInt32(BlockMap[defaultBlock]); // Default value for the switch

        // Iterate over each case in the switch
        for (auto &caseIt : switchInst->cases())
        {
          ConstantInt *caseValue = caseIt.getCaseValue();
          BasicBlock *caseBlock = caseIt.getCaseSuccessor();
          // Create a select instruction for this case
          Value *caseSelect = endbuilder.CreateSelect(
              endbuilder.CreateICmpEQ(condition, caseValue),
              endbuilder.getInt32(BlockMap[caseBlock]),
              select);
          SWFTAdded++;
          SWFTAdded++;
          select = caseSelect; // Update select for the next iteration
        }

        // XOR operation with the final select value to find diff used by next node
        NextDiff = endbuilder.CreateXor(endbuilder.getInt32(BlockMap[BB]), select);
        SWFTAdded++;
        DiffMap[BB] = NextDiff;
      }
    }
  }
}

// This function is used to supply phi arguments for control flow graph - dest and diff nodes
void SupplyPhiArguments(Function *F)
{
  for (BasicBlock &bb : *F)
  {
    BasicBlock *BB = &bb;
    if (BB->isEntryBlock())
      continue;

    Instruction *Diff = &(bb.front());       // Diff node is inserted at the begining
    Instruction *Dest = Diff->getNextNode(); // Dest node was inserted after phi node
    if (PHINode *DiffPhi = dyn_cast<PHINode>(Diff))
    {
      for (BasicBlock *Pred : predecessors(BB)) // Find all the predecessor, to give blocks for phi arguments
      {
        DiffPhi->addIncoming(DiffMap[Pred], Pred); // Find corresponding value of this blocks from the map
      }
    }
    if (PHINode *DestPhi = dyn_cast<PHINode>(Dest))
    {
      for (BasicBlock *Pred : predecessors(BB))
      {
        DestPhi->addIncoming(DestMap[Pred], Pred);
      }
    }
  }
}

void ReplicateCodeInsideFunction(Function *F)
{
  cloneMap.clear();
  for (BasicBlock &BB : *F)
  { // Iterate over the basic blocks
    BlockMap[&BB] = generateUniqueId();
    for (Instruction &inst : BB)
    { // Iterate over all instrcutions
      if (CloneValid(&inst))
      {                                    // For each instruction check if it can be cloned
        Instruction *clone = inst.clone(); // Clone the instruction
        clone->insertBefore(&inst);        // Insert the cloned instruction before original instruction
        cloneMap[&inst] = clone;           // Store cloned instruction corresponding to original in clone map
      }
    }
  }
}

void HandlePhi(Module *M, Instruction *I)
{
  Instruction *prev = I;
  Instruction *c = I;
  Instruction *original = I->getNextNode();
  while (isa<PHINode>(I))
  {
    prev = I;
    I = I->getNextNode();
  }
  BasicBlock *BB = prev->getParent();
  BasicBlock::iterator it(prev);
  it++;
  IRBuilder<> builder(BB, it);

  if ((original->getType()->isIntegerTy() && c->getType()->isIntegerTy()) || (original->getType()->isPointerTy() && c->getType()->isPointerTy()))
  {

    Value *icmpResult = builder.CreateICmpEQ(original, c); // Build icmp instruction to compare original and clone
    SWFTAdded++;
    Value *zextResult = builder.CreateZExt(icmpResult, IntegerType::get(c->getContext(), 32)); // Insert zext instruction after icmp instruction
    SWFTAdded++;

    std::vector<Value *> args;
    args.push_back(zextResult);
    args.push_back(builder.getInt32(1));
    Function *Fi = M->getFunction("assert_ft");
    builder.CreateCall(Fi, args);
    SWFTAdded++;
  }
  else
    return;
}

void CallToAssert(Module *M)
{
  // After all instructions and their operands are cloned, add icmp instructions
  for (auto &clone : cloneMap)
  {

    Instruction *c = clone.second;
    Instruction *original = clone.first;
    duplicateOperands(c);
    if (isa<PHINode>(c))
    {
      HandlePhi(M, c); // If the instruction is phi node, take care all phi nodes are clubbed together
    }
    else
    {
      BasicBlock *BB = original->getParent();
      BasicBlock::iterator it(original);
      it++;
      IRBuilder<> builder(BB, it);

      if ((original->getType()->isIntegerTy() && c->getType()->isIntegerTy()) || // Perform comparison only for integer and pointer types
          (original->getType()->isPointerTy() && c->getType()->isPointerTy()))
      {

        Value *icmpResult = builder.CreateICmpEQ(original, c); // Build icmp instruction to compare original and clone
        SWFTAdded++;
        Value *zextResult = builder.CreateZExt(icmpResult, IntegerType::get(c->getContext(), 32)); // Insert zext instruction after icmp instruction
        SWFTAdded++;

        std::vector<Value *> args; // call assert_ft function that will give assert failure if test during fault injection fails
        args.push_back(zextResult);
        args.push_back(builder.getInt32(1));
        Function *Fi = M->getFunction("assert_ft");
        builder.CreateCall(Fi, args);
        SWFTAdded++;
      }
      else
        continue;
    }
  }
}

static void SoftwareFaultTolerance(Module *M)
{
  Module::FunctionListType &list = M->getFunctionList();

  std::vector<Function *> flist;
  // FIND THE ASSERT FUNCTIONS AND DO NOT INSTRUMENT THEM
  for (Module::FunctionListType::iterator it = list.begin(); it != list.end(); it++)
  {
    Function *fptr = &*it;
    if (fptr->size() > 0 && fptr != AssertFT.getCallee() && fptr != AssertCFG.getCallee())
      flist.push_back(fptr);
  }

  // PROTECT CODE IN EACH FUNCTION
  for (std::vector<Function *>::iterator it = flist.begin(); it != flist.end(); it++)
  {
    // CALL A FUNCTION TO REPLICATE CODE in *it
    // Replicate the code and duplicate the operands

    ReplicateCodeInsideFunction(*it);
    CallToAssert(M);

    // Perform control flow testing
    CFGVerification(M, *it);
    SupplyPhiArguments(*it);
  }
}
