; ModuleID = 'patricia-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"Found.\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @pat_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %or.cond = and i1 %4, %3
  br i1 %or.cond, label %5, label %93

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %93, label %8

8:                                                ; preds = %5
  %9 = load i64, ptr %7, align 8
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, %9
  store i64 %11, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i8 [ %.pre, %8 ], [ %20, %12 ]
  %.076 = phi ptr [ %1, %8 ], [ %18, %12 ]
  %14 = sext i8 %13 to i32
  %15 = tail call fastcc i64 @bit(i32 noundef %14, i64 noundef %11)
  %.not81 = icmp eq i64 %15, 0
  %16 = getelementptr inbounds %struct.ptree, ptr %.076, i64 0, i32 5
  %17 = getelementptr inbounds %struct.ptree, ptr %.076, i64 0, i32 4
  %.in = select i1 %.not81, ptr %17, ptr %16
  %18 = load ptr, ptr %.in, align 8
  %19 = getelementptr inbounds %struct.ptree, ptr %18, i64 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = icmp slt i8 %13, %20
  br i1 %21, label %12, label %22

22:                                               ; preds = %12
  %23 = load i64, ptr %18, align 8
  %24 = icmp eq i64 %11, %23
  br i1 %24, label %.preheader, label %.preheader84

.preheader:                                       ; preds = %22
  %25 = getelementptr inbounds %struct.ptree, ptr %18, i64 0, i32 2
  %26 = load i8, ptr %25, align 8
  %27 = zext i8 %26 to i64
  %.not102 = icmp eq i8 %26, 0
  br i1 %.not102, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader
  %28 = shl nuw nsw i64 %27, 4
  %29 = add nuw nsw i64 %28, 16
  %30 = tail call noalias ptr @malloc(i64 noundef %29) #14
  br label %._crit_edge99.thread

.lr.ph:                                           ; preds = %.preheader
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds %struct.ptree, ptr %18, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %wide.trip.count = zext i8 %26 to i64
  br label %35

34:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond107.not, label %._crit_edge, label %35

35:                                               ; preds = %34, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %34 ]
  %36 = getelementptr inbounds %struct.ptree_mask, ptr %33, i64 %indvars.iv
  %37 = load i64, ptr %36, align 8
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %39, label %34

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ptree_mask, ptr %7, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.ptree_mask, ptr %33, i64 %indvars.iv, i32 1
  store ptr %41, ptr %42, align 8
  %43 = load ptr, ptr %6, align 8
  tail call void @free(ptr noundef %43) #15
  tail call void @free(ptr noundef %0) #15
  br label %93

._crit_edge:                                      ; preds = %34
  %44 = shl nuw nsw i64 %27, 4
  %45 = add nuw nsw i64 %44, 16
  %46 = tail call noalias ptr @malloc(i64 noundef %45) #14
  br i1 %.not102, label %._crit_edge99.thread, label %.lr.ph98

.lr.ph98:                                         ; preds = %._crit_edge
  %47 = getelementptr inbounds %struct.ptree, ptr %18, i64 0, i32 1
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph98
  %.not83 = phi i1 [ false, %.thread ], [ true, %.lr.ph98 ]
  %.17395.ph = phi i32 [ %.17395, %.thread ], [ 0, %.lr.ph98 ]
  %.07494.ph = phi ptr [ %65, %.thread ], [ %46, %.lr.ph98 ]
  br label %48

48:                                               ; preds = %56, %.outer
  %.17395 = phi i32 [ %58, %56 ], [ %.17395.ph, %.outer ]
  %.07494 = phi ptr [ %59, %56 ], [ %.07494.ph, %.outer ]
  %49 = load ptr, ptr %6, align 8
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %47, align 8
  %52 = sext i32 %.17395 to i64
  %53 = getelementptr inbounds %struct.ptree_mask, ptr %51, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = icmp ugt i64 %50, %54
  br i1 %55, label %56, label %.thread

56:                                               ; preds = %48
  %57 = tail call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef nonnull %53, ptr noundef %.07494, i64 noundef 16) #15
  %58 = add nsw i32 %.17395, 1
  %59 = getelementptr inbounds %struct.ptree_mask, ptr %.07494, i64 1
  %60 = load i8, ptr %25, align 8
  %61 = zext i8 %60 to i32
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %48, label %._crit_edge99

