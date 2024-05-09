; ModuleID = 'bh-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.datapoints = type { [3 x double], [3 x double], ptr, ptr }
%struct.tree = type { [3 x double], double, ptr, [64 x ptr], [64 x ptr] }
%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, ptr, ptr }
%struct.hgstruct = type { ptr, [3 x double], double, [3 x double] }
%struct.cnode = type { i16, double, [3 x double], i32, i32, [8 x ptr], ptr }
%struct.node = type { i16, double, [3 x double], i32, i32 }
%struct.tms = type { i64, i64, i64, i64 }

@__NumNodes = dso_local local_unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [27 x i8] c"nbody = %d, numnodes = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Bodies per %d = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Assertion Failure #%d\00", align 1
@cp_free_list = dso_local local_unnamed_addr global ptr null, align 8
@bp_free_list = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"testdata: not enough memory\0A\00", align 1
@root = dso_local local_unnamed_addr global ptr null, align 8
@rmin = dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@rsize = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@arg1 = dso_local local_unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"times() call failed\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.8 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@nbody = dso_local local_unnamed_addr global i32 0, align 4
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @dealwithargs(i32 noundef %0, ptr noundef %1)
  %4 = load i32, ptr @nbody, align 4
  %5 = load i32, ptr @__NumNodes, align 4
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4, i32 noundef %5)
  %7 = tail call ptr @old_main()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @old_main() local_unnamed_addr #0 {
.preheader109.preheader:
  %0 = alloca [64 x i32], align 16
  %1 = alloca [64 x ptr], align 16
  %2 = alloca %struct.datapoints, align 8
  %3 = load i32, ptr @__NumNodes, align 4
  %4 = tail call i32 @srand(i32 noundef 123) #28
  %5 = tail call noalias dereferenceable_or_null(1064) ptr @malloc(i64 noundef 1064) #28
  %6 = getelementptr inbounds %struct.tree, ptr %5, i64 0, i32 2
  store ptr null, ptr %6, align 8
  store double -2.000000e+00, ptr %5, align 8
  %7 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  store double -2.000000e+00, ptr %7, align 8
  %8 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  store double -2.000000e+00, ptr %8, align 8
  %9 = getelementptr inbounds %struct.tree, ptr %5, i64 0, i32 1
  store double 4.000000e+00, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 48
  %.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 56
  br label %20

.preheader106:                                    ; preds = %.preheader107.preheader
  %10 = load i32, ptr @nbody, align 4
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %31, %11
  %13 = fdiv double %32, %11
  %14 = fdiv double %33, %11
  %15 = fdiv double %34, %11
  %16 = fdiv double %35, %11
  %17 = fdiv double %36, %11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %1, i8 0, i64 512, i1 false)
  %18 = sdiv i32 64, %3
  %19 = getelementptr inbounds %struct.tree, ptr %5, i64 0, i32 3
  %.090121 = load ptr, ptr %19, align 8
  %.not122 = icmp eq ptr %.090121, null
  br i1 %.not122, label %.preheader101, label %.preheader103

20:                                               ; preds = %.preheader107.preheader, %.preheader109.preheader
  %.sroa.11.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %36, %.preheader107.preheader ]
  %.sroa.6146.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %35, %.preheader107.preheader ]
  %.sroa.0143.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %34, %.preheader107.preheader ]
  %.sroa.11157.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %33, %.preheader107.preheader ]
  %.sroa.6154.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %32, %.preheader107.preheader ]
  %.sroa.0151.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %31, %.preheader107.preheader ]
  %indvars.iv = phi i64 [ 0, %.preheader109.preheader ], [ %indvars.iv.next, %.preheader107.preheader ]
  %.087115 = phi i32 [ 0, %.preheader109.preheader ], [ %26, %.preheader107.preheader ]
  %.091114 = phi ptr [ null, %.preheader109.preheader ], [ %.sroa.8.0.copyload, %.preheader107.preheader ]
  %21 = load i32, ptr @__NumNodes, align 4
  %22 = sdiv i32 32, %21
  %.lhs.trunc = trunc i32 %.087115 to i8
  %.rhs.trunc = trunc i32 %22 to i8
  %23 = sdiv i8 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i8 %23 to i32
  %24 = load i32, ptr @nbody, align 4
  %25 = sdiv i32 %24, 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %26 = add nuw nsw i32 %.087115, 1
  %27 = trunc i64 %indvars.iv.next to i32
  call void @uniform_testdata(ptr nonnull sret(%struct.datapoints) align 8 %2, i32 noundef %.sext, i32 noundef %25, i32 noundef %27)
  %.sroa.0.0.copyload = load double, ptr %2, align 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %28 = getelementptr inbounds %struct.tree, ptr %5, i64 0, i32 3, i64 %indvars.iv
  store ptr %.sroa.7.0.copyload, ptr %28, align 8
  %.not100 = icmp eq ptr %.091114, null
  br i1 %.not100, label %.preheader107.preheader, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.bnode, ptr %.091114, i64 0, i32 9
  store ptr %.sroa.7.0.copyload, ptr %30, align 8
  br label %.preheader107.preheader

.preheader107.preheader:                          ; preds = %29, %20
  %31 = fadd double %.sroa.0151.0, %.sroa.0.0.copyload
  %32 = fadd double %.sroa.6154.0, %.sroa.2.0.copyload
  %33 = fadd double %.sroa.11157.0, %.sroa.3.0.copyload
  %34 = fadd double %.sroa.0143.0, %.sroa.4.0.copyload
  %35 = fadd double %.sroa.6146.0, %.sroa.5.0.copyload
  %36 = fadd double %.sroa.11.0, %.sroa.6.0.copyload
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.preheader106, label %20

.preheader103:                                    ; preds = %.preheader103, %.preheader106
  %.090123 = phi ptr [ %.090, %.preheader103 ], [ %.090121, %.preheader106 ]
  %37 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 2, i64 0
  %38 = load double, ptr %37, align 8
  %39 = fsub double %38, %12
  store double %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 2, i64 1
  %41 = load double, ptr %40, align 8
  %42 = fsub double %41, %13
  store double %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 2, i64 2
  %44 = load double, ptr %43, align 8
  %45 = fsub double %44, %14
  store double %45, ptr %43, align 8
  %46 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 5, i64 0
  %47 = load double, ptr %46, align 8
  %48 = fsub double %47, %15
  store double %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 5, i64 1
  %50 = load double, ptr %49, align 8
  %51 = fsub double %50, %16
  store double %51, ptr %49, align 8
  %52 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 5, i64 2
  %53 = load double, ptr %52, align 8
  %54 = fsub double %53, %17
  store double %54, ptr %52, align 8
  %55 = tail call { i64, i64 } @intcoord(ptr noundef nonnull %.090123, ptr noundef nonnull %5)
  %56 = extractvalue { i64, i64 } %55, 0
  %57 = extractvalue { i64, i64 } %55, 1
  %58 = tail call i32 @old_subindex(i64 %56, i64 %57, i32 noundef 536870912)
  %59 = shl i32 %58, 3
  %60 = tail call i32 @old_subindex(i64 %56, i64 %57, i32 noundef 268435456)
  %61 = add nsw i32 %59, %60
  %62 = sdiv i32 %61, %18
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %63
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 10
  store ptr %68, ptr %69, align 8
  store ptr %.090123, ptr %67, align 8
  %70 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 3
  store i32 %62, ptr %70, align 8
  %71 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 9
  %.090 = load ptr, ptr %71, align 8
  %.not = icmp eq ptr %.090, null
  br i1 %.not, label %.preheader101, label %.preheader103

.preheader101:                                    ; preds = %.preheader103, %.preheader106
  %72 = load i32, ptr @__NumNodes, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.preheader101
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph ], [ 0, %.preheader101 ]
  %74 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %indvars.iv141
  %75 = load i32, ptr %74, align 4
  %76 = trunc i64 %indvars.iv141 to i32
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %76, i32 noundef %75)
  %78 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %indvars.iv141
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.tree, ptr %5, i64 0, i32 4, i64 %indvars.iv141
  store ptr %79, ptr %80, align 8
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %81 = load i32, ptr @__NumNodes, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %indvars.iv.next142, %82
  br i1 %83, label %.lr.ph, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader101
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.0126 = phi double [ %85, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %.1125 = phi i32 [ %86, %.preheader ], [ 0, %.preheader.preheader ]
  %84 = tail call i32 @stepsystem(ptr noundef nonnull %5, i32 noundef %.1125)
  %85 = fadd double %.0126, 1.250000e-02
  %86 = add nuw nsw i32 %.1125, 1
  %87 = fcmp olt double %85, 2.001250e+00
  %88 = icmp ult i32 %.1125, 9
  %89 = and i1 %87, %88
  br i1 %89, label %.preheader, label %90

90:                                               ; preds = %.preheader
  ret ptr %5
}

