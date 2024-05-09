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
  %Diff_phi = phi i32 [ 3, %0 ], [ %19, %4 ]
  %Dest_phi = phi i32 [ 1, %0 ], [ %6, %4 ]
  %5 = phi i64 [ 0, %0 ], [ %11, %4 ]
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %4 ]
  %6 = xor i32 %Diff_phi, %Dest_phi
  %7 = icmp eq i32 %6, 2
  %8 = zext i1 %7 to i32
  call void @assert_cfg_ft(i32 %8, i32 %6, i32 0)
  %9 = icmp eq i64 %indvars.iv, %5
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  call void @usqrt(i64 noundef %indvars.iv, ptr noundef nonnull %3)
  %11 = add nuw nsw i64 %5, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %12 = icmp eq i64 %indvars.iv.next, %11
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = icmp ult i64 %5, 98
  %15 = icmp ult i64 %indvars.iv, 98
  %16 = icmp eq i1 %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = select i1 %15, i32 2, i32 3
  %19 = xor i32 2, %18
  br i1 %15, label %4, label %20

20:                                               ; preds = %4
  %Diff_phi159 = phi i32 [ %19, %4 ]
  %Dest_phi160 = phi i32 [ %6, %4 ]
  %21 = xor i32 %Diff_phi159, %Dest_phi160
  %22 = icmp eq i32 %21, 3
  %23 = zext i1 %22 to i32
  call void @assert_cfg_ft(i32 %23, i32 %21, i32 0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %25 = load i32, ptr %2, align 4
  %26 = load i32, ptr %2, align 4
  %27 = icmp eq i32 %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = icmp sgt i32 %25, 0
  %30 = icmp sgt i32 %26, 0
  %31 = icmp eq i1 %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = select i1 %30, i32 4, i32 6
  %34 = xor i32 3, %33
  br i1 %30, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %20
  %Diff_phi161 = phi i32 [ %34, %20 ]
  %Dest_phi162 = phi i32 [ %21, %20 ]
  %35 = xor i32 %Diff_phi161, %Dest_phi162
  %36 = icmp eq i32 %35, 4
  %37 = zext i1 %36 to i32
  call void @assert_cfg_ft(i32 %37, i32 %35, i32 0)
  %38 = zext i32 %25 to i64
  %wide.trip.count = zext i32 %26 to i64
  %39 = icmp eq i64 %wide.trip.count, %38
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %Diff_phi163 = phi i32 [ 1, %.lr.ph.preheader ], [ %61, %.lr.ph ]
  %Dest_phi164 = phi i32 [ %35, %.lr.ph.preheader ], [ %42, %.lr.ph ]
  %41 = phi i64 [ 0, %.lr.ph.preheader ], [ %54, %.lr.ph ]
  %indvars.iv129 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next130, %.lr.ph ]
  %42 = xor i32 %Diff_phi163, %Dest_phi164
  %43 = icmp eq i32 %42, 5
  %44 = zext i1 %43 to i32
  call void @assert_cfg_ft(i32 %44, i32 %42, i32 0)
  %45 = icmp eq i64 %indvars.iv129, %41
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %41
  %48 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv129
  %49 = icmp eq ptr %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = load double, ptr %47, align 8
  %52 = load double, ptr %48, align 8
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %52)
  %54 = add nuw nsw i64 %41, 1
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %55 = icmp eq i64 %indvars.iv.next130, %54
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  %57 = icmp eq i64 %54, %38
  %exitcond.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count
  %58 = icmp eq i1 %exitcond.not, %57
  %59 = zext i1 %58 to i32
  call void @assert_ft(i32 %59, i32 1)
  %60 = select i1 %exitcond.not, i32 6, i32 5
  %61 = xor i32 5, %60
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %20
  %Diff_phi165 = phi i32 [ %61, %.lr.ph ], [ %34, %20 ]
  %Dest_phi166 = phi i32 [ %42, %.lr.ph ], [ %21, %20 ]
  %62 = xor i32 %Diff_phi165, %Dest_phi166
  %63 = icmp eq i32 %62, 6
  %64 = zext i1 %63 to i32
  call void @assert_cfg_ft(i32 %64, i32 %62, i32 0)
  %putchar = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %66 = load i32, ptr %2, align 4
  %67 = load i32, ptr %2, align 4
  %68 = icmp eq i32 %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = icmp sgt i32 %66, 0
  %71 = icmp sgt i32 %67, 0
  %72 = icmp eq i1 %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = select i1 %71, i32 7, i32 9
  %75 = xor i32 6, %74
  br i1 %71, label %.lr.ph101.preheader, label %._crit_edge102

.lr.ph101.preheader:                              ; preds = %._crit_edge
  %Diff_phi167 = phi i32 [ %75, %._crit_edge ]
  %Dest_phi168 = phi i32 [ %62, %._crit_edge ]
  %76 = xor i32 %Diff_phi167, %Dest_phi168
  %77 = icmp eq i32 %76, 7
  %78 = zext i1 %77 to i32
  call void @assert_cfg_ft(i32 %78, i32 %76, i32 0)
  %79 = zext i32 %66 to i64
  %wide.trip.count133 = zext i32 %67 to i64
  %80 = icmp eq i64 %wide.trip.count133, %79
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101, %.lr.ph101.preheader
  %Diff_phi169 = phi i32 [ 15, %.lr.ph101.preheader ], [ %102, %.lr.ph101 ]
  %Dest_phi170 = phi i32 [ %76, %.lr.ph101.preheader ], [ %83, %.lr.ph101 ]
  %82 = phi i64 [ 0, %.lr.ph101.preheader ], [ %95, %.lr.ph101 ]
  %indvars.iv131 = phi i64 [ 0, %.lr.ph101.preheader ], [ %indvars.iv.next132, %.lr.ph101 ]
  %83 = xor i32 %Diff_phi169, %Dest_phi170
  %84 = icmp eq i32 %83, 8
  %85 = zext i1 %84 to i32
  call void @assert_cfg_ft(i32 %85, i32 %83, i32 0)
  %86 = icmp eq i64 %indvars.iv131, %82
  %87 = zext i1 %86 to i32
  call void @assert_ft(i32 %87, i32 1)
  %88 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %82
  %89 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv131
  %90 = icmp eq ptr %89, %88
  %91 = zext i1 %90 to i32
  call void @assert_ft(i32 %91, i32 1)
  %92 = load double, ptr %88, align 8
  %93 = load double, ptr %89, align 8
  %94 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %93)
  %95 = add nuw nsw i64 %82, 1
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %96 = icmp eq i64 %indvars.iv.next132, %95
  %97 = zext i1 %96 to i32
  call void @assert_ft(i32 %97, i32 1)
  %98 = icmp eq i64 %95, %79
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count133
  %99 = icmp eq i1 %exitcond134.not, %98
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = select i1 %exitcond134.not, i32 9, i32 8
  %102 = xor i32 8, %101
  br i1 %exitcond134.not, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %.lr.ph101, %._crit_edge
  %Diff_phi171 = phi i32 [ %102, %.lr.ph101 ], [ %75, %._crit_edge ]
  %Dest_phi172 = phi i32 [ %83, %.lr.ph101 ], [ %62, %._crit_edge ]
  %103 = xor i32 %Diff_phi171, %Dest_phi172
  %104 = icmp eq i32 %103, 9
  %105 = zext i1 %104 to i32
  call void @assert_cfg_ft(i32 %105, i32 %103, i32 0)
  %putchar85 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %106 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %107 = load i32, ptr %2, align 4
  %108 = load i32, ptr %2, align 4
  %109 = icmp eq i32 %108, %107
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = icmp sgt i32 %107, 0
  %112 = icmp sgt i32 %108, 0
  %113 = icmp eq i1 %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = select i1 %112, i32 10, i32 12
  %116 = xor i32 9, %115
  br i1 %112, label %.lr.ph105.preheader, label %._crit_edge106

