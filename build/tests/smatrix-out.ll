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
  %2 = load i32, ptr @size, align 4
  %3 = icmp eq i32 %2, %1
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = icmp sgt i32 %1, 0
  %6 = icmp sgt i32 %2, 0
  %7 = icmp eq i1 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = select i1 %6, i32 2, i32 8
  %10 = xor i32 1, %9
  br i1 %6, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %0
  %Diff_phi = phi i32 [ %10, %0 ]
  %Dest_phi = phi i32 [ 1, %0 ]
  %11 = xor i32 %Diff_phi, %Dest_phi
  %12 = icmp eq i32 %11, 2
  %13 = zext i1 %12 to i32
  call void @assert_cfg_ft(i32 %13, i32 %11, i32 0)
  %14 = zext i32 %1 to i64
  %wide.trip.count29 = zext i32 %2 to i64
  %15 = icmp eq i64 %wide.trip.count29, %14
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  br label %.lr.ph19

.lr.ph19:                                         ; preds = %._crit_edge20, %.preheader.lr.ph
  %Diff_phi31 = phi i32 [ %137, %._crit_edge20 ], [ 1, %.preheader.lr.ph ]
  %Dest_phi32 = phi i32 [ %127, %._crit_edge20 ], [ %11, %.preheader.lr.ph ]
  %17 = phi i64 [ 0, %.preheader.lr.ph ], [ %130, %._crit_edge20 ]
  %indvars.iv27 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next28, %._crit_edge20 ]
  %18 = xor i32 %Diff_phi31, %Dest_phi32
  %19 = icmp eq i32 %18, 3
  %20 = zext i1 %19 to i32
  call void @assert_cfg_ft(i32 %20, i32 %18, i32 0)
  %21 = icmp eq i64 %indvars.iv27, %17
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %17
  %24 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv27
  %25 = icmp eq ptr %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = load i32, ptr %23, align 16
  %28 = load i32, ptr %24, align 16
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = sext i32 %27 to i64
  %32 = sext i32 %28 to i64
  %33 = icmp eq i64 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %31
  %36 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %32
  %37 = icmp eq ptr %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph19
  %Diff_phi33 = phi i32 [ 7, %.lr.ph19 ], [ %126, %._crit_edge ]
  %Dest_phi34 = phi i32 [ %18, %.lr.ph19 ], [ %116, %._crit_edge ]
  %39 = phi i64 [ 0, %.lr.ph19 ], [ %119, %._crit_edge ]
  %indvars.iv23 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next24, %._crit_edge ]
  %40 = xor i32 %Diff_phi33, %Dest_phi34
  %41 = icmp eq i32 %40, 4
  %42 = zext i1 %41 to i32
  call void @assert_cfg_ft(i32 %42, i32 %40, i32 0)
  %43 = icmp eq i64 %indvars.iv23, %39
  %44 = zext i1 %43 to i32
  call void @assert_ft(i32 %44, i32 1)
  store float 0.000000e+00, ptr %36, align 4
  %45 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %17, i64 %39
  %46 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv27, i64 %indvars.iv23
  %47 = icmp eq ptr %46, %45
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = load i32, ptr %45, align 4
  %50 = load i32, ptr %46, align 4
  %51 = icmp eq i32 %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = sext i32 %49 to i64
  %54 = sext i32 %50 to i64
  %55 = icmp eq i64 %54, %53
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  %57 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %53
  %58 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %54
  %59 = icmp eq ptr %58, %57
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %17, i64 %39
  %62 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %indvars.iv27, i64 %indvars.iv23
  %63 = icmp eq ptr %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = load i32, ptr %61, align 4
  %66 = load i32, ptr %62, align 4
  %67 = icmp eq i32 %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = sext i32 %65 to i64
  %70 = sext i32 %66 to i64
  %71 = icmp eq i64 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %69
  %74 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %70
  %75 = icmp eq ptr %74, %73
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  %77 = load float, ptr %73, align 4
  %78 = load float, ptr %74, align 4
  %79 = load float, ptr %57, align 4
  %.promoted = load float, ptr %58, align 4
  br label %80

80:                                               ; preds = %80, %.lr.ph
  %Diff_phi35 = phi i32 [ 1, %.lr.ph ], [ %115, %80 ]
  %Dest_phi36 = phi i32 [ %40, %.lr.ph ], [ %84, %80 ]
  %81 = phi i64 [ 0, %.lr.ph ], [ %108, %80 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %80 ]
  %82 = phi float [ %79, %.lr.ph ], [ %107, %80 ]
  %83 = phi float [ %.promoted, %.lr.ph ], [ %107, %80 ]
  %84 = xor i32 %Diff_phi35, %Dest_phi36
  %85 = icmp eq i32 %84, 5
  %86 = zext i1 %85 to i32
  call void @assert_cfg_ft(i32 %86, i32 %84, i32 0)
  %87 = icmp eq i64 %indvars.iv, %81
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %39, i64 %81
  %90 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %indvars.iv23, i64 %indvars.iv
  %91 = icmp eq ptr %90, %89
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = load i32, ptr %89, align 4
  %94 = load i32, ptr %90, align 4
  %95 = icmp eq i32 %94, %93
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = sext i32 %93 to i64
  %98 = sext i32 %94 to i64
  %99 = icmp eq i64 %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %97
  %102 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %98
  %103 = icmp eq ptr %102, %101
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  %105 = load float, ptr %101, align 4
  %106 = load float, ptr %102, align 4
  %107 = tail call float @llvm.fmuladd.f32(float %78, float %106, float %83)
  %108 = add nuw nsw i64 %81, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %109 = icmp eq i64 %indvars.iv.next, %108
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = icmp eq i64 %108, %14
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count29
  %112 = icmp eq i1 %exitcond.not, %111
  %113 = zext i1 %112 to i32
  call void @assert_ft(i32 %113, i32 1)
  %114 = select i1 %exitcond.not, i32 6, i32 5
  %115 = xor i32 5, %114
  br i1 %exitcond.not, label %._crit_edge, label %80

