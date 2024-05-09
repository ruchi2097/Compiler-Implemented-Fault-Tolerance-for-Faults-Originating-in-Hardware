; ModuleID = 'basicmath-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\0Asqrt(%lX) = %X, remainder = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
@str = private unnamed_addr constant [38 x i8] c"********* CUBIC FUNCTIONS ***********\00", align 1
@str.1 = private unnamed_addr constant [40 x i8] c"********* INTEGER SQR ROOTS ***********\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [3 x double], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.int_sqrt, align 4
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  br label %4

4:                                                ; preds = %4, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %4 ]
  call void @usqrt(i64 noundef %indvars.iv, ptr noundef nonnull %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %5 = icmp ult i64 %indvars.iv, 98
  br i1 %5, label %4, label %6

6:                                                ; preds = %4
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %8 = load i32, ptr %2, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %6
  %wide.trip.count = zext i32 %8 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv129 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next130, %.lr.ph ]
  %10 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv129
  %11 = load double, ptr %10, align 8
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %11)
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %6
  %putchar = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %14 = load i32, ptr %2, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %.lr.ph101.preheader, label %._crit_edge102

.lr.ph101.preheader:                              ; preds = %._crit_edge
  %wide.trip.count133 = zext i32 %14 to i64
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101, %.lr.ph101.preheader
  %indvars.iv131 = phi i64 [ 0, %.lr.ph101.preheader ], [ %indvars.iv.next132, %.lr.ph101 ]
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv131
  %17 = load double, ptr %16, align 8
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %17)
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %.lr.ph101, %._crit_edge
  %putchar85 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %20 = load i32, ptr %2, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %.lr.ph105.preheader, label %._crit_edge106

.lr.ph105.preheader:                              ; preds = %._crit_edge102
  %wide.trip.count137 = zext i32 %20 to i64
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader
  %indvars.iv135 = phi i64 [ 0, %.lr.ph105.preheader ], [ %indvars.iv.next136, %.lr.ph105 ]
  %22 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv135
  %23 = load double, ptr %22, align 8
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %23)
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge106, label %.lr.ph105

._crit_edge106:                                   ; preds = %.lr.ph105, %._crit_edge102
  %putchar86 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %26 = load i32, ptr %2, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %._crit_edge106
  %wide.trip.count141 = zext i32 %26 to i64
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader
  %indvars.iv139 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next140, %.lr.ph109 ]
  %28 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv139
  %29 = load double, ptr %28, align 8
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %29)
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond142.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109, %._crit_edge106
  %putchar87 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 3.000000e+00, double noundef 1.234000e+01, double noundef 5.000000e+00, double noundef 1.200000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %32 = load i32, ptr %2, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %.lr.ph113.preheader, label %._crit_edge114

.lr.ph113.preheader:                              ; preds = %._crit_edge110
  %wide.trip.count145 = zext i32 %32 to i64
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113, %.lr.ph113.preheader
  %indvars.iv143 = phi i64 [ 0, %.lr.ph113.preheader ], [ %indvars.iv.next144, %.lr.ph113 ]
  %34 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv143
  %35 = load double, ptr %34, align 8
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %35)
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count145
  br i1 %exitcond146.not, label %._crit_edge114, label %.lr.ph113

._crit_edge114:                                   ; preds = %.lr.ph113, %._crit_edge110
  %putchar88 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -8.000000e+00, double noundef -6.789000e+01, double noundef 6.000000e+00, double noundef -2.360000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %putchar89 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 4.500000e+01, double noundef 8.670000e+00, double noundef 7.500000e+00, double noundef 3.400000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %putchar90 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -1.200000e+01, double noundef -1.700000e+00, double noundef 5.300000e+00, double noundef 1.600000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %40 = load i32, ptr %2, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %.lr.ph117.preheader, label %._crit_edge118

.lr.ph117.preheader:                              ; preds = %._crit_edge114
  %wide.trip.count149 = zext i32 %40 to i64
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117, %.lr.ph117.preheader
  %indvars.iv147 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next148, %.lr.ph117 ]
  %42 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv147
  %43 = load double, ptr %42, align 8
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %43)
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  %exitcond150.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge118, label %.lr.ph117

._crit_edge118:                                   ; preds = %.lr.ph117, %._crit_edge114
  %putchar91 = tail call i32 @putchar(i32 10)
  br label %.preheader96

.preheader96:                                     ; preds = %60, %._crit_edge118
  %.0126.int = phi i32 [ 1, %._crit_edge118 ], [ %.int, %60 ]
  %indvar.conv = sitofp i32 %.0126.int to double
  br label %.preheader95

.preheader95:                                     ; preds = %57, %.preheader96
  %.084125 = phi double [ 1.000000e+01, %.preheader96 ], [ %58, %57 ]
  br label %.preheader

