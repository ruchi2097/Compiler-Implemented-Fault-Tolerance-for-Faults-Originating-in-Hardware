; ModuleID = 'smatrix-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@size = dso_local local_unnamed_addr global i32 64, align 4
@total = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@RC = dso_local local_unnamed_addr global [1048576 x float] zeroinitializer, align 16
@C = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@RA = dso_local local_unnamed_addr global [1048576 x float] zeroinitializer, align 16
@A = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@RB = dso_local local_unnamed_addr global [1048576 x float] zeroinitializer, align 16
@B = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [38 x i8] c"Matrix Multiplication Kernel (%dx%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Verification total=%g should be 31599.2\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Verification total=%g\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"Native Matrix Multiplication\00", align 1
@str.1 = private unnamed_addr constant [8 x i8] c"Phase 2\00", align 1
@str.2 = private unnamed_addr constant [8 x i8] c"Phase 3\00", align 1
@str.3 = private unnamed_addr constant [23 x i8] c"usage:\0A\09smatrix [size]\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @matmult() local_unnamed_addr #0 {
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %1 = load i32, ptr @size, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %0
  %wide.trip.count29 = zext i32 %1 to i64
  br label %.lr.ph19

.lr.ph19:                                         ; preds = %._crit_edge20, %.preheader.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next28, %._crit_edge20 ]
  %3 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv27
  %4 = load i32, ptr %3, align 16
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %5
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph19
  %indvars.iv23 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next24, %._crit_edge ]
  store float 0.000000e+00, ptr %6, align 4
  %7 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv27, i64 %indvars.iv23
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %9
  %11 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %indvars.iv27, i64 %indvars.iv23
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %.promoted = load float, ptr %10, align 4
  br label %16

16:                                               ; preds = %16, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %17 = phi float [ %.promoted, %.lr.ph ], [ %23, %16 ]
  %18 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %indvars.iv23, i64 %indvars.iv
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = tail call float @llvm.fmuladd.f32(float %15, float %22, float %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count29
  br i1 %exitcond.not, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %16
  store float %23, ptr %10, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count29
  br i1 %exitcond26.not, label %._crit_edge20, label %.lr.ph

._crit_edge20:                                    ; preds = %._crit_edge
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count29
  br i1 %exitcond30.not, label %._crit_edge22, label %.lr.ph19

._crit_edge22:                                    ; preds = %._crit_edge20, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %0, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  %puts51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  tail call void @exit(i32 noundef 0) #7
  unreachable

5:                                                ; preds = %2
  %6 = icmp eq i32 %0, 2
  br i1 %6, label %7, label %._crit_edge91

._crit_edge91:                                    ; preds = %5
  %.pre = load i32, ptr @size, align 4
  br label %12

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @atoi(ptr nocapture noundef %9) #8
  %11 = add i32 %10, -1025
  %or.cond = icmp ult i32 %11, -1023
  %spec.store.select = select i1 %or.cond, i32 1024, i32 %10
  store i32 %spec.store.select, ptr @size, align 4
  br label %12

12:                                               ; preds = %7, %._crit_edge91
  %13 = phi i32 [ %.pre, %._crit_edge91 ], [ %spec.store.select, %7 ]
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13, i32 noundef %13)
  %15 = load i32, ptr @size, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %.preheader54.lr.ph, label %._crit_edge62

.preheader54.lr.ph:                               ; preds = %12
  %wide.trip.count77 = zext i32 %15 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.preheader54.lr.ph
  %indvars.iv75 = phi i64 [ 0, %.preheader54.lr.ph ], [ %indvars.iv.next76, %._crit_edge ]
  %17 = trunc i64 %indvars.iv75 to i32
  %18 = mul nsw i32 %15, %17
  %19 = sdiv i32 %18, 2
  br label %20

.preheader53:                                     ; preds = %._crit_edge
  br i1 %16, label %.preheader52.lr.ph, label %._crit_edge62

.preheader52.lr.ph:                               ; preds = %.preheader53
  %wide.trip.count85 = zext i32 %15 to i64
  br label %.lr.ph59