; Function Attrs: nounwind
declare i32 @srand(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @uniform_testdata(ptr noalias nocapture writeonly sret(%struct.datapoints) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
.preheader100.preheader:
  %scevgep = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %4 = tail call ptr @ubody_alloc(i32 noundef %1)
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader100.preheader
  %6 = sitofp i32 %3 to double
  %7 = fmul double %6, 1.230000e+02
  %8 = sitofp i32 %2 to double
  %9 = fdiv double 1.000000e+00, %8
  %10 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %11 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %12 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 1
  %13 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 2
  br label %14

14:                                               ; preds = %.preheader97.preheader, %.lr.ph
  %15 = phi double [ 0.000000e+00, %.lr.ph ], [ %86, %.preheader97.preheader ]
  %16 = phi double [ 0.000000e+00, %.lr.ph ], [ %85, %.preheader97.preheader ]
  %17 = phi double [ 0.000000e+00, %.lr.ph ], [ %84, %.preheader97.preheader ]
  %18 = phi double [ 0.000000e+00, %.lr.ph ], [ %46, %.preheader97.preheader ]
  %19 = phi double [ 0.000000e+00, %.lr.ph ], [ %45, %.preheader97.preheader ]
  %20 = phi double [ 0.000000e+00, %.lr.ph ], [ %44, %.preheader97.preheader ]
  %.090116 = phi ptr [ %4, %.lr.ph ], [ %21, %.preheader97.preheader ]
  %.091115 = phi i32 [ 0, %.lr.ph ], [ %87, %.preheader97.preheader ]
  %.094114 = phi double [ %7, %.lr.ph ], [ %69, %.preheader97.preheader ]
  %21 = tail call ptr @ubody_alloc(i32 noundef %1)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %.preheader99

23:                                               ; preds = %14
  %24 = tail call i32 @error(ptr noundef nonnull @.str.3, ptr null, ptr null, ptr null, ptr null)
  unreachable

.preheader99:                                     ; preds = %14
  %25 = getelementptr inbounds %struct.bnode, ptr %.090116, i64 0, i32 9
  store ptr %21, ptr %25, align 8
  store i16 1, ptr %21, align 8
  %26 = getelementptr inbounds %struct.bnode, ptr %21, i64 0, i32 1
  store double %9, ptr %26, align 8
  %27 = tail call double @my_rand(double noundef %.094114)
  %28 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %27)
  %29 = tail call double @pow(double noundef %28, double noundef 0xBFE5555555555555) #28
  %30 = fadd double %29, -1.000000e+00
  %31 = tail call double @sqrt(double noundef %30) #28
  %32 = tail call double @my_rand(double noundef %27)
  %33 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %32)
  %34 = fmul double %33, 4.000000e+00
  %35 = getelementptr inbounds %struct.bnode, ptr %21, i64 0, i32 2, i64 0
  store double %34, ptr %35, align 8
  %36 = tail call double @my_rand(double noundef %32)
  %37 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %36)
  %38 = fmul double %37, 4.000000e+00
  %39 = getelementptr inbounds %struct.bnode, ptr %21, i64 0, i32 2, i64 1
  store double %38, ptr %39, align 8
  %40 = tail call double @my_rand(double noundef %36)
  %41 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %40)
  %42 = fmul double %41, 4.000000e+00
  %43 = getelementptr inbounds %struct.bnode, ptr %21, i64 0, i32 2, i64 2
  store double %42, ptr %43, align 8
  %44 = fadd double %20, %34
  store double %44, ptr %0, align 8
  %45 = fadd double %19, %38
  store double %45, ptr %10, align 8
  %46 = fadd double %18, %42
  store double %46, ptr %11, align 8
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98, %.preheader99
  %.2 = phi double [ %49, %.preheader98 ], [ %40, %.preheader99 ]
  %47 = tail call double @my_rand(double noundef %.2)
  %48 = tail call double @xrand(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %47)
  %49 = tail call double @my_rand(double noundef %47)
  %50 = tail call double @xrand(double noundef 0.000000e+00, double noundef 1.000000e-01, double noundef %49)
  %51 = fmul double %48, %48
  %52 = fneg double %48
  %53 = tail call double @llvm.fmuladd.f64(double %52, double %48, double 1.000000e+00)
  %54 = tail call double @pow(double noundef %53, double noundef 3.500000e+00) #28
  %55 = fmul double %51, %54
  %56 = fcmp ogt double %50, %55
  br i1 %56, label %.preheader98, label %57

57:                                               ; preds = %.preheader98
  %58 = fmul double %48, 0x3FF6A09E667F3BCD
  %59 = tail call double @llvm.fmuladd.f64(double %41, double %41, double 1.000000e+00)
  %60 = tail call double @pow(double noundef %59, double noundef 2.500000e-01) #28
  %61 = fdiv double %58, %60
  %62 = getelementptr inbounds %struct.bnode, ptr %21, i64 0, i32 5, i64 0
  %63 = getelementptr inbounds %struct.bnode, ptr %21, i64 0, i32 5, i64 1
  %64 = getelementptr inbounds %struct.bnode, ptr %21, i64 0, i32 5, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %57
  %.3 = phi double [ %49, %57 ], [ %69, %.preheader ]
  %65 = tail call double @my_rand(double noundef %.3)
  %66 = tail call double @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %65)
  %67 = tail call double @my_rand(double noundef %65)
  %68 = tail call double @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %67)
  %69 = tail call double @my_rand(double noundef %67)
  %70 = tail call double @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %69)
  %71 = tail call double @llvm.fmuladd.f64(double %66, double %66, double 0.000000e+00)
  %72 = tail call double @llvm.fmuladd.f64(double %68, double %68, double %71)
  %73 = tail call double @llvm.fmuladd.f64(double %70, double %70, double %72)
  %74 = fcmp ogt double %73, 1.000000e+00
  br i1 %74, label %.preheader, label %.preheader97.preheader

.preheader97.preheader:                           ; preds = %.preheader
  store double %66, ptr %62, align 8
  store double %68, ptr %63, align 8
  store double %70, ptr %64, align 8
  %75 = fmul double %61, 0x3FF4D8D7A58FA312
  %76 = tail call double @sqrt(double noundef %73) #28
  %77 = fdiv double %75, %76
  %78 = load double, ptr %62, align 8
  %79 = fmul double %77, %78
  store double %79, ptr %62, align 8
  %80 = load double, ptr %63, align 8
  %81 = fmul double %77, %80
  store double %81, ptr %63, align 8
  %82 = load double, ptr %64, align 8
  %83 = fmul double %77, %82
  store double %83, ptr %64, align 8
  %84 = fadd double %17, %79
  store double %84, ptr %scevgep, align 8
  %85 = fadd double %16, %81
  store double %85, ptr %12, align 8
  %86 = fadd double %15, %83
  store double %86, ptr %13, align 8
  %87 = add nuw nsw i32 %.091115, 1
  %exitcond.not = icmp eq i32 %87, %2
  br i1 %exitcond.not, label %._crit_edge, label %14

._crit_edge:                                      ; preds = %.preheader97.preheader, %.preheader100.preheader
  %.090.lcssa = phi ptr [ %4, %.preheader100.preheader ], [ %21, %.preheader97.preheader ]
  %88 = getelementptr inbounds %struct.bnode, ptr %.090.lcssa, i64 0, i32 9
  store ptr null, ptr %88, align 8
  %89 = getelementptr inbounds %struct.bnode, ptr %4, i64 0, i32 9
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 2
  store ptr %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 3
  store ptr %.090.lcssa, ptr %92, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @intcoord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %4 = load double, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %8 = load double, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %10 = load double, ptr %9, align 8
  %11 = load double, ptr %1, align 8
  %12 = fsub double %6, %11
  %13 = fdiv double %12, %4
  %14 = fcmp oge double %13, 0.000000e+00
  %15 = fcmp olt double %13, 1.000000e+00
  %or.cond = and i1 %14, %15
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %17 = load double, ptr %16, align 8
  %18 = fsub double %8, %17
  %19 = fdiv double %18, %4
  %20 = fcmp oge double %19, 0.000000e+00
  %21 = fcmp olt double %19, 1.000000e+00
  %or.cond3 = and i1 %20, %21
  br i1 %or.cond3, label %22, label %28

