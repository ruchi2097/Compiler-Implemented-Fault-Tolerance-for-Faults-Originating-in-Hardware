; ModuleID = 'dijkstra-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._NODE = type { i32, i32 }
%struct._QITEM = type { i32, i32, i32, ptr }

@qHead = dso_local local_unnamed_addr global ptr null, align 8
@g_qCount = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = dso_local local_unnamed_addr global i32 0, align 4
@rgnNodes = dso_local global [100 x %struct._NODE] zeroinitializer, align 16
@iNode = dso_local global i32 0, align 4
@iDist = dso_local global i32 0, align 4
@iPrev = dso_local global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@AdjMatrix = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@iCost = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Shortest path is 0 in cost. Just stay where you are.\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_path(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %1 to i64
  %5 = icmp eq i64 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = getelementptr inbounds %struct._NODE, ptr %0, i64 %3, i32 1
  %8 = getelementptr inbounds %struct._NODE, ptr %0, i64 %4, i32 1
  %9 = icmp eq ptr %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %8, align 4
  %13 = icmp eq i32 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = icmp eq i32 %11, 9999
  %.not = icmp eq i32 %12, 9999
  %16 = icmp eq i1 %.not, %15
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = select i1 %.not, i32 3, i32 2
  %19 = xor i32 1, %18
  br i1 %.not, label %24, label %20

20:                                               ; preds = %2
  %Diff_phi = phi i32 [ %19, %2 ]
  %Dest_phi = phi i32 [ 1, %2 ]
  %21 = xor i32 %Diff_phi, %Dest_phi
  %22 = icmp eq i32 %21, 2
  %23 = zext i1 %22 to i32
  call void @assert_cfg_ft(i32 %23, i32 %21, i32 0)
  tail call void @print_path(ptr noundef nonnull %0, i32 noundef %12)
  br label %24

24:                                               ; preds = %20, %2
  %Diff_phi5 = phi i32 [ 1, %20 ], [ %19, %2 ]
  %Dest_phi6 = phi i32 [ %21, %20 ], [ 1, %2 ]
  %25 = xor i32 %Diff_phi5, %Dest_phi6
  %26 = icmp eq i32 %25, 3
  %27 = zext i1 %26 to i32
  call void @assert_cfg_ft(i32 %27, i32 %25, i32 0)
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  %29 = load ptr, ptr @stdout, align 8
  %30 = load ptr, ptr @stdout, align 8
  %31 = icmp eq ptr %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = tail call i32 @fflush(ptr noundef %30)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue0(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11
  %5 = icmp eq ptr %4, null
  %.not = icmp eq ptr %4, null
  %6 = icmp eq i1 %.not, %5
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = select i1 %.not, i32 5, i32 6
  %9 = xor i32 4, %8
  br i1 %.not, label %10, label %19

10:                                               ; preds = %3
  %Diff_phi = phi i32 [ %9, %3 ]
  %Dest_phi = phi i32 [ 4, %3 ]
  %11 = xor i32 %Diff_phi, %Dest_phi
  %12 = icmp eq i32 %11, 5
  %13 = zext i1 %12 to i32
  call void @assert_cfg_ft(i32 %13, i32 %11, i32 0)
  %14 = load ptr, ptr @stderr, align 8
  %15 = load ptr, ptr @stderr, align 8
  %16 = icmp eq ptr %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %15) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

19:                                               ; preds = %3
  %Diff_phi18 = phi i32 [ %9, %3 ]
  %Dest_phi19 = phi i32 [ 4, %3 ]
  %20 = xor i32 %Diff_phi18, %Dest_phi19
  %21 = icmp eq i32 %20, 6
  %22 = zext i1 %21 to i32
  call void @assert_cfg_ft(i32 %22, i32 %20, i32 0)
  %23 = load ptr, ptr @qHead, align 8
  %24 = load ptr, ptr @qHead, align 8
  %25 = icmp eq ptr %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  store i32 %0, ptr %4, align 8
  %27 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  %28 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  %29 = icmp eq ptr %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  store i32 %1, ptr %28, align 4
  %31 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  %32 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  %33 = icmp eq ptr %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  store i32 %2, ptr %32, align 8
  %35 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  %36 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  %37 = icmp eq ptr %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  store ptr null, ptr %36, align 8
  %39 = icmp eq ptr %23, null
  %.not16 = icmp eq ptr %24, null
  %40 = icmp eq i1 %.not16, %39
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = select i1 %.not16, i32 8, i32 7
  %43 = xor i32 6, %42
  br i1 %.not16, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader, %19
  %Diff_phi20 = phi i32 [ %43, %19 ], [ %62, %.preheader ]
  %Dest_phi21 = phi i32 [ %20, %19 ], [ %45, %.preheader ]
  %44 = phi ptr [ %54, %.preheader ], [ %23, %19 ]
  %.0 = phi ptr [ %55, %.preheader ], [ %24, %19 ]
  %45 = xor i32 %Diff_phi20, %Dest_phi21
  %46 = icmp eq i32 %45, 7
  %47 = zext i1 %46 to i32
  call void @assert_cfg_ft(i32 %47, i32 %45, i32 0)
  %48 = icmp eq ptr %.0, %44
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = getelementptr inbounds %struct._QITEM, ptr %44, i64 0, i32 3
  %51 = getelementptr inbounds %struct._QITEM, ptr %.0, i64 0, i32 3
  %52 = icmp eq ptr %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = load ptr, ptr %50, align 8
  %55 = load ptr, ptr %51, align 8
  %56 = icmp eq ptr %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = icmp eq ptr %54, null
  %.not17 = icmp eq ptr %55, null
  %59 = icmp eq i1 %.not17, %58
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = select i1 %.not17, i32 8, i32 7
  %62 = xor i32 7, %61
  br i1 %.not17, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %19
  %Diff_phi22 = phi i32 [ %62, %.preheader ], [ %43, %19 ]
  %Dest_phi23 = phi i32 [ %45, %.preheader ], [ %20, %19 ]
  %63 = phi ptr [ @qHead, %19 ], [ %50, %.preheader ]
  %.lcssa.sink = phi ptr [ @qHead, %19 ], [ %51, %.preheader ]
  %64 = xor i32 %Diff_phi22, %Dest_phi23
  %65 = icmp eq i32 %64, 8
  %66 = zext i1 %65 to i32
  call void @assert_cfg_ft(i32 %66, i32 %64, i32 0)
  %67 = icmp eq ptr %.lcssa.sink, %63
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  store ptr %4, ptr %.lcssa.sink, align 8
  %69 = load i32, ptr @g_qCount, align 4
  %70 = load i32, ptr @g_qCount, align 4
  %71 = icmp eq i32 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = add nsw i32 %69, 1
  %74 = add nsw i32 %70, 1
  %75 = icmp eq i32 %74, %73
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  store i32 %74, ptr @g_qCount, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind willreturn uwtable
define dso_local void @dequeue0(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = load ptr, ptr @qHead, align 8
  %5 = load ptr, ptr @qHead, align 8
  %6 = icmp eq ptr %5, %4
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = icmp eq ptr %4, null
  %.not = icmp eq ptr %5, null
  %9 = icmp eq i1 %.not, %8
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = select i1 %.not, i32 11, i32 10
  %12 = xor i32 9, %11
  br i1 %.not, label %65, label %13

13:                                               ; preds = %3
  %Diff_phi = phi i32 [ %12, %3 ]
  %Dest_phi = phi i32 [ 9, %3 ]
  %14 = xor i32 %Diff_phi, %Dest_phi
  %15 = icmp eq i32 %14, 10
  %16 = zext i1 %15 to i32
  call void @assert_cfg_ft(i32 %16, i32 %14, i32 0)
  %17 = load i32, ptr %4, align 8
  %18 = load i32, ptr %5, align 8
  %19 = icmp eq i32 %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  store i32 %18, ptr %0, align 4
  %21 = load ptr, ptr @qHead, align 8
  %22 = load ptr, ptr @qHead, align 8
  %23 = icmp eq ptr %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = getelementptr inbounds %struct._QITEM, ptr %21, i64 0, i32 1
  %26 = getelementptr inbounds %struct._QITEM, ptr %22, i64 0, i32 1
  %27 = icmp eq ptr %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = load i32, ptr %25, align 4
  %30 = load i32, ptr %26, align 4
  %31 = icmp eq i32 %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  store i32 %30, ptr %1, align 4
  %33 = load ptr, ptr @qHead, align 8
  %34 = load ptr, ptr @qHead, align 8
  %35 = icmp eq ptr %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = getelementptr inbounds %struct._QITEM, ptr %33, i64 0, i32 2
  %38 = getelementptr inbounds %struct._QITEM, ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = load i32, ptr %37, align 8
  %42 = load i32, ptr %38, align 8
  %43 = icmp eq i32 %42, %41
  %44 = zext i1 %43 to i32
  call void @assert_ft(i32 %44, i32 1)
  store i32 %42, ptr %2, align 4
  %45 = load ptr, ptr @qHead, align 8
  %46 = load ptr, ptr @qHead, align 8
  %47 = icmp eq ptr %46, %45
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = getelementptr inbounds %struct._QITEM, ptr %45, i64 0, i32 3
  %50 = getelementptr inbounds %struct._QITEM, ptr %46, i64 0, i32 3
  %51 = icmp eq ptr %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = load ptr, ptr %49, align 8
  %54 = load ptr, ptr %50, align 8
  %55 = icmp eq ptr %54, %53
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  store ptr %54, ptr @qHead, align 8
  tail call void @free(ptr noundef nonnull %5) #14
  %57 = load i32, ptr @g_qCount, align 4
  %58 = load i32, ptr @g_qCount, align 4
  %59 = icmp eq i32 %58, %57
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = add nsw i32 %57, -1
  %62 = add nsw i32 %58, -1
  %63 = icmp eq i32 %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  store i32 %62, ptr @g_qCount, align 4
  br label %65

65:                                               ; preds = %13, %3
  %Diff_phi4 = phi i32 [ 1, %13 ], [ %12, %3 ]
  %Dest_phi5 = phi i32 [ %14, %13 ], [ 9, %3 ]
  %66 = xor i32 %Diff_phi4, %Dest_phi5
  %67 = icmp eq i32 %66, 11
  %68 = zext i1 %67 to i32
  call void @assert_cfg_ft(i32 %68, i32 %66, i32 0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @qcount() local_unnamed_addr #7 {
  %1 = load i32, ptr @g_qCount, align 4
  %2 = load i32, ptr @g_qCount, align 4
  %3 = icmp eq i32 %2, %1
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %3, %2
  %Diff_phi = phi i32 [ 3, %2 ], [ %25, %3 ]
  %Dest_phi = phi i32 [ 13, %2 ], [ %5, %3 ]
  %4 = phi i64 [ 0, %2 ], [ %18, %3 ]
  %indvars.iv = phi i64 [ 0, %2 ], [ %indvars.iv.next, %3 ]
  %5 = xor i32 %Diff_phi, %Dest_phi
  %6 = icmp eq i32 %5, 14
  %7 = zext i1 %6 to i32
  call void @assert_cfg_ft(i32 %7, i32 %5, i32 0)
  %8 = icmp eq i64 %indvars.iv, %4
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %4
  %11 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %indvars.iv
  %12 = icmp eq ptr %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  store i32 9999, ptr %11, align 8
  %14 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %4, i32 1
  %15 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %indvars.iv, i32 1
  %16 = icmp eq ptr %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  store i32 9999, ptr %15, align 4
  %18 = add nuw nsw i64 %4, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %19 = icmp eq i64 %indvars.iv.next, %18
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = icmp eq i64 %18, 100
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  %22 = icmp eq i1 %exitcond.not, %21
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = select i1 %exitcond.not, i32 15, i32 14
  %25 = xor i32 14, %24
  br i1 %exitcond.not, label %26, label %3

26:                                               ; preds = %3
  %Diff_phi20 = phi i32 [ %25, %3 ]
  %Dest_phi21 = phi i32 [ %5, %3 ]
  %27 = xor i32 %Diff_phi20, %Dest_phi21
  %28 = icmp eq i32 %27, 15
  %29 = zext i1 %28 to i32
  call void @assert_cfg_ft(i32 %29, i32 %27, i32 0)
  store i32 100, ptr @ch, align 4
  %30 = icmp eq i32 %0, %1
  %31 = icmp eq i32 %0, %1
  %32 = icmp eq i1 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = select i1 %31, i32 16, i32 17
  %35 = xor i32 15, %34
  br i1 %31, label %36, label %40

36:                                               ; preds = %26
  %Diff_phi22 = phi i32 [ %35, %26 ]
  %Dest_phi23 = phi i32 [ %27, %26 ]
  %37 = xor i32 %Diff_phi22, %Dest_phi23
  %38 = icmp eq i32 %37, 16
  %39 = zext i1 %38 to i32
  call void @assert_cfg_ft(i32 %39, i32 %37, i32 0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %194

40:                                               ; preds = %26
  %Diff_phi24 = phi i32 [ %35, %26 ]
  %Dest_phi25 = phi i32 [ %27, %26 ]
  %41 = xor i32 %Diff_phi24, %Dest_phi25
  %42 = icmp eq i32 %41, 17
  %43 = zext i1 %42 to i32
  call void @assert_cfg_ft(i32 %43, i32 %41, i32 0)
  %44 = sext i32 %0 to i64
  %45 = sext i32 %0 to i64
  %46 = icmp eq i64 %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %44
  %49 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %45
  %50 = icmp eq ptr %49, %48
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  store i32 0, ptr %49, align 8
  %52 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %44, i32 1
  %53 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %45, i32 1
  %54 = icmp eq ptr %53, %52
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  store i32 9999, ptr %53, align 4
  tail call void @enqueue0(i32 noundef %0, i32 noundef 0, i32 noundef 9999)
  %56 = tail call i32 @qcount()
  %57 = icmp sgt i32 %56, 0
  %58 = icmp sgt i32 %56, 0
  %59 = icmp eq i1 %58, %57
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = select i1 %58, i32 19, i32 24
  %62 = xor i32 17, %61
  br i1 %58, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %155
  %Diff_phi26 = phi i32 [ %176, %155 ]
  %Dest_phi27 = phi i32 [ %160, %155 ]
  %63 = xor i32 %Diff_phi26, %Dest_phi27
  %64 = icmp eq i32 %63, 18
  %65 = zext i1 %64 to i32
  call void @assert_cfg_ft(i32 %65, i32 %63, i32 0)
  %66 = tail call i32 @qcount()
  %67 = icmp sgt i32 %66, 0
  %68 = icmp sgt i32 %66, 0
  %69 = icmp eq i1 %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = select i1 %68, i32 19, i32 24
  %72 = xor i32 18, %71
  br i1 %68, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit, %40
  %Diff_phi28 = phi i32 [ %62, %40 ], [ %72, %.loopexit ]
  %Dest_phi29 = phi i32 [ %41, %40 ], [ %63, %.loopexit ]
  %73 = xor i32 %Diff_phi28, %Dest_phi29
  %74 = icmp eq i32 %73, 19
  %75 = zext i1 %74 to i32
  call void @assert_cfg_ft(i32 %75, i32 %73, i32 0)
  tail call void @dequeue0(ptr noundef nonnull @iNode, ptr noundef nonnull @iDist, ptr noundef nonnull @iPrev)
  store i32 0, ptr @i, align 4
  %76 = load i32, ptr @iNode, align 4
  %.pre15 = load i32, ptr @iNode, align 4
  %77 = icmp eq i32 %.pre15, %76
  %78 = zext i1 %77 to i32
  call void @assert_ft(i32 %78, i32 1)
  br label %79

79:                                               ; preds = %155, %.lr.ph
  %Diff_phi30 = phi i32 [ 7, %.lr.ph ], [ %176, %155 ]
  %Dest_phi31 = phi i32 [ %73, %.lr.ph ], [ %160, %155 ]
  %80 = phi i32 [ %76, %.lr.ph ], [ %158, %155 ]
  %81 = phi i32 [ %.pre15, %.lr.ph ], [ %159, %155 ]
  %82 = phi i32 [ 0, %.lr.ph ], [ %167, %155 ]
  %storemerge1214 = phi i32 [ 0, %.lr.ph ], [ %168, %155 ]
  %83 = xor i32 %Diff_phi30, %Dest_phi31
  %84 = icmp eq i32 %83, 20
  %85 = zext i1 %84 to i32
  call void @assert_cfg_ft(i32 %85, i32 %83, i32 0)
  %86 = icmp eq i32 %storemerge1214, %82
  %87 = zext i1 %86 to i32
  call void @assert_ft(i32 %87, i32 1)
  %88 = icmp eq i32 %81, %80
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = sext i32 %80 to i64
  %91 = sext i32 %81 to i64
  %92 = icmp eq i64 %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = sext i32 %82 to i64
  %95 = sext i32 %storemerge1214 to i64
  %96 = icmp eq i64 %95, %94
  %97 = zext i1 %96 to i32
  call void @assert_ft(i32 %97, i32 1)
  %98 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %90, i64 %94
  %99 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %91, i64 %95
  %100 = icmp eq ptr %99, %98
  %101 = zext i1 %100 to i32
  call void @assert_ft(i32 %101, i32 1)
  %102 = load i32, ptr %98, align 4
  %103 = load i32, ptr %99, align 4
  %104 = icmp eq i32 %103, %102
  %105 = zext i1 %104 to i32
  call void @assert_ft(i32 %105, i32 1)
  store i32 %103, ptr @iCost, align 4
  %106 = icmp eq i32 %102, 9999
  %.not = icmp eq i32 %103, 9999
  %107 = icmp eq i1 %.not, %106
  %108 = zext i1 %107 to i32
  call void @assert_ft(i32 %108, i32 1)
  %109 = select i1 %.not, i32 23, i32 21
  %110 = xor i32 20, %109
  br i1 %.not, label %155, label %111

111:                                              ; preds = %79
  %Diff_phi32 = phi i32 [ %110, %79 ]
  %Dest_phi33 = phi i32 [ %83, %79 ]
  %112 = xor i32 %Diff_phi32, %Dest_phi33
  %113 = icmp eq i32 %112, 21
  %114 = zext i1 %113 to i32
  call void @assert_cfg_ft(i32 %114, i32 %112, i32 0)
  %115 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %94
  %116 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %95
  %117 = icmp eq ptr %116, %115
  %118 = zext i1 %117 to i32
  call void @assert_ft(i32 %118, i32 1)
  %119 = load i32, ptr %115, align 8
  %120 = load i32, ptr %116, align 8
  %121 = icmp eq i32 %120, %119
  %122 = zext i1 %121 to i32
  call void @assert_ft(i32 %122, i32 1)
  %123 = icmp eq i32 %119, 9999
  %124 = icmp eq i32 %120, 9999
  %125 = icmp eq i1 %124, %123
  %126 = zext i1 %125 to i32
  call void @assert_ft(i32 %126, i32 1)
  %127 = load i32, ptr @iDist, align 4
  %.pre16 = load i32, ptr @iDist, align 4
  %128 = icmp eq i32 %.pre16, %127
  %129 = zext i1 %128 to i32
  call void @assert_ft(i32 %129, i32 1)
  %130 = add nsw i32 %127, %102
  %.pre19 = add nsw i32 %.pre16, %103
  %131 = icmp eq i32 %.pre19, %130
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = icmp sgt i32 %119, %130
  %134 = icmp sgt i32 %120, %.pre19
  %135 = icmp eq i1 %134, %133
  %136 = zext i1 %135 to i32
  call void @assert_ft(i32 %136, i32 1)
  %137 = select i1 %123, i1 true, i1 %133
  %or.cond = select i1 %124, i1 true, i1 %134
  %138 = icmp eq i1 %or.cond, %137
  %139 = zext i1 %138 to i32
  call void @assert_ft(i32 %139, i32 1)
  %140 = select i1 %or.cond, i32 22, i32 23
  %141 = xor i32 21, %140
  br i1 %or.cond, label %._crit_edge18, label %155

._crit_edge18:                                    ; preds = %111
  %Diff_phi34 = phi i32 [ %141, %111 ]
  %Dest_phi35 = phi i32 [ %112, %111 ]
  %142 = xor i32 %Diff_phi34, %Dest_phi35
  %143 = icmp eq i32 %142, 22
  %144 = zext i1 %143 to i32
  call void @assert_cfg_ft(i32 %144, i32 %142, i32 0)
  store i32 %.pre19, ptr %116, align 8
  %145 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %94, i32 1
  %146 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %95, i32 1
  %147 = icmp eq ptr %146, %145
  %148 = zext i1 %147 to i32
  call void @assert_ft(i32 %148, i32 1)
  store i32 %81, ptr %146, align 4
  tail call void @enqueue0(i32 noundef %storemerge1214, i32 noundef %.pre19, i32 noundef %81)
  %149 = load i32, ptr @iNode, align 4
  %.pre = load i32, ptr @iNode, align 4
  %150 = icmp eq i32 %.pre, %149
  %151 = zext i1 %150 to i32
  call void @assert_ft(i32 %151, i32 1)
  %152 = load i32, ptr @i, align 4
  %.pre17 = load i32, ptr @i, align 4
  %153 = icmp eq i32 %.pre17, %152
  %154 = zext i1 %153 to i32
  call void @assert_ft(i32 %154, i32 1)
  br label %155

155:                                              ; preds = %._crit_edge18, %111, %79
  %Diff_phi36 = phi i32 [ %141, %111 ], [ %110, %79 ], [ 1, %._crit_edge18 ]
  %Dest_phi37 = phi i32 [ %112, %111 ], [ %83, %79 ], [ %142, %._crit_edge18 ]
  %156 = phi i32 [ %82, %79 ], [ %152, %._crit_edge18 ], [ %82, %111 ]
  %157 = phi i32 [ %storemerge1214, %79 ], [ %.pre17, %._crit_edge18 ], [ %storemerge1214, %111 ]
  %158 = phi i32 [ %80, %79 ], [ %149, %._crit_edge18 ], [ %80, %111 ]
  %159 = phi i32 [ %81, %79 ], [ %.pre, %._crit_edge18 ], [ %81, %111 ]
  %160 = xor i32 %Diff_phi36, %Dest_phi37
  %161 = icmp eq i32 %160, 23
  %162 = zext i1 %161 to i32
  call void @assert_cfg_ft(i32 %162, i32 %160, i32 0)
  %163 = icmp eq i32 %159, %158
  %164 = zext i1 %163 to i32
  call void @assert_ft(i32 %164, i32 1)
  %165 = icmp eq i32 %157, %156
  %166 = zext i1 %165 to i32
  call void @assert_ft(i32 %166, i32 1)
  %167 = add nsw i32 %156, 1
  %168 = add nsw i32 %157, 1
  %169 = icmp eq i32 %168, %167
  %170 = zext i1 %169 to i32
  call void @assert_ft(i32 %170, i32 1)
  store i32 %168, ptr @i, align 4
  %171 = icmp slt i32 %156, 99
  %172 = icmp slt i32 %157, 99
  %173 = icmp eq i1 %172, %171
  %174 = zext i1 %173 to i32
  call void @assert_ft(i32 %174, i32 1)
  %175 = select i1 %172, i32 20, i32 18
  %176 = xor i32 23, %175
  br i1 %172, label %79, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %40
  %Diff_phi38 = phi i32 [ %72, %.loopexit ], [ %62, %40 ]
  %Dest_phi39 = phi i32 [ %63, %.loopexit ], [ %41, %40 ]
  %177 = xor i32 %Diff_phi38, %Dest_phi39
  %178 = icmp eq i32 %177, 24
  %179 = zext i1 %178 to i32
  call void @assert_cfg_ft(i32 %179, i32 %177, i32 0)
  %180 = sext i32 %1 to i64
  %181 = sext i32 %1 to i64
  %182 = icmp eq i64 %181, %180
  %183 = zext i1 %182 to i32
  call void @assert_ft(i32 %183, i32 1)
  %184 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %180
  %185 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %181
  %186 = icmp eq ptr %185, %184
  %187 = zext i1 %186 to i32
  call void @assert_ft(i32 %187, i32 1)
  %188 = load i32, ptr %184, align 8
  %189 = load i32, ptr %185, align 8
  %190 = icmp eq i32 %189, %188
  %191 = zext i1 %190 to i32
  call void @assert_ft(i32 %191, i32 1)
  %192 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %189)
  %193 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  tail call void @print_path(ptr noundef nonnull @rgnNodes, i32 noundef %1)
  %putchar = tail call i32 @putchar(i32 10)
  br label %194

194:                                              ; preds = %._crit_edge, %36
  %Diff_phi40 = phi i32 [ 1, %._crit_edge ], [ 9, %36 ]
  %Dest_phi41 = phi i32 [ %177, %._crit_edge ], [ %37, %36 ]
  %195 = xor i32 %Diff_phi40, %Dest_phi41
  %196 = icmp eq i32 %195, 25
  %197 = zext i1 %196 to i32
  call void @assert_cfg_ft(i32 %197, i32 %195, i32 0)
  ret i32 0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = alloca i32, align 4
  %4 = icmp slt i32 %0, 2
  %5 = icmp slt i32 %0, 2
  %6 = icmp eq i1 %5, %4
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = select i1 %5, i32 27, i32 28
  %9 = xor i32 26, %8
  br i1 %5, label %10, label %24

10:                                               ; preds = %2
  %Diff_phi = phi i32 [ %9, %2 ]
  %Dest_phi = phi i32 [ 26, %2 ]
  %11 = xor i32 %Diff_phi, %Dest_phi
  %12 = icmp eq i32 %11, 27
  %13 = zext i1 %12 to i32
  call void @assert_cfg_ft(i32 %13, i32 %11, i32 0)
  %14 = load ptr, ptr @stderr, align 8
  %15 = load ptr, ptr @stderr, align 8
  %16 = icmp eq ptr %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %15) #12
  %19 = load ptr, ptr @stderr, align 8
  %20 = load ptr, ptr @stderr, align 8
  %21 = icmp eq ptr %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr %20) #12
  br label %24

24:                                               ; preds = %10, %2
  %Diff_phi25 = phi i32 [ 7, %10 ], [ %9, %2 ]
  %Dest_phi26 = phi i32 [ %11, %10 ], [ 26, %2 ]
  %25 = xor i32 %Diff_phi25, %Dest_phi26
  %26 = icmp eq i32 %25, 28
  %27 = zext i1 %26 to i32
  call void @assert_cfg_ft(i32 %27, i32 %25, i32 0)
  %28 = getelementptr inbounds ptr, ptr %1, i64 1
  %29 = getelementptr inbounds ptr, ptr %1, i64 1
  %30 = icmp eq ptr %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = load ptr, ptr %28, align 8
  %33 = load ptr, ptr %29, align 8
  %34 = icmp eq ptr %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = tail call noalias ptr @fopen(ptr noundef %33, ptr noundef nonnull @.str.8)
  br label %.preheader16

.preheader16:                                     ; preds = %67, %24
  %Diff_phi27 = phi i32 [ 1, %24 ], [ %78, %67 ]
  %Dest_phi28 = phi i32 [ %25, %24 ], [ %68, %67 ]
  %37 = phi i64 [ 0, %24 ], [ %71, %67 ]
  %indvars.iv21 = phi i64 [ 0, %24 ], [ %indvars.iv.next22, %67 ]
  %38 = xor i32 %Diff_phi27, %Dest_phi28
  %39 = icmp eq i32 %38, 29
  %40 = zext i1 %39 to i32
  call void @assert_cfg_ft(i32 %40, i32 %38, i32 0)
  %41 = icmp eq i64 %indvars.iv21, %37
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  br label %43

43:                                               ; preds = %43, %.preheader16
  %Diff_phi29 = phi i32 [ 3, %.preheader16 ], [ %66, %43 ]
  %Dest_phi30 = phi i32 [ %38, %.preheader16 ], [ %45, %43 ]
  %44 = phi i64 [ 0, %.preheader16 ], [ %59, %43 ]
  %indvars.iv = phi i64 [ 0, %.preheader16 ], [ %indvars.iv.next, %43 ]
  %45 = xor i32 %Diff_phi29, %Dest_phi30
  %46 = icmp eq i32 %45, 30
  %47 = zext i1 %46 to i32
  call void @assert_cfg_ft(i32 %47, i32 %45, i32 0)
  %48 = icmp eq i64 %indvars.iv, %44
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %36, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #14
  %51 = load i32, ptr %3, align 4
  %52 = load i32, ptr %3, align 4
  %53 = icmp eq i32 %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %37, i64 %44
  %56 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %indvars.iv21, i64 %indvars.iv
  %57 = icmp eq ptr %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  store i32 %52, ptr %56, align 4
  %59 = add nuw nsw i64 %44, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %60 = icmp eq i64 %indvars.iv.next, %59
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = icmp eq i64 %59, 100
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  %63 = icmp eq i1 %exitcond.not, %62
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = select i1 %exitcond.not, i32 31, i32 30
  %66 = xor i32 30, %65
  br i1 %exitcond.not, label %67, label %43

67:                                               ; preds = %43
  %Diff_phi31 = phi i32 [ %66, %43 ]
  %Dest_phi32 = phi i32 [ %45, %43 ]
  %68 = xor i32 %Diff_phi31, %Dest_phi32
  %69 = icmp eq i32 %68, 31
  %70 = zext i1 %69 to i32
  call void @assert_cfg_ft(i32 %70, i32 %68, i32 0)
  %71 = add nuw nsw i64 %37, 1
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %72 = icmp eq i64 %indvars.iv.next22, %71
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = icmp eq i64 %71, 100
  %exitcond23.not = icmp eq i64 %indvars.iv.next22, 100
  %75 = icmp eq i1 %exitcond23.not, %74
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  %77 = select i1 %exitcond23.not, i32 32, i32 29
  %78 = xor i32 31, %77
  br i1 %exitcond23.not, label %.preheader, label %.preheader16

.preheader:                                       ; preds = %.preheader, %67
  %Diff_phi33 = phi i32 [ %78, %67 ], [ %105, %.preheader ]
  %Dest_phi34 = phi i32 [ %68, %67 ], [ %81, %.preheader ]
  %79 = phi i32 [ %93, %.preheader ], [ 0, %67 ]
  %.120 = phi i32 [ %94, %.preheader ], [ 0, %67 ]
  %80 = phi i32 [ %97, %.preheader ], [ 50, %67 ]
  %.11519 = phi i32 [ %98, %.preheader ], [ 50, %67 ]
  %81 = xor i32 %Diff_phi33, %Dest_phi34
  %82 = icmp eq i32 %81, 32
  %83 = zext i1 %82 to i32
  call void @assert_cfg_ft(i32 %83, i32 %81, i32 0)
  %84 = icmp eq i32 %.11519, %80
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  %86 = icmp eq i32 %.120, %79
  %87 = zext i1 %86 to i32
  call void @assert_ft(i32 %87, i32 1)
  %88 = srem i32 %80, 100
  %89 = srem i32 %.11519, 100
  %90 = icmp eq i32 %89, %88
  %91 = zext i1 %90 to i32
  call void @assert_ft(i32 %91, i32 1)
  %92 = call i32 @dijkstra(i32 noundef %.120, i32 noundef %89)
  %93 = add nuw nsw i32 %79, 1
  %94 = add nuw nsw i32 %.120, 1
  %95 = icmp eq i32 %94, %93
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = add nsw i32 %88, 1
  %98 = add nsw i32 %89, 1
  %99 = icmp eq i32 %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = icmp eq i32 %93, 100
  %exitcond24.not = icmp eq i32 %94, 100
  %102 = icmp eq i1 %exitcond24.not, %101
  %103 = zext i1 %102 to i32
  call void @assert_ft(i32 %103, i32 1)
  %104 = select i1 %exitcond24.not, i32 33, i32 32
  %105 = xor i32 32, %104
  br i1 %exitcond24.not, label %106, label %.preheader

106:                                              ; preds = %.preheader
  %Diff_phi35 = phi i32 [ %105, %.preheader ]
  %Dest_phi36 = phi i32 [ %81, %.preheader ]
  %107 = xor i32 %Diff_phi35, %Dest_phi36
  %108 = icmp eq i32 %107, 33
  %109 = zext i1 %108 to i32
  call void @assert_cfg_ft(i32 %109, i32 %107, i32 0)
  call void @exit(i32 noundef 0) #13
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

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

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
