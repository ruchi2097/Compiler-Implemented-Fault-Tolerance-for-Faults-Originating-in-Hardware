; ModuleID = 'adpcm-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal unnamed_addr constant [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal unnamed_addr constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16
@abuf = dso_local global [500 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@sbuf = dso_local global [1000 x i16] zeroinitializer, align 16
@state = dso_local global %struct.adpcm_state zeroinitializer, align 2
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Final valprev=%d, index=%d\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @adpcm_coder(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %3, align 2
  %6 = load i16, ptr %3, align 2
  %7 = icmp eq i16 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = load i8, ptr %9, align 2
  %14 = load i8, ptr %10, align 2
  %15 = icmp eq i8 %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = icmp sgt i32 %2, 0
  %18 = icmp sgt i32 %2, 0
  %19 = icmp eq i1 %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = select i1 %18, i32 2, i32 9
  %22 = xor i32 1, %21
  br i1 %18, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %4
  %Diff_phi = phi i32 [ %22, %4 ]
  %Dest_phi = phi i32 [ 1, %4 ]
  %23 = xor i32 %Diff_phi, %Dest_phi
  %24 = icmp eq i32 %23, 2
  %25 = zext i1 %24 to i32
  call void @assert_cfg_ft(i32 %25, i32 %23, i32 0)
  %26 = sext i8 %13 to i32
  %27 = sext i8 %14 to i32
  %28 = icmp eq i32 %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = sext i16 %5 to i32
  %31 = sext i16 %6 to i32
  %32 = icmp eq i32 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = sext i8 %13 to i64
  %35 = sext i8 %14 to i64
  %36 = icmp eq i64 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %34
  %39 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %35
  %40 = icmp eq ptr %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = load i32, ptr %38, align 4
  %43 = load i32, ptr %39, align 4
  %44 = icmp eq i32 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %241, %.lr.ph.preheader
  %Diff_phi107 = phi i32 [ 1, %.lr.ph.preheader ], [ %264, %241 ]
  %Dest_phi108 = phi i32 [ %23, %.lr.ph.preheader ], [ %244, %241 ]
  %46 = phi i32 [ %251, %241 ], [ 1, %.lr.ph.preheader ]
  %.095 = phi i32 [ %252, %241 ], [ 1, %.lr.ph.preheader ]
  %47 = phi i32 [ %243, %241 ], [ undef, %.lr.ph.preheader ]
  %.06294 = phi i32 [ %.1, %241 ], [ undef, %.lr.ph.preheader ]
  %48 = phi i32 [ %spec.store.select2, %241 ], [ %26, %.lr.ph.preheader ]
  %.06393 = phi i32 [ %spec.store.select2, %241 ], [ %27, %.lr.ph.preheader ]
  %49 = phi i32 [ %.268, %241 ], [ %30, %.lr.ph.preheader ]
  %.06692 = phi i32 [ %.268, %241 ], [ %31, %.lr.ph.preheader ]
  %50 = phi i32 [ %204, %241 ], [ %42, %.lr.ph.preheader ]
  %.06991 = phi i32 [ %205, %241 ], [ %43, %.lr.ph.preheader ]
  %51 = phi i32 [ %255, %241 ], [ %2, %.lr.ph.preheader ]
  %.07690 = phi i32 [ %256, %241 ], [ %2, %.lr.ph.preheader ]
  %52 = phi ptr [ %73, %241 ], [ %0, %.lr.ph.preheader ]
  %.07789 = phi ptr [ %74, %241 ], [ %0, %.lr.ph.preheader ]
  %53 = phi ptr [ %242, %241 ], [ %1, %.lr.ph.preheader ]
  %.07888 = phi ptr [ %.179, %241 ], [ %1, %.lr.ph.preheader ]
  %54 = xor i32 %Diff_phi107, %Dest_phi108
  %55 = icmp eq i32 %54, 3
  %56 = zext i1 %55 to i32
  call void @assert_cfg_ft(i32 %56, i32 %54, i32 0)
  %57 = icmp eq i32 %.06393, %48
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = icmp eq ptr %.07789, %52
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = icmp eq i32 %.06991, %50
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = icmp eq ptr %.07888, %53
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = icmp eq i32 %.095, %46
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = icmp eq i32 %.06692, %49
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = icmp eq i32 %.06294, %47
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = icmp eq i32 %.07690, %51
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = getelementptr inbounds i16, ptr %52, i64 1
  %74 = getelementptr inbounds i16, ptr %.07789, i64 1
  %75 = icmp eq ptr %74, %73
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  %77 = load i16, ptr %52, align 2
  %78 = load i16, ptr %.07789, align 2
  %79 = icmp eq i16 %78, %77
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = sext i16 %77 to i32
  %82 = sext i16 %78 to i32
  %83 = icmp eq i32 %82, %81
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = sub nsw i32 %81, %49
  %86 = sub nsw i32 %82, %.06692
  %87 = icmp eq i32 %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = icmp slt i32 %85, 0
  %90 = icmp slt i32 %86, 0
  %91 = icmp eq i1 %90, %89
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = lshr i32 %85, 28
  %94 = lshr i32 %86, 28
  %95 = icmp eq i32 %94, %93
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = and i32 %93, 8
  %98 = and i32 %94, 8
  %99 = icmp eq i32 %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %spec.select = tail call i32 @llvm.abs.i32(i32 %86, i1 true)
  %101 = ashr i32 %50, 3
  %102 = ashr i32 %.06991, 3
  %103 = icmp eq i32 %102, %101
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  %105 = icmp slt i32 %spec.select, %50
  %.not84 = icmp slt i32 %spec.select, %.06991
  %106 = icmp eq i1 %.not84, %105
  %107 = zext i1 %106 to i32
  call void @assert_ft(i32 %107, i32 1)
  %108 = select i1 %105, i32 0, i32 4
  %.073 = select i1 %.not84, i32 0, i32 4
  %109 = icmp eq i32 %.073, %108
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = select i1 %105, i32 0, i32 %50
  %112 = select i1 %.not84, i32 0, i32 %.06991
  %113 = icmp eq i32 %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = sub nsw i32 %spec.select, %111
  %.171 = sub nsw i32 %spec.select, %112
  %116 = icmp eq i32 %.171, %115
  %117 = zext i1 %116 to i32
  call void @assert_ft(i32 %117, i32 1)
  %118 = add nsw i32 %111, %101
  %.064 = add nsw i32 %112, %102
  %119 = icmp eq i32 %.064, %118
  %120 = zext i1 %119 to i32
  call void @assert_ft(i32 %120, i32 1)
  %121 = ashr i32 %50, 1
  %122 = ashr i32 %.06991, 1
  %123 = icmp eq i32 %122, %121
  %124 = zext i1 %123 to i32
  call void @assert_ft(i32 %124, i32 1)
  %125 = icmp slt i32 %115, %121
  %.not85 = icmp slt i32 %.171, %122
  %126 = icmp eq i1 %.not85, %125
  %127 = zext i1 %126 to i32
  call void @assert_ft(i32 %127, i32 1)
  %128 = or i32 %108, 2
  %129 = or i32 %.073, 2
  %130 = icmp eq i32 %129, %128
  %131 = zext i1 %130 to i32
  call void @assert_ft(i32 %131, i32 1)
  %132 = select i1 %125, i32 %108, i32 %128
  %.174 = select i1 %.not85, i32 %.073, i32 %129
  %133 = icmp eq i32 %.174, %132
  %134 = zext i1 %133 to i32
  call void @assert_ft(i32 %134, i32 1)
  %135 = select i1 %125, i32 0, i32 %121
  %136 = select i1 %.not85, i32 0, i32 %122
  %137 = icmp eq i32 %136, %135
  %138 = zext i1 %137 to i32
  call void @assert_ft(i32 %138, i32 1)
  %139 = sub nsw i32 %115, %135
  %.272 = sub nsw i32 %.171, %136
  %140 = icmp eq i32 %.272, %139
  %141 = zext i1 %140 to i32
  call void @assert_ft(i32 %141, i32 1)
  %142 = add nsw i32 %118, %135
  %.165 = add nsw i32 %.064, %136
  %143 = icmp eq i32 %.165, %142
  %144 = zext i1 %143 to i32
  call void @assert_ft(i32 %144, i32 1)
  %145 = ashr i32 %50, 2
  %146 = ashr i32 %.06991, 2
  %147 = icmp eq i32 %146, %145
  %148 = zext i1 %147 to i32
  call void @assert_ft(i32 %148, i32 1)
  %149 = icmp sge i32 %139, %145
  %.not86 = icmp sge i32 %.272, %146
  %150 = icmp eq i1 %.not86, %149
  %151 = zext i1 %150 to i32
  call void @assert_ft(i32 %151, i32 1)
  %152 = zext i1 %149 to i32
  %153 = zext i1 %.not86 to i32
  %154 = icmp eq i32 %153, %152
  %155 = zext i1 %154 to i32
  call void @assert_ft(i32 %155, i32 1)
  %156 = select i1 %149, i32 %145, i32 0
  %157 = select i1 %.not86, i32 %146, i32 0
  %158 = icmp eq i32 %157, %156
  %159 = zext i1 %158 to i32
  call void @assert_ft(i32 %159, i32 1)
  %160 = add nsw i32 %142, %156
  %.2 = add nsw i32 %.165, %157
  %161 = icmp eq i32 %.2, %160
  %162 = zext i1 %161 to i32
  call void @assert_ft(i32 %162, i32 1)
  %163 = sub i32 0, %160
  %164 = sub i32 0, %.2
  %165 = icmp eq i32 %164, %163
  %166 = zext i1 %165 to i32
  call void @assert_ft(i32 %166, i32 1)
  %167 = select i1 %89, i32 %163, i32 %160
  %.167.p = select i1 %90, i32 %164, i32 %.2
  %168 = icmp eq i32 %.167.p, %167
  %169 = zext i1 %168 to i32
  call void @assert_ft(i32 %169, i32 1)
  %170 = add i32 %167, %49
  %.167 = add i32 %.167.p, %.06692
  %171 = icmp eq i32 %.167, %170
  %172 = zext i1 %171 to i32
  call void @assert_ft(i32 %172, i32 1)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.167, i32 -32768)
  %.268 = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 32767)
  %173 = or i32 %132, %97
  %.275 = or i32 %.174, %98
  %174 = icmp eq i32 %.275, %173
  %175 = zext i1 %174 to i32
  call void @assert_ft(i32 %175, i32 1)
  %176 = or i32 %173, %152
  %177 = or i32 %.275, %153
  %178 = icmp eq i32 %177, %176
  %179 = zext i1 %178 to i32
  call void @assert_ft(i32 %179, i32 1)
  %180 = zext i32 %176 to i64
  %181 = zext i32 %177 to i64
  %182 = icmp eq i64 %181, %180
  %183 = zext i1 %182 to i32
  call void @assert_ft(i32 %183, i32 1)
  %184 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %180
  %185 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %181
  %186 = icmp eq ptr %185, %184
  %187 = zext i1 %186 to i32
  call void @assert_ft(i32 %187, i32 1)
  %188 = load i32, ptr %184, align 4
  %189 = load i32, ptr %185, align 4
  %190 = icmp eq i32 %189, %188
  %191 = zext i1 %190 to i32
  call void @assert_ft(i32 %191, i32 1)
  %192 = add nsw i32 %188, %48
  %193 = add nsw i32 %189, %.06393
  %194 = icmp eq i32 %193, %192
  %195 = zext i1 %194 to i32
  call void @assert_ft(i32 %195, i32 1)
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %193, i32 0)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select1, i32 88)
  %196 = zext i32 %spec.store.select2 to i64
  %197 = zext i32 %spec.store.select2 to i64
  %198 = icmp eq i64 %197, %196
  %199 = zext i1 %198 to i32
  call void @assert_ft(i32 %199, i32 1)
  %200 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %196
  %201 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %197
  %202 = icmp eq ptr %201, %200
  %203 = zext i1 %202 to i32
  call void @assert_ft(i32 %203, i32 1)
  %204 = load i32, ptr %200, align 4
  %205 = load i32, ptr %201, align 4
  %206 = icmp eq i32 %205, %204
  %207 = zext i1 %206 to i32
  call void @assert_ft(i32 %207, i32 1)
  %208 = icmp eq i32 %46, 0
  %.not87 = icmp eq i32 %.095, 0
  %209 = icmp eq i1 %.not87, %208
  %210 = zext i1 %209 to i32
  call void @assert_ft(i32 %210, i32 1)
  %211 = select i1 %.not87, i32 5, i32 4
  %212 = xor i32 3, %211
  br i1 %.not87, label %225, label %213

