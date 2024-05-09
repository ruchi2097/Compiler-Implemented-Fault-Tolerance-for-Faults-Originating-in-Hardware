; ModuleID = 'qsort-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.my3DVertexStruct = type { i32, i32, i32, double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.my3DVertexStruct, ptr %0, i64 0, i32 3
  %4 = load double, ptr %3, align 8
  %5 = getelementptr inbounds %struct.my3DVertexStruct, ptr %1, i64 0, i32 3
  %6 = load double, ptr %5, align 8
  %7 = fcmp ogt double %4, %6
  %8 = fcmp une double %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca [60000 x %struct.my3DVertexStruct], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp slt i32 %0, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %9) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noalias ptr @fopen(ptr noundef %13, ptr noundef nonnull @.str.1)
  %15 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #10
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %23, %11
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %11 ]
  %.022 = phi i32 [ %37, %23 ], [ 0, %11 ]
  %17 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #10
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %.critedge.loopexit.split.loop.exit31

19:                                               ; preds = %.lr.ph
  %20 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  %21 = icmp eq i32 %20, 1
  %22 = icmp ult i64 %indvars.iv, 60000
  %or.cond = select i1 %21, i1 %22, i1 false
  br i1 %or.cond, label %23, label %.critedge.loopexit.split.loop.exit33

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4
  %25 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv
  store i32 %24, ptr %25, align 8
  %26 = load i32, ptr %5, align 4
  %27 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 1
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %6, align 4
  %29 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 2
  store i32 %28, ptr %29, align 8
  %30 = sitofp i32 %24 to double
  %square = fmul double %30, %30
  %31 = sitofp i32 %26 to double
  %square20 = fmul double %31, %31
  %32 = fadd double %square, %square20
  %33 = sitofp i32 %28 to double
  %square21 = fmul double %33, %33
  %34 = fadd double %32, %square21
  %35 = call double @sqrt(double noundef %34) #10
  %36 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 3
  store double %35, ptr %36, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %37 = add nuw nsw i32 %.022, 1
  %38 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #10
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %.lr.ph, label %.critedge

.critedge.loopexit.split.loop.exit31:             ; preds = %.lr.ph
  %40 = trunc i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit33:             ; preds = %19
  %41 = trunc i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit.split.loop.exit33, %.critedge.loopexit.split.loop.exit31, %23, %11
  %.0.lcssa = phi i32 [ 0, %11 ], [ %40, %.critedge.loopexit.split.loop.exit31 ], [ %41, %.critedge.loopexit.split.loop.exit33 ], [ %37, %23 ]
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.0.lcssa)
  %43 = zext i32 %.0.lcssa to i64
  call void @qsort(ptr noundef nonnull %3, i64 noundef %43, i64 noundef 24, ptr noundef nonnull @compare) #10
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28, %.critedge
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %.lr.ph28 ], [ 0, %.critedge ]
  %44 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv29
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv29, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv29, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %45, i32 noundef %47, i32 noundef %49)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next30, %43
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph28

._crit_edge:                                      ; preds = %.lr.ph28, %.critedge
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

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

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