._crit_edge:                                      ; preds = %80
  %Diff_phi37 = phi i32 [ %115, %80 ]
  %Dest_phi38 = phi i32 [ %84, %80 ]
  %116 = xor i32 %Diff_phi37, %Dest_phi38
  %117 = icmp eq i32 %116, 6
  %118 = zext i1 %117 to i32
  call void @assert_cfg_ft(i32 %118, i32 %116, i32 0)
  store float %107, ptr %58, align 4
  %119 = add nuw nsw i64 %39, 1
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %120 = icmp eq i64 %indvars.iv.next24, %119
  %121 = zext i1 %120 to i32
  call void @assert_ft(i32 %121, i32 1)
  %122 = icmp eq i64 %119, %14
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count29
  %123 = icmp eq i1 %exitcond26.not, %122
  %124 = zext i1 %123 to i32
  call void @assert_ft(i32 %124, i32 1)
  %125 = select i1 %exitcond26.not, i32 7, i32 4
  %126 = xor i32 6, %125
  br i1 %exitcond26.not, label %._crit_edge20, label %.lr.ph

._crit_edge20:                                    ; preds = %._crit_edge
  %Diff_phi39 = phi i32 [ %126, %._crit_edge ]
  %Dest_phi40 = phi i32 [ %116, %._crit_edge ]
  %127 = xor i32 %Diff_phi39, %Dest_phi40
  %128 = icmp eq i32 %127, 7
  %129 = zext i1 %128 to i32
  call void @assert_cfg_ft(i32 %129, i32 %127, i32 0)
  %130 = add nuw nsw i64 %17, 1
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %131 = icmp eq i64 %indvars.iv.next28, %130
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = icmp eq i64 %130, %14
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count29
  %134 = icmp eq i1 %exitcond30.not, %133
  %135 = zext i1 %134 to i32
  call void @assert_ft(i32 %135, i32 1)
  %136 = select i1 %exitcond30.not, i32 8, i32 3
  %137 = xor i32 7, %136
  br i1 %exitcond30.not, label %._crit_edge22, label %.lr.ph19