213:                                              ; preds = %.lr.ph
  %Diff_phi109 = phi i32 [ %212, %.lr.ph ]
  %Dest_phi110 = phi i32 [ %54, %.lr.ph ]
  %214 = xor i32 %Diff_phi109, %Dest_phi110
  %215 = icmp eq i32 %214, 4
  %216 = zext i1 %215 to i32
  call void @assert_cfg_ft(i32 %216, i32 %214, i32 0)
  %217 = shl nuw nsw i32 %176, 4
  %218 = shl nuw nsw i32 %177, 4
  %219 = icmp eq i32 %218, %217
  %220 = zext i1 %219 to i32
  call void @assert_ft(i32 %220, i32 1)
  %221 = and i32 %217, 240
  %222 = and i32 %218, 240
  %223 = icmp eq i32 %222, %221
  %224 = zext i1 %223 to i32
  call void @assert_ft(i32 %224, i32 1)
  br label %241

225:                                              ; preds = %.lr.ph
  %Diff_phi111 = phi i32 [ %212, %.lr.ph ]
  %Dest_phi112 = phi i32 [ %54, %.lr.ph ]
  %226 = xor i32 %Diff_phi111, %Dest_phi112
  %227 = icmp eq i32 %226, 5
  %228 = zext i1 %227 to i32
  call void @assert_cfg_ft(i32 %228, i32 %226, i32 0)
  %229 = or i32 %176, %47
  %230 = or i32 %177, %.06294
  %231 = icmp eq i32 %230, %229
  %232 = zext i1 %231 to i32
  call void @assert_ft(i32 %232, i32 1)
  %233 = trunc i32 %229 to i8
  %234 = trunc i32 %230 to i8
  %235 = icmp eq i8 %234, %233
  %236 = zext i1 %235 to i32
  call void @assert_ft(i32 %236, i32 1)
  %237 = getelementptr inbounds i8, ptr %53, i64 1
  %238 = getelementptr inbounds i8, ptr %.07888, i64 1
  %239 = icmp eq ptr %238, %237
  %240 = zext i1 %239 to i32
  call void @assert_ft(i32 %240, i32 1)
  store i8 %234, ptr %.07888, align 1
  br label %241

