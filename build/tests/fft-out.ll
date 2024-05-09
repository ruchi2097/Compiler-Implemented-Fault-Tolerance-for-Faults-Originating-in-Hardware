; ModuleID = 'fft-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.2 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1.13 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2.14 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3.15 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4.16 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1
@str = private unnamed_addr constant [9 x i8] c"RealOut:\00", align 1
@str.1 = private unnamed_addr constant [9 x i8] c"ImagOut:\00", align 1
@str.2 = private unnamed_addr constant [31 x i8] c"Usage: fft <waves> <length> -i\00", align 1
@str.3 = private unnamed_addr constant [27 x i8] c"-i performs an inverse fft\00", align 1
@str.4 = private unnamed_addr constant [34 x i8] c"<length> is the number of samples\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 3
  %4 = icmp slt i32 %0, 3
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = select i1 %4, i32 2, i32 3
  %8 = xor i32 1, %7
  br i1 %4, label %9, label %14

9:                                                ; preds = %2
  %Diff_phi = phi i32 [ %8, %2 ]
  %Dest_phi = phi i32 [ 1, %2 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 2
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %puts71 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %puts72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  %puts73 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  tail call void @exit(i32 noundef -1) #15
  unreachable

14:                                               ; preds = %2
  %Diff_phi112 = phi i32 [ %8, %2 ]
  %Dest_phi113 = phi i32 [ 1, %2 ]
  %15 = xor i32 %Diff_phi112, %Dest_phi113
  %16 = icmp eq i32 %15, 3
  %17 = zext i1 %16 to i32
  call void @assert_cfg_ft(i32 %17, i32 %15, i32 0)
  %18 = icmp eq i32 %0, 4
  %19 = icmp eq i32 %0, 4
  %20 = icmp eq i1 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = select i1 %19, i32 4, i32 5
  %23 = xor i32 3, %22
  br i1 %19, label %24, label %44

24:                                               ; preds = %14
  %Diff_phi114 = phi i32 [ %23, %14 ]
  %Dest_phi115 = phi i32 [ %15, %14 ]
  %25 = xor i32 %Diff_phi114, %Dest_phi115
  %26 = icmp eq i32 %25, 4
  %27 = zext i1 %26 to i32
  call void @assert_cfg_ft(i32 %27, i32 %25, i32 0)
  %28 = getelementptr inbounds ptr, ptr %1, i64 3
  %29 = getelementptr inbounds ptr, ptr %1, i64 3
  %30 = icmp eq ptr %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = load ptr, ptr %28, align 8
  %33 = load ptr, ptr %29, align 8
  %34 = icmp eq ptr %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(3) @.str.4, i64 noundef 2) #16
  %37 = icmp eq i32 %36, 0
  %.not70 = icmp eq i32 %36, 0
  %38 = icmp eq i1 %.not70, %37
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = zext i1 %37 to i32
  %41 = zext i1 %.not70 to i32
  %42 = icmp eq i32 %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  br label %44

44:                                               ; preds = %24, %14
  %Diff_phi116 = phi i32 [ %23, %14 ], [ 1, %24 ]
  %Dest_phi117 = phi i32 [ %15, %14 ], [ %25, %24 ]
  %45 = phi i32 [ %40, %24 ], [ 0, %14 ]
  %.0 = phi i32 [ %41, %24 ], [ 0, %14 ]
  %46 = xor i32 %Diff_phi116, %Dest_phi117
  %47 = icmp eq i32 %46, 5
  %48 = zext i1 %47 to i32
  call void @assert_cfg_ft(i32 %48, i32 %46, i32 0)
  %49 = icmp eq i32 %.0, %45
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = getelementptr inbounds ptr, ptr %1, i64 2
  %52 = getelementptr inbounds ptr, ptr %1, i64 2
  %53 = icmp eq ptr %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = load ptr, ptr %51, align 8
  %56 = load ptr, ptr %52, align 8
  %57 = icmp eq ptr %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = tail call i32 @atoi(ptr nocapture noundef %56) #16
  %60 = getelementptr inbounds ptr, ptr %1, i64 1
  %61 = getelementptr inbounds ptr, ptr %1, i64 1
  %62 = icmp eq ptr %61, %60
  %63 = zext i1 %62 to i32
  call void @assert_ft(i32 %63, i32 1)
  %64 = load ptr, ptr %60, align 8
  %65 = load ptr, ptr %61, align 8
  %66 = icmp eq ptr %65, %64
  %67 = zext i1 %66 to i32
  call void @assert_ft(i32 %67, i32 1)
  %68 = tail call i32 @atoi(ptr nocapture noundef %65) #16
  tail call void @srand(i32 noundef 1) #17
  %69 = zext i32 %59 to i64
  %70 = zext i32 %59 to i64
  %71 = icmp eq i64 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = shl nuw nsw i64 %69, 2
  %74 = shl nuw nsw i64 %70, 2
  %75 = icmp eq i64 %74, %73
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  %77 = tail call noalias ptr @malloc(i64 noundef %74) #18
  %78 = tail call noalias ptr @malloc(i64 noundef %74) #18
  %79 = tail call noalias ptr @malloc(i64 noundef %74) #18
  %80 = tail call noalias ptr @malloc(i64 noundef %74) #18
  %81 = zext i32 %68 to i64
  %82 = zext i32 %68 to i64
  %83 = icmp eq i64 %82, %81
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = shl nuw nsw i64 %81, 2
  %86 = shl nuw nsw i64 %82, 2
  %87 = icmp eq i64 %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = tail call noalias ptr @malloc(i64 noundef %86) #18
  %90 = tail call noalias ptr @malloc(i64 noundef %86) #18
  %91 = icmp eq i32 %68, 0
  %.not88 = icmp eq i32 %68, 0
  %92 = icmp eq i1 %.not88, %91
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = select i1 %.not88, i32 6, i32 7
  %95 = xor i32 5, %94
  br i1 %.not88, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %44
  %Diff_phi118 = phi i32 [ %139, %.lr.ph ], [ %95, %44 ]
  %Dest_phi119 = phi i32 [ %105, %.lr.ph ], [ %46, %44 ]
  %96 = xor i32 %Diff_phi118, %Dest_phi119
  %97 = icmp eq i32 %96, 6
  %98 = zext i1 %97 to i32
  call void @assert_cfg_ft(i32 %98, i32 %96, i32 0)
  %99 = icmp eq i32 %59, 0
  %.not89 = icmp eq i32 %59, 0
  %100 = icmp eq i1 %.not89, %99
  %101 = zext i1 %100 to i32
  call void @assert_ft(i32 %101, i32 1)
  %102 = select i1 %.not89, i32 17, i32 8
  %103 = xor i32 6, %102
  br i1 %.not89, label %._crit_edge83.critedge, label %.lr.ph78