._crit_edge22:                                    ; preds = %._crit_edge20, %0
  %Diff_phi41 = phi i32 [ %137, %._crit_edge20 ], [ %10, %0 ]
  %Dest_phi42 = phi i32 [ %127, %._crit_edge20 ], [ 1, %0 ]
  %138 = xor i32 %Diff_phi41, %Dest_phi42
  %139 = icmp eq i32 %138, 8
  %140 = zext i1 %139 to i32
  call void @assert_cfg_ft(i32 %140, i32 %138, i32 0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %0, 2
  %4 = icmp sgt i32 %0, 2
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = select i1 %4, i32 10, i32 11
  %8 = xor i32 9, %7
  br i1 %4, label %9, label %13

9:                                                ; preds = %2
  %Diff_phi = phi i32 [ %8, %2 ]
  %Dest_phi = phi i32 [ 9, %2 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 10
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %puts51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  tail call void @exit(i32 noundef 0) #7
  unreachable

13:                                               ; preds = %2
  %Diff_phi92 = phi i32 [ %8, %2 ]
  %Dest_phi93 = phi i32 [ 9, %2 ]
  %14 = xor i32 %Diff_phi92, %Dest_phi93
  %15 = icmp eq i32 %14, 11
  %16 = zext i1 %15 to i32
  call void @assert_cfg_ft(i32 %16, i32 %14, i32 0)
  %17 = icmp eq i32 %0, 2
  %18 = icmp eq i32 %0, 2
  %19 = icmp eq i1 %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = select i1 %18, i32 13, i32 12
  %22 = xor i32 11, %21
  br i1 %18, label %29, label %._crit_edge91

._crit_edge91:                                    ; preds = %13
  %Diff_phi94 = phi i32 [ %22, %13 ]
  %Dest_phi95 = phi i32 [ %14, %13 ]
  %23 = xor i32 %Diff_phi94, %Dest_phi95
  %24 = icmp eq i32 %23, 12
  %25 = zext i1 %24 to i32
  call void @assert_cfg_ft(i32 %25, i32 %23, i32 0)
  %26 = load i32, ptr @size, align 4
  %.pre = load i32, ptr @size, align 4
  %27 = icmp eq i32 %.pre, %26
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  br label %52

29:                                               ; preds = %13
  %Diff_phi96 = phi i32 [ %22, %13 ]
  %Dest_phi97 = phi i32 [ %14, %13 ]
  %30 = xor i32 %Diff_phi96, %Dest_phi97
  %31 = icmp eq i32 %30, 13
  %32 = zext i1 %31 to i32
  call void @assert_cfg_ft(i32 %32, i32 %30, i32 0)
  %33 = getelementptr inbounds ptr, ptr %1, i64 1
  %34 = getelementptr inbounds ptr, ptr %1, i64 1
  %35 = icmp eq ptr %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = load ptr, ptr %33, align 8
  %38 = load ptr, ptr %34, align 8
  %39 = icmp eq ptr %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = tail call i32 @atoi(ptr nocapture noundef %38) #8
  %42 = add i32 %41, -1025
  %43 = add i32 %41, -1025
  %44 = icmp eq i32 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = icmp ult i32 %42, -1023
  %or.cond = icmp ult i32 %43, -1023
  %47 = icmp eq i1 %or.cond, %46
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = select i1 %46, i32 1024, i32 %41
  %spec.store.select = select i1 %or.cond, i32 1024, i32 %41
  %50 = icmp eq i32 %spec.store.select, %49
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  store i32 %spec.store.select, ptr @size, align 4
  br label %52

52:                                               ; preds = %29, %._crit_edge91
  %Diff_phi98 = phi i32 [ 2, %._crit_edge91 ], [ 3, %29 ]
  %Dest_phi99 = phi i32 [ %23, %._crit_edge91 ], [ %30, %29 ]
  %53 = phi i32 [ %26, %._crit_edge91 ], [ %49, %29 ]
  %54 = phi i32 [ %.pre, %._crit_edge91 ], [ %spec.store.select, %29 ]
  %55 = xor i32 %Diff_phi98, %Dest_phi99
  %56 = icmp eq i32 %55, 14
  %57 = zext i1 %56 to i32
  call void @assert_cfg_ft(i32 %57, i32 %55, i32 0)
  %58 = icmp eq i32 %54, %53
  %59 = zext i1 %58 to i32
  call void @assert_ft(i32 %59, i32 1)
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %54, i32 noundef %54)
  %61 = load i32, ptr @size, align 4
  %62 = load i32, ptr @size, align 4
  %63 = icmp eq i32 %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = icmp sgt i32 %61, 0
  %66 = icmp sgt i32 %62, 0
  %67 = icmp eq i1 %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = select i1 %66, i32 15, i32 24
  %70 = xor i32 14, %69
  br i1 %66, label %.preheader54.lr.ph, label %._crit_edge62

.preheader54.lr.ph:                               ; preds = %52
  %Diff_phi100 = phi i32 [ %70, %52 ]
  %Dest_phi101 = phi i32 [ %55, %52 ]
  %71 = xor i32 %Diff_phi100, %Dest_phi101
  %72 = icmp eq i32 %71, 15
  %73 = zext i1 %72 to i32
  call void @assert_cfg_ft(i32 %73, i32 %71, i32 0)
  %74 = zext i32 %61 to i64
  %wide.trip.count77 = zext i32 %62 to i64
  %75 = icmp eq i64 %wide.trip.count77, %74
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.preheader54.lr.ph
  %Diff_phi102 = phi i32 [ %183, %._crit_edge ], [ 31, %.preheader54.lr.ph ]
  %Dest_phi103 = phi i32 [ %173, %._crit_edge ], [ %71, %.preheader54.lr.ph ]
  %77 = phi i64 [ 0, %.preheader54.lr.ph ], [ %176, %._crit_edge ]
  %indvars.iv75 = phi i64 [ 0, %.preheader54.lr.ph ], [ %indvars.iv.next76, %._crit_edge ]
  %78 = xor i32 %Diff_phi102, %Dest_phi103
  %79 = icmp eq i32 %78, 16
  %80 = zext i1 %79 to i32
  call void @assert_cfg_ft(i32 %80, i32 %78, i32 0)
  %81 = icmp eq i64 %indvars.iv75, %77
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  %83 = trunc i64 %77 to i32
  %84 = trunc i64 %indvars.iv75 to i32
  %85 = icmp eq i32 %84, %83
  %86 = zext i1 %85 to i32
  call void @assert_ft(i32 %86, i32 1)
  %87 = mul nsw i32 %61, %83
  %88 = mul nsw i32 %62, %84
  %89 = icmp eq i32 %88, %87
  %90 = zext i1 %89 to i32
  call void @assert_ft(i32 %90, i32 1)
  %91 = sdiv i32 %87, 2
  %92 = sdiv i32 %88, 2
  %93 = icmp eq i32 %92, %91
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  br label %106

.preheader53:                                     ; preds = %._crit_edge
  %Diff_phi104 = phi i32 [ %183, %._crit_edge ]
  %Dest_phi105 = phi i32 [ %173, %._crit_edge ]
  %95 = xor i32 %Diff_phi104, %Dest_phi105
  %96 = icmp eq i32 %95, 17
  %97 = zext i1 %96 to i32
  call void @assert_cfg_ft(i32 %97, i32 %95, i32 0)
  %98 = select i1 %66, i32 18, i32 24
  %99 = xor i32 17, %98
  br i1 %66, label %.preheader52.lr.ph, label %._crit_edge62

.preheader52.lr.ph:                               ; preds = %.preheader53
  %Diff_phi106 = phi i32 [ %99, %.preheader53 ]
  %Dest_phi107 = phi i32 [ %95, %.preheader53 ]
  %100 = xor i32 %Diff_phi106, %Dest_phi107
  %101 = icmp eq i32 %100, 18
  %102 = zext i1 %101 to i32
  call void @assert_cfg_ft(i32 %102, i32 %100, i32 0)
  %103 = zext i32 %61 to i64
  %wide.trip.count85 = zext i32 %62 to i64
  %104 = icmp eq i64 %wide.trip.count85, %103
  %105 = zext i1 %104 to i32
  call void @assert_ft(i32 %105, i32 1)
  br label %.lr.ph59

106:                                              ; preds = %106, %.lr.ph
  %Diff_phi108 = phi i32 [ 3, %.lr.ph ], [ %172, %106 ]
  %Dest_phi109 = phi i32 [ %78, %.lr.ph ], [ %108, %106 ]
  %107 = phi i64 [ 0, %.lr.ph ], [ %165, %106 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %106 ]
  %108 = xor i32 %Diff_phi108, %Dest_phi109
  %109 = icmp eq i32 %108, 19
  %110 = zext i1 %109 to i32
  call void @assert_cfg_ft(i32 %110, i32 %108, i32 0)
  %111 = icmp eq i64 %indvars.iv, %107
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  %113 = add nuw nsw i64 %107, %77
  %114 = add nuw nsw i64 %indvars.iv, %indvars.iv75
  %115 = icmp eq i64 %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = trunc i64 %113 to i32
  %118 = trunc i64 %114 to i32
  %119 = icmp eq i32 %118, %117
  %120 = zext i1 %119 to i32
  call void @assert_ft(i32 %120, i32 1)
  %121 = mul i32 %61, %117
  %122 = mul i32 %62, %118
  %123 = icmp eq i32 %122, %121
  %124 = zext i1 %123 to i32
  call void @assert_ft(i32 %124, i32 1)
  %125 = srem i32 %121, %61
  %126 = srem i32 %122, %62
  %127 = icmp eq i32 %126, %125
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %77, i64 %107
  %130 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %indvars.iv75, i64 %indvars.iv
  %131 = icmp eq ptr %130, %129
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  store i32 %126, ptr %130, align 4
  %133 = trunc i64 %107 to i32
  %134 = trunc i64 %indvars.iv to i32
  %135 = icmp eq i32 %134, %133
  %136 = zext i1 %135 to i32
  call void @assert_ft(i32 %136, i32 1)
  %137 = add nsw i32 %87, %133
  %138 = add nsw i32 %88, %134
  %139 = icmp eq i32 %138, %137
  %140 = zext i1 %139 to i32
  call void @assert_ft(i32 %140, i32 1)
  %141 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %77, i64 %107
  %142 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %indvars.iv75, i64 %indvars.iv
  %143 = icmp eq ptr %142, %141
  %144 = zext i1 %143 to i32
  call void @assert_ft(i32 %144, i32 1)
  store i32 %138, ptr %142, align 4
  %145 = mul nsw i32 %61, %133
  %146 = mul nsw i32 %62, %134
  %147 = icmp eq i32 %146, %145
  %148 = zext i1 %147 to i32
  call void @assert_ft(i32 %148, i32 1)
  %149 = sdiv i32 %145, 2
  %150 = sdiv i32 %146, 2
  %151 = icmp eq i32 %150, %149
  %152 = zext i1 %151 to i32
  call void @assert_ft(i32 %152, i32 1)
  %153 = add nsw i32 %149, %91
  %154 = add nsw i32 %150, %92
  %155 = icmp eq i32 %154, %153
  %156 = zext i1 %155 to i32
  call void @assert_ft(i32 %156, i32 1)
  %157 = srem i32 %153, %61
  %158 = srem i32 %154, %62
  %159 = icmp eq i32 %158, %157
  %160 = zext i1 %159 to i32
  call void @assert_ft(i32 %160, i32 1)
  %161 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %77, i64 %107
  %162 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv75, i64 %indvars.iv
  %163 = icmp eq ptr %162, %161
  %164 = zext i1 %163 to i32
  call void @assert_ft(i32 %164, i32 1)
  store i32 %158, ptr %162, align 4
  %165 = add nuw nsw i64 %107, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %166 = icmp eq i64 %indvars.iv.next, %165
  %167 = zext i1 %166 to i32
  call void @assert_ft(i32 %167, i32 1)
  %168 = icmp eq i64 %165, %74
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count77
  %169 = icmp eq i1 %exitcond.not, %168
  %170 = zext i1 %169 to i32
  call void @assert_ft(i32 %170, i32 1)
  %171 = select i1 %exitcond.not, i32 20, i32 19
  %172 = xor i32 19, %171
  br i1 %exitcond.not, label %._crit_edge, label %106

._crit_edge:                                      ; preds = %106
  %Diff_phi110 = phi i32 [ %172, %106 ]
  %Dest_phi111 = phi i32 [ %108, %106 ]
  %173 = xor i32 %Diff_phi110, %Dest_phi111
  %174 = icmp eq i32 %173, 20
  %175 = zext i1 %174 to i32
  call void @assert_cfg_ft(i32 %175, i32 %173, i32 0)
  %176 = add nuw nsw i64 %77, 1
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %177 = icmp eq i64 %indvars.iv.next76, %176
  %178 = zext i1 %177 to i32
  call void @assert_ft(i32 %178, i32 1)
  %179 = icmp eq i64 %176, %74
  %exitcond78.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count77
  %180 = icmp eq i1 %exitcond78.not, %179
  %181 = zext i1 %180 to i32
  call void @assert_ft(i32 %181, i32 1)
  %182 = select i1 %exitcond78.not, i32 17, i32 16
  %183 = xor i32 20, %182
  br i1 %exitcond78.not, label %.preheader53, label %.lr.ph

.lr.ph59:                                         ; preds = %._crit_edge60, %.preheader52.lr.ph
  %Diff_phi112 = phi i32 [ %291, %._crit_edge60 ], [ 7, %.preheader52.lr.ph ]
  %Dest_phi113 = phi i32 [ %281, %._crit_edge60 ], [ %100, %.preheader52.lr.ph ]
  %184 = phi i64 [ 0, %.preheader52.lr.ph ], [ %284, %._crit_edge60 ]
  %indvars.iv83 = phi i64 [ 0, %.preheader52.lr.ph ], [ %indvars.iv.next84, %._crit_edge60 ]
  %185 = xor i32 %Diff_phi112, %Dest_phi113
  %186 = icmp eq i32 %185, 21
  %187 = zext i1 %186 to i32
  call void @assert_cfg_ft(i32 %187, i32 %185, i32 0)
  %188 = icmp eq i64 %indvars.iv83, %184
  %189 = zext i1 %188 to i32
  call void @assert_ft(i32 %189, i32 1)
  %190 = trunc i64 %184 to i32
  %191 = trunc i64 %indvars.iv83 to i32
  %192 = icmp eq i32 %191, %190
  %193 = zext i1 %192 to i32
  call void @assert_ft(i32 %193, i32 1)
  br label %194

194:                                              ; preds = %194, %.lr.ph59
  %Diff_phi114 = phi i32 [ 3, %.lr.ph59 ], [ %280, %194 ]
  %Dest_phi115 = phi i32 [ %185, %.lr.ph59 ], [ %196, %194 ]
  %195 = phi i64 [ 0, %.lr.ph59 ], [ %273, %194 ]
  %indvars.iv79 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next80, %194 ]
  %196 = xor i32 %Diff_phi114, %Dest_phi115
  %197 = icmp eq i32 %196, 22
  %198 = zext i1 %197 to i32
  call void @assert_cfg_ft(i32 %198, i32 %196, i32 0)
  %199 = icmp eq i64 %indvars.iv79, %195
  %200 = zext i1 %199 to i32
  call void @assert_ft(i32 %200, i32 1)
  %201 = mul nuw nsw i64 %195, %184
  %202 = mul nuw nsw i64 %indvars.iv79, %indvars.iv83
  %203 = icmp eq i64 %202, %201
  %204 = zext i1 %203 to i32
  call void @assert_ft(i32 %204, i32 1)
  %205 = trunc i64 %201 to i32
  %206 = trunc i64 %202 to i32
  %207 = icmp eq i32 %206, %205
  %208 = zext i1 %207 to i32
  call void @assert_ft(i32 %208, i32 1)
  %209 = mul nsw i32 %205, %190
  %210 = mul nsw i32 %206, %191
  %211 = icmp eq i32 %210, %209
  %212 = zext i1 %211 to i32
  call void @assert_ft(i32 %212, i32 1)
  %213 = add nuw nsw i32 %209, 10
  %214 = add nuw nsw i32 %210, 10
  %215 = icmp eq i32 %214, %213
  %216 = zext i1 %215 to i32
  call void @assert_ft(i32 %216, i32 1)
  %217 = sitofp i32 %213 to float
  %218 = sitofp i32 %214 to float
  %219 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %184, i64 %195
  %220 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %indvars.iv83, i64 %indvars.iv79
  %221 = icmp eq ptr %220, %219
  %222 = zext i1 %221 to i32
  call void @assert_ft(i32 %222, i32 1)
  %223 = load i32, ptr %219, align 4
  %224 = load i32, ptr %220, align 4
  %225 = icmp eq i32 %224, %223
  %226 = zext i1 %225 to i32
  call void @assert_ft(i32 %226, i32 1)
  %227 = sext i32 %223 to i64
  %228 = sext i32 %224 to i64
  %229 = icmp eq i64 %228, %227
  %230 = zext i1 %229 to i32
  call void @assert_ft(i32 %230, i32 1)
  %231 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %227
  %232 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %228
  %233 = icmp eq ptr %232, %231
  %234 = zext i1 %233 to i32
  call void @assert_ft(i32 %234, i32 1)
  store float %218, ptr %232, align 4
  %235 = udiv i32 %205, 3
  %236 = udiv i32 %206, 3
  %237 = icmp eq i32 %236, %235
  %238 = zext i1 %237 to i32
  call void @assert_ft(i32 %238, i32 1)
  %239 = trunc i64 %201 to i32
  %240 = trunc i64 %202 to i32
  %241 = icmp eq i32 %240, %239
  %242 = zext i1 %241 to i32
  call void @assert_ft(i32 %242, i32 1)
  %243 = add i32 %239, 3
  %244 = add i32 %240, 3
  %245 = icmp eq i32 %244, %243
  %246 = zext i1 %245 to i32
  call void @assert_ft(i32 %246, i32 1)
  %247 = sub i32 %243, %235
  %248 = sub i32 %244, %236
  %249 = icmp eq i32 %248, %247
  %250 = zext i1 %249 to i32
  call void @assert_ft(i32 %250, i32 1)
  %251 = sdiv i32 %190, %247
  %252 = sdiv i32 %191, %248
  %253 = icmp eq i32 %252, %251
  %254 = zext i1 %253 to i32
  call void @assert_ft(i32 %254, i32 1)
  %255 = sitofp i32 %251 to float
  %256 = sitofp i32 %252 to float
  %257 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %184, i64 %195
  %258 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %indvars.iv83, i64 %indvars.iv79
  %259 = icmp eq ptr %258, %257
  %260 = zext i1 %259 to i32
  call void @assert_ft(i32 %260, i32 1)
  %261 = load i32, ptr %257, align 4
  %262 = load i32, ptr %258, align 4
  %263 = icmp eq i32 %262, %261
  %264 = zext i1 %263 to i32
  call void @assert_ft(i32 %264, i32 1)
  %265 = sext i32 %261 to i64
  %266 = sext i32 %262 to i64
  %267 = icmp eq i64 %266, %265
  %268 = zext i1 %267 to i32
  call void @assert_ft(i32 %268, i32 1)
  %269 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %265
  %270 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %266
  %271 = icmp eq ptr %270, %269
  %272 = zext i1 %271 to i32
  call void @assert_ft(i32 %272, i32 1)
  store float %256, ptr %270, align 4
  %273 = add nuw nsw i64 %195, 1
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %274 = icmp eq i64 %indvars.iv.next80, %273
  %275 = zext i1 %274 to i32
  call void @assert_ft(i32 %275, i32 1)
  %276 = icmp eq i64 %273, %103
  %exitcond82.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count85
  %277 = icmp eq i1 %exitcond82.not, %276
  %278 = zext i1 %277 to i32
  call void @assert_ft(i32 %278, i32 1)
  %279 = select i1 %exitcond82.not, i32 23, i32 22
  %280 = xor i32 22, %279
  br i1 %exitcond82.not, label %._crit_edge60, label %194