.lr.ph105.preheader:                              ; preds = %._crit_edge102
  %Diff_phi173 = phi i32 [ %116, %._crit_edge102 ]
  %Dest_phi174 = phi i32 [ %103, %._crit_edge102 ]
  %117 = xor i32 %Diff_phi173, %Dest_phi174
  %118 = icmp eq i32 %117, 10
  %119 = zext i1 %118 to i32
  call void @assert_cfg_ft(i32 %119, i32 %117, i32 0)
  %120 = zext i32 %107 to i64
  %wide.trip.count137 = zext i32 %108 to i64
  %121 = icmp eq i64 %wide.trip.count137, %120
  %122 = zext i1 %121 to i32
  call void @assert_ft(i32 %122, i32 1)
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader
  %Diff_phi175 = phi i32 [ 1, %.lr.ph105.preheader ], [ %143, %.lr.ph105 ]
  %Dest_phi176 = phi i32 [ %117, %.lr.ph105.preheader ], [ %124, %.lr.ph105 ]
  %123 = phi i64 [ 0, %.lr.ph105.preheader ], [ %136, %.lr.ph105 ]
  %indvars.iv135 = phi i64 [ 0, %.lr.ph105.preheader ], [ %indvars.iv.next136, %.lr.ph105 ]
  %124 = xor i32 %Diff_phi175, %Dest_phi176
  %125 = icmp eq i32 %124, 11
  %126 = zext i1 %125 to i32
  call void @assert_cfg_ft(i32 %126, i32 %124, i32 0)
  %127 = icmp eq i64 %indvars.iv135, %123
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %123
  %130 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv135
  %131 = icmp eq ptr %130, %129
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = load double, ptr %129, align 8
  %134 = load double, ptr %130, align 8
  %135 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %134)
  %136 = add nuw nsw i64 %123, 1
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %137 = icmp eq i64 %indvars.iv.next136, %136
  %138 = zext i1 %137 to i32
  call void @assert_ft(i32 %138, i32 1)
  %139 = icmp eq i64 %136, %120
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count137
  %140 = icmp eq i1 %exitcond138.not, %139
  %141 = zext i1 %140 to i32
  call void @assert_ft(i32 %141, i32 1)
  %142 = select i1 %exitcond138.not, i32 12, i32 11
  %143 = xor i32 11, %142
  br i1 %exitcond138.not, label %._crit_edge106, label %.lr.ph105

._crit_edge106:                                   ; preds = %.lr.ph105, %._crit_edge102
  %Diff_phi177 = phi i32 [ %143, %.lr.ph105 ], [ %116, %._crit_edge102 ]
  %Dest_phi178 = phi i32 [ %124, %.lr.ph105 ], [ %103, %._crit_edge102 ]
  %144 = xor i32 %Diff_phi177, %Dest_phi178
  %145 = icmp eq i32 %144, 12
  %146 = zext i1 %145 to i32
  call void @assert_cfg_ft(i32 %146, i32 %144, i32 0)
  %putchar86 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %147 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %148 = load i32, ptr %2, align 4
  %149 = load i32, ptr %2, align 4
  %150 = icmp eq i32 %149, %148
  %151 = zext i1 %150 to i32
  call void @assert_ft(i32 %151, i32 1)
  %152 = icmp sgt i32 %148, 0
  %153 = icmp sgt i32 %149, 0
  %154 = icmp eq i1 %153, %152
  %155 = zext i1 %154 to i32
  call void @assert_ft(i32 %155, i32 1)
  %156 = select i1 %153, i32 13, i32 15
  %157 = xor i32 12, %156
  br i1 %153, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %._crit_edge106
  %Diff_phi179 = phi i32 [ %157, %._crit_edge106 ]
  %Dest_phi180 = phi i32 [ %144, %._crit_edge106 ]
  %158 = xor i32 %Diff_phi179, %Dest_phi180
  %159 = icmp eq i32 %158, 13
  %160 = zext i1 %159 to i32
  call void @assert_cfg_ft(i32 %160, i32 %158, i32 0)
  %161 = zext i32 %148 to i64
  %wide.trip.count141 = zext i32 %149 to i64
  %162 = icmp eq i64 %wide.trip.count141, %161
  %163 = zext i1 %162 to i32
  call void @assert_ft(i32 %163, i32 1)
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader
  %Diff_phi181 = phi i32 [ 3, %.lr.ph109.preheader ], [ %184, %.lr.ph109 ]
  %Dest_phi182 = phi i32 [ %158, %.lr.ph109.preheader ], [ %165, %.lr.ph109 ]
  %164 = phi i64 [ 0, %.lr.ph109.preheader ], [ %177, %.lr.ph109 ]
  %indvars.iv139 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next140, %.lr.ph109 ]
  %165 = xor i32 %Diff_phi181, %Dest_phi182
  %166 = icmp eq i32 %165, 14
  %167 = zext i1 %166 to i32
  call void @assert_cfg_ft(i32 %167, i32 %165, i32 0)
  %168 = icmp eq i64 %indvars.iv139, %164
  %169 = zext i1 %168 to i32
  call void @assert_ft(i32 %169, i32 1)
  %170 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %164
  %171 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv139
  %172 = icmp eq ptr %171, %170
  %173 = zext i1 %172 to i32
  call void @assert_ft(i32 %173, i32 1)
  %174 = load double, ptr %170, align 8
  %175 = load double, ptr %171, align 8
  %176 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %175)
  %177 = add nuw nsw i64 %164, 1
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %178 = icmp eq i64 %indvars.iv.next140, %177
  %179 = zext i1 %178 to i32
  call void @assert_ft(i32 %179, i32 1)
  %180 = icmp eq i64 %177, %161
  %exitcond142.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count141
  %181 = icmp eq i1 %exitcond142.not, %180
  %182 = zext i1 %181 to i32
  call void @assert_ft(i32 %182, i32 1)
  %183 = select i1 %exitcond142.not, i32 15, i32 14
  %184 = xor i32 14, %183
  br i1 %exitcond142.not, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109, %._crit_edge106
  %Diff_phi183 = phi i32 [ %184, %.lr.ph109 ], [ %157, %._crit_edge106 ]
  %Dest_phi184 = phi i32 [ %165, %.lr.ph109 ], [ %144, %._crit_edge106 ]
  %185 = xor i32 %Diff_phi183, %Dest_phi184
  %186 = icmp eq i32 %185, 15
  %187 = zext i1 %186 to i32
  call void @assert_cfg_ft(i32 %187, i32 %185, i32 0)
  %putchar87 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 3.000000e+00, double noundef 1.234000e+01, double noundef 5.000000e+00, double noundef 1.200000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %188 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %189 = load i32, ptr %2, align 4
  %190 = load i32, ptr %2, align 4
  %191 = icmp eq i32 %190, %189
  %192 = zext i1 %191 to i32
  call void @assert_ft(i32 %192, i32 1)
  %193 = icmp sgt i32 %189, 0
  %194 = icmp sgt i32 %190, 0
  %195 = icmp eq i1 %194, %193
  %196 = zext i1 %195 to i32
  call void @assert_ft(i32 %196, i32 1)
  %197 = select i1 %194, i32 16, i32 18
  %198 = xor i32 15, %197
  br i1 %194, label %.lr.ph113.preheader, label %._crit_edge114