.thread:                                          ; preds = %48
  %63 = tail call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef nonnull %49, ptr noundef %.07494, i64 noundef 16) #15
  %64 = load ptr, ptr %6, align 8
  store i64 4294967295, ptr %64, align 8
  %65 = getelementptr inbounds %struct.ptree_mask, ptr %.07494, i64 1
  %66 = load i8, ptr %25, align 8
  %67 = zext i8 %66 to i32
  %68 = icmp slt i32 %.17395, %67
  br i1 %68, label %.outer, label %.sink.split

._crit_edge99:                                    ; preds = %56
  %.pre109.pre = load ptr, ptr %6, align 8
  br i1 %.not83, label %._crit_edge99.thread, label %71

._crit_edge99.thread:                             ; preds = %._crit_edge99, %._crit_edge, %._crit_edge.thread
  %.074.lcssa116 = phi ptr [ %59, %._crit_edge99 ], [ %30, %._crit_edge.thread ], [ %46, %._crit_edge ]
  %.pre109115 = phi ptr [ %.pre109.pre, %._crit_edge99 ], [ %7, %._crit_edge.thread ], [ %7, %._crit_edge ]
  %69 = phi ptr [ %46, %._crit_edge99 ], [ %30, %._crit_edge.thread ], [ %46, %._crit_edge ]
  %70 = tail call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef %.pre109115, ptr noundef %.074.lcssa116, i64 noundef 16) #15
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge99.thread, %.thread
  %.ph = phi ptr [ %69, %._crit_edge99.thread ], [ %46, %.thread ]
  %.pre109.pre122 = load ptr, ptr %6, align 8
  br label %71

71:                                               ; preds = %.sink.split, %._crit_edge99
  %72 = phi ptr [ %46, %._crit_edge99 ], [ %.ph, %.sink.split ]
  %73 = phi ptr [ %.pre109.pre, %._crit_edge99 ], [ %.pre109.pre122, %.sink.split ]
  tail call void @free(ptr noundef %73) #15
  tail call void @free(ptr noundef nonnull %0) #15
  %74 = load i8, ptr %25, align 8
  %75 = add i8 %74, 1
  store i8 %75, ptr %25, align 8
  %76 = getelementptr inbounds %struct.ptree, ptr %18, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8
  tail call void @free(ptr noundef %77) #15
  store ptr %72, ptr %76, align 8
  br label %93

.preheader84:                                     ; preds = %81, %22
  %.391 = phi i32 [ %82, %81 ], [ 1, %22 ]
  %78 = tail call fastcc i64 @bit(i32 noundef %.391, i64 noundef %11)
  %79 = tail call fastcc i64 @bit(i32 noundef %.391, i64 noundef %23)
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %.critedge

81:                                               ; preds = %.preheader84
  %82 = add nuw nsw i32 %.391, 1
  %exitcond.not = icmp eq i32 %82, 32
  br i1 %exitcond.not, label %.critedge, label %.preheader84

.critedge:                                        ; preds = %81, %.preheader84
  %.3.lcssa = phi i32 [ 32, %81 ], [ %.391, %.preheader84 ]
  %83 = sext i8 %.pre to i32
  %84 = tail call fastcc i64 @bit(i32 noundef %83, i64 noundef %11)
  %.not82 = icmp eq i64 %84, 0
  br i1 %.not82, label %89, label %85

85:                                               ; preds = %.critedge
  %86 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8
  %88 = tail call fastcc ptr @insertR(ptr noundef %87, ptr noundef nonnull %0, i32 noundef %.3.lcssa, ptr noundef nonnull %1)
  store ptr %88, ptr %86, align 8
  br label %93

89:                                               ; preds = %.critedge
  %90 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8
  %92 = tail call fastcc ptr @insertR(ptr noundef %91, ptr noundef nonnull %0, i32 noundef %.3.lcssa, ptr noundef nonnull %1)
  store ptr %92, ptr %90, align 8
  br label %93