._crit_edge60:                                    ; preds = %194
  %Diff_phi116 = phi i32 [ %280, %194 ]
  %Dest_phi117 = phi i32 [ %196, %194 ]
  %281 = xor i32 %Diff_phi116, %Dest_phi117
  %282 = icmp eq i32 %281, 23
  %283 = zext i1 %282 to i32
  call void @assert_cfg_ft(i32 %283, i32 %281, i32 0)
  %284 = add nuw nsw i64 %184, 1
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %285 = icmp eq i64 %indvars.iv.next84, %284
  %286 = zext i1 %285 to i32
  call void @assert_ft(i32 %286, i32 1)
  %287 = icmp eq i64 %284, %103
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count85
  %288 = icmp eq i1 %exitcond86.not, %287
  %289 = zext i1 %288 to i32
  call void @assert_ft(i32 %289, i32 1)
  %290 = select i1 %exitcond86.not, i32 24, i32 21
  %291 = xor i32 23, %290
  br i1 %exitcond86.not, label %._crit_edge62, label %.lr.ph59

._crit_edge62:                                    ; preds = %._crit_edge60, %.preheader53, %52
  %Diff_phi118 = phi i32 [ %291, %._crit_edge60 ], [ %70, %52 ], [ %99, %.preheader53 ]
  %Dest_phi119 = phi i32 [ %281, %._crit_edge60 ], [ %55, %52 ], [ %95, %.preheader53 ]
  %292 = xor i32 %Diff_phi118, %Dest_phi119
  %293 = icmp eq i32 %292, 24
  %294 = zext i1 %293 to i32
  call void @assert_cfg_ft(i32 %294, i32 %292, i32 0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  tail call void @matmult()
  %puts50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %295 = load i32, ptr @size, align 4
  %296 = load i32, ptr @size, align 4
  %297 = icmp eq i32 %296, %295
  %298 = zext i1 %297 to i32
  call void @assert_ft(i32 %298, i32 1)
  %299 = icmp sgt i32 %295, 0
  %300 = icmp sgt i32 %296, 0
  %301 = icmp eq i1 %300, %299
  %302 = zext i1 %301 to i32
  call void @assert_ft(i32 %302, i32 1)
  %303 = select i1 %300, i32 25, i32 32
  %304 = xor i32 24, %303
  br i1 %300, label %.preheader.lr.ph, label %._crit_edge73.thread

.preheader.lr.ph:                                 ; preds = %._crit_edge62
  %Diff_phi120 = phi i32 [ %304, %._crit_edge62 ]
  %Dest_phi121 = phi i32 [ %292, %._crit_edge62 ]
  %305 = xor i32 %Diff_phi120, %Dest_phi121
  %306 = icmp eq i32 %305, 25
  %307 = zext i1 %306 to i32
  call void @assert_cfg_ft(i32 %307, i32 %305, i32 0)
  %308 = load double, ptr @total, align 8
  %total.promoted66 = load double, ptr @total, align 8
  %309 = zext i32 %295 to i64
  %310 = zext i32 %296 to i64
  %311 = icmp eq i64 %310, %309
  %312 = zext i1 %311 to i32
  call void @assert_ft(i32 %312, i32 1)
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %._crit_edge65, %.preheader.lr.ph
  %Diff_phi122 = phi i32 [ %391, %._crit_edge65 ], [ 3, %.preheader.lr.ph ]
  %Dest_phi123 = phi i32 [ %380, %._crit_edge65 ], [ %305, %.preheader.lr.ph ]
  %313 = phi i64 [ 0, %.preheader.lr.ph ], [ %383, %._crit_edge65 ]
  %indvars.iv89 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next90, %._crit_edge65 ]
  %314 = phi double [ %308, %.preheader.lr.ph ], [ %365, %._crit_edge65 ]
  %total.promoted7071 = phi double [ %total.promoted66, %.preheader.lr.ph ], [ %total.promoted68, %._crit_edge65 ]
  %315 = xor i32 %Diff_phi122, %Dest_phi123
  %316 = icmp eq i32 %315, 26
  %317 = zext i1 %316 to i32
  call void @assert_cfg_ft(i32 %317, i32 %315, i32 0)
  %318 = icmp eq i64 %indvars.iv89, %313
  %319 = zext i1 %318 to i32
  call void @assert_ft(i32 %319, i32 1)
  br label %320