.lr.ph113.preheader:                              ; preds = %._crit_edge110
  %Diff_phi185 = phi i32 [ %198, %._crit_edge110 ]
  %Dest_phi186 = phi i32 [ %185, %._crit_edge110 ]
  %199 = xor i32 %Diff_phi185, %Dest_phi186
  %200 = icmp eq i32 %199, 16
  %201 = zext i1 %200 to i32
  call void @assert_cfg_ft(i32 %201, i32 %199, i32 0)
  %202 = zext i32 %189 to i64
  %wide.trip.count145 = zext i32 %190 to i64
  %203 = icmp eq i64 %wide.trip.count145, %202
  %204 = zext i1 %203 to i32
  call void @assert_ft(i32 %204, i32 1)
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113, %.lr.ph113.preheader
  %Diff_phi187 = phi i32 [ 1, %.lr.ph113.preheader ], [ %225, %.lr.ph113 ]
  %Dest_phi188 = phi i32 [ %199, %.lr.ph113.preheader ], [ %206, %.lr.ph113 ]
  %205 = phi i64 [ 0, %.lr.ph113.preheader ], [ %218, %.lr.ph113 ]
  %indvars.iv143 = phi i64 [ 0, %.lr.ph113.preheader ], [ %indvars.iv.next144, %.lr.ph113 ]
  %206 = xor i32 %Diff_phi187, %Dest_phi188
  %207 = icmp eq i32 %206, 17
  %208 = zext i1 %207 to i32
  call void @assert_cfg_ft(i32 %208, i32 %206, i32 0)
  %209 = icmp eq i64 %indvars.iv143, %205
  %210 = zext i1 %209 to i32
  call void @assert_ft(i32 %210, i32 1)
  %211 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %205
  %212 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv143
  %213 = icmp eq ptr %212, %211
  %214 = zext i1 %213 to i32
  call void @assert_ft(i32 %214, i32 1)
  %215 = load double, ptr %211, align 8
  %216 = load double, ptr %212, align 8
  %217 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %216)
  %218 = add nuw nsw i64 %205, 1
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %219 = icmp eq i64 %indvars.iv.next144, %218
  %220 = zext i1 %219 to i32
  call void @assert_ft(i32 %220, i32 1)
  %221 = icmp eq i64 %218, %202
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count145
  %222 = icmp eq i1 %exitcond146.not, %221
  %223 = zext i1 %222 to i32
  call void @assert_ft(i32 %223, i32 1)
  %224 = select i1 %exitcond146.not, i32 18, i32 17
  %225 = xor i32 17, %224
  br i1 %exitcond146.not, label %._crit_edge114, label %.lr.ph113

._crit_edge114:                                   ; preds = %.lr.ph113, %._crit_edge110
  %Diff_phi189 = phi i32 [ %225, %.lr.ph113 ], [ %198, %._crit_edge110 ]
  %Dest_phi190 = phi i32 [ %206, %.lr.ph113 ], [ %185, %._crit_edge110 ]
  %226 = xor i32 %Diff_phi189, %Dest_phi190
  %227 = icmp eq i32 %226, 18
  %228 = zext i1 %227 to i32
  call void @assert_cfg_ft(i32 %228, i32 %226, i32 0)
  %putchar88 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -8.000000e+00, double noundef -6.789000e+01, double noundef 6.000000e+00, double noundef -2.360000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %229 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %putchar89 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 4.500000e+01, double noundef 8.670000e+00, double noundef 7.500000e+00, double noundef 3.400000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %230 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %putchar90 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -1.200000e+01, double noundef -1.700000e+00, double noundef 5.300000e+00, double noundef 1.600000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %231 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %232 = load i32, ptr %2, align 4
  %233 = load i32, ptr %2, align 4
  %234 = icmp eq i32 %233, %232
  %235 = zext i1 %234 to i32
  call void @assert_ft(i32 %235, i32 1)
  %236 = icmp sgt i32 %232, 0
  %237 = icmp sgt i32 %233, 0
  %238 = icmp eq i1 %237, %236
  %239 = zext i1 %238 to i32
  call void @assert_ft(i32 %239, i32 1)
  %240 = select i1 %237, i32 19, i32 21
  %241 = xor i32 18, %240
  br i1 %237, label %.lr.ph117.preheader, label %._crit_edge118