22:                                               ; preds = %2
  %.sroa.5.0 = select i1 %or.cond, i64 4294967296, i64 0
  %23 = fmul double %19, 0x41D0000000000000
  %24 = tail call double @llvm.floor.f64(double %23)
  %25 = fptosi double %24 to i32
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  br label %28

28:                                               ; preds = %22, %2
  %.sroa.225.0 = phi i64 [ %27, %22 ], [ 0, %2 ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %22 ], [ 0, %2 ]
  %29 = fmul double %13, 0x41D0000000000000
  %30 = tail call double @llvm.floor.f64(double %29)
  %31 = fptosi double %30 to i32
  %32 = zext i32 %31 to i64
  %.sroa.024.0 = select i1 %or.cond, i64 %32, i64 0
  %33 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %34 = load double, ptr %33, align 8
  %35 = fsub double %10, %34
  %36 = fdiv double %35, %4
  %37 = fcmp oge double %36, 0.000000e+00
  %38 = fcmp olt double %36, 1.000000e+00
  %or.cond5 = and i1 %37, %38
  %39 = fmul double %36, 0x41D0000000000000
  %40 = tail call double @llvm.floor.f64(double %39)
  %41 = fptosi double %40 to i32
  %42 = zext i32 %41 to i64
  %.sroa.024.0.insert.insert = or i64 %.sroa.225.0, %.sroa.024.0
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.024.0.insert.insert, 0
  %43 = or i64 %.sroa.5.1, %42
  %.sroa.3.8.insert.insert = select i1 %or.cond5, i64 %43, i64 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @old_subindex(i64 %0, i64 %1, i32 noundef %2) local_unnamed_addr #6 {
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i32
  %.sroa.3.8.extract.trunc = trunc i64 %1 to i32
  %4 = and i32 %.sroa.0.0.extract.trunc, %2
  %.not = icmp eq i32 %4, 0
  %5 = select i1 %.not, i32 0, i32 4
  %6 = and i32 %.sroa.2.0.extract.trunc, %2
  %.not.1 = icmp eq i32 %6, 0
  %7 = select i1 %.not.1, i32 0, i32 2
  %.1.1 = or i32 %7, %5
  %8 = and i32 %.sroa.3.8.extract.trunc, %2
  %.not.2 = icmp ne i32 %8, 0
  %9 = zext i1 %.not.2 to i32
  %.1.2 = or i32 %.1.1, %9
  ret i32 %.1.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stepsystem(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @freetree1(ptr noundef nonnull %4)
  store ptr null, ptr %3, align 8
  br label %7

7:                                                ; preds = %5, %2
  %8 = load i32, ptr @nbody, align 4
  %9 = tail call ptr @maketree(ptr poison, i32 noundef %8, ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0)
  store ptr %9, ptr %3, align 8
  %10 = tail call i32 @computegrav(ptr noundef nonnull %0, i32 noundef %1)
  %11 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @vp(ptr noundef %12, i32 noundef %1)
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @freetree1(ptr noundef %0) local_unnamed_addr #7 {
  %2 = tail call i32 @freetree(ptr noundef %0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @maketree(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 2
  store ptr null, ptr %6, align 8
  store i32 %1, ptr @nbody, align 4
  %7 = load i32, ptr @__NumNodes, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph32.preheader, label %._crit_edge

.lr.ph32.preheader:                               ; preds = %5
  %9 = zext i32 %7 to i64
  br label %.lr.ph32

.loopexit:                                        ; preds = %26, %.lr.ph32
  %10 = phi ptr [ %12, %.lr.ph32 ], [ %27, %26 ]
  %11 = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %11, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %.loopexit, %.lr.ph32.preheader
  %12 = phi ptr [ null, %.lr.ph32.preheader ], [ %10, %.loopexit ]
  %indvars.iv = phi i64 [ %9, %.lr.ph32.preheader ], [ %indvars.iv.next, %.loopexit ]
  %.02631.in = phi i32 [ %7, %.lr.ph32.preheader ], [ %.02631, %.loopexit ]
  %.02631 = add nsw i32 %.02631.in, -1
  %13 = zext i32 %.02631 to i64
  %14 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 4, i64 %13
  %.027 = load ptr, ptr %14, align 8
  %.not28 = icmp eq ptr %.027, null
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %26, %.lr.ph32
  %15 = phi ptr [ %27, %26 ], [ %12, %.lr.ph32 ]
  %.029 = phi ptr [ %.0, %26 ], [ %.027, %.lr.ph32 ]
  %16 = getelementptr inbounds %struct.bnode, ptr %.029, i64 0, i32 1
  %17 = load double, ptr %16, align 8
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %26

19:                                               ; preds = %.lr.ph
  %20 = tail call i32 @expandbox(ptr noundef nonnull %.029, ptr noundef %2, i32 poison, i32 poison)
  %21 = tail call { i64, i64 } @intcoord(ptr noundef nonnull %.029, ptr noundef %2)
  %22 = extractvalue { i64, i64 } %21, 0
  %23 = extractvalue { i64, i64 } %21, 1
  %24 = load ptr, ptr %6, align 8
  %25 = tail call ptr @loadtree(ptr noundef nonnull %.029, i64 %22, i64 %23, ptr noundef %24, i32 noundef 536870912, ptr noundef %2)
  store ptr %25, ptr %6, align 8
  br label %26

26:                                               ; preds = %19, %.lr.ph
  %27 = phi ptr [ %15, %.lr.ph ], [ %25, %19 ]
  %28 = getelementptr inbounds %struct.bnode, ptr %.029, i64 0, i32 10
  %.0 = load ptr, ptr %28, align 8
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %5
  %29 = phi ptr [ null, %5 ], [ %10, %.loopexit ]
  %30 = tail call double @hackcofm(ptr noundef %29)
  %31 = load ptr, ptr %6, align 8
  ret ptr %31
}

; Function Attrs: nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @computegrav(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8
  %5 = load i32, ptr @__NumNodes, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2
  %7 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %8 = zext i32 %5 to i64
  br label %9

9:                                                ; preds = %9, %.lr.ph
  %indvars.iv = phi i64 [ %8, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %.0.in10 = phi i32 [ %5, %.lr.ph ], [ %.0, %9 ]
  %.0 = add nsw i32 %.0.in10, -1
  %10 = load ptr, ptr %7, align 8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4, i64 %11
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @grav(double noundef %4, ptr noundef %10, ptr noundef %13, i32 noundef %1, double noundef 6.250000e-03)
  %15 = icmp ugt i64 %indvars.iv, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %15, label %9, label %._crit_edge

._crit_edge:                                      ; preds = %9, %2
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %.not117153 = icmp eq ptr %0, null
  br i1 %.not117153, label %._crit_edge, label %.preheader140.lr.ph

.preheader140.lr.ph:                              ; preds = %2
  %3 = icmp sgt i32 %1, 0
  br label %.preheader140

.preheader140:                                    ; preds = %191, %.preheader140.lr.ph
  %.0154 = phi ptr [ %0, %.preheader140.lr.ph ], [ %193, %191 ]
  %scevgep = getelementptr i8, ptr %.0154, i64 96
  %.sroa.0172.0.copyload = load double, ptr %scevgep, align 8
  %.sroa.3174.0.scevgep.sroa_idx = getelementptr i8, ptr %.0154, i64 104
  %.sroa.3174.0.copyload = load double, ptr %.sroa.3174.0.scevgep.sroa_idx, align 8
  %.sroa.4176.0.scevgep.sroa_idx = getelementptr i8, ptr %.0154, i64 112
  %.sroa.4176.0.copyload = load double, ptr %.sroa.4176.0.scevgep.sroa_idx, align 8
  br i1 %3, label %.preheader139.preheader, label %.loopexit

.preheader139.preheader:                          ; preds = %.preheader140
  %4 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 0
  %5 = load double, ptr %4, align 8
  %6 = fsub double %.sroa.0172.0.copyload, %5
  %7 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 1
  %8 = load double, ptr %7, align 8
  %9 = fsub double %.sroa.3174.0.copyload, %8
  %10 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 2
  %11 = load double, ptr %10, align 8
  %12 = fsub double %.sroa.4176.0.copyload, %11
  %13 = fmul double %6, 6.250000e-03
  %14 = fmul double %9, 6.250000e-03
  %15 = fmul double %12, 6.250000e-03
  %16 = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 5, i64 0
  %17 = load double, ptr %16, align 8
  %18 = fadd double %17, %13
  %19 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 1
  %20 = load double, ptr %19, align 8
  %21 = fadd double %20, %14
  %22 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 2
  %23 = load double, ptr %22, align 8
  %24 = fadd double %23, %15
  store double %18, ptr %16, align 8
  %.sroa.7165.0.scevgep155.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 5, i64 1
  store double %21, ptr %.sroa.7165.0.scevgep155.sroa_idx, align 8
  %.sroa.13.0.scevgep155.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 5, i64 2
  store double %24, ptr %.sroa.13.0.scevgep155.sroa_idx, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader139.preheader, %.preheader140
  %25 = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 2
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 2, i64 1
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 2, i64 2
  %30 = load double, ptr %29, align 8
  %31 = tail call i32 (double, ...) @isnan(double noundef %26) #28
  %.not118 = icmp eq i32 %31, 0
  br i1 %.not118, label %35, label %32

32:                                               ; preds = %.loopexit
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 99)
  %34 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

35:                                               ; preds = %.loopexit
  %36 = tail call i32 (double, ...) @isnan(double noundef %28) #28
  %.not119 = icmp eq i32 %36, 0
  br i1 %.not119, label %40, label %37

37:                                               ; preds = %35
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 98)
  %39 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

40:                                               ; preds = %35
  %41 = tail call i32 (double, ...) @isnan(double noundef %30) #28
  %.not120 = icmp eq i32 %41, 0
  br i1 %.not120, label %45, label %42

42:                                               ; preds = %40
  %43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 97)
  %44 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

45:                                               ; preds = %40
  %46 = tail call double @llvm.fabs.f64(double %26)
  %47 = fcmp olt double %46, 1.000000e+01
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 96)
  %50 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

