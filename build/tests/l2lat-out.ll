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
  %Diff_phi = phi i32 [ 3, %0 ], [ %24, %1 ]
  %Dest_phi = phi i32 [ 1, %0 ], [ %3, %1 ]
  %2 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %.01316 = phi i64 [ 0, %0 ], [ %9, %1 ]
  %3 = xor i32 %Diff_phi, %Dest_phi
  %4 = icmp eq i32 %3, 2
  %5 = zext i1 %4 to i32
  call void @assert_cfg_ft(i32 %5, i32 %3, i32 0)
  %6 = icmp eq i64 %.01316, %2
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = add nuw nsw i64 %2, 1
  %9 = add nuw nsw i64 %.01316, 1
  %10 = icmp eq i64 %9, %8
  %11 = zext i1 %10 to i32
  call void @assert_ft(i32 %11, i32 1)
  %12 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %8
  %13 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %9
  %14 = icmp eq ptr %13, %12
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %2
  %17 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %.01316
  %18 = icmp eq ptr %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  store ptr %13, ptr %17, align 8
  %20 = icmp eq i64 %8, 160000
  %exitcond.not = icmp eq i64 %9, 160000
  %21 = icmp eq i1 %exitcond.not, %20
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = select i1 %exitcond.not, i32 3, i32 2
  %24 = xor i32 2, %23
  br i1 %exitcond.not, label %25, label %1

25:                                               ; preds = %1
  %Diff_phi23 = phi i32 [ %24, %1 ]
  %Dest_phi24 = phi i32 [ %3, %1 ]
  %26 = xor i32 %Diff_phi23, %Dest_phi24
  %27 = icmp eq i32 %26, 3
  %28 = zext i1 %27 to i32
  call void @assert_cfg_ft(i32 %28, i32 %26, i32 0)
  %29 = tail call double @second()
  %30 = load ptr, ptr getelementptr inbounds ([160000 x ptr], ptr @a, i64 0, i64 7), align 8
  %.11517 = load ptr, ptr getelementptr inbounds ([160000 x ptr], ptr @a, i64 0, i64 7), align 8
  %31 = icmp eq ptr %.11517, %30
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  br label %.preheader

.preheader:                                       ; preds = %65, %25
  %Diff_phi25 = phi i32 [ 7, %25 ], [ %77, %65 ]
  %Dest_phi26 = phi i32 [ %26, %25 ], [ %66, %65 ]
  %33 = phi i64 [ 0, %25 ], [ %69, %65 ]
  %.120 = phi i64 [ 0, %25 ], [ %70, %65 ]
  %34 = xor i32 %Diff_phi25, %Dest_phi26
  %35 = icmp eq i32 %34, 4
  %36 = zext i1 %35 to i32
  call void @assert_cfg_ft(i32 %36, i32 %34, i32 0)
  %37 = icmp eq i64 %.120, %33
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  br label %39

39:                                               ; preds = %39, %.preheader
  %Diff_phi27 = phi i32 [ 1, %.preheader ], [ %64, %39 ]
  %Dest_phi28 = phi i32 [ %34, %.preheader ], [ %42, %39 ]
  %40 = phi ptr [ %30, %.preheader ], [ %57, %39 ]
  %.11519 = phi ptr [ %.11517, %.preheader ], [ %.115, %39 ]
  %41 = phi i64 [ 0, %.preheader ], [ %53, %39 ]
  %.018 = phi i64 [ 0, %.preheader ], [ %54, %39 ]
  %42 = xor i32 %Diff_phi27, %Dest_phi28
  %43 = icmp eq i32 %42, 5
  %44 = zext i1 %43 to i32
  call void @assert_cfg_ft(i32 %44, i32 %42, i32 0)
  %45 = icmp eq ptr %.11519, %40
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = icmp eq i64 %.018, %41
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = getelementptr inbounds ptr, ptr %40, i64 8
  %50 = getelementptr inbounds ptr, ptr %.11519, i64 8
  %51 = icmp eq ptr %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = add nuw nsw i64 %41, 1
  %54 = add nuw nsw i64 %.018, 1
  %55 = icmp eq i64 %54, %53
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  %57 = load ptr, ptr %49, align 8
  %.115 = load ptr, ptr %50, align 8
  %58 = icmp eq ptr %.115, %57
  %59 = zext i1 %58 to i32
  call void @assert_ft(i32 %59, i32 1)
  %60 = icmp eq i64 %53, 5000
  %exitcond21.not = icmp eq i64 %54, 5000
  %61 = icmp eq i1 %exitcond21.not, %60
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = select i1 %exitcond21.not, i32 6, i32 5
  %64 = xor i32 5, %63
  br i1 %exitcond21.not, label %65, label %39