.lr.ph117.preheader:                              ; preds = %._crit_edge114
  %Diff_phi191 = phi i32 [ %241, %._crit_edge114 ]
  %Dest_phi192 = phi i32 [ %226, %._crit_edge114 ]
  %242 = xor i32 %Diff_phi191, %Dest_phi192
  %243 = icmp eq i32 %242, 19
  %244 = zext i1 %243 to i32
  call void @assert_cfg_ft(i32 %244, i32 %242, i32 0)
  %245 = zext i32 %232 to i64
  %wide.trip.count149 = zext i32 %233 to i64
  %246 = icmp eq i64 %wide.trip.count149, %245
  %247 = zext i1 %246 to i32
  call void @assert_ft(i32 %247, i32 1)
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117, %.lr.ph117.preheader
  %Diff_phi193 = phi i32 [ 7, %.lr.ph117.preheader ], [ %268, %.lr.ph117 ]
  %Dest_phi194 = phi i32 [ %242, %.lr.ph117.preheader ], [ %249, %.lr.ph117 ]
  %248 = phi i64 [ 0, %.lr.ph117.preheader ], [ %261, %.lr.ph117 ]
  %indvars.iv147 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next148, %.lr.ph117 ]
  %249 = xor i32 %Diff_phi193, %Dest_phi194
  %250 = icmp eq i32 %249, 20
  %251 = zext i1 %250 to i32
  call void @assert_cfg_ft(i32 %251, i32 %249, i32 0)
  %252 = icmp eq i64 %indvars.iv147, %248
  %253 = zext i1 %252 to i32
  call void @assert_ft(i32 %253, i32 1)
  %254 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %248
  %255 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv147
  %256 = icmp eq ptr %255, %254
  %257 = zext i1 %256 to i32
  call void @assert_ft(i32 %257, i32 1)
  %258 = load double, ptr %254, align 8
  %259 = load double, ptr %255, align 8
  %260 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %259)
  %261 = add nuw nsw i64 %248, 1
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  %262 = icmp eq i64 %indvars.iv.next148, %261
  %263 = zext i1 %262 to i32
  call void @assert_ft(i32 %263, i32 1)
  %264 = icmp eq i64 %261, %245
  %exitcond150.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count149
  %265 = icmp eq i1 %exitcond150.not, %264
  %266 = zext i1 %265 to i32
  call void @assert_ft(i32 %266, i32 1)
  %267 = select i1 %exitcond150.not, i32 21, i32 20
  %268 = xor i32 20, %267
  br i1 %exitcond150.not, label %._crit_edge118, label %.lr.ph117

._crit_edge118:                                   ; preds = %.lr.ph117, %._crit_edge114
  %Diff_phi195 = phi i32 [ %268, %.lr.ph117 ], [ %241, %._crit_edge114 ]
  %Dest_phi196 = phi i32 [ %249, %.lr.ph117 ], [ %226, %._crit_edge114 ]
  %269 = xor i32 %Diff_phi195, %Dest_phi196
  %270 = icmp eq i32 %269, 21
  %271 = zext i1 %270 to i32
  call void @assert_cfg_ft(i32 %271, i32 %269, i32 0)
  %putchar91 = tail call i32 @putchar(i32 10)
  br label %.preheader96

.preheader96:                                     ; preds = %365, %._crit_edge118
  %Diff_phi197 = phi i32 [ 3, %._crit_edge118 ], [ %376, %365 ]
  %Dest_phi198 = phi i32 [ %269, %._crit_edge118 ], [ %366, %365 ]
  %272 = phi i32 [ 1, %._crit_edge118 ], [ %369, %365 ]
  %.0126.int = phi i32 [ 1, %._crit_edge118 ], [ %.int, %365 ]
  %273 = xor i32 %Diff_phi197, %Dest_phi198
  %274 = icmp eq i32 %273, 22
  %275 = zext i1 %274 to i32
  call void @assert_cfg_ft(i32 %275, i32 %273, i32 0)
  %276 = icmp eq i32 %.0126.int, %272
  %277 = zext i1 %276 to i32
  call void @assert_ft(i32 %277, i32 1)
  %278 = sitofp i32 %272 to double
  %indvar.conv = sitofp i32 %.0126.int to double
  br label %.preheader95

.preheader95:                                     ; preds = %353, %.preheader96
  %Diff_phi199 = phi i32 [ 1, %.preheader96 ], [ %364, %353 ]
  %Dest_phi200 = phi i32 [ %273, %.preheader96 ], [ %354, %353 ]
  %279 = phi double [ 1.000000e+01, %.preheader96 ], [ %357, %353 ]
  %.084125 = phi double [ 1.000000e+01, %.preheader96 ], [ %358, %353 ]
  %280 = xor i32 %Diff_phi199, %Dest_phi200
  %281 = icmp eq i32 %280, 23
  %282 = zext i1 %281 to i32
  call void @assert_cfg_ft(i32 %282, i32 %280, i32 0)
  br label %.preheader

.preheader:                                       ; preds = %341, %.preheader95
  %Diff_phi201 = phi i32 [ 15, %.preheader95 ], [ %352, %341 ]
  %Dest_phi202 = phi i32 [ %280, %.preheader95 ], [ %342, %341 ]
  %283 = phi double [ 5.000000e+00, %.preheader95 ], [ %345, %341 ]
  %.083124 = phi double [ 5.000000e+00, %.preheader95 ], [ %346, %341 ]
  %284 = xor i32 %Diff_phi201, %Dest_phi202
  %285 = icmp eq i32 %284, 24
  %286 = zext i1 %285 to i32
  call void @assert_cfg_ft(i32 %286, i32 %284, i32 0)
  br label %287