51:                                               ; preds = %45
  %52 = tail call double @llvm.fabs.f64(double %28)
  %53 = fcmp olt double %52, 1.000000e+01
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 95)
  %56 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

57:                                               ; preds = %51
  %58 = tail call double @llvm.fabs.f64(double %30)
  %59 = fcmp olt double %58, 1.000000e+01
  br i1 %59, label %.preheader135.preheader, label %63

.preheader135.preheader:                          ; preds = %57
  %scevgep156 = getelementptr i8, ptr %.0154, i64 72
  store double %.sroa.0172.0.copyload, ptr %scevgep156, align 8
  %.sroa.3174.0.scevgep156.sroa_idx = getelementptr i8, ptr %.0154, i64 80
  store double %.sroa.3174.0.copyload, ptr %.sroa.3174.0.scevgep156.sroa_idx, align 8
  %.sroa.4176.0.scevgep156.sroa_idx = getelementptr i8, ptr %.0154, i64 88
  store double %.sroa.4176.0.copyload, ptr %.sroa.4176.0.scevgep156.sroa_idx, align 8
  %60 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 1
  %61 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 2
  %62 = tail call i32 (double, ...) @isnan(double noundef %.sroa.0172.0.copyload) #28
  %.not121 = icmp eq i32 %62, 0
  br i1 %.not121, label %69, label %66

63:                                               ; preds = %57
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 94)
  %65 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

66:                                               ; preds = %.preheader135.preheader
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 89)
  %68 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

69:                                               ; preds = %.preheader135.preheader
  %70 = tail call i32 (double, ...) @isnan(double noundef %.sroa.3174.0.copyload) #28
  %.not122 = icmp eq i32 %70, 0
  br i1 %.not122, label %74, label %71

71:                                               ; preds = %69
  %72 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 88)
  %73 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

74:                                               ; preds = %69
  %75 = tail call i32 (double, ...) @isnan(double noundef %.sroa.4176.0.copyload) #28
  %.not123 = icmp eq i32 %75, 0
  br i1 %.not123, label %79, label %76

76:                                               ; preds = %74
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 87)
  %78 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

79:                                               ; preds = %74
  %80 = tail call double @llvm.fabs.f64(double %.sroa.0172.0.copyload)
  %81 = fcmp olt double %80, 1.000000e+04
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 86)
  %84 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

85:                                               ; preds = %79
  %86 = tail call double @llvm.fabs.f64(double %.sroa.3174.0.copyload)
  %87 = fcmp olt double %86, 1.000000e+04
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 85)
  %90 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

91:                                               ; preds = %85
  %92 = tail call double @llvm.fabs.f64(double %.sroa.4176.0.copyload)
  %93 = fcmp olt double %92, 1.000000e+04
  br i1 %93, label %.preheader134.preheader, label %107

.preheader134.preheader:                          ; preds = %91
  %94 = load double, ptr %scevgep156, align 8
  %95 = fmul double %94, 6.250000e-03
  %96 = load double, ptr %60, align 8
  %97 = fmul double %96, 6.250000e-03
  %98 = load double, ptr %61, align 8
  %99 = fmul double %98, 6.250000e-03
  %100 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5
  %101 = load double, ptr %100, align 8
  %102 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 1
  %103 = load double, ptr %102, align 8
  %104 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 2
  %105 = load double, ptr %104, align 8
  %106 = tail call i32 (double, ...) @isnan(double noundef %101) #28
  %.not124 = icmp eq i32 %106, 0
  br i1 %.not124, label %113, label %110

107:                                              ; preds = %91
  %108 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 84)
  %109 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

110:                                              ; preds = %.preheader134.preheader
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 79)
  %112 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

113:                                              ; preds = %.preheader134.preheader
  %114 = tail call i32 (double, ...) @isnan(double noundef %103) #28
  %.not125 = icmp eq i32 %114, 0
  br i1 %.not125, label %118, label %115

115:                                              ; preds = %113
  %116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 78)
  %117 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

118:                                              ; preds = %113
  %119 = tail call i32 (double, ...) @isnan(double noundef %105) #28
  %.not126 = icmp eq i32 %119, 0
  br i1 %.not126, label %123, label %120

120:                                              ; preds = %118
  %121 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 77)
  %122 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

123:                                              ; preds = %118
  %124 = tail call double @llvm.fabs.f64(double %101)
  %125 = fcmp olt double %124, 1.000000e+04
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 76)
  %128 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

129:                                              ; preds = %123
  %130 = tail call double @llvm.fabs.f64(double %103)
  %131 = fcmp olt double %130, 1.000000e+04
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 75)
  %134 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

135:                                              ; preds = %129
  %136 = tail call double @llvm.fabs.f64(double %105)
  %137 = fcmp olt double %136, 1.000000e+04
  br i1 %137, label %.preheader133.preheader, label %157

.preheader133.preheader:                          ; preds = %135
  %138 = load double, ptr %100, align 8
  %139 = fadd double %138, %95
  %140 = load double, ptr %102, align 8
  %141 = fadd double %140, %97
  %142 = load double, ptr %104, align 8
  %143 = fadd double %142, %99
  %144 = fmul double %139, 1.250000e-02
  %145 = fmul double %141, 1.250000e-02
  %146 = fmul double %143, 1.250000e-02
  %147 = load double, ptr %25, align 8
  %148 = fadd double %147, %144
  %149 = load double, ptr %27, align 8
  %150 = fadd double %149, %145
  %151 = load double, ptr %29, align 8
  %152 = fadd double %151, %146
  store double %148, ptr %25, align 8
  %.sroa.4.0.scevgep157.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 2, i64 1
  store double %150, ptr %.sroa.4.0.scevgep157.sroa_idx, align 8
  %.sroa.7.0.scevgep157.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 2, i64 2
  store double %152, ptr %.sroa.7.0.scevgep157.sroa_idx, align 8
  %153 = fadd double %139, %95
  store double %153, ptr %100, align 8
  %154 = fadd double %141, %97
  store double %154, ptr %102, align 8
  %155 = fadd double %143, %99
  store double %155, ptr %104, align 8
  %156 = tail call i32 (double, ...) @isnan(double noundef %148) #28
  %.not127 = icmp eq i32 %156, 0
  br i1 %.not127, label %163, label %160