.lr.ph:                                           ; preds = %.lr.ph, %44
  %Diff_phi120 = phi i32 [ %95, %44 ], [ %139, %.lr.ph ]
  %Dest_phi121 = phi i32 [ %46, %44 ], [ %105, %.lr.ph ]
  %104 = phi i64 [ %132, %.lr.ph ], [ 0, %44 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %44 ]
  %105 = xor i32 %Diff_phi120, %Dest_phi121
  %106 = icmp eq i32 %105, 7
  %107 = zext i1 %106 to i32
  call void @assert_cfg_ft(i32 %107, i32 %105, i32 0)
  %108 = icmp eq i64 %indvars.iv, %104
  %109 = zext i1 %108 to i32
  call void @assert_ft(i32 %109, i32 1)
  %110 = tail call i32 @rand() #17
  %111 = srem i32 %110, 1000
  %112 = srem i32 %110, 1000
  %113 = icmp eq i32 %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = sitofp i32 %111 to float
  %116 = sitofp i32 %112 to float
  %117 = getelementptr inbounds float, ptr %89, i64 %104
  %118 = getelementptr inbounds float, ptr %89, i64 %indvars.iv
  %119 = icmp eq ptr %118, %117
  %120 = zext i1 %119 to i32
  call void @assert_ft(i32 %120, i32 1)
  store float %116, ptr %118, align 4
  %121 = tail call i32 @rand() #17
  %122 = srem i32 %121, 1000
  %123 = srem i32 %121, 1000
  %124 = icmp eq i32 %123, %122
  %125 = zext i1 %124 to i32
  call void @assert_ft(i32 %125, i32 1)
  %126 = sitofp i32 %122 to float
  %127 = sitofp i32 %123 to float
  %128 = getelementptr inbounds float, ptr %90, i64 %104
  %129 = getelementptr inbounds float, ptr %90, i64 %indvars.iv
  %130 = icmp eq ptr %129, %128
  %131 = zext i1 %130 to i32
  call void @assert_ft(i32 %131, i32 1)
  store float %127, ptr %129, align 4
  %132 = add nuw nsw i64 %104, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %133 = icmp eq i64 %indvars.iv.next, %132
  %134 = zext i1 %133 to i32
  call void @assert_ft(i32 %134, i32 1)
  %135 = icmp eq i64 %132, %81
  %exitcond.not = icmp eq i64 %indvars.iv.next, %82
  %136 = icmp eq i1 %exitcond.not, %135
  %137 = zext i1 %136 to i32
  call void @assert_ft(i32 %137, i32 1)
  %138 = select i1 %exitcond.not, i32 6, i32 7
  %139 = xor i32 7, %138
  br i1 %exitcond.not, label %.preheader, label %.lr.ph

.lr.ph78:                                         ; preds = %._crit_edge, %.preheader
  %Diff_phi122 = phi i32 [ %103, %.preheader ], [ %239, %._crit_edge ]
  %Dest_phi123 = phi i32 [ %96, %.preheader ], [ %229, %._crit_edge ]
  %140 = phi i64 [ %232, %._crit_edge ], [ 0, %.preheader ]
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %._crit_edge ], [ 0, %.preheader ]
  %141 = xor i32 %Diff_phi122, %Dest_phi123
  %142 = icmp eq i32 %141, 8
  %143 = zext i1 %142 to i32
  call void @assert_cfg_ft(i32 %143, i32 %141, i32 0)
  %144 = icmp eq i64 %indvars.iv97, %140
  %145 = zext i1 %144 to i32
  call void @assert_ft(i32 %145, i32 1)
  %146 = getelementptr inbounds float, ptr %77, i64 %140
  %147 = getelementptr inbounds float, ptr %77, i64 %indvars.iv97
  %148 = icmp eq ptr %147, %146
  %149 = zext i1 %148 to i32
  call void @assert_ft(i32 %149, i32 1)
  store float 0.000000e+00, ptr %147, align 4
  %150 = select i1 %.not88, i32 14, i32 9
  %151 = xor i32 8, %150
  br i1 %.not88, label %._crit_edge, label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph78
  %Diff_phi124 = phi i32 [ %151, %.lr.ph78 ]
  %Dest_phi125 = phi i32 [ %141, %.lr.ph78 ]
  %152 = xor i32 %Diff_phi124, %Dest_phi125
  %153 = icmp eq i32 %152, 9
  %154 = zext i1 %153 to i32
  call void @assert_cfg_ft(i32 %154, i32 %152, i32 0)
  %155 = trunc i64 %140 to i32
  %156 = trunc i64 %indvars.iv97 to i32
  %157 = icmp eq i32 %156, %155
  %158 = zext i1 %157 to i32
  call void @assert_ft(i32 %158, i32 1)
  %159 = uitofp i32 %155 to float
  %160 = uitofp i32 %156 to float
  %161 = getelementptr inbounds float, ptr %78, i64 %140
  %162 = getelementptr inbounds float, ptr %78, i64 %indvars.iv97
  %163 = icmp eq ptr %162, %161
  %164 = zext i1 %163 to i32
  call void @assert_ft(i32 %164, i32 1)
  br label %165

165:                                              ; preds = %210, %.lr.ph76
  %Diff_phi126 = phi i32 [ 3, %.lr.ph76 ], [ %228, %210 ]
  %Dest_phi127 = phi i32 [ %152, %.lr.ph76 ], [ %212, %210 ]
  %166 = phi i64 [ 0, %.lr.ph76 ], [ %221, %210 ]
  %indvars.iv93 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next94, %210 ]
  %167 = xor i32 %Diff_phi126, %Dest_phi127
  %168 = icmp eq i32 %167, 10
  %169 = zext i1 %168 to i32
  call void @assert_cfg_ft(i32 %169, i32 %167, i32 0)
  %170 = icmp eq i64 %indvars.iv93, %166
  %171 = zext i1 %170 to i32
  call void @assert_ft(i32 %171, i32 1)
  %172 = tail call i32 @rand() #17
  %173 = and i32 %172, 1
  %174 = and i32 %172, 1
  %175 = icmp eq i32 %174, %173
  %176 = zext i1 %175 to i32
  call void @assert_ft(i32 %176, i32 1)
  %177 = icmp eq i32 %173, 0
  %.not = icmp eq i32 %174, 0
  %178 = icmp eq i1 %.not, %177
  %179 = zext i1 %178 to i32
  call void @assert_ft(i32 %179, i32 1)
  %180 = getelementptr inbounds float, ptr %89, i64 %166
  %181 = getelementptr inbounds float, ptr %89, i64 %indvars.iv93
  %182 = icmp eq ptr %181, %180
  %183 = zext i1 %182 to i32
  call void @assert_ft(i32 %183, i32 1)
  %184 = load float, ptr %180, align 4
  %185 = load float, ptr %181, align 4
  %186 = fpext float %184 to double
  %187 = fpext float %185 to double
  %188 = getelementptr inbounds float, ptr %90, i64 %166
  %189 = getelementptr inbounds float, ptr %90, i64 %indvars.iv93
  %190 = icmp eq ptr %189, %188
  %191 = zext i1 %190 to i32
  call void @assert_ft(i32 %191, i32 1)
  %192 = load float, ptr %188, align 4
  %193 = load float, ptr %189, align 4
  %194 = fmul float %192, %159
  %195 = fmul float %193, %160
  %196 = fpext float %194 to double
  %197 = fpext float %195 to double
  %198 = select i1 %.not, i32 12, i32 11
  %199 = xor i32 10, %198
  br i1 %.not, label %205, label %200

200:                                              ; preds = %165
  %Diff_phi128 = phi i32 [ %199, %165 ]
  %Dest_phi129 = phi i32 [ %167, %165 ]
  %201 = xor i32 %Diff_phi128, %Dest_phi129
  %202 = icmp eq i32 %201, 11
  %203 = zext i1 %202 to i32
  call void @assert_cfg_ft(i32 %203, i32 %201, i32 0)
  %204 = tail call double @cos(double noundef %197) #17
  br label %210

205:                                              ; preds = %165
  %Diff_phi130 = phi i32 [ %199, %165 ]
  %Dest_phi131 = phi i32 [ %167, %165 ]
  %206 = xor i32 %Diff_phi130, %Dest_phi131
  %207 = icmp eq i32 %206, 12
  %208 = zext i1 %207 to i32
  call void @assert_cfg_ft(i32 %208, i32 %206, i32 0)
  %209 = tail call double @sin(double noundef %197) #17
  br label %210