287:                                              ; preds = %._crit_edge122, %.preheader
  %Diff_phi203 = phi i32 [ 1, %.preheader ], [ %340, %._crit_edge122 ]
  %Dest_phi204 = phi i32 [ %284, %.preheader ], [ %330, %._crit_edge122 ]
  %288 = phi double [ -1.000000e+00, %.preheader ], [ %333, %._crit_edge122 ]
  %.082123 = phi double [ -1.000000e+00, %.preheader ], [ %334, %._crit_edge122 ]
  %289 = xor i32 %Diff_phi203, %Dest_phi204
  %290 = icmp eq i32 %289, 25
  %291 = zext i1 %290 to i32
  call void @assert_cfg_ft(i32 %291, i32 %289, i32 0)
  call void @SolveCubic(double noundef %indvar.conv, double noundef %.084125, double noundef %.083124, double noundef %.082123, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %292 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %293 = load i32, ptr %2, align 4
  %294 = load i32, ptr %2, align 4
  %295 = icmp eq i32 %294, %293
  %296 = zext i1 %295 to i32
  call void @assert_ft(i32 %296, i32 1)
  %297 = icmp sgt i32 %293, 0
  %298 = icmp sgt i32 %294, 0
  %299 = icmp eq i1 %298, %297
  %300 = zext i1 %299 to i32
  call void @assert_ft(i32 %300, i32 1)
  %301 = select i1 %298, i32 26, i32 28
  %302 = xor i32 25, %301
  br i1 %298, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %287
  %Diff_phi205 = phi i32 [ %302, %287 ]
  %Dest_phi206 = phi i32 [ %289, %287 ]
  %303 = xor i32 %Diff_phi205, %Dest_phi206
  %304 = icmp eq i32 %303, 26
  %305 = zext i1 %304 to i32
  call void @assert_cfg_ft(i32 %305, i32 %303, i32 0)
  %306 = zext i32 %293 to i64
  %wide.trip.count153 = zext i32 %294 to i64
  %307 = icmp eq i64 %wide.trip.count153, %306
  %308 = zext i1 %307 to i32
  call void @assert_ft(i32 %308, i32 1)
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121, %.lr.ph121.preheader
  %Diff_phi207 = phi i32 [ 1, %.lr.ph121.preheader ], [ %329, %.lr.ph121 ]
  %Dest_phi208 = phi i32 [ %303, %.lr.ph121.preheader ], [ %310, %.lr.ph121 ]
  %309 = phi i64 [ 0, %.lr.ph121.preheader ], [ %322, %.lr.ph121 ]
  %indvars.iv151 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next152, %.lr.ph121 ]
  %310 = xor i32 %Diff_phi207, %Dest_phi208
  %311 = icmp eq i32 %310, 27
  %312 = zext i1 %311 to i32
  call void @assert_cfg_ft(i32 %312, i32 %310, i32 0)
  %313 = icmp eq i64 %indvars.iv151, %309
  %314 = zext i1 %313 to i32
  call void @assert_ft(i32 %314, i32 1)
  %315 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %309
  %316 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv151
  %317 = icmp eq ptr %316, %315
  %318 = zext i1 %317 to i32
  call void @assert_ft(i32 %318, i32 1)
  %319 = load double, ptr %315, align 8
  %320 = load double, ptr %316, align 8
  %321 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %320)
  %322 = add nuw nsw i64 %309, 1
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1
  %323 = icmp eq i64 %indvars.iv.next152, %322
  %324 = zext i1 %323 to i32
  call void @assert_ft(i32 %324, i32 1)
  %325 = icmp eq i64 %322, %306
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count153
  %326 = icmp eq i1 %exitcond154.not, %325
  %327 = zext i1 %326 to i32
  call void @assert_ft(i32 %327, i32 1)
  %328 = select i1 %exitcond154.not, i32 28, i32 27
  %329 = xor i32 27, %328
  br i1 %exitcond154.not, label %._crit_edge122, label %.lr.ph121

._crit_edge122:                                   ; preds = %.lr.ph121, %287
  %Diff_phi209 = phi i32 [ %329, %.lr.ph121 ], [ %302, %287 ]
  %Dest_phi210 = phi i32 [ %310, %.lr.ph121 ], [ %289, %287 ]
  %330 = xor i32 %Diff_phi209, %Dest_phi210
  %331 = icmp eq i32 %330, 28
  %332 = zext i1 %331 to i32
  call void @assert_cfg_ft(i32 %332, i32 %330, i32 0)
  %putchar94 = tail call i32 @putchar(i32 10)
  %333 = fadd double %288, -4.510000e-01
  %334 = fadd double %.082123, -4.510000e-01
  %335 = fcmp ogt double %333, -5.000000e+00
  %336 = fcmp ogt double %334, -5.000000e+00
  %337 = icmp eq i1 %336, %335
  %338 = zext i1 %337 to i32
  call void @assert_ft(i32 %338, i32 1)
  %339 = select i1 %336, i32 25, i32 29
  %340 = xor i32 28, %339
  br i1 %336, label %287, label %341

341:                                              ; preds = %._crit_edge122
  %Diff_phi211 = phi i32 [ %340, %._crit_edge122 ]
  %Dest_phi212 = phi i32 [ %330, %._crit_edge122 ]
  %342 = xor i32 %Diff_phi211, %Dest_phi212
  %343 = icmp eq i32 %342, 29
  %344 = zext i1 %343 to i32
  call void @assert_cfg_ft(i32 %344, i32 %342, i32 0)
  %345 = fadd double %283, 6.100000e-01
  %346 = fadd double %.083124, 6.100000e-01
  %347 = fcmp olt double %345, 1.500000e+01
  %348 = fcmp olt double %346, 1.500000e+01
  %349 = icmp eq i1 %348, %347
  %350 = zext i1 %349 to i32
  call void @assert_ft(i32 %350, i32 1)
  %351 = select i1 %348, i32 24, i32 30
  %352 = xor i32 29, %351
  br i1 %348, label %.preheader, label %353

353:                                              ; preds = %341
  %Diff_phi213 = phi i32 [ %352, %341 ]
  %Dest_phi214 = phi i32 [ %342, %341 ]
  %354 = xor i32 %Diff_phi213, %Dest_phi214
  %355 = icmp eq i32 %354, 30
  %356 = zext i1 %355 to i32
  call void @assert_cfg_ft(i32 %356, i32 %354, i32 0)
  %357 = fadd double %279, -2.500000e-01
  %358 = fadd double %.084125, -2.500000e-01
  %359 = fcmp ogt double %357, 0.000000e+00
  %360 = fcmp ogt double %358, 0.000000e+00
  %361 = icmp eq i1 %360, %359
  %362 = zext i1 %361 to i32
  call void @assert_ft(i32 %362, i32 1)
  %363 = select i1 %360, i32 23, i32 31
  %364 = xor i32 30, %363
  br i1 %360, label %.preheader95, label %365

365:                                              ; preds = %353
  %Diff_phi215 = phi i32 [ %364, %353 ]
  %Dest_phi216 = phi i32 [ %354, %353 ]
  %366 = xor i32 %Diff_phi215, %Dest_phi216
  %367 = icmp eq i32 %366, 31
  %368 = zext i1 %367 to i32
  call void @assert_cfg_ft(i32 %368, i32 %366, i32 0)
  %369 = add nuw nsw i32 %272, 1
  %.int = add nuw nsw i32 %.0126.int, 1
  %370 = icmp eq i32 %.int, %369
  %371 = zext i1 %370 to i32
  call void @assert_ft(i32 %371, i32 1)
  %372 = icmp eq i32 %369, 10
  %exitcond155.not = icmp eq i32 %.int, 10
  %373 = icmp eq i1 %exitcond155.not, %372
  %374 = zext i1 %373 to i32
  call void @assert_ft(i32 %374, i32 1)
  %375 = select i1 %exitcond155.not, i32 32, i32 22
  %376 = xor i32 31, %375
  br i1 %exitcond155.not, label %377, label %.preheader96