157:                                              ; preds = %135
  %158 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 74)
  %159 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

160:                                              ; preds = %.preheader133.preheader
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 69)
  %162 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

163:                                              ; preds = %.preheader133.preheader
  %164 = tail call i32 (double, ...) @isnan(double noundef %150) #28
  %.not128 = icmp eq i32 %164, 0
  br i1 %.not128, label %168, label %165

165:                                              ; preds = %163
  %166 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 68)
  %167 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

168:                                              ; preds = %163
  %169 = tail call i32 (double, ...) @isnan(double noundef %152) #28
  %.not129 = icmp eq i32 %169, 0
  br i1 %.not129, label %173, label %170

170:                                              ; preds = %168
  %171 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 67)
  %172 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

173:                                              ; preds = %168
  %174 = tail call double @llvm.fabs.f64(double %148)
  %175 = fcmp olt double %174, 1.000000e+04
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 66)
  %178 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

179:                                              ; preds = %173
  %180 = tail call double @llvm.fabs.f64(double %150)
  %181 = fcmp olt double %180, 1.000000e+04
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 65)
  %184 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

185:                                              ; preds = %179
  %186 = tail call double @llvm.fabs.f64(double %152)
  %187 = fcmp olt double %186, 1.000000e+04
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 64)
  %190 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 10
  %193 = load ptr, ptr %192, align 8
  %.not117 = icmp eq ptr %193, null
  br i1 %.not117, label %._crit_edge, label %.preheader140

._crit_edge:                                      ; preds = %191, %2
  ret i32 0
}

declare i32 @isnan(...) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare i32 @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @grav(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #8 {
  %.not1112 = icmp eq ptr %2, null
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %5
  %.013 = phi ptr [ %8, %.lr.ph ], [ %2, %5 ]
  %6 = tail call i32 @gravstep(double noundef %0, ptr noundef %1, ptr noundef nonnull %.013, i32 poison, double poison)
  %7 = getelementptr inbounds %struct.bnode, ptr %.013, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %.not11 = icmp eq ptr %8, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %5
  ret i32 0
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local i32 @gravstep(double noundef %0, ptr noundef %1, ptr noundef %2, i32 %3, double %4) local_unnamed_addr #12 {
  %6 = tail call i32 @hackgrav(ptr noundef %2, double noundef %0, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local i32 @hackgrav(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.hgstruct, align 8
  %5 = alloca %struct.hgstruct, align 8
  store ptr %0, ptr %4, align 8
  %scevgep = getelementptr inbounds i8, ptr %4, i64 8
  %scevgep23 = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep, ptr noundef nonnull align 8 dereferenceable(24) %scevgep23, i64 24, i1 false)
  %6 = getelementptr inbounds %struct.hgstruct, ptr %4, i64 0, i32 2
  %scevgep24 = getelementptr inbounds i8, ptr %4, i64 40
  %7 = fmul double %1, %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %5, ptr noundef %2, double noundef %7, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false)
  %8 = load double, ptr %6, align 8
  %9 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 8
  store double %8, ptr %9, align 8
  %scevgep25 = getelementptr i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep25, ptr noundef nonnull align 8 dereferenceable(24) %scevgep24, i64 24, i1 false)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @walksub(ptr noalias nocapture writeonly sret(%struct.hgstruct) align 8 %0, ptr noundef readonly %1, double noundef %2, double noundef %3, ptr nocapture noundef byval(%struct.hgstruct) align 8 %4, i32 noundef %5) local_unnamed_addr #12 {
  %7 = alloca %struct.hgstruct, align 8
  %8 = alloca %struct.hgstruct, align 8
  %9 = tail call signext i16 @subdivp(ptr noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4), !range !6
  %.not = icmp eq i16 %9, 0
  br i1 %.not, label %43, label %.preheader

.preheader:                                       ; preds = %6
  %10 = fmul double %2, 2.500000e-01
  %11 = add nsw i32 %5, 1
  %12 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 0
  %13 = load ptr, ptr %12, align 8
  %.not16 = icmp eq ptr %13, null
  br i1 %.not16, label %15, label %14

14:                                               ; preds = %.preheader
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %13, double noundef %10, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %15

15:                                               ; preds = %14, %.preheader
  %16 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 1
  %17 = load ptr, ptr %16, align 8
  %.not16.1 = icmp eq ptr %17, null
  br i1 %.not16.1, label %19, label %18

18:                                               ; preds = %15
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %17, double noundef %10, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %19

19:                                               ; preds = %18, %15
  %20 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 2
  %21 = load ptr, ptr %20, align 8
  %.not16.2 = icmp eq ptr %21, null
  br i1 %.not16.2, label %23, label %22

22:                                               ; preds = %19
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %21, double noundef %10, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 3
  %25 = load ptr, ptr %24, align 8
  %.not16.3 = icmp eq ptr %25, null
  br i1 %.not16.3, label %27, label %26

26:                                               ; preds = %23
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %25, double noundef %10, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 4
  %29 = load ptr, ptr %28, align 8
  %.not16.4 = icmp eq ptr %29, null
  br i1 %.not16.4, label %31, label %30

30:                                               ; preds = %27
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %29, double noundef %10, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %31

31:                                               ; preds = %30, %27
  %32 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 5
  %33 = load ptr, ptr %32, align 8
  %.not16.5 = icmp eq ptr %33, null
  br i1 %.not16.5, label %35, label %34

34:                                               ; preds = %31
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %33, double noundef %10, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %35

35:                                               ; preds = %34, %31
  %36 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 6
  %37 = load ptr, ptr %36, align 8
  %.not16.6 = icmp eq ptr %37, null
  br i1 %.not16.6, label %39, label %38

38:                                               ; preds = %35
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %37, double noundef %10, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %39

39:                                               ; preds = %38, %35
  %40 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 7
  %41 = load ptr, ptr %40, align 8
  %.not16.7 = icmp eq ptr %41, null
  br i1 %.not16.7, label %.loopexit, label %42

42:                                               ; preds = %39
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %41, double noundef %10, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %11)
  br label %.loopexit.sink.split

43:                                               ; preds = %6
  %44 = load ptr, ptr %4, align 8
  %.not15 = icmp eq ptr %44, %1
  br i1 %.not15, label %.loopexit, label %45

45:                                               ; preds = %43
  call void @gravsub(ptr nonnull sret(%struct.hgstruct) align 8 %8, ptr noundef %1, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4)
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %45, %42
  %.sink = phi ptr [ %7, %42 ], [ %8, %45 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %.sink, i64 64, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %43, %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @subdivp(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly byval(%struct.hgstruct) align 8 %3) local_unnamed_addr #5 {
  %5 = load i16, ptr %0, align 8
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %28, label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %4
  %7 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 0
  %8 = load double, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %10 = load double, ptr %9, align 8
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %13 = load double, ptr %12, align 8
  %14 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %15 = load double, ptr %14, align 8
  %16 = fsub double %13, %15
  %17 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %20 = load double, ptr %19, align 8
  %21 = fsub double %18, %20
  %22 = tail call double @llvm.fmuladd.f64(double %11, double %11, double 0.000000e+00)
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %21, double %21, double %23)
  %25 = fmul double %24, %2
  %26 = fcmp olt double %25, %1
  %27 = zext i1 %26 to i16
  br label %28

