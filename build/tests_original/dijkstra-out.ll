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
  %4 = getelementptr inbounds %struct._NODE, ptr %0, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4
  %.not = icmp eq i32 %5, 9999
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  tail call void @print_path(ptr noundef nonnull %0, i32 noundef %5)
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  %9 = load ptr, ptr @stdout, align 8
  %10 = tail call i32 @fflush(ptr noundef %9)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue0(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %5, label %8

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %6) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

8:                                                ; preds = %3
  %9 = load ptr, ptr @qHead, align 8
  store i32 %0, ptr %4, align 8
  %10 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  store i32 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  store i32 %2, ptr %11, align 8
  %12 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  store ptr null, ptr %12, align 8
  %.not16 = icmp eq ptr %9, null
  br i1 %.not16, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader, %8
  %.0 = phi ptr [ %14, %.preheader ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct._QITEM, ptr %.0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %.not17 = icmp eq ptr %14, null
  br i1 %.not17, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %8
  %.lcssa.sink = phi ptr [ @qHead, %8 ], [ %13, %.preheader ]
  store ptr %4, ptr %.lcssa.sink, align 8
  %15 = load i32, ptr @g_qCount, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @g_qCount, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind willreturn uwtable
define dso_local void @dequeue0(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = load ptr, ptr @qHead, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %18, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %4, align 8
  store i32 %6, ptr %0, align 4
  %7 = load ptr, ptr @qHead, align 8
  %8 = getelementptr inbounds %struct._QITEM, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %1, align 4
  %10 = load ptr, ptr @qHead, align 8
  %11 = getelementptr inbounds %struct._QITEM, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8
  store i32 %12, ptr %2, align 4
  %13 = load ptr, ptr @qHead, align 8
  %14 = getelementptr inbounds %struct._QITEM, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr @qHead, align 8
  tail call void @free(ptr noundef nonnull %4) #14
  %16 = load i32, ptr @g_qCount, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr @g_qCount, align 4
  br label %18

18:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @qcount() local_unnamed_addr #7 {
  %1 = load i32, ptr @g_qCount, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %3, %2
  %indvars.iv = phi i64 [ 0, %2 ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %indvars.iv
  store i32 9999, ptr %4, align 8
  %5 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %indvars.iv, i32 1
  store i32 9999, ptr %5, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %6, label %3

6:                                                ; preds = %3
  store i32 100, ptr @ch, align 4
  %7 = icmp eq i32 %0, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %39

9:                                                ; preds = %6
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %10
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %10, i32 1
  store i32 9999, ptr %12, align 4
  tail call void @enqueue0(i32 noundef %0, i32 noundef 0, i32 noundef 9999)
  %13 = tail call i32 @qcount()
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %29
  %15 = tail call i32 @qcount()
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit, %9
  tail call void @dequeue0(ptr noundef nonnull @iNode, ptr noundef nonnull @iDist, ptr noundef nonnull @iPrev)
  store i32 0, ptr @i, align 4
  %.pre15 = load i32, ptr @iNode, align 4
  br label %17

17:                                               ; preds = %29, %.lr.ph
  %18 = phi i32 [ %.pre15, %.lr.ph ], [ %31, %29 ]
  %storemerge1214 = phi i32 [ 0, %.lr.ph ], [ %32, %29 ]
  %19 = sext i32 %18 to i64
  %20 = sext i32 %storemerge1214 to i64
  %21 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %19, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr @iCost, align 4
  %.not = icmp eq i32 %22, 9999
  br i1 %.not, label %29, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %20
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 9999
  %.pre16 = load i32, ptr @iDist, align 4
  %.pre19 = add nsw i32 %.pre16, %22
  %27 = icmp sgt i32 %25, %.pre19
  %or.cond = select i1 %26, i1 true, i1 %27
  br i1 %or.cond, label %._crit_edge18, label %29

._crit_edge18:                                    ; preds = %23
  store i32 %.pre19, ptr %24, align 8
  %28 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %20, i32 1
  store i32 %18, ptr %28, align 4
  tail call void @enqueue0(i32 noundef %storemerge1214, i32 noundef %.pre19, i32 noundef %18)
  %.pre = load i32, ptr @iNode, align 4
  %.pre17 = load i32, ptr @i, align 4
  br label %29

29:                                               ; preds = %._crit_edge18, %23, %17
  %30 = phi i32 [ %storemerge1214, %17 ], [ %.pre17, %._crit_edge18 ], [ %storemerge1214, %23 ]
  %31 = phi i32 [ %18, %17 ], [ %.pre, %._crit_edge18 ], [ %18, %23 ]
  %32 = add nsw i32 %30, 1
  store i32 %32, ptr @i, align 4
  %33 = icmp slt i32 %30, 99
  br i1 %33, label %17, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %9
  %34 = sext i32 %1 to i64
  %35 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %34
  %36 = load i32, ptr %35, align 8
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %36)
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  tail call void @print_path(ptr noundef nonnull @rgnNodes, i32 noundef %1)
  %putchar = tail call i32 @putchar(i32 10)
  br label %39

39:                                               ; preds = %._crit_edge, %8
  ret i32 0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = alloca i32, align 4
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8
  %7 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %6) #12
  %8 = load ptr, ptr @stderr, align 8
  %9 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr %8) #12
  br label %10

10:                                               ; preds = %5, %2
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noalias ptr @fopen(ptr noundef %12, ptr noundef nonnull @.str.8)
  br label %.preheader16

.preheader16:                                     ; preds = %18, %10
  %indvars.iv21 = phi i64 [ 0, %10 ], [ %indvars.iv.next22, %18 ]
  br label %14

14:                                               ; preds = %14, %.preheader16
  %indvars.iv = phi i64 [ 0, %.preheader16 ], [ %indvars.iv.next, %14 ]
  %15 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #14
  %16 = load i32, ptr %3, align 4
  %17 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %indvars.iv21, i64 %indvars.iv
  store i32 %16, ptr %17, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %18, label %14

18:                                               ; preds = %14
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next22, 100
  br i1 %exitcond23.not, label %.preheader, label %.preheader16

.preheader:                                       ; preds = %.preheader, %18
  %.120 = phi i32 [ %21, %.preheader ], [ 0, %18 ]
  %.11519 = phi i32 [ %22, %.preheader ], [ 50, %18 ]
  %19 = srem i32 %.11519, 100
  %20 = call i32 @dijkstra(i32 noundef %.120, i32 noundef %19)
  %21 = add nuw nsw i32 %.120, 1
  %22 = add nsw i32 %19, 1
  %exitcond24.not = icmp eq i32 %21, 100
  br i1 %exitcond24.not, label %23, label %.preheader

23:                                               ; preds = %.preheader
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