377:                                              ; preds = %365
  %Diff_phi217 = phi i32 [ %376, %365 ]
  %Dest_phi218 = phi i32 [ %366, %365 ]
  %378 = xor i32 %Diff_phi217, %Dest_phi218
  %379 = icmp eq i32 %378, 32
  %380 = zext i1 %379 to i32
  call void @assert_cfg_ft(i32 %380, i32 %378, i32 0)
  %puts92 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %381

381:                                              ; preds = %381, %377
  %Diff_phi219 = phi i32 [ 1, %377 ], [ %405, %381 ]
  %Dest_phi220 = phi i32 [ %378, %377 ], [ %383, %381 ]
  %382 = phi i64 [ 0, %377 ], [ %397, %381 ]
  %indvars.iv156 = phi i64 [ 0, %377 ], [ %indvars.iv.next157, %381 ]
  %383 = xor i32 %Diff_phi219, %Dest_phi220
  %384 = icmp eq i32 %383, 33
  %385 = zext i1 %384 to i32
  call void @assert_cfg_ft(i32 %385, i32 %383, i32 0)
  %386 = icmp eq i64 %indvars.iv156, %382
  %387 = zext i1 %386 to i32
  call void @assert_ft(i32 %387, i32 1)
  call void @usqrt(i64 noundef %indvars.iv156, ptr noundef nonnull %3)
  %388 = load i32, ptr %3, align 4
  %389 = load i32, ptr %3, align 4
  %390 = icmp eq i32 %389, %388
  %391 = zext i1 %390 to i32
  call void @assert_ft(i32 %391, i32 1)
  %392 = trunc i64 %382 to i32
  %393 = trunc i64 %indvars.iv156 to i32
  %394 = icmp eq i32 %393, %392
  %395 = zext i1 %394 to i32
  call void @assert_ft(i32 %395, i32 1)
  %396 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %393, i32 noundef %389)
  %397 = add nuw nsw i64 %382, 2
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 2
  %398 = icmp eq i64 %indvars.iv.next157, %397
  %399 = zext i1 %398 to i32
  call void @assert_ft(i32 %399, i32 1)
  %400 = icmp ult i64 %382, 99998
  %401 = icmp ult i64 %indvars.iv156, 99998
  %402 = icmp eq i1 %401, %400
  %403 = zext i1 %402 to i32
  call void @assert_ft(i32 %403, i32 1)
  %404 = select i1 %401, i32 33, i32 34
  %405 = xor i32 33, %404
  br i1 %401, label %381, label %406

406:                                              ; preds = %381
  %Diff_phi221 = phi i32 [ %405, %381 ]
  %Dest_phi222 = phi i32 [ %383, %381 ]
  %407 = xor i32 %Diff_phi221, %Dest_phi222
  %408 = icmp eq i32 %407, 34
  %409 = zext i1 %408 to i32
  call void @assert_cfg_ft(i32 %409, i32 %407, i32 0)
  %putchar93 = tail call i32 @putchar(i32 10)
  %410 = getelementptr inbounds %struct.int_sqrt, ptr %3, i64 0, i32 1
  %411 = getelementptr inbounds %struct.int_sqrt, ptr %3, i64 0, i32 1
  %412 = icmp eq ptr %411, %410
  %413 = zext i1 %412 to i32
  call void @assert_ft(i32 %413, i32 1)
  br label %414

414:                                              ; preds = %414, %406
  %Diff_phi223 = phi i32 [ 1, %406 ], [ %439, %414 ]
  %Dest_phi224 = phi i32 [ %407, %406 ], [ %416, %414 ]
  %415 = phi i64 [ 1072497001, %406 ], [ %431, %414 ]
  %.080128 = phi i64 [ 1072497001, %406 ], [ %432, %414 ]
  %416 = xor i32 %Diff_phi223, %Dest_phi224
  %417 = icmp eq i32 %416, 35
  %418 = zext i1 %417 to i32
  call void @assert_cfg_ft(i32 %418, i32 %416, i32 0)
  %419 = icmp eq i64 %.080128, %415
  %420 = zext i1 %419 to i32
  call void @assert_ft(i32 %420, i32 1)
  call void @usqrt(i64 noundef %.080128, ptr noundef nonnull %3)
  %421 = load i32, ptr %3, align 4
  %422 = load i32, ptr %3, align 4
  %423 = icmp eq i32 %422, %421
  %424 = zext i1 %423 to i32
  call void @assert_ft(i32 %424, i32 1)
  %425 = load i32, ptr %410, align 4
  %426 = load i32, ptr %411, align 4
  %427 = icmp eq i32 %426, %425
  %428 = zext i1 %427 to i32
  call void @assert_ft(i32 %428, i32 1)
  %429 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %.080128, i32 noundef %422, i32 noundef %426)
  %430 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %.080128, i32 noundef %422)
  %431 = add nuw nsw i64 %415, 1
  %432 = add nuw nsw i64 %.080128, 1
  %433 = icmp eq i64 %432, %431
  %434 = zext i1 %433 to i32
  call void @assert_ft(i32 %434, i32 1)
  %435 = icmp eq i64 %431, 1072513385
  %exitcond158.not = icmp eq i64 %432, 1072513385
  %436 = icmp eq i1 %exitcond158.not, %435
  %437 = zext i1 %436 to i32
  call void @assert_ft(i32 %437, i32 1)
  %438 = select i1 %exitcond158.not, i32 36, i32 35
  %439 = xor i32 35, %438
  br i1 %exitcond158.not, label %440, label %414