28:                                               ; preds = %.preheader19.preheader, %4
  %.018 = phi i16 [ %27, %.preheader19.preheader ], [ 0, %4 ]
  ret i16 %.018
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @gravsub(ptr noalias nocapture writeonly sret(%struct.hgstruct) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.hgstruct) align 8 %2) local_unnamed_addr #13 {
.preheader32.preheader:
  %3 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 0
  %4 = load double, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 0
  %6 = load double, ptr %5, align 8
  %7 = fsub double %4, %6
  %8 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 1
  %9 = load double, ptr %8, align 8
  %10 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 1
  %11 = load double, ptr %10, align 8
  %12 = fsub double %9, %11
  %13 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 2
  %14 = load double, ptr %13, align 8
  %15 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 2
  %16 = load double, ptr %15, align 8
  %17 = fsub double %14, %16
  %18 = tail call double @llvm.fmuladd.f64(double %7, double %7, double 0.000000e+00)
  %19 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %18)
  %20 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %19)
  %21 = fadd double %20, 0x3F647AE147AE147C
  %22 = tail call double @sqrt(double noundef %21) #28
  %23 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %24 = load double, ptr %23, align 8
  %25 = fdiv double %24, %22
  %26 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 2
  %27 = load double, ptr %26, align 8
  %28 = fsub double %27, %25
  store double %28, ptr %26, align 8
  %29 = fdiv double %25, %21
  %30 = fmul double %29, %7
  %31 = fmul double %29, %12
  %32 = fmul double %29, %17
  %33 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 0
  %34 = load double, ptr %33, align 8
  %35 = fadd double %34, %30
  store double %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 1
  %37 = load double, ptr %36, align 8
  %38 = fadd double %37, %31
  store double %38, ptr %36, align 8
  %39 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 2
  %40 = load double, ptr %39, align 8
  %41 = fadd double %40, %32
  store double %41, ptr %39, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @expandbox(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i32 @ic_test(ptr noundef %0, ptr noundef %1), !range !7
  %.not43 = icmp eq i32 %5, 0
  br i1 %.not43, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4
  %6 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %7 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %9 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %10 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 0
  %11 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %12 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  br label %13

13:                                               ; preds = %55, %.lr.ph
  %14 = load double, ptr %6, align 8
  %15 = fcmp olt double %14, 1.000000e+03
  br i1 %15, label %.preheader40.preheader, label %24

.preheader40.preheader:                           ; preds = %13
  %16 = load double, ptr %1, align 8
  %17 = tail call double @llvm.fmuladd.f64(double %14, double 5.000000e-01, double %16)
  %18 = load double, ptr %8, align 8
  %19 = tail call double @llvm.fmuladd.f64(double %14, double 5.000000e-01, double %18)
  %20 = load double, ptr %9, align 8
  %21 = tail call double @llvm.fmuladd.f64(double %14, double 5.000000e-01, double %20)
  %22 = load double, ptr %10, align 8
  %23 = fcmp olt double %22, %17
  br i1 %23, label %27, label %.preheader.1

24:                                               ; preds = %13
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 999)
  %26 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

27:                                               ; preds = %.preheader40.preheader
  %28 = fsub double %16, %14
  store double %28, ptr %1, align 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %27, %.preheader40.preheader
  %29 = load double, ptr %11, align 8
  %30 = fcmp olt double %29, %19
  br i1 %30, label %31, label %.preheader.2

31:                                               ; preds = %.preheader.1
  %32 = fsub double %18, %14
  store double %32, ptr %8, align 8
  br label %.preheader.2

.preheader.2:                                     ; preds = %31, %.preheader.1
  %33 = load double, ptr %12, align 8
  %34 = fcmp olt double %33, %21
  br i1 %34, label %35, label %37

35:                                               ; preds = %.preheader.2
  %36 = fsub double %20, %14
  store double %36, ptr %9, align 8
  br label %37

37:                                               ; preds = %35, %.preheader.2
  %38 = fmul double %14, 2.000000e+00
  store double %38, ptr %6, align 8
  %39 = load ptr, ptr %7, align 8
  %.not38 = icmp eq ptr %39, null
  br i1 %.not38, label %55, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @cell_alloc(i32 noundef 0)
  %42 = tail call { i64, i64 } @intcoord1(double noundef %17, double noundef %19, double noundef %21, ptr noundef nonnull %1)
  %43 = extractvalue { i64, i64 } %42, 1
  %44 = and i64 %43, 281470681743360
  %.not39 = icmp eq i64 %44, 0
  br i1 %.not39, label %45, label %48

45:                                               ; preds = %40
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 1)
  %47 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

48:                                               ; preds = %40
  %49 = extractvalue { i64, i64 } %42, 0
  %.sroa.219.8.insert.ext = and i64 %43, 4294967295
  %.sroa.219.8.insert.insert = or i64 %.sroa.219.8.insert.ext, 4294967296
  %50 = tail call i32 @old_subindex(i64 %49, i64 %.sroa.219.8.insert.insert, i32 noundef 536870912)
  %51 = load ptr, ptr %7, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds %struct.cnode, ptr %41, i64 0, i32 5, i64 %52
  store ptr %51, ptr %53, align 8
  store ptr %41, ptr %7, align 8
  %54 = tail call i32 @ic_test(ptr noundef nonnull %0, ptr noundef nonnull %1), !range !7
  br label %55

55:                                               ; preds = %48, %37
  %.1 = phi i32 [ %54, %48 ], [ 0, %37 ]
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %55, %4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @loadtree(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %common.ret28, label %8

8:                                                ; preds = %6
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %9, label %12

9:                                                ; preds = %8
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 2)
  %11 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

12:                                               ; preds = %8
  %13 = load i16, ptr %3, align 8
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = ptrtoint ptr %3 to i64
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 127
  %19 = tail call ptr @cell_alloc(i32 noundef %18)
  %20 = tail call i32 @subindex(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %4)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cnode, ptr %19, i64 0, i32 5, i64 %21
  store ptr %3, ptr %22, align 8
  br label %23

common.ret28:                                     ; preds = %23, %6
  %common.ret28.op = phi ptr [ %.025, %23 ], [ %0, %6 ]
  ret ptr %common.ret28.op

23:                                               ; preds = %15, %12
  %.025 = phi ptr [ %19, %15 ], [ %3, %12 ]
  %24 = tail call i32 @old_subindex(i64 %1, i64 %2, i32 noundef %4)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cnode, ptr %.025, i64 0, i32 5, i64 %25
  %27 = load ptr, ptr %26, align 8
  %28 = ashr i32 %4, 1
  %29 = tail call ptr @loadtree(ptr noundef %0, i64 %1, i64 %2, ptr noundef %27, i32 noundef %28, ptr noundef %5)
  store ptr %29, ptr %26, align 8
  br label %common.ret28
}

; Function Attrs: nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local double @hackcofm(ptr nocapture noundef %0) local_unnamed_addr #15 {
  %2 = load i16, ptr %0, align 8
  %3 = icmp eq i16 %2, 2
  br i1 %3, label %.preheader46, label %27