.preheader:                                       ; preds = %54, %.preheader95
  %.083124 = phi double [ 5.000000e+00, %.preheader95 ], [ %55, %54 ]
  br label %45

45:                                               ; preds = %._crit_edge122, %.preheader
  %.082123 = phi double [ -1.000000e+00, %.preheader ], [ %52, %._crit_edge122 ]
  call void @SolveCubic(double noundef %indvar.conv, double noundef %.084125, double noundef %.083124, double noundef %.082123, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %47 = load i32, ptr %2, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %45
  %wide.trip.count153 = zext i32 %47 to i64
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121, %.lr.ph121.preheader
  %indvars.iv151 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next152, %.lr.ph121 ]
  %49 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv151
  %50 = load double, ptr %49, align 8
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %50)
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge122, label %.lr.ph121

._crit_edge122:                                   ; preds = %.lr.ph121, %45
  %putchar94 = tail call i32 @putchar(i32 10)
  %52 = fadd double %.082123, -4.510000e-01
  %53 = fcmp ogt double %52, -5.000000e+00
  br i1 %53, label %45, label %54

54:                                               ; preds = %._crit_edge122
  %55 = fadd double %.083124, 6.100000e-01
  %56 = fcmp olt double %55, 1.500000e+01
  br i1 %56, label %.preheader, label %57

57:                                               ; preds = %54
  %58 = fadd double %.084125, -2.500000e-01
  %59 = fcmp ogt double %58, 0.000000e+00
  br i1 %59, label %.preheader95, label %60

60:                                               ; preds = %57
  %.int = add nuw nsw i32 %.0126.int, 1
  %exitcond155.not = icmp eq i32 %.int, 10
  br i1 %exitcond155.not, label %61, label %.preheader96

61:                                               ; preds = %60
  %puts92 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %62

62:                                               ; preds = %62, %61
  %indvars.iv156 = phi i64 [ 0, %61 ], [ %indvars.iv.next157, %62 ]
  call void @usqrt(i64 noundef %indvars.iv156, ptr noundef nonnull %3)
  %63 = load i32, ptr %3, align 4
  %64 = trunc i64 %indvars.iv156 to i32
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %64, i32 noundef %63)
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 2
  %66 = icmp ult i64 %indvars.iv156, 99998
  br i1 %66, label %62, label %67

67:                                               ; preds = %62
  %putchar93 = tail call i32 @putchar(i32 10)
  %68 = getelementptr inbounds %struct.int_sqrt, ptr %3, i64 0, i32 1
  br label %69

69:                                               ; preds = %69, %67
  %.080128 = phi i64 [ 1072497001, %67 ], [ %74, %69 ]
  call void @usqrt(i64 noundef %.080128, ptr noundef nonnull %3)
  %70 = load i32, ptr %3, align 4
  %71 = load i32, ptr %68, align 4
  %72 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %.080128, i32 noundef %70, i32 noundef %71)
  %73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %.080128, i32 noundef %70)
  %74 = add nuw nsw i64 %.080128, 1
  %exitcond158.not = icmp eq i64 %74, 1072513385
  br i1 %exitcond158.not, label %75, label %69

75:                                               ; preds = %69
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @rad2deg(double noundef %0) local_unnamed_addr #2 {
  %2 = fmul double %0, 1.800000e+02
  %3 = fdiv double %2, 0x400921FB54442D18
  ret double %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @deg2rad(double noundef %0) local_unnamed_addr #2 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local void @SolveCubic(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = fdiv double %1, %0
  %8 = fpext double %7 to x86_fp80
  %9 = fdiv double %2, %0
  %10 = fpext double %9 to x86_fp80
  %11 = fdiv double %3, %0
  %12 = fpext double %11 to x86_fp80
  %13 = fmul x86_fp80 %10, 0xKC000C000000000000000
  %14 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %8, x86_fp80 %8, x86_fp80 %13)
  %15 = fdiv x86_fp80 %14, 0xK40029000000000000000
  %16 = fmul x86_fp80 %8, 0xK40008000000000000000
  %17 = fmul x86_fp80 %16, %8
  %18 = fmul x86_fp80 %8, 0xKC0029000000000000000
  %19 = fmul x86_fp80 %18, %10
  %20 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %17, x86_fp80 %8, x86_fp80 %19)
  %21 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %12, x86_fp80 0xK4003D800000000000000, x86_fp80 %20)
  %22 = fdiv x86_fp80 %21, 0xK4004D800000000000000
  %23 = fmul x86_fp80 %15, %15
  %24 = fmul x86_fp80 %15, %23
  %25 = fneg x86_fp80 %24
  %26 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %22, x86_fp80 %22, x86_fp80 %25)
  %27 = fptrunc x86_fp80 %26 to double
  %28 = fcmp ugt double %27, 0.000000e+00
  br i1 %28, label %66, label %29