241:                                              ; preds = %225, %213
  %Diff_phi113 = phi i32 [ 3, %225 ], [ 2, %213 ]
  %Dest_phi114 = phi i32 [ %226, %225 ], [ %214, %213 ]
  %242 = phi ptr [ %53, %213 ], [ %237, %225 ]
  %.179 = phi ptr [ %.07888, %213 ], [ %238, %225 ]
  %243 = phi i32 [ %221, %213 ], [ %47, %225 ]
  %.1 = phi i32 [ %222, %213 ], [ %.06294, %225 ]
  %244 = xor i32 %Diff_phi113, %Dest_phi114
  %245 = icmp eq i32 %244, 6
  %246 = zext i1 %245 to i32
  call void @assert_cfg_ft(i32 %246, i32 %244, i32 0)
  %247 = icmp eq ptr %.179, %242
  %248 = zext i1 %247 to i32
  call void @assert_ft(i32 %248, i32 1)
  %249 = icmp eq i32 %.1, %243
  %250 = zext i1 %249 to i32
  call void @assert_ft(i32 %250, i32 1)
  %251 = xor i32 %46, 1
  %252 = xor i32 %.095, 1
  %253 = icmp eq i32 %252, %251
  %254 = zext i1 %253 to i32
  call void @assert_ft(i32 %254, i32 1)
  %255 = add nsw i32 %51, -1
  %256 = add nsw i32 %.07690, -1
  %257 = icmp eq i32 %256, %255
  %258 = zext i1 %257 to i32
  call void @assert_ft(i32 %258, i32 1)
  %259 = icmp sgt i32 %51, 1
  %260 = icmp sgt i32 %.07690, 1
  %261 = icmp eq i1 %260, %259
  %262 = zext i1 %261 to i32
  call void @assert_ft(i32 %262, i32 1)
  %263 = select i1 %260, i32 3, i32 7
  %264 = xor i32 6, %263
  br i1 %260, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %241
  %Diff_phi115 = phi i32 [ %264, %241 ]
  %Dest_phi116 = phi i32 [ %244, %241 ]
  %265 = xor i32 %Diff_phi115, %Dest_phi116
  %266 = icmp eq i32 %265, 7
  %267 = zext i1 %266 to i32
  call void @assert_cfg_ft(i32 %267, i32 %265, i32 0)
  %268 = icmp eq i32 %251, 0
  %269 = icmp eq i32 %252, 0
  %270 = icmp eq i1 %269, %268
  %271 = zext i1 %270 to i32
  call void @assert_ft(i32 %271, i32 1)
  %272 = trunc i32 %.268 to i16
  %273 = trunc i32 %.268 to i16
  %274 = icmp eq i16 %273, %272
  %275 = zext i1 %274 to i32
  call void @assert_ft(i32 %275, i32 1)
  %276 = trunc i32 %spec.store.select2 to i8
  %277 = trunc i32 %spec.store.select2 to i8
  %278 = icmp eq i8 %277, %276
  %279 = zext i1 %278 to i32
  call void @assert_ft(i32 %279, i32 1)
  %280 = select i1 %269, i32 8, i32 9
  %281 = xor i32 7, %280
  br i1 %269, label %282, label %._crit_edge.thread