93:                                               ; preds = %89, %85, %71, %39, %5, %2
  %.075 = phi ptr [ %18, %39 ], [ %18, %71 ], [ null, %5 ], [ null, %2 ], [ %0, %89 ], [ %0, %85 ]
  ret ptr %.075
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i64 @bit(i32 noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = lshr i32 -2147483648, %0
  %4 = sext i32 %3 to i64
  %5 = and i64 %4, %1
  ret i64 %5
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @bcopy(...) local_unnamed_addr #4

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc ptr @insertR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = sext i8 %6 to i32
  %.not = icmp slt i32 %7, %2
  br i1 %.not, label %8, label %common.ret

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ptree, ptr %3, i64 0, i32 3
  %10 = load i8, ptr %9, align 1
  %.not32 = icmp sgt i8 %6, %10
  br i1 %.not32, label %19, label %common.ret

common.ret:                                       ; preds = %8, %4
  %11 = trunc i32 %2 to i8
  %12 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  store i8 %11, ptr %12, align 1
  %13 = load i64, ptr %1, align 8
  %14 = tail call fastcc i64 @bit(i32 noundef %2, i64 noundef %13)
  %.not34 = icmp eq i64 %14, 0
  %15 = select i1 %.not34, ptr %1, ptr %0
  %16 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  store ptr %15, ptr %16, align 8
  %17 = select i1 %.not34, ptr %0, ptr %1
  %18 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  store ptr %17, ptr %18, align 8
  br label %common.ret36

19:                                               ; preds = %8
  %20 = load i64, ptr %1, align 8
  %21 = tail call fastcc i64 @bit(i32 noundef %7, i64 noundef %20)
  %.not33 = icmp eq i64 %21, 0
  br i1 %.not33, label %26, label %22

common.ret36:                                     ; preds = %26, %22, %common.ret
  %common.ret36.op = phi ptr [ %1, %common.ret ], [ %0, %22 ], [ %0, %26 ]
  ret ptr %common.ret36.op

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call fastcc ptr @insertR(ptr noundef %24, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0)
  store ptr %25, ptr %23, align 8
  br label %common.ret36

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = tail call fastcc ptr @insertR(ptr noundef %28, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0)
  store ptr %29, ptr %27, align 8
  br label %common.ret36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @pat_remove(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pat_search(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %26, label %.preheader.preheader

.preheader.preheader:                             ; preds = %2
  %.phi.trans.insert = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %3 = phi i8 [ %16, %.preheader ], [ %.pre, %.preheader.preheader ]
  %.019 = phi ptr [ %spec.select, %.preheader ], [ null, %.preheader.preheader ]
  %.018 = phi ptr [ %14, %.preheader ], [ %1, %.preheader.preheader ]
  %4 = load i64, ptr %.018, align 8
  %5 = getelementptr inbounds %struct.ptree, ptr %.018, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, %0
  %9 = icmp eq i64 %4, %8
  %spec.select = select i1 %9, ptr %.018, ptr %.019
  %10 = sext i8 %3 to i32
  %11 = tail call fastcc i64 @bit(i32 noundef %10, i64 noundef %0)
  %.not21 = icmp eq i64 %11, 0
  %12 = getelementptr inbounds %struct.ptree, ptr %.018, i64 0, i32 5
  %13 = getelementptr inbounds %struct.ptree, ptr %.018, i64 0, i32 4
  %.in = select i1 %.not21, ptr %13, ptr %12
  %14 = load ptr, ptr %.in, align 8
  %15 = getelementptr inbounds %struct.ptree, ptr %14, i64 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = icmp slt i8 %3, %16
  br i1 %17, label %.preheader, label %18

18:                                               ; preds = %.preheader
  %19 = load i64, ptr %14, align 8
  %20 = getelementptr inbounds %struct.ptree, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, %0
  %24 = icmp eq i64 %19, %23
  %25 = select i1 %24, ptr %14, ptr %spec.select
  br label %26

26:                                               ; preds = %18, %2
  %.0 = phi ptr [ %25, %18 ], [ null, %2 ]
  ret ptr %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca float, align 4
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %8)
  tail call void @exit(i32 noundef -1) #16
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noalias ptr @fopen(ptr noundef %12, ptr noundef nonnull @.str.1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %16)
  tail call void @exit(i32 noundef 1) #16
  unreachable

18:                                               ; preds = %10
  %19 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14
  %.not = icmp eq ptr %19, null
  br i1 %.not, label %20, label %21

20:                                               ; preds = %18
  tail call void @perror(ptr noundef nonnull @.str.3) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

21:                                               ; preds = %18
  tail call void @bzero(ptr noundef nonnull %19, i64 noundef 40) #15
  %22 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %23 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 1
  store ptr %22, ptr %23, align 8
  %.not41 = icmp eq ptr %22, null
  br i1 %.not41, label %24, label %25

24:                                               ; preds = %21
  tail call void @perror(ptr noundef nonnull @.str.4) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

25:                                               ; preds = %21
  tail call void @bzero(ptr noundef nonnull %22, i64 noundef 16) #15
  %26 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %27 = getelementptr inbounds %struct.ptree_mask, ptr %22, i64 0, i32 1
  store ptr %26, ptr %27, align 8
  %.not42 = icmp eq ptr %26, null
  br i1 %.not42, label %28, label %29

28:                                               ; preds = %25
  tail call void @perror(ptr noundef nonnull @.str.5) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

29:                                               ; preds = %25
  tail call void @bzero(ptr noundef nonnull %26, i64 noundef 1) #15
  %30 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 2
  store i8 1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 5
  store ptr %19, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 4
  store ptr %19, ptr %32, align 8
  br label %33

33:                                               ; preds = %61, %29
  %34 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull %13)
  %.not43 = icmp eq ptr %34, null
  br i1 %.not43, label %65, label %35

35:                                               ; preds = %33
  %36 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %37 = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14
  %.not44 = icmp eq ptr %37, null
  br i1 %.not44, label %38, label %39

38:                                               ; preds = %35
  call void @perror(ptr noundef nonnull @.str.3) #17
  call void @exit(i32 noundef 1) #16
  unreachable

39:                                               ; preds = %35
  call void @bzero(ptr noundef nonnull %37, i64 noundef 40) #15
  %40 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %41 = getelementptr inbounds %struct.ptree, ptr %37, i64 0, i32 1
  store ptr %40, ptr %41, align 8
  %.not45 = icmp eq ptr %40, null
  br i1 %.not45, label %42, label %43

42:                                               ; preds = %39
  call void @perror(ptr noundef nonnull @.str.4) #17
  call void @exit(i32 noundef 1) #16
  unreachable

43:                                               ; preds = %39
  call void @bzero(ptr noundef nonnull %40, i64 noundef 16) #15
  %44 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %45 = getelementptr inbounds %struct.ptree_mask, ptr %40, i64 0, i32 1
  store ptr %44, ptr %45, align 8
  %.not46 = icmp eq ptr %44, null
  br i1 %.not46, label %46, label %47

46:                                               ; preds = %43
  call void @perror(ptr noundef nonnull @.str.5) #17
  call void @exit(i32 noundef 1) #16
  unreachable

47:                                               ; preds = %43
  call void @bzero(ptr noundef nonnull %44, i64 noundef 1) #15
  %48 = load i32, ptr %4, align 4
  %49 = zext i32 %48 to i64
  store i64 %49, ptr %37, align 8
  %50 = call i32 @htonl(i32 noundef -1) #18
  %51 = zext i32 %50 to i64
  store i64 %51, ptr %40, align 8
  %52 = call ptr @pat_search(i64 noundef %49, ptr noundef nonnull %19)
  %53 = load i64, ptr %52, align 8
  %54 = icmp eq i64 %53, %49
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load float, ptr %5, align 4
  %57 = fpext float %56 to double
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %57, i32 noundef %48)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %61

59:                                               ; preds = %47
  %60 = call ptr @pat_insert(ptr noundef nonnull %37, ptr noundef nonnull %19)
  br label %61

61:                                               ; preds = %59, %55
  %.0 = phi ptr [ %37, %55 ], [ %60, %59 ]
  %.not47 = icmp eq ptr %.0, null
  br i1 %.not47, label %62, label %33

62:                                               ; preds = %61
  %63 = load ptr, ptr @stderr, align 8
  %64 = call i64 @fwrite(ptr nonnull @.str.9, i64 21, i64 1, ptr %63) #17
  call void @exit(i32 noundef 1) #16
  unreachable

65:                                               ; preds = %33
  call void @exit(i32 noundef 0) #16
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare void @bzero(ptr nocapture noundef writeonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @htonl(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

declare void @exit.1(i32, ...)

declare i32 @printf.2(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
  call void @exit(i32 1099)
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
  call void @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