440:                                              ; preds = %414
  %Diff_phi225 = phi i32 [ %439, %414 ]
  %Dest_phi226 = phi i32 [ %416, %414 ]
  %441 = xor i32 %Diff_phi225, %Dest_phi226
  %442 = icmp eq i32 %441, 36
  %443 = zext i1 %442 to i32
  call void @assert_cfg_ft(i32 %443, i32 %441, i32 0)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @rad2deg(double noundef %0) local_unnamed_addr #2 {
  %2 = fmul double %0, 1.800000e+02
  %3 = fmul double %0, 1.800000e+02
  %4 = fdiv double %2, 0x400921FB54442D18
  %5 = fdiv double %3, 0x400921FB54442D18
  ret double %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @deg2rad(double noundef %0) local_unnamed_addr #2 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fmul double %0, 0x400921FB54442D18
  %4 = fdiv double %2, 1.800000e+02
  %5 = fdiv double %3, 1.800000e+02
  ret double %5
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local void @SolveCubic(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = fdiv double %1, %0
  %8 = fdiv double %1, %0
  %9 = fpext double %7 to x86_fp80
  %10 = fpext double %8 to x86_fp80
  %11 = fdiv double %2, %0
  %12 = fdiv double %2, %0
  %13 = fpext double %11 to x86_fp80
  %14 = fpext double %12 to x86_fp80
  %15 = fdiv double %3, %0
  %16 = fdiv double %3, %0
  %17 = fpext double %15 to x86_fp80
  %18 = fpext double %16 to x86_fp80
  %19 = fmul x86_fp80 %13, 0xKC000C000000000000000
  %20 = fmul x86_fp80 %14, 0xKC000C000000000000000
  %21 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %10, x86_fp80 %10, x86_fp80 %20)
  %22 = fdiv x86_fp80 %21, 0xK40029000000000000000
  %23 = fdiv x86_fp80 %21, 0xK40029000000000000000
  %24 = fmul x86_fp80 %9, 0xK40008000000000000000
  %25 = fmul x86_fp80 %10, 0xK40008000000000000000
  %26 = fmul x86_fp80 %24, %9
  %27 = fmul x86_fp80 %25, %10
  %28 = fmul x86_fp80 %9, 0xKC0029000000000000000
  %29 = fmul x86_fp80 %10, 0xKC0029000000000000000
  %30 = fmul x86_fp80 %28, %13
  %31 = fmul x86_fp80 %29, %14
  %32 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %27, x86_fp80 %10, x86_fp80 %31)
  %33 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %18, x86_fp80 0xK4003D800000000000000, x86_fp80 %32)
  %34 = fdiv x86_fp80 %33, 0xK4004D800000000000000
  %35 = fdiv x86_fp80 %33, 0xK4004D800000000000000
  %36 = fmul x86_fp80 %22, %22
  %37 = fmul x86_fp80 %23, %23
  %38 = fmul x86_fp80 %22, %36
  %39 = fmul x86_fp80 %23, %37
  %40 = fneg x86_fp80 %38
  %41 = fneg x86_fp80 %39
  %42 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %35, x86_fp80 %35, x86_fp80 %41)
  %43 = fptrunc x86_fp80 %42 to double
  %44 = fptrunc x86_fp80 %42 to double
  %45 = fcmp ugt double %43, 0.000000e+00
  %46 = fcmp ugt double %44, 0.000000e+00
  %47 = icmp eq i1 %46, %45
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = select i1 %46, i32 41, i32 40
  %50 = xor i32 39, %49
  br i1 %46, label %123, label %51

51:                                               ; preds = %6
  %Diff_phi = phi i32 [ %50, %6 ]
  %Dest_phi = phi i32 [ 39, %6 ]
  %52 = xor i32 %Diff_phi, %Dest_phi
  %53 = icmp eq i32 %52, 40
  %54 = zext i1 %53 to i32
  call void @assert_cfg_ft(i32 %54, i32 %52, i32 0)
  store i32 3, ptr %4, align 4
  %55 = fptrunc x86_fp80 %38 to double
  %56 = fptrunc x86_fp80 %39 to double
  %57 = tail call double @sqrt(double noundef %56) #8
  %58 = fpext double %57 to x86_fp80
  %59 = fpext double %57 to x86_fp80
  %60 = fdiv x86_fp80 %34, %58
  %61 = fdiv x86_fp80 %35, %59
  %62 = fptrunc x86_fp80 %60 to double
  %63 = fptrunc x86_fp80 %61 to double
  %64 = tail call double @acos(double noundef %63) #8
  %65 = fptrunc x86_fp80 %22 to double
  %66 = fptrunc x86_fp80 %23 to double
  %67 = tail call double @sqrt(double noundef %66) #8
  %68 = fmul double %67, -2.000000e+00
  %69 = fmul double %67, -2.000000e+00
  %70 = fdiv double %64, 3.000000e+00
  %71 = fdiv double %64, 3.000000e+00
  %72 = tail call double @cos(double noundef %71) #8
  %73 = fmul double %68, %72
  %74 = fmul double %69, %72
  %75 = fpext double %73 to x86_fp80
  %76 = fpext double %74 to x86_fp80
  %77 = fdiv x86_fp80 %9, 0xK4000C000000000000000
  %78 = fdiv x86_fp80 %10, 0xK4000C000000000000000
  %79 = fsub x86_fp80 %75, %77
  %80 = fsub x86_fp80 %76, %78
  %81 = fptrunc x86_fp80 %79 to double
  %82 = fptrunc x86_fp80 %80 to double
  store double %82, ptr %5, align 8
  %83 = tail call double @sqrt(double noundef %66) #8
  %84 = fmul double %83, -2.000000e+00
  %85 = fmul double %83, -2.000000e+00
  %86 = fadd double %64, 0x401921FB54442D18
  %87 = fadd double %64, 0x401921FB54442D18
  %88 = fdiv double %86, 3.000000e+00
  %89 = fdiv double %87, 3.000000e+00
  %90 = tail call double @cos(double noundef %89) #8
  %91 = fmul double %84, %90
  %92 = fmul double %85, %90
  %93 = fpext double %91 to x86_fp80
  %94 = fpext double %92 to x86_fp80
  %95 = fsub x86_fp80 %93, %77
  %96 = fsub x86_fp80 %94, %78
  %97 = fptrunc x86_fp80 %95 to double
  %98 = fptrunc x86_fp80 %96 to double
  %99 = getelementptr inbounds double, ptr %5, i64 1
  %100 = getelementptr inbounds double, ptr %5, i64 1
  %101 = icmp eq ptr %100, %99
  %102 = zext i1 %101 to i32
  call void @assert_ft(i32 %102, i32 1)
  store double %98, ptr %100, align 8
  %103 = tail call double @sqrt(double noundef %66) #8
  %104 = fmul double %103, -2.000000e+00
  %105 = fmul double %103, -2.000000e+00
  %106 = fadd double %64, 0x402921FB54442D18
  %107 = fadd double %64, 0x402921FB54442D18
  %108 = fdiv double %106, 3.000000e+00
  %109 = fdiv double %107, 3.000000e+00
  %110 = tail call double @cos(double noundef %109) #8
  %111 = fmul double %104, %110
  %112 = fmul double %105, %110
  %113 = fpext double %111 to x86_fp80
  %114 = fpext double %112 to x86_fp80
  %115 = fsub x86_fp80 %113, %77
  %116 = fsub x86_fp80 %114, %78
  %117 = fptrunc x86_fp80 %115 to double
  %118 = fptrunc x86_fp80 %116 to double
  %119 = getelementptr inbounds double, ptr %5, i64 2
  %120 = getelementptr inbounds double, ptr %5, i64 2
  %121 = icmp eq ptr %120, %119
  %122 = zext i1 %121 to i32
  call void @assert_ft(i32 %122, i32 1)
  store double %118, ptr %120, align 8
  br label %158