282:                                              ; preds = %._crit_edge
  %Diff_phi117 = phi i32 [ %281, %._crit_edge ]
  %Dest_phi118 = phi i32 [ %265, %._crit_edge ]
  %283 = xor i32 %Diff_phi117, %Dest_phi118
  %284 = icmp eq i32 %283, 8
  %285 = zext i1 %284 to i32
  call void @assert_cfg_ft(i32 %285, i32 %283, i32 0)
  %286 = trunc i32 %243 to i8
  %287 = trunc i32 %.1 to i8
  %288 = icmp eq i8 %287, %286
  %289 = zext i1 %288 to i32
  call void @assert_ft(i32 %289, i32 1)
  store i8 %287, ptr %.179, align 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %282, %._crit_edge, %4
  %Diff_phi119 = phi i32 [ %22, %4 ], [ 1, %282 ], [ %281, %._crit_edge ]
  %Dest_phi120 = phi i32 [ 1, %4 ], [ %283, %282 ], [ %265, %._crit_edge ]
  %290 = phi i8 [ %276, %282 ], [ %276, %._crit_edge ], [ %13, %4 ]
  %.063.lcssa106 = phi i8 [ %277, %282 ], [ %277, %._crit_edge ], [ %14, %4 ]
  %291 = phi i16 [ %272, %282 ], [ %272, %._crit_edge ], [ %5, %4 ]
  %.066.lcssa105 = phi i16 [ %273, %282 ], [ %273, %._crit_edge ], [ %6, %4 ]
  %292 = xor i32 %Diff_phi119, %Dest_phi120
  %293 = icmp eq i32 %292, 9
  %294 = zext i1 %293 to i32
  call void @assert_cfg_ft(i32 %294, i32 %292, i32 0)
  %295 = icmp eq i8 %.063.lcssa106, %290
  %296 = zext i1 %295 to i32
  call void @assert_ft(i32 %296, i32 1)
  %297 = icmp eq i16 %.066.lcssa105, %291
  %298 = zext i1 %297 to i32
  call void @assert_ft(i32 %298, i32 1)
  store i16 %.066.lcssa105, ptr %3, align 2
  store i8 %.063.lcssa106, ptr %10, align 2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @adpcm_decoder(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %3, align 2
  %6 = load i16, ptr %3, align 2
  %7 = icmp eq i16 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = load i8, ptr %9, align 2
  %14 = load i8, ptr %10, align 2
  %15 = icmp eq i8 %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = icmp sgt i32 %2, 0
  %18 = icmp sgt i32 %2, 0
  %19 = icmp eq i1 %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = select i1 %18, i32 11, i32 16
  %22 = xor i32 10, %21
  br i1 %18, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %4
  %Diff_phi = phi i32 [ %22, %4 ]
  %Dest_phi = phi i32 [ 10, %4 ]
  %23 = xor i32 %Diff_phi, %Dest_phi
  %24 = icmp eq i32 %23, 11
  %25 = zext i1 %24 to i32
  call void @assert_cfg_ft(i32 %25, i32 %23, i32 0)
  %26 = sext i8 %13 to i32
  %27 = sext i8 %14 to i32
  %28 = icmp eq i32 %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = sext i16 %5 to i32
  %31 = sext i16 %6 to i32
  %32 = icmp eq i32 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = sext i8 %13 to i64
  %35 = sext i8 %14 to i64
  %36 = icmp eq i64 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %34
  %39 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %35
  %40 = icmp eq ptr %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = load i32, ptr %38, align 4
  %43 = load i32, ptr %39, align 4
  %44 = icmp eq i32 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %98, %.lr.ph.preheader
  %Diff_phi69 = phi i32 [ 7, %.lr.ph.preheader ], [ %234, %98 ]
  %Dest_phi70 = phi i32 [ %23, %.lr.ph.preheader ], [ %102, %98 ]
  %46 = phi i32 [ %114, %98 ], [ 0, %.lr.ph.preheader ]
  %.067 = phi i32 [ %115, %98 ], [ 0, %.lr.ph.preheader ]
  %47 = phi i32 [ %101, %98 ], [ undef, %.lr.ph.preheader ]
  %.04366 = phi i32 [ %.1, %98 ], [ undef, %.lr.ph.preheader ]
  %48 = phi i32 [ %spec.store.select2, %98 ], [ %26, %.lr.ph.preheader ]
  %.04465 = phi i32 [ %spec.store.select2, %98 ], [ %27, %.lr.ph.preheader ]
  %49 = phi i32 [ %.249, %98 ], [ %30, %.lr.ph.preheader ]
  %.04764 = phi i32 [ %.249, %98 ], [ %31, %.lr.ph.preheader ]
  %50 = phi i32 [ %213, %98 ], [ %42, %.lr.ph.preheader ]
  %.05063 = phi i32 [ %214, %98 ], [ %43, %.lr.ph.preheader ]
  %51 = phi i32 [ %225, %98 ], [ %2, %.lr.ph.preheader ]
  %.05262 = phi i32 [ %226, %98 ], [ %2, %.lr.ph.preheader ]
  %52 = phi ptr [ %221, %98 ], [ %1, %.lr.ph.preheader ]
  %.05361 = phi ptr [ %222, %98 ], [ %1, %.lr.ph.preheader ]
  %53 = phi ptr [ %99, %98 ], [ %0, %.lr.ph.preheader ]
  %.05460 = phi ptr [ %.155, %98 ], [ %0, %.lr.ph.preheader ]
  %54 = xor i32 %Diff_phi69, %Dest_phi70
  %55 = icmp eq i32 %54, 12
  %56 = zext i1 %55 to i32
  call void @assert_cfg_ft(i32 %56, i32 %54, i32 0)
  %57 = icmp eq i32 %.05063, %50
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = icmp eq ptr %.05460, %53
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = icmp eq i32 %.04465, %48
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = icmp eq i32 %.04764, %49
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = icmp eq i32 %.04366, %47
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = icmp eq i32 %.067, %46
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = icmp eq i32 %.05262, %51
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = icmp eq ptr %.05361, %52
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = icmp eq i32 %46, 0
  %.not = icmp eq i32 %.067, 0
  %74 = icmp eq i1 %.not, %73
  %75 = zext i1 %74 to i32
  call void @assert_ft(i32 %75, i32 1)
  %76 = select i1 %.not, i32 13, i32 14
  %77 = xor i32 12, %76
  br i1 %.not, label %78, label %98

78:                                               ; preds = %.lr.ph
  %Diff_phi71 = phi i32 [ %77, %.lr.ph ]
  %Dest_phi72 = phi i32 [ %54, %.lr.ph ]
  %79 = xor i32 %Diff_phi71, %Dest_phi72
  %80 = icmp eq i32 %79, 13
  %81 = zext i1 %80 to i32
  call void @assert_cfg_ft(i32 %81, i32 %79, i32 0)
  %82 = getelementptr inbounds i8, ptr %53, i64 1
  %83 = getelementptr inbounds i8, ptr %.05460, i64 1
  %84 = icmp eq ptr %83, %82
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  %86 = load i8, ptr %53, align 1
  %87 = load i8, ptr %.05460, align 1
  %88 = icmp eq i8 %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = zext i8 %86 to i32
  %91 = zext i8 %87 to i32
  %92 = icmp eq i32 %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = lshr i32 %90, 4
  %95 = lshr i32 %91, 4
  %96 = icmp eq i32 %95, %94
  %97 = zext i1 %96 to i32
  call void @assert_ft(i32 %97, i32 1)
  br label %98

98:                                               ; preds = %78, %.lr.ph
  %Diff_phi73 = phi i32 [ %77, %.lr.ph ], [ 3, %78 ]
  %Dest_phi74 = phi i32 [ %54, %.lr.ph ], [ %79, %78 ]
  %99 = phi ptr [ %82, %78 ], [ %53, %.lr.ph ]
  %.155 = phi ptr [ %83, %78 ], [ %.05460, %.lr.ph ]
  %100 = phi i32 [ %94, %78 ], [ %47, %.lr.ph ]
  %.051.in = phi i32 [ %95, %78 ], [ %.04366, %.lr.ph ]
  %101 = phi i32 [ %90, %78 ], [ %47, %.lr.ph ]
  %.1 = phi i32 [ %91, %78 ], [ %.04366, %.lr.ph ]
  %102 = xor i32 %Diff_phi73, %Dest_phi74
  %103 = icmp eq i32 %102, 14
  %104 = zext i1 %103 to i32
  call void @assert_cfg_ft(i32 %104, i32 %102, i32 0)
  %105 = icmp eq i32 %.051.in, %100
  %106 = zext i1 %105 to i32
  call void @assert_ft(i32 %106, i32 1)
  %107 = icmp eq i32 %.1, %101
  %108 = zext i1 %107 to i32
  call void @assert_ft(i32 %108, i32 1)
  %109 = icmp eq ptr %.155, %99
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = and i32 %100, 15
  %.051 = and i32 %.051.in, 15
  %112 = icmp eq i32 %.051, %111
  %113 = zext i1 %112 to i32
  call void @assert_ft(i32 %113, i32 1)
  %114 = xor i32 %46, 1
  %115 = xor i32 %.067, 1
  %116 = icmp eq i32 %115, %114
  %117 = zext i1 %116 to i32
  call void @assert_ft(i32 %117, i32 1)
  %118 = zext i32 %111 to i64
  %119 = zext i32 %.051 to i64
  %120 = icmp eq i64 %119, %118
  %121 = zext i1 %120 to i32
  call void @assert_ft(i32 %121, i32 1)
  %122 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %118
  %123 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %119
  %124 = icmp eq ptr %123, %122
  %125 = zext i1 %124 to i32
  call void @assert_ft(i32 %125, i32 1)
  %126 = load i32, ptr %122, align 4
  %127 = load i32, ptr %123, align 4
  %128 = icmp eq i32 %127, %126
  %129 = zext i1 %128 to i32
  call void @assert_ft(i32 %129, i32 1)
  %130 = add nsw i32 %126, %48
  %131 = add nsw i32 %127, %.04465
  %132 = icmp eq i32 %131, %130
  %133 = zext i1 %132 to i32
  call void @assert_ft(i32 %133, i32 1)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %131, i32 0)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 88)
  %134 = and i32 %100, 8
  %135 = and i32 %.051.in, 8
  %136 = icmp eq i32 %135, %134
  %137 = zext i1 %136 to i32
  call void @assert_ft(i32 %137, i32 1)
  %138 = ashr i32 %50, 3
  %139 = ashr i32 %.05063, 3
  %140 = icmp eq i32 %139, %138
  %141 = zext i1 %140 to i32
  call void @assert_ft(i32 %141, i32 1)
  %142 = and i32 %100, 4
  %143 = and i32 %.051.in, 4
  %144 = icmp eq i32 %143, %142
  %145 = zext i1 %144 to i32
  call void @assert_ft(i32 %145, i32 1)
  %146 = icmp eq i32 %142, 0
  %.not56 = icmp eq i32 %143, 0
  %147 = icmp eq i1 %.not56, %146
  %148 = zext i1 %147 to i32
  call void @assert_ft(i32 %148, i32 1)
  %149 = select i1 %146, i32 0, i32 %50
  %150 = select i1 %.not56, i32 0, i32 %.05063
  %151 = icmp eq i32 %150, %149
  %152 = zext i1 %151 to i32
  call void @assert_ft(i32 %152, i32 1)
  %153 = add nsw i32 %149, %138
  %spec.select = add nsw i32 %150, %139
  %154 = icmp eq i32 %spec.select, %153
  %155 = zext i1 %154 to i32
  call void @assert_ft(i32 %155, i32 1)
  %156 = and i32 %100, 2
  %157 = and i32 %.051.in, 2
  %158 = icmp eq i32 %157, %156
  %159 = zext i1 %158 to i32
  call void @assert_ft(i32 %159, i32 1)
  %160 = icmp eq i32 %156, 0
  %.not57 = icmp eq i32 %157, 0
  %161 = icmp eq i1 %.not57, %160
  %162 = zext i1 %161 to i32
  call void @assert_ft(i32 %162, i32 1)
  %163 = ashr i32 %50, 1
  %164 = ashr i32 %.05063, 1
  %165 = icmp eq i32 %164, %163
  %166 = zext i1 %165 to i32
  call void @assert_ft(i32 %166, i32 1)
  %167 = select i1 %160, i32 0, i32 %163
  %168 = select i1 %.not57, i32 0, i32 %164
  %169 = icmp eq i32 %168, %167
  %170 = zext i1 %169 to i32
  call void @assert_ft(i32 %170, i32 1)
  %171 = add nsw i32 %153, %167
  %.146 = add nsw i32 %spec.select, %168
  %172 = icmp eq i32 %.146, %171
  %173 = zext i1 %172 to i32
  call void @assert_ft(i32 %173, i32 1)
  %174 = and i32 %100, 1
  %175 = and i32 %.051.in, 1
  %176 = icmp eq i32 %175, %174
  %177 = zext i1 %176 to i32
  call void @assert_ft(i32 %177, i32 1)
  %178 = icmp eq i32 %174, 0
  %.not58 = icmp eq i32 %175, 0
  %179 = icmp eq i1 %.not58, %178
  %180 = zext i1 %179 to i32
  call void @assert_ft(i32 %180, i32 1)
  %181 = ashr i32 %50, 2
  %182 = ashr i32 %.05063, 2
  %183 = icmp eq i32 %182, %181
  %184 = zext i1 %183 to i32
  call void @assert_ft(i32 %184, i32 1)
  %185 = select i1 %178, i32 0, i32 %181
  %186 = select i1 %.not58, i32 0, i32 %182
  %187 = icmp eq i32 %186, %185
  %188 = zext i1 %187 to i32
  call void @assert_ft(i32 %188, i32 1)
  %189 = add nsw i32 %171, %185
  %.2 = add nsw i32 %.146, %186
  %190 = icmp eq i32 %.2, %189
  %191 = zext i1 %190 to i32
  call void @assert_ft(i32 %191, i32 1)
  %192 = icmp eq i32 %134, 0
  %.not59 = icmp eq i32 %135, 0
  %193 = icmp eq i1 %.not59, %192
  %194 = zext i1 %193 to i32
  call void @assert_ft(i32 %194, i32 1)
  %195 = sub i32 0, %189
  %196 = sub i32 0, %.2
  %197 = icmp eq i32 %196, %195
  %198 = zext i1 %197 to i32
  call void @assert_ft(i32 %198, i32 1)
  %199 = select i1 %192, i32 %189, i32 %195
  %.148.p = select i1 %.not59, i32 %.2, i32 %196
  %200 = icmp eq i32 %.148.p, %199
  %201 = zext i1 %200 to i32
  call void @assert_ft(i32 %201, i32 1)
  %202 = add i32 %199, %49
  %.148 = add i32 %.148.p, %.04764
  %203 = icmp eq i32 %.148, %202
  %204 = zext i1 %203 to i32
  call void @assert_ft(i32 %204, i32 1)
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %.148, i32 -32768)
  %.249 = tail call i32 @llvm.smin.i32(i32 %spec.store.select1, i32 32767)
  %205 = zext i32 %spec.store.select2 to i64
  %206 = zext i32 %spec.store.select2 to i64
  %207 = icmp eq i64 %206, %205
  %208 = zext i1 %207 to i32
  call void @assert_ft(i32 %208, i32 1)
  %209 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %205
  %210 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %206
  %211 = icmp eq ptr %210, %209
  %212 = zext i1 %211 to i32
  call void @assert_ft(i32 %212, i32 1)
  %213 = load i32, ptr %209, align 4
  %214 = load i32, ptr %210, align 4
  %215 = icmp eq i32 %214, %213
  %216 = zext i1 %215 to i32
  call void @assert_ft(i32 %216, i32 1)
  %217 = trunc i32 %.249 to i16
  %218 = trunc i32 %.249 to i16
  %219 = icmp eq i16 %218, %217
  %220 = zext i1 %219 to i32
  call void @assert_ft(i32 %220, i32 1)
  %221 = getelementptr inbounds i16, ptr %52, i64 1
  %222 = getelementptr inbounds i16, ptr %.05361, i64 1
  %223 = icmp eq ptr %222, %221
  %224 = zext i1 %223 to i32
  call void @assert_ft(i32 %224, i32 1)
  store i16 %218, ptr %.05361, align 2
  %225 = add nsw i32 %51, -1
  %226 = add nsw i32 %.05262, -1
  %227 = icmp eq i32 %226, %225
  %228 = zext i1 %227 to i32
  call void @assert_ft(i32 %228, i32 1)
  %229 = icmp sgt i32 %51, 1
  %230 = icmp sgt i32 %.05262, 1
  %231 = icmp eq i1 %230, %229
  %232 = zext i1 %231 to i32
  call void @assert_ft(i32 %232, i32 1)
  %233 = select i1 %230, i32 12, i32 15
  %234 = xor i32 14, %233
  br i1 %230, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %98
  %Diff_phi75 = phi i32 [ %234, %98 ]
  %Dest_phi76 = phi i32 [ %102, %98 ]
  %235 = xor i32 %Diff_phi75, %Dest_phi76
  %236 = icmp eq i32 %235, 15
  %237 = zext i1 %236 to i32
  call void @assert_cfg_ft(i32 %237, i32 %235, i32 0)
  %238 = trunc i32 %spec.store.select2 to i8
  %239 = trunc i32 %spec.store.select2 to i8
  %240 = icmp eq i8 %239, %238
  %241 = zext i1 %240 to i32
  call void @assert_ft(i32 %241, i32 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %4
  %Diff_phi77 = phi i32 [ %22, %4 ], [ 31, %._crit_edge.loopexit ]
  %Dest_phi78 = phi i32 [ 10, %4 ], [ %235, %._crit_edge.loopexit ]
  %242 = phi i16 [ %217, %._crit_edge.loopexit ], [ %5, %4 ]
  %.pre-phi = phi i16 [ %218, %._crit_edge.loopexit ], [ %6, %4 ]
  %243 = phi i8 [ %238, %._crit_edge.loopexit ], [ %13, %4 ]
  %.044.lcssa = phi i8 [ %239, %._crit_edge.loopexit ], [ %14, %4 ]
  %244 = xor i32 %Diff_phi77, %Dest_phi78
  %245 = icmp eq i32 %244, 16
  %246 = zext i1 %245 to i32
  call void @assert_cfg_ft(i32 %246, i32 %244, i32 0)
  %247 = icmp eq i16 %.pre-phi, %242
  %248 = zext i1 %247 to i32
  call void @assert_ft(i32 %248, i32 1)
  %249 = icmp eq i8 %.044.lcssa, %243
  %250 = zext i1 %249 to i32
  call void @assert_ft(i32 %250, i32 1)
  store i16 %.pre-phi, ptr %3, align 2
  store i8 %.044.lcssa, ptr %10, align 2
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = tail call i32 (i32, ptr, i32, ...) @read(i32 noundef 0, ptr noundef nonnull @abuf, i32 noundef 500) #7
  %2 = icmp slt i32 %1, 0
  %3 = icmp slt i32 %1, 0
  %4 = icmp eq i1 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %3, i32 18, i32 19
  %7 = xor i32 17, %6
  br i1 %3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %24, %0
  %Diff_phi = phi i32 [ %43, %24 ], [ %7, %0 ]
  %Dest_phi = phi i32 [ %25, %24 ], [ 17, %0 ]
  %8 = xor i32 %Diff_phi, %Dest_phi
  %9 = icmp eq i32 %8, 18
  %10 = zext i1 %9 to i32
  call void @assert_cfg_ft(i32 %10, i32 %8, i32 0)
  tail call void @perror(ptr noundef nonnull @.str) #8
  tail call void @exit(i32 noundef 1) #9
  unreachable

.lr.ph:                                           ; preds = %24, %0
  %Diff_phi4 = phi i32 [ %7, %0 ], [ %43, %24 ]
  %Dest_phi5 = phi i32 [ 17, %0 ], [ %25, %24 ]
  %11 = phi i32 [ %37, %24 ], [ %1, %0 ]
  %12 = phi i32 [ %37, %24 ], [ %1, %0 ]
  %13 = xor i32 %Diff_phi4, %Dest_phi5
  %14 = icmp eq i32 %13, 19
  %15 = zext i1 %14 to i32
  call void @assert_cfg_ft(i32 %15, i32 %13, i32 0)
  %16 = icmp eq i32 %12, %11
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = icmp eq i32 %11, 0
  %19 = icmp eq i32 %12, 0
  %20 = icmp eq i1 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = select i1 %19, i32 21, i32 20
  %23 = xor i32 19, %22
  br i1 %19, label %44, label %24

24:                                               ; preds = %.lr.ph
  %Diff_phi6 = phi i32 [ %23, %.lr.ph ]
  %Dest_phi7 = phi i32 [ %13, %.lr.ph ]
  %25 = xor i32 %Diff_phi6, %Dest_phi7
  %26 = icmp eq i32 %25, 20
  %27 = zext i1 %26 to i32
  call void @assert_cfg_ft(i32 %27, i32 %25, i32 0)
  %28 = shl nuw nsw i32 %11, 1
  %29 = shl nuw nsw i32 %12, 1
  %30 = icmp eq i32 %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  tail call void @adpcm_decoder(ptr noundef nonnull @abuf, ptr noundef nonnull @sbuf, i32 noundef %29, ptr noundef nonnull @state)
  %32 = shl nsw i32 %11, 2
  %33 = shl nsw i32 %12, 2
  %34 = icmp eq i32 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = tail call i32 (i32, ptr, i32, ...) @write(i32 noundef 1, ptr noundef nonnull @sbuf, i32 noundef %33) #7
  %37 = tail call i32 (i32, ptr, i32, ...) @read(i32 noundef 0, ptr noundef nonnull @abuf, i32 noundef 500) #7
  %38 = icmp slt i32 %37, 0
  %39 = icmp slt i32 %37, 0
  %40 = icmp eq i1 %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = select i1 %39, i32 18, i32 19
  %43 = xor i32 20, %42
  br i1 %39, label %._crit_edge, label %.lr.ph

44:                                               ; preds = %.lr.ph
  %Diff_phi8 = phi i32 [ %23, %.lr.ph ]
  %Dest_phi9 = phi i32 [ %13, %.lr.ph ]
  %45 = xor i32 %Diff_phi8, %Dest_phi9
  %46 = icmp eq i32 %45, 21
  %47 = zext i1 %46 to i32
  call void @assert_cfg_ft(i32 %47, i32 %45, i32 0)
  %48 = load ptr, ptr @stderr, align 8
  %49 = load ptr, ptr @stderr, align 8
  %50 = icmp eq ptr %49, %48
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = load i16, ptr @state, align 2
  %53 = load i16, ptr @state, align 2
  %54 = icmp eq i16 %53, %52
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = sext i16 %52 to i32
  %57 = sext i16 %53 to i32
  %58 = icmp eq i32 %57, %56
  %59 = zext i1 %58 to i32
  call void @assert_ft(i32 %59, i32 1)
  %60 = load i8, ptr getelementptr inbounds (%struct.adpcm_state, ptr @state, i64 0, i32 1), align 2
  %61 = load i8, ptr getelementptr inbounds (%struct.adpcm_state, ptr @state, i64 0, i32 1), align 2
  %62 = icmp eq i8 %61, %60
  %63 = zext i1 %62 to i32
  call void @assert_ft(i32 %63, i32 1)
  %64 = sext i8 %60 to i32
  %65 = sext i8 %61 to i32
  %66 = icmp eq i32 %65, %64
  %67 = zext i1 %66 to i32
  call void @assert_ft(i32 %67, i32 1)
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.1, i32 noundef %57, i32 noundef %65) #8
  tail call void @exit(i32 noundef 0) #9
  unreachable
}

declare i32 @read(...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i32 @write(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

declare void @exit.1(i32, ...)

declare i32 @printf(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, i32, ...) @printf(ptr @0, i32 %1)
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
  %assertcheck = call i32 (ptr, i32, ...) @printf(ptr @1, i32 %1, i32 %2)
  call void @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