320:                                              ; preds = %364, %.lr.ph64
  %Diff_phi124 = phi i32 [ 1, %.lr.ph64 ], [ %379, %364 ]
  %Dest_phi125 = phi i32 [ %315, %.lr.ph64 ], [ %368, %364 ]
  %321 = phi i64 [ 0, %.lr.ph64 ], [ %371, %364 ]
  %indvars.iv87 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next88, %364 ]
  %322 = phi double [ %314, %.lr.ph64 ], [ %365, %364 ]
  %total.promoted69 = phi double [ %total.promoted7071, %.lr.ph64 ], [ %total.promoted68, %364 ]
  %323 = phi double [ %314, %.lr.ph64 ], [ %366, %364 ]
  %324 = phi double [ %total.promoted7071, %.lr.ph64 ], [ %367, %364 ]
  %325 = xor i32 %Diff_phi124, %Dest_phi125
  %326 = icmp eq i32 %325, 27
  %327 = zext i1 %326 to i32
  call void @assert_cfg_ft(i32 %327, i32 %325, i32 0)
  %328 = icmp eq i64 %indvars.iv87, %321
  %329 = zext i1 %328 to i32
  call void @assert_ft(i32 %329, i32 1)
  %330 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %313, i64 %321
  %331 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv89, i64 %indvars.iv87
  %332 = icmp eq ptr %331, %330
  %333 = zext i1 %332 to i32
  call void @assert_ft(i32 %333, i32 1)
  %334 = load i32, ptr %330, align 4
  %335 = load i32, ptr %331, align 4
  %336 = icmp eq i32 %335, %334
  %337 = zext i1 %336 to i32
  call void @assert_ft(i32 %337, i32 1)
  %338 = sext i32 %334 to i64
  %339 = sext i32 %335 to i64
  %340 = icmp eq i64 %339, %338
  %341 = zext i1 %340 to i32
  call void @assert_ft(i32 %341, i32 1)
  %342 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %338
  %343 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %339
  %344 = icmp eq ptr %343, %342
  %345 = zext i1 %344 to i32
  call void @assert_ft(i32 %345, i32 1)
  %346 = load float, ptr %342, align 4
  %347 = load float, ptr %343, align 4
  %348 = fcmp ogt float %346, 3.000000e+06
  %349 = fcmp ogt float %347, 3.000000e+06
  %350 = icmp eq i1 %349, %348
  %351 = zext i1 %350 to i32
  call void @assert_ft(i32 %351, i32 1)
  %352 = select i1 %349, i32 28, i32 29
  %353 = xor i32 27, %352
  br i1 %349, label %354, label %364