123:                                              ; preds = %6
  %Diff_phi49 = phi i32 [ %50, %6 ]
  %Dest_phi50 = phi i32 [ 39, %6 ]
  %124 = xor i32 %Diff_phi49, %Dest_phi50
  %125 = icmp eq i32 %124, 41
  %126 = zext i1 %125 to i32
  call void @assert_cfg_ft(i32 %126, i32 %124, i32 0)
  store i32 1, ptr %4, align 4
  %127 = tail call double @sqrt(double noundef %44) #8
  %128 = fptrunc x86_fp80 %34 to double
  %129 = fptrunc x86_fp80 %35 to double
  %130 = tail call double @llvm.fabs.f64(double %129)
  %131 = fadd double %130, %127
  %132 = fadd double %130, %127
  %133 = tail call double @pow(double noundef %132, double noundef 0x3FD5555555555555) #8
  %134 = fpext double %133 to x86_fp80
  %135 = fpext double %133 to x86_fp80
  %136 = fdiv x86_fp80 %22, %134
  %137 = fdiv x86_fp80 %23, %135
  %138 = fadd x86_fp80 %136, %134
  %139 = fadd x86_fp80 %137, %135
  %140 = fptrunc x86_fp80 %138 to double
  %141 = fptrunc x86_fp80 %139 to double
  %142 = fcmp olt x86_fp80 %34, 0xK00000000000000000000
  %143 = fcmp olt x86_fp80 %35, 0xK00000000000000000000
  %144 = icmp eq i1 %143, %142
  %145 = zext i1 %144 to i32
  call void @assert_ft(i32 %145, i32 1)
  %146 = fneg double %140
  %147 = fneg double %141
  %148 = select i1 %142, double %140, double %146
  %149 = select i1 %143, double %141, double %147
  %150 = fdiv x86_fp80 %9, 0xK4000C000000000000000
  %151 = fdiv x86_fp80 %10, 0xK4000C000000000000000
  %152 = fpext double %148 to x86_fp80
  %153 = fpext double %149 to x86_fp80
  %154 = fsub x86_fp80 %152, %150
  %155 = fsub x86_fp80 %153, %151
  %156 = fptrunc x86_fp80 %154 to double
  %157 = fptrunc x86_fp80 %155 to double
  store double %157, ptr %5, align 8
  br label %158

158:                                              ; preds = %123, %51
  %Diff_phi51 = phi i32 [ 3, %123 ], [ 2, %51 ]
  %Dest_phi52 = phi i32 [ %124, %123 ], [ %52, %51 ]
  %159 = xor i32 %Diff_phi51, %Dest_phi52
  %160 = icmp eq i32 %159, 42
  %161 = zext i1 %160 to i32
  call void @assert_cfg_ft(i32 %161, i32 %159, i32 0)
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
  %Diff_phi = phi i32 [ 7, %2 ], [ %76, %3 ]
  %Dest_phi = phi i32 [ 43, %2 ], [ %8, %3 ]
  %4 = phi i32 [ 0, %2 ], [ %68, %3 ]
  %.022 = phi i32 [ 0, %2 ], [ %69, %3 ]
  %5 = phi i64 [ 0, %2 ], [ %65, %3 ]
  %.01221 = phi i64 [ 0, %2 ], [ %.1, %3 ]
  %6 = phi i64 [ 0, %2 ], [ %58, %3 ]
  %.01320 = phi i64 [ 0, %2 ], [ %.114, %3 ]
  %7 = phi i64 [ %0, %2 ], [ %35, %3 ]
  %.01519 = phi i64 [ %0, %2 ], [ %36, %3 ]
  %8 = xor i32 %Diff_phi, %Dest_phi
  %9 = icmp eq i32 %8, 44
  %10 = zext i1 %9 to i32
  call void @assert_cfg_ft(i32 %10, i32 %8, i32 0)
  %11 = icmp eq i64 %.01320, %6
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = icmp eq i64 %.01221, %5
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = icmp eq i32 %.022, %4
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = icmp eq i64 %.01519, %7
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = shl i64 %5, 2
  %20 = shl i64 %.01221, 2
  %21 = icmp eq i64 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = lshr i64 %7, 30
  %24 = lshr i64 %.01519, 30
  %25 = icmp eq i64 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = and i64 %23, 3
  %28 = and i64 %24, 3
  %29 = icmp eq i64 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = or i64 %19, %27
  %32 = or i64 %20, %28
  %33 = icmp eq i64 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = shl i64 %7, 2
  %36 = shl i64 %.01519, 2
  %37 = icmp eq i64 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = shl i64 %6, 1
  %40 = shl i64 %.01320, 1
  %41 = icmp eq i64 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = shl i64 %6, 2
  %44 = shl i64 %.01320, 2
  %45 = icmp eq i64 %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = or i64 %43, 1
  %48 = or i64 %44, 1
  %49 = icmp eq i64 %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = icmp uge i64 %31, %47
  %.not = icmp uge i64 %32, %48
  %52 = icmp eq i1 %.not, %51
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = zext i1 %51 to i64
  %55 = zext i1 %.not to i64
  %56 = icmp eq i64 %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = or i64 %39, %54
  %.114 = or i64 %40, %55
  %59 = icmp eq i64 %.114, %58
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = select i1 %51, i64 %47, i64 0
  %62 = select i1 %.not, i64 %48, i64 0
  %63 = icmp eq i64 %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = sub i64 %31, %61
  %.1 = sub i64 %32, %62
  %66 = icmp eq i64 %.1, %65
  %67 = zext i1 %66 to i32
  call void @assert_ft(i32 %67, i32 1)
  %68 = add nuw nsw i32 %4, 1
  %69 = add nuw nsw i32 %.022, 1
  %70 = icmp eq i32 %69, %68
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  %72 = icmp eq i32 %68, 32
  %exitcond.not = icmp eq i32 %69, 32
  %73 = icmp eq i1 %exitcond.not, %72
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = select i1 %exitcond.not, i32 45, i32 44
  %76 = xor i32 44, %75
  br i1 %exitcond.not, label %77, label %3

77:                                               ; preds = %3
  %Diff_phi23 = phi i32 [ %76, %3 ]
  %Dest_phi24 = phi i32 [ %8, %3 ]
  %78 = xor i32 %Diff_phi23, %Dest_phi24
  %79 = icmp eq i32 %78, 45
  %80 = zext i1 %79 to i32
  call void @assert_cfg_ft(i32 %80, i32 %78, i32 0)
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
