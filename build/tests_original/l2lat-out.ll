; ModuleID = 'l2lat-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@a = dso_local global [160000 x ptr] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"Time is %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"L2 Latency (ns) is %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"L2 BW is %f MB/sec\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"b is %ld\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %.01316 = phi i64 [ 0, %0 ], [ %2, %1 ]
  %2 = add nuw nsw i64 %.01316, 1
  %3 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %2
  %4 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %.01316
  store ptr %3, ptr %4, align 8
  %exitcond.not = icmp eq i64 %2, 160000
  br i1 %exitcond.not, label %5, label %1

5:                                                ; preds = %1
  %6 = tail call double @second()
  %.11517 = load ptr, ptr getelementptr inbounds ([160000 x ptr], ptr @a, i64 0, i64 7), align 8
  br label %.preheader

.preheader:                                       ; preds = %10, %5
  %.120 = phi i64 [ 0, %5 ], [ %11, %10 ]
  br label %7

7:                                                ; preds = %7, %.preheader
  %.11519 = phi ptr [ %.11517, %.preheader ], [ %.115, %7 ]
  %.018 = phi i64 [ 0, %.preheader ], [ %9, %7 ]
  %8 = getelementptr inbounds ptr, ptr %.11519, i64 8
  %9 = add nuw nsw i64 %.018, 1
  %.115 = load ptr, ptr %8, align 8
  %exitcond21.not = icmp eq i64 %9, 5000
  br i1 %exitcond21.not, label %10, label %7

10:                                               ; preds = %7
  %11 = add nuw nsw i64 %.120, 1
  %exitcond22.not = icmp eq i64 %11, 1500
  br i1 %exitcond22.not, label %12, label %.preheader

12:                                               ; preds = %10
  %13 = tail call double @second()
  %14 = fsub double %13, %6
  %15 = load ptr, ptr @stderr, align 8
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str, double noundef %14) #2
  %17 = load ptr, ptr @stderr, align 8
  %18 = fdiv double %14, 7.500000e+06
  %19 = fmul double %18, 1.000000e+09
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.1, double noundef %19) #2
  %21 = load ptr, ptr @stderr, align 8
  %22 = fmul double %14, 1.000000e+06
  %23 = fdiv double 4.800000e+08, %22
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.2, double noundef %23) #2
  %25 = load ptr, ptr @stderr, align 8
  %26 = ptrtoint ptr %.115 to i64
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.3, i64 noundef %26) #2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local double @second() local_unnamed_addr #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #3
  %3 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = sitofp i64 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  %7 = load i64, ptr %1, align 8
  %8 = sitofp i64 %7 to double
  %9 = fadd double %6, %8
  ret double %9
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @exit(i32, ...)

declare i32 @printf(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, i32, ...) @printf(ptr @0, i32 %1)
  call void (i32, ...) @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

define void @assert_cfg_ft(i32 %0, i32 %1, i32 %2) {
entry:
  %3 = icmp ne i32 %0, 1
  br i1 %3, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, i32, ...) @printf(ptr @1, i32 %1, i32 %2)
  call void (i32, ...) @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