354:                                              ; preds = %320
  %Diff_phi126 = phi i32 [ %353, %320 ]
  %Dest_phi127 = phi i32 [ %325, %320 ]
  %355 = xor i32 %Diff_phi126, %Dest_phi127
  %356 = icmp eq i32 %355, 28
  %357 = zext i1 %356 to i32
  call void @assert_cfg_ft(i32 %357, i32 %355, i32 0)
  %358 = fdiv float %346, 1.000000e+06
  %359 = fdiv float %347, 1.000000e+06
  %360 = fpext float %358 to double
  %361 = fpext float %359 to double
  %362 = fadd double %323, %360
  %363 = fadd double %324, %361
  store double %363, ptr @total, align 8
  br label %364

364:                                              ; preds = %354, %320
  %Diff_phi128 = phi i32 [ %353, %320 ], [ 1, %354 ]
  %Dest_phi129 = phi i32 [ %325, %320 ], [ %355, %354 ]
  %365 = phi double [ %322, %320 ], [ %362, %354 ]
  %total.promoted68 = phi double [ %total.promoted69, %320 ], [ %363, %354 ]
  %366 = phi double [ %323, %320 ], [ %362, %354 ]
  %367 = phi double [ %324, %320 ], [ %363, %354 ]
  %368 = xor i32 %Diff_phi128, %Dest_phi129
  %369 = icmp eq i32 %368, 29
  %370 = zext i1 %369 to i32
  call void @assert_cfg_ft(i32 %370, i32 %368, i32 0)
  %371 = add nuw nsw i64 %321, 3
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 3
  %372 = icmp eq i64 %indvars.iv.next88, %371
  %373 = zext i1 %372 to i32
  call void @assert_ft(i32 %373, i32 1)
  %374 = icmp ult i64 %371, %309
  %375 = icmp ult i64 %indvars.iv.next88, %310
  %376 = icmp eq i1 %375, %374
  %377 = zext i1 %376 to i32
  call void @assert_ft(i32 %377, i32 1)
  %378 = select i1 %375, i32 27, i32 30
  %379 = xor i32 29, %378
  br i1 %375, label %320, label %._crit_edge65