210:                                              ; preds = %205, %200
  %Diff_phi132 = phi i32 [ 1, %205 ], [ 6, %200 ]
  %Dest_phi133 = phi i32 [ %206, %205 ], [ %201, %200 ]
  %211 = phi double [ %209, %205 ], [ %204, %200 ]
  %.sink = phi double [ %209, %205 ], [ %204, %200 ]
  %212 = xor i32 %Diff_phi132, %Dest_phi133
  %213 = icmp eq i32 %212, 13
  %214 = zext i1 %213 to i32
  call void @assert_cfg_ft(i32 %214, i32 %212, i32 0)
  %215 = load float, ptr %146, align 4
  %216 = load float, ptr %147, align 4
  %217 = fpext float %215 to double
  %218 = fpext float %216 to double
  %219 = tail call double @llvm.fmuladd.f64(double %187, double %.sink, double %218)
  %220 = fptrunc double %219 to float
  %storemerge = fptrunc double %219 to float
  store float %storemerge, ptr %147, align 4
  store float 0.000000e+00, ptr %162, align 4
  %221 = add nuw nsw i64 %166, 1
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %222 = icmp eq i64 %indvars.iv.next94, %221
  %223 = zext i1 %222 to i32
  call void @assert_ft(i32 %223, i32 1)
  %224 = icmp eq i64 %221, %81
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, %82
  %225 = icmp eq i1 %exitcond96.not, %224
  %226 = zext i1 %225 to i32
  call void @assert_ft(i32 %226, i32 1)
  %227 = select i1 %exitcond96.not, i32 14, i32 10
  %228 = xor i32 13, %227
  br i1 %exitcond96.not, label %._crit_edge, label %165

._crit_edge:                                      ; preds = %210, %.lr.ph78
  %Diff_phi134 = phi i32 [ %228, %210 ], [ %151, %.lr.ph78 ]
  %Dest_phi135 = phi i32 [ %212, %210 ], [ %141, %.lr.ph78 ]
  %229 = xor i32 %Diff_phi134, %Dest_phi135
  %230 = icmp eq i32 %229, 14
  %231 = zext i1 %230 to i32
  call void @assert_cfg_ft(i32 %231, i32 %229, i32 0)
  %232 = add nuw nsw i64 %140, 1
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %233 = icmp eq i64 %indvars.iv.next98, %232
  %234 = zext i1 %233 to i32
  call void @assert_ft(i32 %234, i32 1)
  %235 = icmp eq i64 %232, %69
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, %70
  %236 = icmp eq i1 %exitcond100.not, %235
  %237 = zext i1 %236 to i32
  call void @assert_ft(i32 %237, i32 1)
  %238 = select i1 %exitcond100.not, i32 15, i32 8
  %239 = xor i32 14, %238
  br i1 %exitcond100.not, label %._crit_edge79, label %.lr.ph78

._crit_edge79:                                    ; preds = %._crit_edge
  %Diff_phi136 = phi i32 [ %239, %._crit_edge ]
  %Dest_phi137 = phi i32 [ %229, %._crit_edge ]
  %240 = xor i32 %Diff_phi136, %Dest_phi137
  %241 = icmp eq i32 %240, 15
  %242 = zext i1 %241 to i32
  call void @assert_cfg_ft(i32 %242, i32 %240, i32 0)
  tail call void @fft_float(i32 noundef %59, i32 noundef %.0, ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %243 = select i1 %.not89, i32 20, i32 16
  %244 = xor i32 15, %243
  br i1 %.not89, label %._crit_edge87.critedge, label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %._crit_edge79
  %Diff_phi138 = phi i32 [ %244, %._crit_edge79 ], [ %267, %.lr.ph82 ]
  %Dest_phi139 = phi i32 [ %240, %._crit_edge79 ], [ %246, %.lr.ph82 ]
  %245 = phi i64 [ %260, %.lr.ph82 ], [ 0, %._crit_edge79 ]
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %.lr.ph82 ], [ 0, %._crit_edge79 ]
  %246 = xor i32 %Diff_phi138, %Dest_phi139
  %247 = icmp eq i32 %246, 16
  %248 = zext i1 %247 to i32
  call void @assert_cfg_ft(i32 %248, i32 %246, i32 0)
  %249 = icmp eq i64 %indvars.iv101, %245
  %250 = zext i1 %249 to i32
  call void @assert_ft(i32 %250, i32 1)
  %251 = getelementptr inbounds float, ptr %79, i64 %245
  %252 = getelementptr inbounds float, ptr %79, i64 %indvars.iv101
  %253 = icmp eq ptr %252, %251
  %254 = zext i1 %253 to i32
  call void @assert_ft(i32 %254, i32 1)
  %255 = load float, ptr %251, align 4
  %256 = load float, ptr %252, align 4
  %257 = fpext float %255 to double
  %258 = fpext float %256 to double
  %259 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %258)
  %260 = add nuw nsw i64 %245, 1
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %261 = icmp eq i64 %indvars.iv.next102, %260
  %262 = zext i1 %261 to i32
  call void @assert_ft(i32 %262, i32 1)
  %263 = icmp eq i64 %260, %69
  %exitcond104.not = icmp eq i64 %indvars.iv.next102, %70
  %264 = icmp eq i1 %exitcond104.not, %263
  %265 = zext i1 %264 to i32
  call void @assert_ft(i32 %265, i32 1)
  %266 = select i1 %exitcond104.not, i32 18, i32 16
  %267 = xor i32 16, %266
  br i1 %exitcond104.not, label %._crit_edge83, label %.lr.ph82

._crit_edge83.critedge:                           ; preds = %.preheader
  %Diff_phi140 = phi i32 [ %103, %.preheader ]
  %Dest_phi141 = phi i32 [ %96, %.preheader ]
  %268 = xor i32 %Diff_phi140, %Dest_phi141
  %269 = icmp eq i32 %268, 17
  %270 = zext i1 %269 to i32
  call void @assert_cfg_ft(i32 %270, i32 %268, i32 0)
  tail call void @fft_float(i32 noundef %59, i32 noundef %.0, ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80)
  %puts.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.critedge, %.lr.ph82
  %Diff_phi142 = phi i32 [ %267, %.lr.ph82 ], [ 3, %._crit_edge83.critedge ]
  %Dest_phi143 = phi i32 [ %246, %.lr.ph82 ], [ %268, %._crit_edge83.critedge ]
  %271 = xor i32 %Diff_phi142, %Dest_phi143
  %272 = icmp eq i32 %271, 18
  %273 = zext i1 %272 to i32
  call void @assert_cfg_ft(i32 %273, i32 %271, i32 0)
  %putchar = tail call i32 @putchar(i32 10)
  %puts68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %274 = select i1 %.not89, i32 21, i32 19
  %275 = xor i32 18, %274
  br i1 %.not89, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86, %._crit_edge83
  %Diff_phi144 = phi i32 [ %275, %._crit_edge83 ], [ %298, %.lr.ph86 ]
  %Dest_phi145 = phi i32 [ %271, %._crit_edge83 ], [ %277, %.lr.ph86 ]
  %276 = phi i64 [ %291, %.lr.ph86 ], [ 0, %._crit_edge83 ]
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %.lr.ph86 ], [ 0, %._crit_edge83 ]
  %277 = xor i32 %Diff_phi144, %Dest_phi145
  %278 = icmp eq i32 %277, 19
  %279 = zext i1 %278 to i32
  call void @assert_cfg_ft(i32 %279, i32 %277, i32 0)
  %280 = icmp eq i64 %indvars.iv105, %276
  %281 = zext i1 %280 to i32
  call void @assert_ft(i32 %281, i32 1)
  %282 = getelementptr inbounds float, ptr %80, i64 %276
  %283 = getelementptr inbounds float, ptr %80, i64 %indvars.iv105
  %284 = icmp eq ptr %283, %282
  %285 = zext i1 %284 to i32
  call void @assert_ft(i32 %285, i32 1)
  %286 = load float, ptr %282, align 4
  %287 = load float, ptr %283, align 4
  %288 = fpext float %286 to double
  %289 = fpext float %287 to double
  %290 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %289)
  %291 = add nuw nsw i64 %276, 1
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %292 = icmp eq i64 %indvars.iv.next106, %291
  %293 = zext i1 %292 to i32
  call void @assert_ft(i32 %293, i32 1)
  %294 = icmp eq i64 %291, %69
  %exitcond108.not = icmp eq i64 %indvars.iv.next106, %70
  %295 = icmp eq i1 %exitcond108.not, %294
  %296 = zext i1 %295 to i32
  call void @assert_ft(i32 %296, i32 1)
  %297 = select i1 %exitcond108.not, i32 21, i32 19
  %298 = xor i32 19, %297
  br i1 %exitcond108.not, label %._crit_edge87, label %.lr.ph86