65:                                               ; preds = %39
  %Diff_phi29 = phi i32 [ %64, %39 ]
  %Dest_phi30 = phi i32 [ %42, %39 ]
  %66 = xor i32 %Diff_phi29, %Dest_phi30
  %67 = icmp eq i32 %66, 6
  %68 = zext i1 %67 to i32
  call void @assert_cfg_ft(i32 %68, i32 %66, i32 0)
  %69 = add nuw nsw i64 %33, 1
  %70 = add nuw nsw i64 %.120, 1
  %71 = icmp eq i64 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = icmp eq i64 %69, 1500
  %exitcond22.not = icmp eq i64 %70, 1500
  %74 = icmp eq i1 %exitcond22.not, %73
  %75 = zext i1 %74 to i32
  call void @assert_ft(i32 %75, i32 1)
  %76 = select i1 %exitcond22.not, i32 7, i32 4
  %77 = xor i32 6, %76
  br i1 %exitcond22.not, label %78, label %.preheader

78:                                               ; preds = %65
  %Diff_phi31 = phi i32 [ %77, %65 ]
  %Dest_phi32 = phi i32 [ %66, %65 ]
  %79 = xor i32 %Diff_phi31, %Dest_phi32
  %80 = icmp eq i32 %79, 7
  %81 = zext i1 %80 to i32
  call void @assert_cfg_ft(i32 %81, i32 %79, i32 0)
  %82 = tail call double @second()
  %83 = fsub double %82, %29
  %84 = fsub double %82, %29
  %85 = load ptr, ptr @stderr, align 8
  %86 = load ptr, ptr @stderr, align 8
  %87 = icmp eq ptr %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str, double noundef %84) #2
  %90 = load ptr, ptr @stderr, align 8
  %91 = load ptr, ptr @stderr, align 8
  %92 = icmp eq ptr %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = fdiv double %83, 7.500000e+06
  %95 = fdiv double %84, 7.500000e+06
  %96 = fmul double %94, 1.000000e+09
  %97 = fmul double %95, 1.000000e+09
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.1, double noundef %97) #2
  %99 = load ptr, ptr @stderr, align 8
  %100 = load ptr, ptr @stderr, align 8
  %101 = icmp eq ptr %100, %99
  %102 = zext i1 %101 to i32
  call void @assert_ft(i32 %102, i32 1)
  %103 = fmul double %83, 1.000000e+06
  %104 = fmul double %84, 1.000000e+06
  %105 = fdiv double 4.800000e+08, %103
  %106 = fdiv double 4.800000e+08, %104
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.2, double noundef %106) #2
  %108 = load ptr, ptr @stderr, align 8
  %109 = load ptr, ptr @stderr, align 8
  %110 = icmp eq ptr %109, %108
  %111 = zext i1 %110 to i32
  call void @assert_ft(i32 %111, i32 1)
  %112 = ptrtoint ptr %57 to i64
  %113 = ptrtoint ptr %.115 to i64
  %114 = icmp eq i64 %113, %112
  %115 = zext i1 %114 to i32
  call void @assert_ft(i32 %115, i32 1)
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.3, i64 noundef %113) #2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local double @second() local_unnamed_addr #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #3
  %3 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load i64, ptr %3, align 8
  %8 = load i64, ptr %4, align 8
  %9 = icmp eq i64 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = sitofp i64 %7 to double
  %12 = sitofp i64 %8 to double
  %13 = fdiv double %11, 1.000000e+06
  %14 = fdiv double %12, 1.000000e+06
  %15 = load i64, ptr %1, align 8
  %16 = load i64, ptr %1, align 8
  %17 = icmp eq i64 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = sitofp i64 %15 to double
  %20 = sitofp i64 %16 to double
  %21 = fadd double %13, %19
  %22 = fadd double %14, %20
  ret double %22
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