._crit_edge65:                                    ; preds = %364
  %Diff_phi130 = phi i32 [ %379, %364 ]
  %Dest_phi131 = phi i32 [ %368, %364 ]
  %380 = xor i32 %Diff_phi130, %Dest_phi131
  %381 = icmp eq i32 %380, 30
  %382 = zext i1 %381 to i32
  call void @assert_cfg_ft(i32 %382, i32 %380, i32 0)
  %383 = add nuw nsw i64 %313, 2
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 2
  %384 = icmp eq i64 %indvars.iv.next90, %383
  %385 = zext i1 %384 to i32
  call void @assert_ft(i32 %385, i32 1)
  %386 = icmp ult i64 %383, %309
  %387 = icmp ult i64 %indvars.iv.next90, %310
  %388 = icmp eq i1 %387, %386
  %389 = zext i1 %388 to i32
  call void @assert_ft(i32 %389, i32 1)
  %390 = select i1 %387, i32 26, i32 31
  %391 = xor i32 30, %390
  br i1 %387, label %.lr.ph64, label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge65
  %Diff_phi132 = phi i32 [ %391, %._crit_edge65 ]
  %Dest_phi133 = phi i32 [ %380, %._crit_edge65 ]
  %392 = xor i32 %Diff_phi132, %Dest_phi133
  %393 = icmp eq i32 %392, 31
  %394 = zext i1 %393 to i32
  call void @assert_cfg_ft(i32 %394, i32 %392, i32 0)
  %395 = icmp eq i32 %295, 64
  %396 = icmp eq i32 %296, 64
  %397 = icmp eq i1 %396, %395
  %398 = zext i1 %397 to i32
  call void @assert_ft(i32 %398, i32 1)
  %399 = select i1 %396, i32 33, i32 32
  %400 = xor i32 31, %399
  br i1 %396, label %404, label %._crit_edge73.thread