.preheader46:                                     ; preds = %.loopexit45, %1
  %.sroa.0.0 = phi double [ %.sroa.0.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %.sroa.4.0 = phi double [ %.sroa.4.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %.sroa.7.0 = phi double [ %.sroa.7.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit45 ], [ 0, %1 ]
  %.04252 = phi double [ %.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %4 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 %indvars.iv
  %5 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.loopexit45, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader46
  %6 = tail call double @hackcofm(ptr noundef nonnull %5)
  %7 = getelementptr inbounds %struct.node, ptr %5, i64 0, i32 2, i64 0
  %8 = load double, ptr %7, align 8
  %9 = fmul double %6, %8
  %10 = getelementptr inbounds %struct.node, ptr %5, i64 0, i32 2, i64 1
  %11 = load double, ptr %10, align 8
  %12 = fmul double %6, %11
  %13 = getelementptr inbounds %struct.node, ptr %5, i64 0, i32 2, i64 2
  %14 = load double, ptr %13, align 8
  %15 = fmul double %6, %14
  %16 = fadd double %.sroa.0.0, %9
  %17 = fadd double %.sroa.4.0, %12
  %18 = fadd double %.sroa.7.0, %15
  %19 = fadd double %.04252, %6
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader.preheader, %.preheader46
  %.sroa.0.1 = phi double [ %.sroa.0.0, %.preheader46 ], [ %16, %.preheader.preheader ]
  %.sroa.4.1 = phi double [ %.sroa.4.0, %.preheader46 ], [ %17, %.preheader.preheader ]
  %.sroa.7.1 = phi double [ %.sroa.7.0, %.preheader46 ], [ %18, %.preheader.preheader ]
  %.1 = phi double [ %.04252, %.preheader46 ], [ %19, %.preheader.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.preheader46

.loopexit.loopexit:                               ; preds = %.loopexit45
  %20 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  store double %.1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %23 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %24 = fdiv double %.sroa.0.1, %.1
  store double %24, ptr %21, align 8
  %25 = fdiv double %.sroa.4.1, %.1
  store double %25, ptr %22, align 8
  %26 = fdiv double %.sroa.7.1, %.1
  store double %26, ptr %23, align 8
  br label %.loopexit

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %29 = load double, ptr %28, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %27, %.loopexit.loopexit
  %.041 = phi double [ %29, %27 ], [ %.1, %.loopexit.loopexit ]
  ret double %.041
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local ptr @cell_alloc(i32 noundef %0) local_unnamed_addr #16 {
  %2 = load ptr, ptr @cp_free_list, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cnode, ptr %2, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr @cp_free_list, align 8
  br label %8

6:                                                ; preds = %1
  %7 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #28
  br label %8

8:                                                ; preds = %6, %3
  %.07 = phi ptr [ %2, %3 ], [ %7, %6 ]
  store i16 2, ptr %.07, align 8
  %9 = getelementptr inbounds %struct.cnode, ptr %.07, i64 0, i32 3
  store i32 %0, ptr %9, align 8
  %scevgep = getelementptr i8, ptr %.07, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %scevgep, i8 0, i64 64, i1 false)
  ret ptr %.07
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %7 = load double, ptr %6, align 8
  %8 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %9 = load double, ptr %8, align 8
  %10 = load double, ptr %1, align 8
  %11 = fsub double %5, %10
  %12 = fdiv double %11, %9
  %13 = fcmp oge double %12, 0.000000e+00
  %14 = fcmp olt double %12, 1.000000e+00
  %or.cond = and i1 %13, %14
  br i1 %or.cond, label %18, label %15

15:                                               ; preds = %3
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 5)
  %17 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %22 = load double, ptr %21, align 8
  %23 = fsub double %20, %22
  %24 = fdiv double %23, %9
  %25 = fcmp oge double %24, 0.000000e+00
  %26 = fcmp olt double %24, 1.000000e+00
  %or.cond3 = and i1 %25, %26
  br i1 %or.cond3, label %30, label %27

27:                                               ; preds = %18
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 6)
  %29 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

30:                                               ; preds = %18
  %31 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %32 = load double, ptr %31, align 8
  %33 = fsub double %7, %32
  %34 = fdiv double %33, %9
  %35 = fcmp oge double %34, 0.000000e+00
  %36 = fcmp olt double %34, 1.000000e+00
  %or.cond5 = and i1 %35, %36
  br i1 %or.cond5, label %40, label %37

37:                                               ; preds = %30
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 7)
  %39 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