._crit_edge87.critedge:                           ; preds = %._crit_edge79
  %Diff_phi146 = phi i32 [ %244, %._crit_edge79 ]
  %Dest_phi147 = phi i32 [ %240, %._crit_edge79 ]
  %299 = xor i32 %Diff_phi146, %Dest_phi147
  %300 = icmp eq i32 %299, 20
  %301 = zext i1 %300 to i32
  call void @assert_cfg_ft(i32 %301, i32 %299, i32 0)
  %putchar.c = tail call i32 @putchar(i32 10)
  %puts68.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.critedge, %.lr.ph86, %._crit_edge83
  %Diff_phi148 = phi i32 [ %298, %.lr.ph86 ], [ 1, %._crit_edge87.critedge ], [ %275, %._crit_edge83 ]
  %Dest_phi149 = phi i32 [ %277, %.lr.ph86 ], [ %299, %._crit_edge87.critedge ], [ %271, %._crit_edge83 ]
  %302 = xor i32 %Diff_phi148, %Dest_phi149
  %303 = icmp eq i32 %302, 21
  %304 = zext i1 %303 to i32
  call void @assert_cfg_ft(i32 %304, i32 %302, i32 0)
  %putchar69 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %77) #17
  tail call void @free(ptr noundef %78) #17
  tail call void @free(ptr noundef %79) #17
  tail call void @free(ptr noundef %80) #17
  tail call void @free(ptr noundef %89) #17
  tail call void @free(ptr noundef %90) #17
  tail call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @IsPowerOfTwo(i32 noundef %0) local_unnamed_addr #10 {
  %2 = icmp ugt i32 %0, 1
  %3 = icmp ugt i32 %0, 1
  %4 = icmp eq i1 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !6
  %7 = icmp ult i32 %6, 2
  %.not = icmp ult i32 %6, 2
  %8 = icmp eq i1 %.not, %7
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = select i1 %2, i1 %7, i1 false
  %narrow = select i1 %3, i1 %.not, i1 false
  %11 = icmp eq i1 %narrow, %10
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = zext i1 %10 to i32
  %.0 = zext i1 %narrow to i32
  %14 = icmp eq i32 %.0, %13
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NumberOfBitsNeeded(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 2
  %3 = icmp ult i32 %0, 2
  %4 = icmp eq i1 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %3, i32 24, i32 25
  %7 = xor i32 23, %6
  br i1 %3, label %8, label %.preheader

8:                                                ; preds = %1
  %Diff_phi = phi i32 [ %7, %1 ]
  %Dest_phi = phi i32 [ 23, %1 ]
  %9 = xor i32 %Diff_phi, %Dest_phi
  %10 = icmp eq i32 %9, 24
  %11 = zext i1 %10 to i32
  call void @assert_cfg_ft(i32 %11, i32 %9, i32 0)
  %12 = load ptr, ptr @stderr, align 8
  %13 = load ptr, ptr @stderr, align 8
  %14 = icmp eq ptr %13, %12
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef %0) #19
  tail call void @exit(i32 noundef 1) #15
  unreachable

.preheader:                                       ; preds = %.preheader, %1
  %Diff_phi7 = phi i32 [ %7, %1 ], [ %39, %.preheader ]
  %Dest_phi8 = phi i32 [ 23, %1 ], [ %18, %.preheader ]
  %17 = phi i32 [ %34, %.preheader ], [ 0, %1 ]
  %.0 = phi i32 [ %35, %.preheader ], [ 0, %1 ]
  %18 = xor i32 %Diff_phi7, %Dest_phi8
  %19 = icmp eq i32 %18, 25
  %20 = zext i1 %19 to i32
  call void @assert_cfg_ft(i32 %20, i32 %18, i32 0)
  %21 = icmp eq i32 %.0, %17
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = shl nuw i32 1, %17
  %24 = shl nuw i32 1, %.0
  %25 = icmp eq i32 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = and i32 %23, %0
  %28 = and i32 %24, %0
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = icmp eq i32 %27, 0
  %.not = icmp eq i32 %28, 0
  %32 = icmp eq i1 %.not, %31
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = add i32 %17, 1
  %35 = add i32 %.0, 1
  %36 = icmp eq i32 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = select i1 %.not, i32 25, i32 26
  %39 = xor i32 25, %38
  br i1 %.not, label %.preheader, label %40