29:                                               ; preds = %6
  store i32 3, ptr %4, align 4
  %30 = fptrunc x86_fp80 %24 to double
  %31 = tail call double @sqrt(double noundef %30) #8
  %32 = fpext double %31 to x86_fp80
  %33 = fdiv x86_fp80 %22, %32
  %34 = fptrunc x86_fp80 %33 to double
  %35 = tail call double @acos(double noundef %34) #8
  %36 = fptrunc x86_fp80 %15 to double
  %37 = tail call double @sqrt(double noundef %36) #8
  %38 = fmul double %37, -2.000000e+00
  %39 = fdiv double %35, 3.000000e+00
  %40 = tail call double @cos(double noundef %39) #8
  %41 = fmul double %38, %40
  %42 = fpext double %41 to x86_fp80
  %43 = fdiv x86_fp80 %8, 0xK4000C000000000000000
  %44 = fsub x86_fp80 %42, %43
  %45 = fptrunc x86_fp80 %44 to double
  store double %45, ptr %5, align 8
  %46 = tail call double @sqrt(double noundef %36) #8
  %47 = fmul double %46, -2.000000e+00
  %48 = fadd double %35, 0x401921FB54442D18
  %49 = fdiv double %48, 3.000000e+00
  %50 = tail call double @cos(double noundef %49) #8
  %51 = fmul double %47, %50
  %52 = fpext double %51 to x86_fp80
  %53 = fsub x86_fp80 %52, %43
  %54 = fptrunc x86_fp80 %53 to double
  %55 = getelementptr inbounds double, ptr %5, i64 1
  store double %54, ptr %55, align 8
  %56 = tail call double @sqrt(double noundef %36) #8
  %57 = fmul double %56, -2.000000e+00
  %58 = fadd double %35, 0x402921FB54442D18
  %59 = fdiv double %58, 3.000000e+00
  %60 = tail call double @cos(double noundef %59) #8
  %61 = fmul double %57, %60
  %62 = fpext double %61 to x86_fp80
  %63 = fsub x86_fp80 %62, %43
  %64 = fptrunc x86_fp80 %63 to double
  %65 = getelementptr inbounds double, ptr %5, i64 2
  store double %64, ptr %65, align 8
  br label %83

66:                                               ; preds = %6
  store i32 1, ptr %4, align 4
  %67 = tail call double @sqrt(double noundef %27) #8
  %68 = fptrunc x86_fp80 %22 to double
  %69 = tail call double @llvm.fabs.f64(double %68)
  %70 = fadd double %69, %67
  %71 = tail call double @pow(double noundef %70, double noundef 0x3FD5555555555555) #8
  %72 = fpext double %71 to x86_fp80
  %73 = fdiv x86_fp80 %15, %72
  %74 = fadd x86_fp80 %73, %72
  %75 = fptrunc x86_fp80 %74 to double
  %76 = fcmp olt x86_fp80 %22, 0xK00000000000000000000
  %77 = fneg double %75
  %78 = select i1 %76, double %75, double %77
  %79 = fdiv x86_fp80 %8, 0xK4000C000000000000000
  %80 = fpext double %78 to x86_fp80
  %81 = fsub x86_fp80 %80, %79
  %82 = fptrunc x86_fp80 %81 to double
  store double %82, ptr %5, align 8
  br label %83

83:                                               ; preds = %66, %29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @usqrt(i64 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  br label %3

3:                                                ; preds = %3, %2
  %.022 = phi i32 [ 0, %2 ], [ %14, %3 ]
  %.01221 = phi i64 [ 0, %2 ], [ %.1, %3 ]
  %.01320 = phi i64 [ 0, %2 ], [ %.114, %3 ]
  %.01519 = phi i64 [ %0, %2 ], [ %8, %3 ]
  %4 = shl i64 %.01221, 2
  %5 = lshr i64 %.01519, 30
  %6 = and i64 %5, 3
  %7 = or i64 %4, %6
  %8 = shl i64 %.01519, 2
  %9 = shl i64 %.01320, 1
  %10 = shl i64 %.01320, 2
  %11 = or i64 %10, 1
  %.not = icmp uge i64 %7, %11
  %12 = zext i1 %.not to i64
  %.114 = or i64 %9, %12
  %13 = select i1 %.not, i64 %11, i64 0
  %.1 = sub i64 %7, %13
  %14 = add nuw nsw i32 %.022, 1
  %exitcond.not = icmp eq i32 %14, 32
  br i1 %exitcond.not, label %15, label %3

15:                                               ; preds = %3
  store i64 %.114, ptr %1, align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

declare void @exit(i32, ...)

declare i32 @printf.2(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
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
  %assertcheck = call i32 (ptr, ...) @printf(ptr @1, i32 %1, i32 %2)
  call void (i32, ...) @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind willreturn memory(write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