40:                                               ; preds = %30
  %41 = fmul double %24, 0x41D0000000000000
  %42 = tail call double @llvm.floor.f64(double %41)
  %43 = fptosi double %42 to i32
  %44 = fmul double %12, 0x41D0000000000000
  %45 = tail call double @llvm.floor.f64(double %44)
  %46 = fptosi double %45 to i32
  %47 = fmul double %34, 0x41D0000000000000
  %48 = tail call double @llvm.floor.f64(double %47)
  %49 = fptosi double %48 to i32
  %50 = and i32 %46, %2
  %.not = icmp eq i32 %50, 0
  %51 = select i1 %.not, i32 0, i32 4
  %52 = and i32 %43, %2
  %.not.1 = icmp eq i32 %52, 0
  %53 = select i1 %.not.1, i32 0, i32 2
  %.1.1 = or i32 %53, %51
  %54 = and i32 %49, %2
  %.not.2 = icmp ne i32 %54, 0
  %55 = zext i1 %.not.2 to i32
  %.1.2 = or i32 %.1.1, %55
  ret i32 %.1.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ic_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %4 = load double, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %6 = load double, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %8 = load double, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %10 = load double, ptr %9, align 8
  %11 = load double, ptr %1, align 8
  %12 = fsub double %4, %11
  %13 = fdiv double %12, %10
  %14 = fcmp oge double %13, 0.000000e+00
  %15 = fcmp olt double %13, 1.000000e+00
  %or.cond = and i1 %14, %15
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %17 = load double, ptr %16, align 8
  %18 = fsub double %6, %17
  %19 = fdiv double %18, %10
  %20 = fcmp oge double %19, 0.000000e+00
  %21 = fcmp olt double %19, 1.000000e+00
  %or.cond3 = and i1 %20, %21
  %22 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %23 = load double, ptr %22, align 8
  %24 = fsub double %8, %23
  %25 = fdiv double %24, %10
  %26 = fcmp oge double %25, 0.000000e+00
  %27 = fcmp olt double %25, 1.000000e+00
  %or.cond5 = and i1 %26, %27
  %28 = select i1 %or.cond5, i1 %or.cond3, i1 false
  %narrow21 = select i1 %28, i1 %or.cond, i1 false
  %.2 = zext i1 %narrow21 to i32
  ret i32 %.2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @intcoord1(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = load double, ptr %3, align 8
  %6 = fsub double %0, %5
  %7 = getelementptr inbounds %struct.tree, ptr %3, i64 0, i32 1
  %8 = load double, ptr %7, align 8
  %9 = fdiv double %6, %8
  %10 = fcmp oge double %9, 0.000000e+00
  %11 = fcmp olt double %9, 1.000000e+00
  %or.cond = and i1 %10, %11
  %12 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %13 = load double, ptr %12, align 8
  %14 = fsub double %1, %13
  %15 = fdiv double %14, %8
  %16 = fcmp oge double %15, 0.000000e+00
  %17 = fcmp olt double %15, 1.000000e+00
  %or.cond3 = and i1 %16, %17
  br i1 %or.cond3, label %18, label %24

18:                                               ; preds = %4
  %.sroa.5.0 = select i1 %or.cond, i64 4294967296, i64 0
  %19 = fmul double %15, 0x41D0000000000000
  %20 = tail call double @llvm.floor.f64(double %19)
  %21 = fptosi double %20 to i32
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  br label %24

24:                                               ; preds = %18, %4
  %.sroa.2.0 = phi i64 [ %23, %18 ], [ 0, %4 ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %18 ], [ 0, %4 ]
  %25 = fmul double %9, 0x41D0000000000000
  %26 = tail call double @llvm.floor.f64(double %25)
  %27 = fptosi double %26 to i32
  %28 = zext i32 %27 to i64
  %.sroa.0.0 = select i1 %or.cond, i64 %28, i64 0
  %29 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %30 = load double, ptr %29, align 8
  %31 = fsub double %2, %30
  %32 = fdiv double %31, %8
  %33 = fcmp oge double %32, 0.000000e+00
  %34 = fcmp olt double %32, 1.000000e+00
  %or.cond5 = and i1 %33, %34
  %35 = fmul double %32, 0x41D0000000000000
  %36 = tail call double @llvm.floor.f64(double %35)
  %37 = fptosi double %36 to i32
  %38 = zext i32 %37 to i64
  %.sroa.0.0.insert.insert = or i64 %.sroa.2.0, %.sroa.0.0
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %39 = or i64 %.sroa.5.1, %38
  %.sroa.3.8.insert.insert = select i1 %or.cond5, i64 %39, i64 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @freetree(ptr noundef %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 8
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %40, label %.preheader.preheader

.preheader.preheader:                             ; preds = %3
  %6 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 7
  %7 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.preheader.1, label %8

8:                                                ; preds = %.preheader.preheader
  %9 = tail call i32 @freetree(ptr noundef nonnull %7)
  br label %.preheader.1

.preheader.1:                                     ; preds = %8, %.preheader.preheader
  %10 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 6
  %11 = load ptr, ptr %10, align 8
  %.not.1 = icmp eq ptr %11, null
  br i1 %.not.1, label %.preheader.2, label %12

12:                                               ; preds = %.preheader.1
  %13 = tail call i32 @freetree(ptr noundef nonnull %11)
  br label %.preheader.2

.preheader.2:                                     ; preds = %12, %.preheader.1
  %14 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 5
  %15 = load ptr, ptr %14, align 8
  %.not.2 = icmp eq ptr %15, null
  br i1 %.not.2, label %.preheader.3, label %16

16:                                               ; preds = %.preheader.2
  %17 = tail call i32 @freetree(ptr noundef nonnull %15)
  br label %.preheader.3

.preheader.3:                                     ; preds = %16, %.preheader.2
  %18 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 4
  %19 = load ptr, ptr %18, align 8
  %.not.3 = icmp eq ptr %19, null
  br i1 %.not.3, label %.preheader.4, label %20

20:                                               ; preds = %.preheader.3
  %21 = tail call i32 @freetree(ptr noundef nonnull %19)
  br label %.preheader.4

.preheader.4:                                     ; preds = %20, %.preheader.3
  %22 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 3
  %23 = load ptr, ptr %22, align 8
  %.not.4 = icmp eq ptr %23, null
  br i1 %.not.4, label %.preheader.5, label %24

24:                                               ; preds = %.preheader.4
  %25 = tail call i32 @freetree(ptr noundef nonnull %23)
  br label %.preheader.5

.preheader.5:                                     ; preds = %24, %.preheader.4
  %26 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 2
  %27 = load ptr, ptr %26, align 8
  %.not.5 = icmp eq ptr %27, null
  br i1 %.not.5, label %.preheader.6, label %28

28:                                               ; preds = %.preheader.5
  %29 = tail call i32 @freetree(ptr noundef nonnull %27)
  br label %.preheader.6

.preheader.6:                                     ; preds = %28, %.preheader.5
  %30 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 1
  %31 = load ptr, ptr %30, align 8
  %.not.6 = icmp eq ptr %31, null
  br i1 %.not.6, label %.preheader.7, label %32

32:                                               ; preds = %.preheader.6
  %33 = tail call i32 @freetree(ptr noundef nonnull %31)
  br label %.preheader.7

.preheader.7:                                     ; preds = %32, %.preheader.6
  %34 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 0
  %35 = load ptr, ptr %34, align 8
  %.not.7 = icmp eq ptr %35, null
  br i1 %.not.7, label %38, label %36

36:                                               ; preds = %.preheader.7
  %37 = tail call i32 @freetree(ptr noundef nonnull %35)
  br label %38

38:                                               ; preds = %36, %.preheader.7
  %39 = tail call i32 @my_free(ptr noundef nonnull %0)
  br label %40

40:                                               ; preds = %38, %3, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @my_free(ptr noundef %0) local_unnamed_addr #18 {
  %2 = load i16, ptr %0, align 8
  %3 = icmp eq i16 %2, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @bp_free_list, align 8
  %6 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 9
  store ptr %5, ptr %6, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @cp_free_list, align 8
  %9 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 6
  store ptr %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %7, %4
  %cp_free_list.sink = phi ptr [ @cp_free_list, %7 ], [ @bp_free_list, %4 ]
  store ptr %0, ptr %cp_free_list.sink, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @ubody_alloc(i32 noundef %0) local_unnamed_addr #19 {
  %2 = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #28
  store i16 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 3
  store i32 %0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 10
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 4
  store i32 %0, ptr %5, align 4
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local noalias nonnull ptr @testdata() local_unnamed_addr #20 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 99)
  %2 = tail call i32 @exit(i32 noundef 0) #29
  unreachable
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local ptr @body_alloc(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, ptr nocapture noundef readnone %11) local_unnamed_addr #16 {
  %13 = load ptr, ptr @bp_free_list, align 8
  %.not = icmp eq ptr %13, null
  br i1 %.not, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bnode, ptr %13, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr @bp_free_list, align 8
  br label %19

17:                                               ; preds = %12
  %18 = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #28
  br label %19

19:                                               ; preds = %17, %14
  %.0 = phi ptr [ %13, %14 ], [ %18, %17 ]
  store i16 1, ptr %.0, align 8
  %20 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 3
  store i32 %0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 2
  store double %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 2, i64 1
  store double %2, ptr %22, align 8
  %23 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 2, i64 2
  store double %3, ptr %23, align 8
  %24 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 5
  store double %4, ptr %24, align 8
  %25 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 5, i64 1
  store double %5, ptr %25, align 8
  %26 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 5, i64 2
  store double %6, ptr %26, align 8
  %27 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 6
  store double %7, ptr %27, align 8
  %28 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 6, i64 1
  store double %8, ptr %28, align 8
  %29 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 6, i64 2
  store double %9, ptr %29, align 8
  %30 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 1
  store double %10, ptr %30, align 8
  ret ptr %.0
}

; Function Attrs: nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @dis_number(ptr noundef %0) local_unnamed_addr #15 {
  %2 = load i32, ptr @nbody, align 4
  %3 = sitofp i32 %2 to double
  %4 = load i32, ptr @__NumNodes, align 4
  %5 = sitofp i32 %4 to double
  %6 = fdiv double %3, %5
  %7 = tail call double @llvm.ceil.f64(double %6)
  %8 = fptosi double %7 to i32
  %9 = tail call i32 @dis2_number(ptr noundef %0, i32 noundef -1, i32 noundef %8)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #11

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @dis2_number(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #21 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %.preheader.preheader, %3
  %.tr = phi ptr [ %0, %3 ], [ %30, %.preheader.preheader ]
  %.tr20 = phi i32 [ %1, %3 ], [ %28, %.preheader.preheader ]
  %4 = icmp eq ptr %.tr, null
  br i1 %4, label %.loopexit, label %5

5:                                                ; preds = %tailrecurse
  %6 = load i16, ptr %.tr, align 8
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %31, label %.preheader.preheader

.preheader.preheader:                             ; preds = %5
  %8 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @dis2_number(ptr noundef %9, i32 noundef %.tr20, i32 noundef %2)
  %11 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 1
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @dis2_number(ptr noundef %12, i32 noundef %10, i32 noundef %2)
  %14 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @dis2_number(ptr noundef %15, i32 noundef %13, i32 noundef %2)
  %17 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @dis2_number(ptr noundef %18, i32 noundef %16, i32 noundef %2)
  %20 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @dis2_number(ptr noundef %21, i32 noundef %19, i32 noundef %2)
  %23 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @dis2_number(ptr noundef %24, i32 noundef %22, i32 noundef %2)
  %26 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 6
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @dis2_number(ptr noundef %27, i32 noundef %25, i32 noundef %2)
  %29 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 7
  %30 = load ptr, ptr %29, align 8
  br label %tailrecurse

31:                                               ; preds = %5
  %32 = add nsw i32 %.tr20, 1
  %33 = sdiv i32 %32, %2
  %34 = getelementptr inbounds %struct.node, ptr %.tr, i64 0, i32 4
  store i32 %33, ptr %34, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %31, %tailrecurse
  %.0 = phi i32 [ %32, %31 ], [ %.tr20, %tailrecurse ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable
define dso_local double @my_rand(double noundef %0) local_unnamed_addr #22 {
  %2 = tail call double @llvm.fmuladd.f64(double %0, double 1.680700e+04, double 1.000000e+00)
  %3 = fdiv double %2, 0x41DFFFFFFFC00000
  %4 = tail call double @llvm.floor.f64(double %3)
  %5 = tail call double @llvm.fmuladd.f64(double %4, double 0xC1DFFFFFFFC00000, double %2)
  ret double %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @xrand(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #6 {
  %4 = fsub double %1, %0
  %5 = fmul double %4, %2
  %6 = fdiv double %5, 0x41DFFFFFFFC00000
  %7 = fadd double %6, %0
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @cputime() local_unnamed_addr #0 {
  %1 = alloca %struct.tms, align 8
  %2 = call i64 @times(ptr noundef nonnull %1) #28
  %3 = icmp eq i64 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 @error(ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  unreachable

6:                                                ; preds = %0
  %7 = load i64, ptr %1, align 8
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %8, 3.600000e+03
  ret double %9
}

; Function Attrs: nofree nounwind
declare noundef i64 @times(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @error(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #20 {
  %6 = load ptr, ptr @stderr, align 8
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #30
  %8 = tail call ptr @__errno_location() #31
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %5
  tail call void @perror(ptr noundef nonnull @.str.1.8) #30
  br label %11

11:                                               ; preds = %10, %5
  tail call void @exit(i32 noundef 0) #29
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #23

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define dso_local i32 @dealwithargs(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #25 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #32
  br label %8

8:                                                ; preds = %4, %2
  %storemerge = phi i32 [ %7, %4 ], [ 2048, %2 ]
  store i32 %storemerge, ptr @nbody, align 4
  ret i32 undef
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

declare void @exit.1(i32, ...)

declare i32 @printf.2(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
  %3 = call i32 @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

define void @assert_cfg_ft(i32 %0, i32 %1, i32 %2) {
entry:
  %3 = icmp ne i32 %0, 1
  br i1 %3, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @1, i32 %1, i32 %2)
  %4 = call i32 @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree noinline nounwind memory(write, argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { cold }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i16 0, i16 2}
!7 = !{i32 0, i32 2}