._crit_edge73.thread:                             ; preds = %._crit_edge73, %._crit_edge62
  %Diff_phi134 = phi i32 [ %304, %._crit_edge62 ], [ %400, %._crit_edge73 ]
  %Dest_phi135 = phi i32 [ %292, %._crit_edge62 ], [ %392, %._crit_edge73 ]
  %401 = xor i32 %Diff_phi134, %Dest_phi135
  %402 = icmp eq i32 %401, 32
  %403 = zext i1 %402 to i32
  call void @assert_cfg_ft(i32 %403, i32 %401, i32 0)
  br label %404

404:                                              ; preds = %._crit_edge73.thread, %._crit_edge73
  %Diff_phi136 = phi i32 [ %400, %._crit_edge73 ], [ 1, %._crit_edge73.thread ]
  %Dest_phi137 = phi i32 [ %392, %._crit_edge73 ], [ %401, %._crit_edge73.thread ]
  %405 = phi ptr [ @.str.6, %._crit_edge73.thread ], [ @.str.5, %._crit_edge73 ]
  %.str.6.sink = phi ptr [ @.str.6, %._crit_edge73.thread ], [ @.str.5, %._crit_edge73 ]
  %406 = xor i32 %Diff_phi136, %Dest_phi137
  %407 = icmp eq i32 %406, 33
  %408 = zext i1 %407 to i32
  call void @assert_cfg_ft(i32 %408, i32 %406, i32 0)
  %409 = icmp eq ptr %.str.6.sink, %405
  %410 = zext i1 %409 to i32
  call void @assert_ft(i32 %410, i32 1)
  %411 = load double, ptr @total, align 8
  %412 = load double, ptr @total, align 8
  %413 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.6.sink, double noundef %412)
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