20:                                               ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %21 = add nuw nsw i64 %indvars.iv, %indvars.iv75
  %22 = trunc i64 %21 to i32
  %23 = mul i32 %15, %22
  %24 = srem i32 %23, %15
  %25 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %indvars.iv75, i64 %indvars.iv
  store i32 %24, ptr %25, align 4
  %26 = trunc i64 %indvars.iv to i32
  %27 = add nsw i32 %18, %26
  %28 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %indvars.iv75, i64 %indvars.iv
  store i32 %27, ptr %28, align 4
  %29 = mul nsw i32 %15, %26
  %30 = sdiv i32 %29, 2
  %31 = add nsw i32 %30, %19
  %32 = srem i32 %31, %15
  %33 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv75, i64 %indvars.iv
  store i32 %32, ptr %33, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count77
  br i1 %exitcond.not, label %._crit_edge, label %20

._crit_edge:                                      ; preds = %20
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond78.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count77
  br i1 %exitcond78.not, label %.preheader53, label %.lr.ph

.lr.ph59:                                         ; preds = %._crit_edge60, %.preheader52.lr.ph
  %indvars.iv83 = phi i64 [ 0, %.preheader52.lr.ph ], [ %indvars.iv.next84, %._crit_edge60 ]
  %34 = trunc i64 %indvars.iv83 to i32
  br label %35

35:                                               ; preds = %35, %.lr.ph59
  %indvars.iv79 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next80, %35 ]
  %36 = mul nuw nsw i64 %indvars.iv79, %indvars.iv83
  %37 = trunc i64 %36 to i32
  %38 = mul nsw i32 %37, %34
  %39 = add nuw nsw i32 %38, 10
  %40 = sitofp i32 %39 to float
  %41 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %indvars.iv83, i64 %indvars.iv79
  %42 = load i32, ptr %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %43
  store float %40, ptr %44, align 4
  %45 = udiv i32 %37, 3
  %46 = trunc i64 %36 to i32
  %47 = add i32 %46, 3
  %48 = sub i32 %47, %45
  %49 = sdiv i32 %34, %48
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %indvars.iv83, i64 %indvars.iv79
  %52 = load i32, ptr %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %53
  store float %50, ptr %54, align 4
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count85
  br i1 %exitcond82.not, label %._crit_edge60, label %35

._crit_edge60:                                    ; preds = %35
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge62, label %.lr.ph59

._crit_edge62:                                    ; preds = %._crit_edge60, %.preheader53, %12
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  tail call void @matmult()
  %puts50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %55 = load i32, ptr @size, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %.preheader.lr.ph, label %._crit_edge73.thread

.preheader.lr.ph:                                 ; preds = %._crit_edge62
  %total.promoted66 = load double, ptr @total, align 8
  %57 = zext i32 %55 to i64
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %._crit_edge65, %.preheader.lr.ph
  %indvars.iv89 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next90, %._crit_edge65 ]
  %total.promoted7071 = phi double [ %total.promoted66, %.preheader.lr.ph ], [ %total.promoted68, %._crit_edge65 ]
  br label %58

58:                                               ; preds = %70, %.lr.ph64
  %indvars.iv87 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next88, %70 ]
  %total.promoted69 = phi double [ %total.promoted7071, %.lr.ph64 ], [ %total.promoted68, %70 ]
  %59 = phi double [ %total.promoted7071, %.lr.ph64 ], [ %71, %70 ]
  %60 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv89, i64 %indvars.iv87
  %61 = load i32, ptr %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = fcmp ogt float %64, 3.000000e+06
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = fdiv float %64, 1.000000e+06
  %68 = fpext float %67 to double
  %69 = fadd double %59, %68
  store double %69, ptr @total, align 8
  br label %70

70:                                               ; preds = %66, %58
  %total.promoted68 = phi double [ %total.promoted69, %58 ], [ %69, %66 ]
  %71 = phi double [ %59, %58 ], [ %69, %66 ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 3
  %72 = icmp ult i64 %indvars.iv.next88, %57
  br i1 %72, label %58, label %._crit_edge65

._crit_edge65:                                    ; preds = %70
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 2
  %73 = icmp ult i64 %indvars.iv.next90, %57
  br i1 %73, label %.lr.ph64, label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge65
  %74 = icmp eq i32 %55, 64
  br i1 %74, label %75, label %._crit_edge73.thread

._crit_edge73.thread:                             ; preds = %._crit_edge73, %._crit_edge62
  br label %75

75:                                               ; preds = %._crit_edge73.thread, %._crit_edge73
  %.str.6.sink = phi ptr [ @.str.6, %._crit_edge73.thread ], [ @.str.5, %._crit_edge73 ]
  %76 = load double, ptr @total, align 8
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.6.sink, double noundef %76)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

declare void @exit.4(i32, ...)

declare i32 @printf.5(ptr, i32, ...)

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
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