40:                                               ; preds = %.preheader
  %Diff_phi9 = phi i32 [ %39, %.preheader ]
  %Dest_phi10 = phi i32 [ %18, %.preheader ]
  %41 = xor i32 %Diff_phi9, %Dest_phi10
  %42 = icmp eq i32 %41, 26
  %43 = zext i1 %42 to i32
  call void @assert_cfg_ft(i32 %43, i32 %41, i32 0)
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ReverseBits(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq i32 %1, 0
  %.not = icmp eq i32 %1, 0
  %4 = icmp eq i1 %.not, %3
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %.not, i32 29, i32 28
  %7 = xor i32 27, %6
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %2
  %Diff_phi = phi i32 [ %7, %2 ], [ %44, %.lr.ph ]
  %Dest_phi = phi i32 [ 27, %2 ], [ %11, %.lr.ph ]
  %8 = phi i32 [ %28, %.lr.ph ], [ 0, %2 ]
  %.011 = phi i32 [ %29, %.lr.ph ], [ 0, %2 ]
  %9 = phi i32 [ %36, %.lr.ph ], [ 0, %2 ]
  %.0710 = phi i32 [ %37, %.lr.ph ], [ 0, %2 ]
  %10 = phi i32 [ %32, %.lr.ph ], [ %0, %2 ]
  %.089 = phi i32 [ %33, %.lr.ph ], [ %0, %2 ]
  %11 = xor i32 %Diff_phi, %Dest_phi
  %12 = icmp eq i32 %11, 28
  %13 = zext i1 %12 to i32
  call void @assert_cfg_ft(i32 %13, i32 %11, i32 0)
  %14 = icmp eq i32 %.0710, %9
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = icmp eq i32 %.011, %8
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = icmp eq i32 %.089, %10
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = shl i32 %8, 1
  %21 = shl i32 %.011, 1
  %22 = icmp eq i32 %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = and i32 %10, 1
  %25 = and i32 %.089, 1
  %26 = icmp eq i32 %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = or i32 %20, %24
  %29 = or i32 %21, %25
  %30 = icmp eq i32 %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = lshr i32 %10, 1
  %33 = lshr i32 %.089, 1
  %34 = icmp eq i32 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = add nuw i32 %9, 1
  %37 = add nuw i32 %.0710, 1
  %38 = icmp eq i32 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = icmp eq i32 %36, %1
  %exitcond.not = icmp eq i32 %37, %1
  %41 = icmp eq i1 %exitcond.not, %40
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = select i1 %exitcond.not, i32 29, i32 28
  %44 = xor i32 28, %43
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  %Diff_phi12 = phi i32 [ %44, %.lr.ph ], [ %7, %2 ]
  %Dest_phi13 = phi i32 [ %11, %.lr.ph ], [ 27, %2 ]
  %45 = phi i32 [ 0, %2 ], [ %28, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %2 ], [ %29, %.lr.ph ]
  %46 = xor i32 %Diff_phi12, %Dest_phi13
  %47 = icmp eq i32 %46, 29
  %48 = zext i1 %47 to i32
  call void @assert_cfg_ft(i32 %48, i32 %46, i32 0)
  %49 = icmp eq i32 %.0.lcssa, %45
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @Index_to_frequency(i32 noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = icmp ult i32 %1, %0
  %.not = icmp ult i32 %1, %0
  %4 = icmp eq i1 %.not, %3
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %.not, i32 31, i32 34
  %7 = xor i32 30, %6
  br i1 %.not, label %8, label %47

8:                                                ; preds = %2
  %Diff_phi = phi i32 [ %7, %2 ]
  %Dest_phi = phi i32 [ 30, %2 ]
  %9 = xor i32 %Diff_phi, %Dest_phi
  %10 = icmp eq i32 %9, 31
  %11 = zext i1 %10 to i32
  call void @assert_cfg_ft(i32 %11, i32 %9, i32 0)
  %12 = lshr i32 %0, 1
  %13 = lshr i32 %0, 1
  %14 = icmp eq i32 %13, %12
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = icmp ult i32 %12, %1
  %.not11 = icmp ult i32 %13, %1
  %17 = icmp eq i1 %.not11, %16
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = select i1 %.not11, i32 33, i32 32
  %20 = xor i32 31, %19
  br i1 %.not11, label %31, label %21

21:                                               ; preds = %8
  %Diff_phi12 = phi i32 [ %20, %8 ]
  %Dest_phi13 = phi i32 [ %9, %8 ]
  %22 = xor i32 %Diff_phi12, %Dest_phi13
  %23 = icmp eq i32 %22, 32
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  %25 = uitofp i32 %1 to double
  %26 = uitofp i32 %1 to double
  %27 = uitofp i32 %0 to double
  %28 = uitofp i32 %0 to double
  %29 = fdiv double %25, %27
  %30 = fdiv double %26, %28
  br label %47

31:                                               ; preds = %8
  %Diff_phi14 = phi i32 [ %20, %8 ]
  %Dest_phi15 = phi i32 [ %9, %8 ]
  %32 = xor i32 %Diff_phi14, %Dest_phi15
  %33 = icmp eq i32 %32, 33
  %34 = zext i1 %33 to i32
  call void @assert_cfg_ft(i32 %34, i32 %32, i32 0)
  %35 = sub i32 %0, %1
  %36 = sub i32 %0, %1
  %37 = icmp eq i32 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = uitofp i32 %35 to double
  %40 = uitofp i32 %36 to double
  %41 = fneg double %39
  %42 = fneg double %40
  %43 = uitofp i32 %0 to double
  %44 = uitofp i32 %0 to double
  %45 = fdiv double %41, %43
  %46 = fdiv double %42, %44
  br label %47

47:                                               ; preds = %31, %21, %2
  %Diff_phi16 = phi i32 [ %7, %2 ], [ 3, %31 ], [ 2, %21 ]
  %Dest_phi17 = phi i32 [ 30, %2 ], [ %32, %31 ], [ %22, %21 ]
  %48 = phi double [ %29, %21 ], [ %45, %31 ], [ 0.000000e+00, %2 ]
  %.0 = phi double [ %30, %21 ], [ %46, %31 ], [ 0.000000e+00, %2 ]
  %49 = xor i32 %Diff_phi16, %Dest_phi17
  %50 = icmp eq i32 %49, 34
  %51 = zext i1 %50 to i32
  call void @assert_cfg_ft(i32 %51, i32 %49, i32 0)
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fft_float(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #11 {
  %7 = tail call i32 @IsPowerOfTwo(i32 noundef %0), !range !7
  %8 = icmp eq i32 %7, 0
  %.not = icmp eq i32 %7, 0
  %9 = icmp eq i1 %.not, %8
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = select i1 %.not, i32 36, i32 37
  %12 = xor i32 35, %11
  br i1 %.not, label %13, label %22

13:                                               ; preds = %6
  %Diff_phi = phi i32 [ %12, %6 ]
  %Dest_phi = phi i32 [ 35, %6 ]
  %14 = xor i32 %Diff_phi, %Dest_phi
  %15 = icmp eq i32 %14, 36
  %16 = zext i1 %15 to i32
  call void @assert_cfg_ft(i32 %16, i32 %14, i32 0)
  %17 = load ptr, ptr @stderr, align 8
  %18 = load ptr, ptr @stderr, align 8
  %19 = icmp eq ptr %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.12, i32 noundef %0) #19
  tail call void @exit(i32 noundef 1) #15
  unreachable

22:                                               ; preds = %6
  %Diff_phi132 = phi i32 [ %12, %6 ]
  %Dest_phi133 = phi i32 [ 35, %6 ]
  %23 = xor i32 %Diff_phi132, %Dest_phi133
  %24 = icmp eq i32 %23, 37
  %25 = zext i1 %24 to i32
  call void @assert_cfg_ft(i32 %25, i32 %23, i32 0)
  %26 = icmp eq i32 %1, 0
  %.not100 = icmp eq i32 %1, 0
  %27 = icmp eq i1 %.not100, %26
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = select i1 %26, double 0x401921FB54442D18, double 0xC01921FB54442D18
  %spec.select = select i1 %.not100, double 0x401921FB54442D18, double 0xC01921FB54442D18
  tail call fastcc void @CheckPointer(ptr noundef %2, ptr noundef nonnull @.str.1.13)
  tail call fastcc void @CheckPointer(ptr noundef %4, ptr noundef nonnull @.str.2.14)
  tail call fastcc void @CheckPointer(ptr noundef %5, ptr noundef nonnull @.str.3.15)
  %30 = tail call i32 @NumberOfBitsNeeded(i32 noundef %0)
  %31 = icmp eq i32 %0, 0
  %.not121 = icmp eq i32 %0, 0
  %32 = icmp eq i1 %.not121, %31
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = select i1 %.not121, i32 52, i32 38
  %35 = xor i32 37, %34
  br i1 %.not121, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %22
  %Diff_phi134 = phi i32 [ %35, %22 ]
  %Dest_phi135 = phi i32 [ %23, %22 ]
  %36 = xor i32 %Diff_phi134, %Dest_phi135
  %37 = icmp eq i32 %36, 38
  %38 = zext i1 %37 to i32
  call void @assert_cfg_ft(i32 %38, i32 %36, i32 0)
  %39 = icmp eq ptr %3, null
  %40 = icmp eq ptr %3, null
  %41 = icmp eq i1 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = zext i32 %0 to i64
  %wide.trip.count = zext i32 %0 to i64
  %44 = icmp eq i64 %wide.trip.count, %43
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  br label %54

.preheader102:                                    ; preds = %92
  %Diff_phi136 = phi i32 [ %109, %92 ]
  %Dest_phi137 = phi i32 [ %95, %92 ]
  %46 = xor i32 %Diff_phi136, %Dest_phi137
  %47 = icmp eq i32 %46, 39
  %48 = zext i1 %47 to i32
  call void @assert_cfg_ft(i32 %48, i32 %46, i32 0)
  %49 = icmp ult i32 %0, 2
  %.not101113 = icmp ult i32 %0, 2
  %50 = icmp eq i1 %.not101113, %49
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = select i1 %.not101113, i32 48, i32 43
  %53 = xor i32 39, %52
  br i1 %.not101113, label %._crit_edge117, label %.preheader.lr.ph

54:                                               ; preds = %92, %.lr.ph
  %Diff_phi138 = phi i32 [ 14, %.lr.ph ], [ %109, %92 ]
  %Dest_phi139 = phi i32 [ %36, %.lr.ph ], [ %95, %92 ]
  %55 = phi i64 [ 0, %.lr.ph ], [ %102, %92 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %92 ]
  %56 = xor i32 %Diff_phi138, %Dest_phi139
  %57 = icmp eq i32 %56, 40
  %58 = zext i1 %57 to i32
  call void @assert_cfg_ft(i32 %58, i32 %56, i32 0)
  %59 = icmp eq i64 %indvars.iv, %55
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = trunc i64 %55 to i32
  %62 = trunc i64 %indvars.iv to i32
  %63 = icmp eq i32 %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = tail call i32 @ReverseBits(i32 noundef %62, i32 noundef %30)
  %66 = getelementptr inbounds float, ptr %2, i64 %55
  %67 = getelementptr inbounds float, ptr %2, i64 %indvars.iv
  %68 = icmp eq ptr %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = load float, ptr %66, align 4
  %71 = load float, ptr %67, align 4
  %72 = zext i32 %65 to i64
  %73 = zext i32 %65 to i64
  %74 = icmp eq i64 %73, %72
  %75 = zext i1 %74 to i32
  call void @assert_ft(i32 %75, i32 1)
  %76 = getelementptr inbounds float, ptr %4, i64 %72
  %77 = getelementptr inbounds float, ptr %4, i64 %73
  %78 = icmp eq ptr %77, %76
  %79 = zext i1 %78 to i32
  call void @assert_ft(i32 %79, i32 1)
  store float %71, ptr %77, align 4
  %80 = select i1 %40, i32 42, i32 41
  %81 = xor i32 40, %80
  br i1 %40, label %92, label %82

82:                                               ; preds = %54
  %Diff_phi140 = phi i32 [ %81, %54 ]
  %Dest_phi141 = phi i32 [ %56, %54 ]
  %83 = xor i32 %Diff_phi140, %Dest_phi141
  %84 = icmp eq i32 %83, 41
  %85 = zext i1 %84 to i32
  call void @assert_cfg_ft(i32 %85, i32 %83, i32 0)
  %86 = getelementptr inbounds float, ptr %3, i64 %55
  %87 = getelementptr inbounds float, ptr %3, i64 %indvars.iv
  %88 = icmp eq ptr %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = load float, ptr %86, align 4
  %91 = load float, ptr %87, align 4
  br label %92

92:                                               ; preds = %82, %54
  %Diff_phi142 = phi i32 [ %81, %54 ], [ 3, %82 ]
  %Dest_phi143 = phi i32 [ %56, %54 ], [ %83, %82 ]
  %93 = phi float [ %90, %82 ], [ 0.000000e+00, %54 ]
  %94 = phi float [ %91, %82 ], [ 0.000000e+00, %54 ]
  %95 = xor i32 %Diff_phi142, %Dest_phi143
  %96 = icmp eq i32 %95, 42
  %97 = zext i1 %96 to i32
  call void @assert_cfg_ft(i32 %97, i32 %95, i32 0)
  %98 = getelementptr inbounds float, ptr %5, i64 %72
  %99 = getelementptr inbounds float, ptr %5, i64 %73
  %100 = icmp eq ptr %99, %98
  %101 = zext i1 %100 to i32
  call void @assert_ft(i32 %101, i32 1)
  store float %94, ptr %99, align 4
  %102 = add nuw nsw i64 %55, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %103 = icmp eq i64 %indvars.iv.next, %102
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  %105 = icmp eq i64 %102, %43
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %106 = icmp eq i1 %exitcond.not, %105
  %107 = zext i1 %106 to i32
  call void @assert_ft(i32 %107, i32 1)
  %108 = select i1 %exitcond.not, i32 39, i32 40
  %109 = xor i32 42, %108
  br i1 %exitcond.not, label %.preheader102, label %54

.preheader.lr.ph:                                 ; preds = %._crit_edge112, %.preheader102
  %Diff_phi144 = phi i32 [ %53, %.preheader102 ], [ %274, %._crit_edge112 ]
  %Dest_phi145 = phi i32 [ %46, %.preheader102 ], [ %263, %._crit_edge112 ]
  %110 = phi i32 [ %266, %._crit_edge112 ], [ 2, %.preheader102 ]
  %.095115 = phi i32 [ %267, %._crit_edge112 ], [ 2, %.preheader102 ]
  %111 = phi i32 [ %110, %._crit_edge112 ], [ 1, %.preheader102 ]
  %.096114 = phi i32 [ %.095115, %._crit_edge112 ], [ 1, %.preheader102 ]
  %112 = xor i32 %Diff_phi144, %Dest_phi145
  %113 = icmp eq i32 %112, 43
  %114 = zext i1 %113 to i32
  call void @assert_cfg_ft(i32 %114, i32 %112, i32 0)
  %115 = icmp eq i32 %.096114, %111
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = icmp eq i32 %.095115, %110
  %118 = zext i1 %117 to i32
  call void @assert_ft(i32 %118, i32 1)
  %119 = uitofp i32 %110 to double
  %120 = uitofp i32 %.095115 to double
  %121 = fdiv double %29, %119
  %122 = fdiv double %spec.select, %120
  %123 = fmul double %121, -2.000000e+00
  %124 = fmul double %122, -2.000000e+00
  %125 = tail call double @sin(double noundef %124) #17
  %126 = tail call double @sin(double %122)
  %127 = fneg double %126
  %128 = fneg double %126
  %129 = tail call double @cos(double noundef %124) #17
  %cos = tail call double @cos(double %122)
  %130 = fmul double %cos, 2.000000e+00
  %131 = fmul double %cos, 2.000000e+00
  %132 = icmp eq i32 %111, 0
  %.not123 = icmp eq i32 %.096114, 0
  %133 = icmp eq i1 %.not123, %132
  %134 = zext i1 %133 to i32
  call void @assert_ft(i32 %134, i32 1)
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %Diff_phi146 = phi i32 [ 7, %.preheader.lr.ph ], [ %262, %._crit_edge ]
  %Dest_phi147 = phi i32 [ %112, %.preheader.lr.ph ], [ %247, %._crit_edge ]
  %135 = phi i32 [ %111, %.preheader.lr.ph ], [ %258, %._crit_edge ]
  %indvars.iv124 = phi i32 [ %.096114, %.preheader.lr.ph ], [ %indvars.iv.next125, %._crit_edge ]
  %136 = phi i32 [ 0, %.preheader.lr.ph ], [ %250, %._crit_edge ]
  %.1111 = phi i32 [ 0, %.preheader.lr.ph ], [ %251, %._crit_edge ]
  %137 = xor i32 %Diff_phi146, %Dest_phi147
  %138 = icmp eq i32 %137, 44
  %139 = zext i1 %138 to i32
  call void @assert_cfg_ft(i32 %139, i32 %137, i32 0)
  %140 = icmp eq i32 %indvars.iv124, %135
  %141 = zext i1 %140 to i32
  call void @assert_ft(i32 %141, i32 1)
  %142 = icmp eq i32 %.1111, %136
  %143 = zext i1 %142 to i32
  call void @assert_ft(i32 %143, i32 1)
  %144 = select i1 %.not123, i32 46, i32 45
  %145 = xor i32 44, %144
  br i1 %.not123, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110, %.preheader
  %Diff_phi148 = phi i32 [ %145, %.preheader ], [ %246, %.lr.ph110 ]
  %Dest_phi149 = phi i32 [ %137, %.preheader ], [ %151, %.lr.ph110 ]
  %146 = phi i32 [ %238, %.lr.ph110 ], [ %136, %.preheader ]
  %.093109 = phi i32 [ %239, %.lr.ph110 ], [ %.1111, %.preheader ]
  %147 = phi double [ %161, %.lr.ph110 ], [ %127, %.preheader ]
  %.sroa.4.0108 = phi double [ %161, %.lr.ph110 ], [ %128, %.preheader ]
  %148 = phi double [ %147, %.lr.ph110 ], [ %125, %.preheader ]
  %.sroa.8.0107 = phi double [ %.sroa.4.0108, %.lr.ph110 ], [ %125, %.preheader ]
  %149 = phi double [ %158, %.lr.ph110 ], [ %cos, %.preheader ]
  %.sroa.48.0105 = phi double [ %158, %.lr.ph110 ], [ %cos, %.preheader ]
  %150 = phi double [ %149, %.lr.ph110 ], [ %129, %.preheader ]
  %.sroa.810.0104 = phi double [ %.sroa.48.0105, %.lr.ph110 ], [ %129, %.preheader ]
  %151 = xor i32 %Diff_phi148, %Dest_phi149
  %152 = icmp eq i32 %151, 45
  %153 = zext i1 %152 to i32
  call void @assert_cfg_ft(i32 %153, i32 %151, i32 0)
  %154 = icmp eq i32 %.093109, %146
  %155 = zext i1 %154 to i32
  call void @assert_ft(i32 %155, i32 1)
  %156 = fneg double %150
  %157 = fneg double %.sroa.810.0104
  %158 = tail call double @llvm.fmuladd.f64(double %131, double %.sroa.48.0105, double %157)
  %159 = fneg double %148
  %160 = fneg double %.sroa.8.0107
  %161 = tail call double @llvm.fmuladd.f64(double %131, double %.sroa.4.0108, double %160)
  %162 = add i32 %146, %111
  %163 = add i32 %.093109, %.096114
  %164 = icmp eq i32 %163, %162
  %165 = zext i1 %164 to i32
  call void @assert_ft(i32 %165, i32 1)
  %166 = zext i32 %162 to i64
  %167 = zext i32 %163 to i64
  %168 = icmp eq i64 %167, %166
  %169 = zext i1 %168 to i32
  call void @assert_ft(i32 %169, i32 1)
  %170 = getelementptr inbounds float, ptr %4, i64 %166
  %171 = getelementptr inbounds float, ptr %4, i64 %167
  %172 = icmp eq ptr %171, %170
  %173 = zext i1 %172 to i32
  call void @assert_ft(i32 %173, i32 1)
  %174 = load float, ptr %170, align 4
  %175 = load float, ptr %171, align 4
  %176 = fpext float %174 to double
  %177 = fpext float %175 to double
  %178 = getelementptr inbounds float, ptr %5, i64 %166
  %179 = getelementptr inbounds float, ptr %5, i64 %167
  %180 = icmp eq ptr %179, %178
  %181 = zext i1 %180 to i32
  call void @assert_ft(i32 %181, i32 1)
  %182 = load float, ptr %178, align 4
  %183 = load float, ptr %179, align 4
  %184 = fpext float %182 to double
  %185 = fpext float %183 to double
  %186 = fneg double %161
  %187 = fneg double %161
  %188 = fmul double %186, %184
  %189 = fmul double %187, %185
  %190 = tail call double @llvm.fmuladd.f64(double %158, double %177, double %189)
  %191 = fmul double %161, %176
  %192 = fmul double %161, %177
  %193 = tail call double @llvm.fmuladd.f64(double %158, double %185, double %192)
  %194 = zext i32 %146 to i64
  %195 = zext i32 %.093109 to i64
  %196 = icmp eq i64 %195, %194
  %197 = zext i1 %196 to i32
  call void @assert_ft(i32 %197, i32 1)
  %198 = getelementptr inbounds float, ptr %4, i64 %194
  %199 = getelementptr inbounds float, ptr %4, i64 %195
  %200 = icmp eq ptr %199, %198
  %201 = zext i1 %200 to i32
  call void @assert_ft(i32 %201, i32 1)
  %202 = load float, ptr %198, align 4
  %203 = load float, ptr %199, align 4
  %204 = fpext float %202 to double
  %205 = fpext float %203 to double
  %206 = fsub double %204, %190
  %207 = fsub double %205, %190
  %208 = fptrunc double %206 to float
  %209 = fptrunc double %207 to float
  store float %209, ptr %171, align 4
  %210 = getelementptr inbounds float, ptr %5, i64 %194
  %211 = getelementptr inbounds float, ptr %5, i64 %195
  %212 = icmp eq ptr %211, %210
  %213 = zext i1 %212 to i32
  call void @assert_ft(i32 %213, i32 1)
  %214 = load float, ptr %210, align 4
  %215 = load float, ptr %211, align 4
  %216 = fpext float %214 to double
  %217 = fpext float %215 to double
  %218 = fsub double %216, %193
  %219 = fsub double %217, %193
  %220 = fptrunc double %218 to float
  %221 = fptrunc double %219 to float
  store float %221, ptr %179, align 4
  %222 = load float, ptr %198, align 4
  %223 = load float, ptr %199, align 4
  %224 = fpext float %222 to double
  %225 = fpext float %223 to double
  %226 = fadd double %190, %224
  %227 = fadd double %190, %225
  %228 = fptrunc double %226 to float
  %229 = fptrunc double %227 to float
  store float %229, ptr %199, align 4
  %230 = load float, ptr %210, align 4
  %231 = load float, ptr %211, align 4
  %232 = fpext float %230 to double
  %233 = fpext float %231 to double
  %234 = fadd double %193, %232
  %235 = fadd double %193, %233
  %236 = fptrunc double %234 to float
  %237 = fptrunc double %235 to float
  store float %237, ptr %211, align 4
  %238 = add i32 %146, 1
  %239 = add i32 %.093109, 1
  %240 = icmp eq i32 %239, %238
  %241 = zext i1 %240 to i32
  call void @assert_ft(i32 %241, i32 1)
  %242 = icmp eq i32 %238, %135
  %exitcond126.not = icmp eq i32 %239, %indvars.iv124
  %243 = icmp eq i1 %exitcond126.not, %242
  %244 = zext i1 %243 to i32
  call void @assert_ft(i32 %244, i32 1)
  %245 = select i1 %exitcond126.not, i32 46, i32 45
  %246 = xor i32 45, %245
  br i1 %exitcond126.not, label %._crit_edge, label %.lr.ph110

._crit_edge:                                      ; preds = %.lr.ph110, %.preheader
  %Diff_phi150 = phi i32 [ %246, %.lr.ph110 ], [ %145, %.preheader ]
  %Dest_phi151 = phi i32 [ %151, %.lr.ph110 ], [ %137, %.preheader ]
  %247 = xor i32 %Diff_phi150, %Dest_phi151
  %248 = icmp eq i32 %247, 46
  %249 = zext i1 %248 to i32
  call void @assert_cfg_ft(i32 %249, i32 %247, i32 0)
  %250 = add i32 %136, %110
  %251 = add i32 %.1111, %.095115
  %252 = icmp eq i32 %251, %250
  %253 = zext i1 %252 to i32
  call void @assert_ft(i32 %253, i32 1)
  %254 = icmp ult i32 %250, %0
  %255 = icmp ult i32 %251, %0
  %256 = icmp eq i1 %255, %254
  %257 = zext i1 %256 to i32
  call void @assert_ft(i32 %257, i32 1)
  %258 = add i32 %135, %110
  %indvars.iv.next125 = add i32 %indvars.iv124, %.095115
  %259 = icmp eq i32 %indvars.iv.next125, %258
  %260 = zext i1 %259 to i32
  call void @assert_ft(i32 %260, i32 1)
  %261 = select i1 %255, i32 44, i32 47
  %262 = xor i32 46, %261
  br i1 %255, label %.preheader, label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge
  %Diff_phi152 = phi i32 [ %262, %._crit_edge ]
  %Dest_phi153 = phi i32 [ %247, %._crit_edge ]
  %263 = xor i32 %Diff_phi152, %Dest_phi153
  %264 = icmp eq i32 %263, 47
  %265 = zext i1 %264 to i32
  call void @assert_cfg_ft(i32 %265, i32 %263, i32 0)
  %266 = shl i32 %110, 1
  %267 = shl i32 %.095115, 1
  %268 = icmp eq i32 %267, %266
  %269 = zext i1 %268 to i32
  call void @assert_ft(i32 %269, i32 1)
  %270 = icmp ugt i32 %266, %0
  %.not101 = icmp ugt i32 %267, %0
  %271 = icmp eq i1 %.not101, %270
  %272 = zext i1 %271 to i32
  call void @assert_ft(i32 %272, i32 1)
  %273 = select i1 %.not101, i32 48, i32 43
  %274 = xor i32 47, %273
  br i1 %.not101, label %._crit_edge117, label %.preheader.lr.ph

._crit_edge117:                                   ; preds = %._crit_edge112, %.preheader102
  %Diff_phi154 = phi i32 [ %274, %._crit_edge112 ], [ %53, %.preheader102 ]
  %Dest_phi155 = phi i32 [ %263, %._crit_edge112 ], [ %46, %.preheader102 ]
  %275 = xor i32 %Diff_phi154, %Dest_phi155
  %276 = icmp eq i32 %275, 48
  %277 = zext i1 %276 to i32
  call void @assert_cfg_ft(i32 %277, i32 %275, i32 0)
  %278 = select i1 %.not100, i32 52, i32 49
  %279 = xor i32 48, %278
  br i1 %.not100, label %.loopexit, label %280

280:                                              ; preds = %._crit_edge117
  %Diff_phi156 = phi i32 [ %279, %._crit_edge117 ]
  %Dest_phi157 = phi i32 [ %275, %._crit_edge117 ]
  %281 = xor i32 %Diff_phi156, %Dest_phi157
  %282 = icmp eq i32 %281, 49
  %283 = zext i1 %282 to i32
  call void @assert_cfg_ft(i32 %283, i32 %281, i32 0)
  %284 = uitofp i32 %0 to double
  %285 = uitofp i32 %0 to double
  %286 = select i1 %.not121, i32 52, i32 50
  %287 = xor i32 49, %286
  br i1 %.not121, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %280
  %Diff_phi158 = phi i32 [ %287, %280 ]
  %Dest_phi159 = phi i32 [ %281, %280 ]
  %288 = xor i32 %Diff_phi158, %Dest_phi159
  %289 = icmp eq i32 %288, 50
  %290 = zext i1 %289 to i32
  call void @assert_cfg_ft(i32 %290, i32 %288, i32 0)
  %291 = zext i32 %0 to i64
  %wide.trip.count129 = zext i32 %0 to i64
  %292 = icmp eq i64 %wide.trip.count129, %291
  %293 = zext i1 %292 to i32
  call void @assert_ft(i32 %293, i32 1)
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120, %.lr.ph120.preheader
  %Diff_phi160 = phi i32 [ 1, %.lr.ph120.preheader ], [ %331, %.lr.ph120 ]
  %Dest_phi161 = phi i32 [ %288, %.lr.ph120.preheader ], [ %295, %.lr.ph120 ]
  %294 = phi i64 [ 0, %.lr.ph120.preheader ], [ %324, %.lr.ph120 ]
  %indvars.iv127 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next128, %.lr.ph120 ]
  %295 = xor i32 %Diff_phi160, %Dest_phi161
  %296 = icmp eq i32 %295, 51
  %297 = zext i1 %296 to i32
  call void @assert_cfg_ft(i32 %297, i32 %295, i32 0)
  %298 = icmp eq i64 %indvars.iv127, %294
  %299 = zext i1 %298 to i32
  call void @assert_ft(i32 %299, i32 1)
  %300 = getelementptr inbounds float, ptr %4, i64 %294
  %301 = getelementptr inbounds float, ptr %4, i64 %indvars.iv127
  %302 = icmp eq ptr %301, %300
  %303 = zext i1 %302 to i32
  call void @assert_ft(i32 %303, i32 1)
  %304 = load float, ptr %300, align 4
  %305 = load float, ptr %301, align 4
  %306 = fpext float %304 to double
  %307 = fpext float %305 to double
  %308 = fdiv double %306, %284
  %309 = fdiv double %307, %285
  %310 = fptrunc double %308 to float
  %311 = fptrunc double %309 to float
  store float %311, ptr %301, align 4
  %312 = getelementptr inbounds float, ptr %5, i64 %294
  %313 = getelementptr inbounds float, ptr %5, i64 %indvars.iv127
  %314 = icmp eq ptr %313, %312
  %315 = zext i1 %314 to i32
  call void @assert_ft(i32 %315, i32 1)
  %316 = load float, ptr %312, align 4
  %317 = load float, ptr %313, align 4
  %318 = fpext float %316 to double
  %319 = fpext float %317 to double
  %320 = fdiv double %318, %284
  %321 = fdiv double %319, %285
  %322 = fptrunc double %320 to float
  %323 = fptrunc double %321 to float
  store float %323, ptr %313, align 4
  %324 = add nuw nsw i64 %294, 1
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %325 = icmp eq i64 %indvars.iv.next128, %324
  %326 = zext i1 %325 to i32
  call void @assert_ft(i32 %326, i32 1)
  %327 = icmp eq i64 %324, %291
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count129
  %328 = icmp eq i1 %exitcond130.not, %327
  %329 = zext i1 %328 to i32
  call void @assert_ft(i32 %329, i32 1)
  %330 = select i1 %exitcond130.not, i32 52, i32 51
  %331 = xor i32 51, %330
  br i1 %exitcond130.not, label %.loopexit, label %.lr.ph120

.loopexit:                                        ; preds = %.lr.ph120, %280, %._crit_edge117, %22
  %Diff_phi162 = phi i32 [ %331, %.lr.ph120 ], [ %35, %22 ], [ %287, %280 ], [ %279, %._crit_edge117 ]
  %Dest_phi163 = phi i32 [ %295, %.lr.ph120 ], [ %23, %22 ], [ %281, %280 ], [ %275, %._crit_edge117 ]
  %332 = xor i32 %Diff_phi162, %Dest_phi163
  %333 = icmp eq i32 %332, 52
  %334 = zext i1 %333 to i32
  call void @assert_cfg_ft(i32 %334, i32 %332, i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @CheckPointer(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %0, null
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = select i1 %4, i32 54, i32 55
  %8 = xor i32 53, %7
  br i1 %4, label %9, label %18

9:                                                ; preds = %2
  %Diff_phi = phi i32 [ %8, %2 ]
  %Dest_phi = phi i32 [ 53, %2 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 54
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %13 = load ptr, ptr @stderr, align 8
  %14 = load ptr, ptr @stderr, align 8
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.4.16, ptr noundef %1) #19
  tail call void @exit(i32 noundef 1) #15
  unreachable

18:                                               ; preds = %2
  %Diff_phi2 = phi i32 [ %8, %2 ]
  %Dest_phi3 = phi i32 [ 53, %2 ]
  %19 = xor i32 %Diff_phi2, %Dest_phi3
  %20 = icmp eq i32 %19, 55
  %21 = zext i1 %20 to i32
  call void @assert_cfg_ft(i32 %21, i32 %19, i32 0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

declare void @exit.5(i32, ...)

declare i32 @printf.6(ptr, i32, ...)

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

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 0, i32 33}
!7 = !{i32 0, i32 2}
