; ModuleID = 'patricia-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"Found.\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @pat_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, null
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %0, null
  %9 = icmp eq i1 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = and i1 %7, %3
  %or.cond = and i1 %8, %4
  %12 = icmp eq i1 %or.cond, %11
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = select i1 %or.cond, i32 2, i32 27
  %15 = xor i32 1, %14
  br i1 %or.cond, label %16, label %474

16:                                               ; preds = %2
  %Diff_phi = phi i32 [ %15, %2 ]
  %Dest_phi = phi i32 [ 1, %2 ]
  %17 = xor i32 %Diff_phi, %Dest_phi
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  call void @assert_cfg_ft(i32 %19, i32 %17, i32 0)
  %20 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 1
  %22 = icmp eq ptr %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = load ptr, ptr %20, align 8
  %25 = load ptr, ptr %21, align 8
  %26 = icmp eq ptr %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = icmp eq ptr %24, null
  %.not = icmp eq ptr %25, null
  %29 = icmp eq i1 %.not, %28
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = select i1 %.not, i32 27, i32 3
  %32 = xor i32 2, %31
  br i1 %.not, label %474, label %33

33:                                               ; preds = %16
  %Diff_phi153 = phi i32 [ %32, %16 ]
  %Dest_phi154 = phi i32 [ %17, %16 ]
  %34 = xor i32 %Diff_phi153, %Dest_phi154
  %35 = icmp eq i32 %34, 3
  %36 = zext i1 %35 to i32
  call void @assert_cfg_ft(i32 %36, i32 %34, i32 0)
  %37 = load i64, ptr %24, align 8
  %38 = load i64, ptr %25, align 8
  %39 = icmp eq i64 %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = load i64, ptr %0, align 8
  %42 = load i64, ptr %0, align 8
  %43 = icmp eq i64 %42, %41
  %44 = zext i1 %43 to i32
  call void @assert_ft(i32 %44, i32 1)
  %45 = and i64 %41, %37
  %46 = and i64 %42, %38
  %47 = icmp eq i64 %46, %45
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  store i64 %46, ptr %0, align 8
  %49 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %.phi.trans.insert = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %50 = icmp eq ptr %.phi.trans.insert, %49
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = load i8, ptr %49, align 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %53 = icmp eq i8 %.pre, %52
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  br label %55

55:                                               ; preds = %55, %33
  %Diff_phi155 = phi i32 [ %102, %55 ], [ 7, %33 ]
  %Dest_phi156 = phi i32 [ %59, %55 ], [ %34, %33 ]
  %56 = phi i8 [ %52, %33 ], [ %93, %55 ]
  %57 = phi i8 [ %.pre, %33 ], [ %94, %55 ]
  %58 = phi ptr [ %1, %33 ], [ %85, %55 ]
  %.076 = phi ptr [ %1, %33 ], [ %86, %55 ]
  %59 = xor i32 %Diff_phi155, %Dest_phi156
  %60 = icmp eq i32 %59, 4
  %61 = zext i1 %60 to i32
  call void @assert_cfg_ft(i32 %61, i32 %59, i32 0)
  %62 = icmp eq ptr %.076, %58
  %63 = zext i1 %62 to i32
  call void @assert_ft(i32 %63, i32 1)
  %64 = icmp eq i8 %57, %56
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = sext i8 %56 to i32
  %67 = sext i8 %57 to i32
  %68 = icmp eq i32 %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = tail call fastcc i64 @bit(i32 noundef %67, i64 noundef %46)
  %71 = icmp eq i64 %70, 0
  %.not81 = icmp eq i64 %70, 0
  %72 = icmp eq i1 %.not81, %71
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = getelementptr inbounds %struct.ptree, ptr %58, i64 0, i32 5
  %75 = getelementptr inbounds %struct.ptree, ptr %.076, i64 0, i32 5
  %76 = icmp eq ptr %75, %74
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = getelementptr inbounds %struct.ptree, ptr %58, i64 0, i32 4
  %79 = getelementptr inbounds %struct.ptree, ptr %.076, i64 0, i32 4
  %80 = icmp eq ptr %79, %78
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  %82 = select i1 %71, ptr %78, ptr %74
  %.in = select i1 %.not81, ptr %79, ptr %75
  %83 = icmp eq ptr %.in, %82
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = load ptr, ptr %82, align 8
  %86 = load ptr, ptr %.in, align 8
  %87 = icmp eq ptr %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = getelementptr inbounds %struct.ptree, ptr %85, i64 0, i32 3
  %90 = getelementptr inbounds %struct.ptree, ptr %86, i64 0, i32 3
  %91 = icmp eq ptr %90, %89
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = load i8, ptr %89, align 1
  %94 = load i8, ptr %90, align 1
  %95 = icmp eq i8 %94, %93
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = icmp slt i8 %56, %93
  %98 = icmp slt i8 %57, %94
  %99 = icmp eq i1 %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = select i1 %98, i32 4, i32 5
  %102 = xor i32 4, %101
  br i1 %98, label %55, label %103

103:                                              ; preds = %55
  %Diff_phi157 = phi i32 [ %102, %55 ]
  %Dest_phi158 = phi i32 [ %59, %55 ]
  %104 = xor i32 %Diff_phi157, %Dest_phi158
  %105 = icmp eq i32 %104, 5
  %106 = zext i1 %105 to i32
  call void @assert_cfg_ft(i32 %106, i32 %104, i32 0)
  %107 = load i64, ptr %85, align 8
  %108 = load i64, ptr %86, align 8
  %109 = icmp eq i64 %108, %107
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = icmp eq i64 %45, %107
  %112 = icmp eq i64 %46, %108
  %113 = icmp eq i1 %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = select i1 %112, i32 6, i32 22
  %116 = xor i32 5, %115
  br i1 %112, label %.preheader, label %.preheader84

.preheader:                                       ; preds = %103
  %Diff_phi159 = phi i32 [ %116, %103 ]
  %Dest_phi160 = phi i32 [ %104, %103 ]
  %117 = xor i32 %Diff_phi159, %Dest_phi160
  %118 = icmp eq i32 %117, 6
  %119 = zext i1 %118 to i32
  call void @assert_cfg_ft(i32 %119, i32 %117, i32 0)
  %120 = getelementptr inbounds %struct.ptree, ptr %85, i64 0, i32 2
  %121 = getelementptr inbounds %struct.ptree, ptr %86, i64 0, i32 2
  %122 = icmp eq ptr %121, %120
  %123 = zext i1 %122 to i32
  call void @assert_ft(i32 %123, i32 1)
  %124 = load i8, ptr %120, align 8
  %125 = load i8, ptr %121, align 8
  %126 = icmp eq i8 %125, %124
  %127 = zext i1 %126 to i32
  call void @assert_ft(i32 %127, i32 1)
  %128 = zext i8 %124 to i64
  %129 = zext i8 %125 to i64
  %130 = icmp eq i64 %129, %128
  %131 = zext i1 %130 to i32
  call void @assert_ft(i32 %131, i32 1)
  %132 = icmp eq i8 %124, 0
  %.not102 = icmp eq i8 %125, 0
  %133 = icmp eq i1 %.not102, %132
  %134 = zext i1 %133 to i32
  call void @assert_ft(i32 %134, i32 1)
  %135 = select i1 %.not102, i32 7, i32 8
  %136 = xor i32 6, %135
  br i1 %.not102, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader
  %Diff_phi161 = phi i32 [ %136, %.preheader ]
  %Dest_phi162 = phi i32 [ %117, %.preheader ]
  %137 = xor i32 %Diff_phi161, %Dest_phi162
  %138 = icmp eq i32 %137, 7
  %139 = zext i1 %138 to i32
  call void @assert_cfg_ft(i32 %139, i32 %137, i32 0)
  %140 = shl nuw nsw i64 %128, 4
  %141 = shl nuw nsw i64 %129, 4
  %142 = icmp eq i64 %141, %140
  %143 = zext i1 %142 to i32
  call void @assert_ft(i32 %143, i32 1)
  %144 = add nuw nsw i64 %140, 16
  %145 = add nuw nsw i64 %141, 16
  %146 = icmp eq i64 %145, %144
  %147 = zext i1 %146 to i32
  call void @assert_ft(i32 %147, i32 1)
  %148 = tail call noalias ptr @malloc(i64 noundef %145) #14
  br label %._crit_edge99.thread

.lr.ph:                                           ; preds = %.preheader
  %Diff_phi163 = phi i32 [ %136, %.preheader ]
  %Dest_phi164 = phi i32 [ %117, %.preheader ]
  %149 = xor i32 %Diff_phi163, %Dest_phi164
  %150 = icmp eq i32 %149, 8
  %151 = zext i1 %150 to i32
  call void @assert_cfg_ft(i32 %151, i32 %149, i32 0)
  %152 = load i64, ptr %24, align 8
  %153 = load i64, ptr %25, align 8
  %154 = icmp eq i64 %153, %152
  %155 = zext i1 %154 to i32
  call void @assert_ft(i32 %155, i32 1)
  %156 = getelementptr inbounds %struct.ptree, ptr %85, i64 0, i32 1
  %157 = getelementptr inbounds %struct.ptree, ptr %86, i64 0, i32 1
  %158 = icmp eq ptr %157, %156
  %159 = zext i1 %158 to i32
  call void @assert_ft(i32 %159, i32 1)
  %160 = load ptr, ptr %156, align 8
  %161 = load ptr, ptr %157, align 8
  %162 = icmp eq ptr %161, %160
  %163 = zext i1 %162 to i32
  call void @assert_ft(i32 %163, i32 1)
  %164 = zext i8 %124 to i64
  %wide.trip.count = zext i8 %125 to i64
  %165 = icmp eq i64 %wide.trip.count, %164
  %166 = zext i1 %165 to i32
  call void @assert_ft(i32 %166, i32 1)
  br label %179

167:                                              ; preds = %179
  %Diff_phi165 = phi i32 [ %199, %179 ]
  %Dest_phi166 = phi i32 [ %181, %179 ]
  %168 = xor i32 %Diff_phi165, %Dest_phi166
  %169 = icmp eq i32 %168, 9
  %170 = zext i1 %169 to i32
  call void @assert_cfg_ft(i32 %170, i32 %168, i32 0)
  %171 = add nuw nsw i64 %180, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %172 = icmp eq i64 %indvars.iv.next, %171
  %173 = zext i1 %172 to i32
  call void @assert_ft(i32 %173, i32 1)
  %174 = icmp eq i64 %171, %164
  %exitcond107.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %175 = icmp eq i1 %exitcond107.not, %174
  %176 = zext i1 %175 to i32
  call void @assert_ft(i32 %176, i32 1)
  %177 = select i1 %exitcond107.not, i32 12, i32 10
  %178 = xor i32 9, %177
  br i1 %exitcond107.not, label %._crit_edge, label %179

179:                                              ; preds = %167, %.lr.ph
  %Diff_phi167 = phi i32 [ 2, %.lr.ph ], [ %178, %167 ]
  %Dest_phi168 = phi i32 [ %149, %.lr.ph ], [ %168, %167 ]
  %180 = phi i64 [ 0, %.lr.ph ], [ %171, %167 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %167 ]
  %181 = xor i32 %Diff_phi167, %Dest_phi168
  %182 = icmp eq i32 %181, 10
  %183 = zext i1 %182 to i32
  call void @assert_cfg_ft(i32 %183, i32 %181, i32 0)
  %184 = icmp eq i64 %indvars.iv, %180
  %185 = zext i1 %184 to i32
  call void @assert_ft(i32 %185, i32 1)
  %186 = getelementptr inbounds %struct.ptree_mask, ptr %160, i64 %180
  %187 = getelementptr inbounds %struct.ptree_mask, ptr %161, i64 %indvars.iv
  %188 = icmp eq ptr %187, %186
  %189 = zext i1 %188 to i32
  call void @assert_ft(i32 %189, i32 1)
  %190 = load i64, ptr %186, align 8
  %191 = load i64, ptr %187, align 8
  %192 = icmp eq i64 %191, %190
  %193 = zext i1 %192 to i32
  call void @assert_ft(i32 %193, i32 1)
  %194 = icmp eq i64 %152, %190
  %195 = icmp eq i64 %153, %191
  %196 = icmp eq i1 %195, %194
  %197 = zext i1 %196 to i32
  call void @assert_ft(i32 %197, i32 1)
  %198 = select i1 %195, i32 11, i32 9
  %199 = xor i32 10, %198
  br i1 %195, label %200, label %167

200:                                              ; preds = %179
  %Diff_phi169 = phi i32 [ %199, %179 ]
  %Dest_phi170 = phi i32 [ %181, %179 ]
  %201 = xor i32 %Diff_phi169, %Dest_phi170
  %202 = icmp eq i32 %201, 11
  %203 = zext i1 %202 to i32
  call void @assert_cfg_ft(i32 %203, i32 %201, i32 0)
  %204 = getelementptr inbounds %struct.ptree_mask, ptr %24, i64 0, i32 1
  %205 = getelementptr inbounds %struct.ptree_mask, ptr %25, i64 0, i32 1
  %206 = icmp eq ptr %205, %204
  %207 = zext i1 %206 to i32
  call void @assert_ft(i32 %207, i32 1)
  %208 = load ptr, ptr %204, align 8
  %209 = load ptr, ptr %205, align 8
  %210 = icmp eq ptr %209, %208
  %211 = zext i1 %210 to i32
  call void @assert_ft(i32 %211, i32 1)
  %212 = getelementptr inbounds %struct.ptree_mask, ptr %160, i64 %180, i32 1
  %213 = getelementptr inbounds %struct.ptree_mask, ptr %161, i64 %indvars.iv, i32 1
  %214 = icmp eq ptr %213, %212
  %215 = zext i1 %214 to i32
  call void @assert_ft(i32 %215, i32 1)
  store ptr %209, ptr %213, align 8
  %216 = load ptr, ptr %20, align 8
  %217 = load ptr, ptr %21, align 8
  %218 = icmp eq ptr %217, %216
  %219 = zext i1 %218 to i32
  call void @assert_ft(i32 %219, i32 1)
  tail call void @free(ptr noundef %217) #15
  tail call void @free(ptr noundef %0) #15
  br label %474

._crit_edge:                                      ; preds = %167
  %Diff_phi171 = phi i32 [ %178, %167 ]
  %Dest_phi172 = phi i32 [ %168, %167 ]
  %220 = xor i32 %Diff_phi171, %Dest_phi172
  %221 = icmp eq i32 %220, 12
  %222 = zext i1 %221 to i32
  call void @assert_cfg_ft(i32 %222, i32 %220, i32 0)
  %223 = shl nuw nsw i64 %128, 4
  %224 = shl nuw nsw i64 %129, 4
  %225 = icmp eq i64 %224, %223
  %226 = zext i1 %225 to i32
  call void @assert_ft(i32 %226, i32 1)
  %227 = add nuw nsw i64 %223, 16
  %228 = add nuw nsw i64 %224, 16
  %229 = icmp eq i64 %228, %227
  %230 = zext i1 %229 to i32
  call void @assert_ft(i32 %230, i32 1)
  %231 = tail call noalias ptr @malloc(i64 noundef %228) #14
  %232 = select i1 %.not102, i32 19, i32 13
  %233 = xor i32 12, %232
  br i1 %.not102, label %._crit_edge99.thread, label %.lr.ph98

.lr.ph98:                                         ; preds = %._crit_edge
  %Diff_phi173 = phi i32 [ %233, %._crit_edge ]
  %Dest_phi174 = phi i32 [ %220, %._crit_edge ]
  %234 = xor i32 %Diff_phi173, %Dest_phi174
  %235 = icmp eq i32 %234, 13
  %236 = zext i1 %235 to i32
  call void @assert_cfg_ft(i32 %236, i32 %234, i32 0)
  %237 = getelementptr inbounds %struct.ptree, ptr %85, i64 0, i32 1
  %238 = getelementptr inbounds %struct.ptree, ptr %86, i64 0, i32 1
  %239 = icmp eq ptr %238, %237
  %240 = zext i1 %239 to i32
  call void @assert_ft(i32 %240, i32 1)
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph98
  %Diff_phi175 = phi i32 [ %345, %.thread ], [ 3, %.lr.ph98 ]
  %Dest_phi176 = phi i32 [ %320, %.thread ], [ %234, %.lr.ph98 ]
  %241 = phi i1 [ false, %.thread ], [ true, %.lr.ph98 ]
  %.not83 = phi i1 [ false, %.thread ], [ true, %.lr.ph98 ]
  %242 = phi i32 [ %254, %.thread ], [ 0, %.lr.ph98 ]
  %.17395.ph = phi i32 [ %.17395, %.thread ], [ 0, %.lr.ph98 ]
  %243 = phi ptr [ %328, %.thread ], [ %231, %.lr.ph98 ]
  %.07494.ph = phi ptr [ %329, %.thread ], [ %231, %.lr.ph98 ]
  %244 = xor i32 %Diff_phi175, %Dest_phi176
  %245 = icmp eq i32 %244, 14
  %246 = zext i1 %245 to i32
  call void @assert_cfg_ft(i32 %246, i32 %244, i32 0)
  %247 = icmp eq i1 %.not83, %241
  %248 = zext i1 %247 to i32
  call void @assert_ft(i32 %248, i32 1)
  %249 = icmp eq ptr %.07494.ph, %243
  %250 = zext i1 %249 to i32
  call void @assert_ft(i32 %250, i32 1)
  %251 = icmp eq i32 %.17395.ph, %242
  %252 = zext i1 %251 to i32
  call void @assert_ft(i32 %252, i32 1)
  br label %253

253:                                              ; preds = %293, %.outer
  %Diff_phi177 = phi i32 [ 1, %.outer ], [ %319, %293 ]
  %Dest_phi178 = phi i32 [ %244, %.outer ], [ %294, %293 ]
  %254 = phi i32 [ %298, %293 ], [ %242, %.outer ]
  %.17395 = phi i32 [ %299, %293 ], [ %.17395.ph, %.outer ]
  %255 = phi ptr [ %302, %293 ], [ %243, %.outer ]
  %.07494 = phi ptr [ %303, %293 ], [ %.07494.ph, %.outer ]
  %256 = xor i32 %Diff_phi177, %Dest_phi178
  %257 = icmp eq i32 %256, 15
  %258 = zext i1 %257 to i32
  call void @assert_cfg_ft(i32 %258, i32 %256, i32 0)
  %259 = icmp eq i32 %.17395, %254
  %260 = zext i1 %259 to i32
  call void @assert_ft(i32 %260, i32 1)
  %261 = icmp eq ptr %.07494, %255
  %262 = zext i1 %261 to i32
  call void @assert_ft(i32 %262, i32 1)
  %263 = load ptr, ptr %20, align 8
  %264 = load ptr, ptr %21, align 8
  %265 = icmp eq ptr %264, %263
  %266 = zext i1 %265 to i32
  call void @assert_ft(i32 %266, i32 1)
  %267 = load i64, ptr %263, align 8
  %268 = load i64, ptr %264, align 8
  %269 = icmp eq i64 %268, %267
  %270 = zext i1 %269 to i32
  call void @assert_ft(i32 %270, i32 1)
  %271 = load ptr, ptr %237, align 8
  %272 = load ptr, ptr %238, align 8
  %273 = icmp eq ptr %272, %271
  %274 = zext i1 %273 to i32
  call void @assert_ft(i32 %274, i32 1)
  %275 = sext i32 %254 to i64
  %276 = sext i32 %.17395 to i64
  %277 = icmp eq i64 %276, %275
  %278 = zext i1 %277 to i32
  call void @assert_ft(i32 %278, i32 1)
  %279 = getelementptr inbounds %struct.ptree_mask, ptr %271, i64 %275
  %280 = getelementptr inbounds %struct.ptree_mask, ptr %272, i64 %276
  %281 = icmp eq ptr %280, %279
  %282 = zext i1 %281 to i32
  call void @assert_ft(i32 %282, i32 1)
  %283 = load i64, ptr %279, align 8
  %284 = load i64, ptr %280, align 8
  %285 = icmp eq i64 %284, %283
  %286 = zext i1 %285 to i32
  call void @assert_ft(i32 %286, i32 1)
  %287 = icmp ugt i64 %267, %283
  %288 = icmp ugt i64 %268, %284
  %289 = icmp eq i1 %288, %287
  %290 = zext i1 %289 to i32
  call void @assert_ft(i32 %290, i32 1)
  %291 = select i1 %288, i32 16, i32 17
  %292 = xor i32 15, %291
  br i1 %288, label %293, label %.thread

293:                                              ; preds = %253
  %Diff_phi179 = phi i32 [ %292, %253 ]
  %Dest_phi180 = phi i32 [ %256, %253 ]
  %294 = xor i32 %Diff_phi179, %Dest_phi180
  %295 = icmp eq i32 %294, 16
  %296 = zext i1 %295 to i32
  call void @assert_cfg_ft(i32 %296, i32 %294, i32 0)
  %297 = tail call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef nonnull %280, ptr noundef %.07494, i64 noundef 16) #15
  %298 = add nsw i32 %254, 1
  %299 = add nsw i32 %.17395, 1
  %300 = icmp eq i32 %299, %298
  %301 = zext i1 %300 to i32
  call void @assert_ft(i32 %301, i32 1)
  %302 = getelementptr inbounds %struct.ptree_mask, ptr %255, i64 1
  %303 = getelementptr inbounds %struct.ptree_mask, ptr %.07494, i64 1
  %304 = icmp eq ptr %303, %302
  %305 = zext i1 %304 to i32
  call void @assert_ft(i32 %305, i32 1)
  %306 = load i8, ptr %120, align 8
  %307 = load i8, ptr %121, align 8
  %308 = icmp eq i8 %307, %306
  %309 = zext i1 %308 to i32
  call void @assert_ft(i32 %309, i32 1)
  %310 = zext i8 %306 to i32
  %311 = zext i8 %307 to i32
  %312 = icmp eq i32 %311, %310
  %313 = zext i1 %312 to i32
  call void @assert_ft(i32 %313, i32 1)
  %314 = icmp slt i32 %298, %310
  %315 = icmp slt i32 %299, %311
  %316 = icmp eq i1 %315, %314
  %317 = zext i1 %316 to i32
  call void @assert_ft(i32 %317, i32 1)
  %318 = select i1 %315, i32 15, i32 18
  %319 = xor i32 16, %318
  br i1 %315, label %253, label %._crit_edge99

.thread:                                          ; preds = %253
  %Diff_phi181 = phi i32 [ %292, %253 ]
  %Dest_phi182 = phi i32 [ %256, %253 ]
  %320 = xor i32 %Diff_phi181, %Dest_phi182
  %321 = icmp eq i32 %320, 17
  %322 = zext i1 %321 to i32
  call void @assert_cfg_ft(i32 %322, i32 %320, i32 0)
  %323 = tail call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef nonnull %264, ptr noundef %.07494, i64 noundef 16) #15
  %324 = load ptr, ptr %20, align 8
  %325 = load ptr, ptr %21, align 8
  %326 = icmp eq ptr %325, %324
  %327 = zext i1 %326 to i32
  call void @assert_ft(i32 %327, i32 1)
  store i64 4294967295, ptr %325, align 8
  %328 = getelementptr inbounds %struct.ptree_mask, ptr %255, i64 1
  %329 = getelementptr inbounds %struct.ptree_mask, ptr %.07494, i64 1
  %330 = icmp eq ptr %329, %328
  %331 = zext i1 %330 to i32
  call void @assert_ft(i32 %331, i32 1)
  %332 = load i8, ptr %120, align 8
  %333 = load i8, ptr %121, align 8
  %334 = icmp eq i8 %333, %332
  %335 = zext i1 %334 to i32
  call void @assert_ft(i32 %335, i32 1)
  %336 = zext i8 %332 to i32
  %337 = zext i8 %333 to i32
  %338 = icmp eq i32 %337, %336
  %339 = zext i1 %338 to i32
  call void @assert_ft(i32 %339, i32 1)
  %340 = icmp slt i32 %254, %336
  %341 = icmp slt i32 %.17395, %337
  %342 = icmp eq i1 %341, %340
  %343 = zext i1 %342 to i32
  call void @assert_ft(i32 %343, i32 1)
  %344 = select i1 %341, i32 14, i32 20
  %345 = xor i32 17, %344
  br i1 %341, label %.outer, label %.sink.split

._crit_edge99:                                    ; preds = %293
  %Diff_phi183 = phi i32 [ %319, %293 ]
  %Dest_phi184 = phi i32 [ %294, %293 ]
  %346 = xor i32 %Diff_phi183, %Dest_phi184
  %347 = icmp eq i32 %346, 18
  %348 = zext i1 %347 to i32
  call void @assert_cfg_ft(i32 %348, i32 %346, i32 0)
  %349 = load ptr, ptr %20, align 8
  %.pre109.pre = load ptr, ptr %21, align 8
  %350 = icmp eq ptr %.pre109.pre, %349
  %351 = zext i1 %350 to i32
  call void @assert_ft(i32 %351, i32 1)
  %352 = select i1 %.not83, i32 19, i32 21
  %353 = xor i32 18, %352
  br i1 %.not83, label %._crit_edge99.thread, label %377

._crit_edge99.thread:                             ; preds = %._crit_edge99, %._crit_edge, %._crit_edge.thread
  %Diff_phi185 = phi i32 [ 20, %._crit_edge.thread ], [ %233, %._crit_edge ], [ %353, %._crit_edge99 ]
  %Dest_phi186 = phi i32 [ %137, %._crit_edge.thread ], [ %220, %._crit_edge ], [ %346, %._crit_edge99 ]
  %354 = phi ptr [ %302, %._crit_edge99 ], [ %148, %._crit_edge.thread ], [ %231, %._crit_edge ]
  %.074.lcssa116 = phi ptr [ %303, %._crit_edge99 ], [ %148, %._crit_edge.thread ], [ %231, %._crit_edge ]
  %355 = phi ptr [ %349, %._crit_edge99 ], [ %24, %._crit_edge.thread ], [ %24, %._crit_edge ]
  %.pre109115 = phi ptr [ %.pre109.pre, %._crit_edge99 ], [ %25, %._crit_edge.thread ], [ %25, %._crit_edge ]
  %356 = phi ptr [ %231, %._crit_edge99 ], [ %148, %._crit_edge.thread ], [ %231, %._crit_edge ]
  %357 = phi ptr [ %231, %._crit_edge99 ], [ %148, %._crit_edge.thread ], [ %231, %._crit_edge ]
  %358 = xor i32 %Diff_phi185, %Dest_phi186
  %359 = icmp eq i32 %358, 19
  %360 = zext i1 %359 to i32
  call void @assert_cfg_ft(i32 %360, i32 %358, i32 0)
  %361 = icmp eq ptr %.pre109115, %355
  %362 = zext i1 %361 to i32
  call void @assert_ft(i32 %362, i32 1)
  %363 = icmp eq ptr %357, %356
  %364 = zext i1 %363 to i32
  call void @assert_ft(i32 %364, i32 1)
  %365 = icmp eq ptr %.074.lcssa116, %354
  %366 = zext i1 %365 to i32
  call void @assert_ft(i32 %366, i32 1)
  %367 = tail call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef %.pre109115, ptr noundef %.074.lcssa116, i64 noundef 16) #15
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge99.thread, %.thread
  %Diff_phi187 = phi i32 [ %345, %.thread ], [ 7, %._crit_edge99.thread ]
  %Dest_phi188 = phi i32 [ %320, %.thread ], [ %358, %._crit_edge99.thread ]
  %368 = phi ptr [ %356, %._crit_edge99.thread ], [ %231, %.thread ]
  %.ph = phi ptr [ %357, %._crit_edge99.thread ], [ %231, %.thread ]
  %369 = xor i32 %Diff_phi187, %Dest_phi188
  %370 = icmp eq i32 %369, 20
  %371 = zext i1 %370 to i32
  call void @assert_cfg_ft(i32 %371, i32 %369, i32 0)
  %372 = icmp eq ptr %.ph, %368
  %373 = zext i1 %372 to i32
  call void @assert_ft(i32 %373, i32 1)
  %374 = load ptr, ptr %20, align 8
  %.pre109.pre122 = load ptr, ptr %21, align 8
  %375 = icmp eq ptr %.pre109.pre122, %374
  %376 = zext i1 %375 to i32
  call void @assert_ft(i32 %376, i32 1)
  br label %377

377:                                              ; preds = %.sink.split, %._crit_edge99
  %Diff_phi189 = phi i32 [ 1, %.sink.split ], [ %353, %._crit_edge99 ]
  %Dest_phi190 = phi i32 [ %369, %.sink.split ], [ %346, %._crit_edge99 ]
  %378 = phi ptr [ %231, %._crit_edge99 ], [ %368, %.sink.split ]
  %379 = phi ptr [ %231, %._crit_edge99 ], [ %.ph, %.sink.split ]
  %380 = phi ptr [ %349, %._crit_edge99 ], [ %374, %.sink.split ]
  %381 = phi ptr [ %.pre109.pre, %._crit_edge99 ], [ %.pre109.pre122, %.sink.split ]
  %382 = xor i32 %Diff_phi189, %Dest_phi190
  %383 = icmp eq i32 %382, 21
  %384 = zext i1 %383 to i32
  call void @assert_cfg_ft(i32 %384, i32 %382, i32 0)
  %385 = icmp eq ptr %379, %378
  %386 = zext i1 %385 to i32
  call void @assert_ft(i32 %386, i32 1)
  %387 = icmp eq ptr %381, %380
  %388 = zext i1 %387 to i32
  call void @assert_ft(i32 %388, i32 1)
  tail call void @free(ptr noundef %381) #15
  tail call void @free(ptr noundef nonnull %0) #15
  %389 = load i8, ptr %120, align 8
  %390 = load i8, ptr %121, align 8
  %391 = icmp eq i8 %390, %389
  %392 = zext i1 %391 to i32
  call void @assert_ft(i32 %392, i32 1)
  %393 = add i8 %389, 1
  %394 = add i8 %390, 1
  %395 = icmp eq i8 %394, %393
  %396 = zext i1 %395 to i32
  call void @assert_ft(i32 %396, i32 1)
  store i8 %394, ptr %121, align 8
  %397 = getelementptr inbounds %struct.ptree, ptr %85, i64 0, i32 1
  %398 = getelementptr inbounds %struct.ptree, ptr %86, i64 0, i32 1
  %399 = icmp eq ptr %398, %397
  %400 = zext i1 %399 to i32
  call void @assert_ft(i32 %400, i32 1)
  %401 = load ptr, ptr %397, align 8
  %402 = load ptr, ptr %398, align 8
  %403 = icmp eq ptr %402, %401
  %404 = zext i1 %403 to i32
  call void @assert_ft(i32 %404, i32 1)
  tail call void @free(ptr noundef %402) #15
  store ptr %379, ptr %398, align 8
  br label %474

.preheader84:                                     ; preds = %419, %103
  %Diff_phi191 = phi i32 [ %116, %103 ], [ %431, %419 ]
  %Dest_phi192 = phi i32 [ %104, %103 ], [ %420, %419 ]
  %405 = phi i32 [ %423, %419 ], [ 1, %103 ]
  %.391 = phi i32 [ %424, %419 ], [ 1, %103 ]
  %406 = xor i32 %Diff_phi191, %Dest_phi192
  %407 = icmp eq i32 %406, 22
  %408 = zext i1 %407 to i32
  call void @assert_cfg_ft(i32 %408, i32 %406, i32 0)
  %409 = icmp eq i32 %.391, %405
  %410 = zext i1 %409 to i32
  call void @assert_ft(i32 %410, i32 1)
  %411 = tail call fastcc i64 @bit(i32 noundef %.391, i64 noundef %46)
  %412 = tail call fastcc i64 @bit(i32 noundef %.391, i64 noundef %108)
  %413 = icmp eq i64 %411, %412
  %414 = icmp eq i64 %411, %412
  %415 = icmp eq i1 %414, %413
  %416 = zext i1 %415 to i32
  call void @assert_ft(i32 %416, i32 1)
  %417 = select i1 %414, i32 23, i32 24
  %418 = xor i32 22, %417
  br i1 %414, label %419, label %.critedge

419:                                              ; preds = %.preheader84
  %Diff_phi193 = phi i32 [ %418, %.preheader84 ]
  %Dest_phi194 = phi i32 [ %406, %.preheader84 ]
  %420 = xor i32 %Diff_phi193, %Dest_phi194
  %421 = icmp eq i32 %420, 23
  %422 = zext i1 %421 to i32
  call void @assert_cfg_ft(i32 %422, i32 %420, i32 0)
  %423 = add nuw nsw i32 %405, 1
  %424 = add nuw nsw i32 %.391, 1
  %425 = icmp eq i32 %424, %423
  %426 = zext i1 %425 to i32
  call void @assert_ft(i32 %426, i32 1)
  %427 = icmp eq i32 %423, 32
  %exitcond.not = icmp eq i32 %424, 32
  %428 = icmp eq i1 %exitcond.not, %427
  %429 = zext i1 %428 to i32
  call void @assert_ft(i32 %429, i32 1)
  %430 = select i1 %exitcond.not, i32 24, i32 22
  %431 = xor i32 23, %430
  br i1 %exitcond.not, label %.critedge, label %.preheader84

.critedge:                                        ; preds = %419, %.preheader84
  %Diff_phi195 = phi i32 [ %431, %419 ], [ %418, %.preheader84 ]
  %Dest_phi196 = phi i32 [ %420, %419 ], [ %406, %.preheader84 ]
  %432 = phi i32 [ 32, %419 ], [ %405, %.preheader84 ]
  %.3.lcssa = phi i32 [ 32, %419 ], [ %.391, %.preheader84 ]
  %433 = xor i32 %Diff_phi195, %Dest_phi196
  %434 = icmp eq i32 %433, 24
  %435 = zext i1 %434 to i32
  call void @assert_cfg_ft(i32 %435, i32 %433, i32 0)
  %436 = icmp eq i32 %.3.lcssa, %432
  %437 = zext i1 %436 to i32
  call void @assert_ft(i32 %437, i32 1)
  %438 = sext i8 %52 to i32
  %439 = sext i8 %.pre to i32
  %440 = icmp eq i32 %439, %438
  %441 = zext i1 %440 to i32
  call void @assert_ft(i32 %441, i32 1)
  %442 = tail call fastcc i64 @bit(i32 noundef %439, i64 noundef %46)
  %443 = icmp eq i64 %442, 0
  %.not82 = icmp eq i64 %442, 0
  %444 = icmp eq i1 %.not82, %443
  %445 = zext i1 %444 to i32
  call void @assert_ft(i32 %445, i32 1)
  %446 = select i1 %.not82, i32 26, i32 25
  %447 = xor i32 24, %446
  br i1 %.not82, label %461, label %448

448:                                              ; preds = %.critedge
  %Diff_phi197 = phi i32 [ %447, %.critedge ]
  %Dest_phi198 = phi i32 [ %433, %.critedge ]
  %449 = xor i32 %Diff_phi197, %Dest_phi198
  %450 = icmp eq i32 %449, 25
  %451 = zext i1 %450 to i32
  call void @assert_cfg_ft(i32 %451, i32 %449, i32 0)
  %452 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  %453 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  %454 = icmp eq ptr %453, %452
  %455 = zext i1 %454 to i32
  call void @assert_ft(i32 %455, i32 1)
  %456 = load ptr, ptr %452, align 8
  %457 = load ptr, ptr %453, align 8
  %458 = icmp eq ptr %457, %456
  %459 = zext i1 %458 to i32
  call void @assert_ft(i32 %459, i32 1)
  %460 = tail call fastcc ptr @insertR(ptr noundef %457, ptr noundef nonnull %0, i32 noundef %.3.lcssa, ptr noundef nonnull %1)
  store ptr %460, ptr %453, align 8
  br label %474

461:                                              ; preds = %.critedge
  %Diff_phi199 = phi i32 [ %447, %.critedge ]
  %Dest_phi200 = phi i32 [ %433, %.critedge ]
  %462 = xor i32 %Diff_phi199, %Dest_phi200
  %463 = icmp eq i32 %462, 26
  %464 = zext i1 %463 to i32
  call void @assert_cfg_ft(i32 %464, i32 %462, i32 0)
  %465 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  %466 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  %467 = icmp eq ptr %466, %465
  %468 = zext i1 %467 to i32
  call void @assert_ft(i32 %468, i32 1)
  %469 = load ptr, ptr %465, align 8
  %470 = load ptr, ptr %466, align 8
  %471 = icmp eq ptr %470, %469
  %472 = zext i1 %471 to i32
  call void @assert_ft(i32 %472, i32 1)
  %473 = tail call fastcc ptr @insertR(ptr noundef %470, ptr noundef nonnull %0, i32 noundef %.3.lcssa, ptr noundef nonnull %1)
  store ptr %473, ptr %466, align 8
  br label %474

474:                                              ; preds = %461, %448, %377, %200, %16, %2
  %Diff_phi201 = phi i32 [ 2, %448 ], [ 1, %461 ], [ %15, %2 ], [ %32, %16 ], [ 14, %377 ], [ 16, %200 ]
  %Dest_phi202 = phi i32 [ %449, %448 ], [ %462, %461 ], [ 1, %2 ], [ %17, %16 ], [ %382, %377 ], [ %201, %200 ]
  %475 = phi ptr [ %85, %200 ], [ %85, %377 ], [ null, %16 ], [ null, %2 ], [ %0, %461 ], [ %0, %448 ]
  %.075 = phi ptr [ %86, %200 ], [ %86, %377 ], [ null, %16 ], [ null, %2 ], [ %0, %461 ], [ %0, %448 ]
  %476 = xor i32 %Diff_phi201, %Dest_phi202
  %477 = icmp eq i32 %476, 27
  %478 = zext i1 %477 to i32
  call void @assert_cfg_ft(i32 %478, i32 %476, i32 0)
  %479 = icmp eq ptr %.075, %475
  %480 = zext i1 %479 to i32
  call void @assert_ft(i32 %480, i32 1)
  ret ptr %.075
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i64 @bit(i32 noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = lshr i32 -2147483648, %0
  %4 = lshr i32 -2147483648, %0
  %5 = icmp eq i32 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = sext i32 %3 to i64
  %8 = sext i32 %4 to i64
  %9 = icmp eq i64 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = and i64 %7, %1
  %12 = and i64 %8, %1
  %13 = icmp eq i64 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  ret i64 %12
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @bcopy(...) local_unnamed_addr #4

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc ptr @insertR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 3
  %7 = icmp eq ptr %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = load i8, ptr %5, align 1
  %10 = load i8, ptr %6, align 1
  %11 = icmp eq i8 %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = sext i8 %9 to i32
  %14 = sext i8 %10 to i32
  %15 = icmp eq i32 %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = icmp slt i32 %13, %2
  %.not = icmp slt i32 %14, %2
  %18 = icmp eq i1 %.not, %17
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = select i1 %.not, i32 30, i32 31
  %21 = xor i32 29, %20
  br i1 %.not, label %22, label %common.ret

22:                                               ; preds = %4
  %Diff_phi = phi i32 [ %21, %4 ]
  %Dest_phi = phi i32 [ 29, %4 ]
  %23 = xor i32 %Diff_phi, %Dest_phi
  %24 = icmp eq i32 %23, 30
  %25 = zext i1 %24 to i32
  call void @assert_cfg_ft(i32 %25, i32 %23, i32 0)
  %26 = getelementptr inbounds %struct.ptree, ptr %3, i64 0, i32 3
  %27 = getelementptr inbounds %struct.ptree, ptr %3, i64 0, i32 3
  %28 = icmp eq ptr %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = load i8, ptr %26, align 1
  %31 = load i8, ptr %27, align 1
  %32 = icmp eq i8 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = icmp sgt i8 %9, %30
  %.not32 = icmp sgt i8 %10, %31
  %35 = icmp eq i1 %.not32, %34
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = select i1 %.not32, i32 32, i32 31
  %38 = xor i32 30, %37
  br i1 %.not32, label %74, label %common.ret

common.ret:                                       ; preds = %22, %4
  %Diff_phi37 = phi i32 [ %38, %22 ], [ %21, %4 ]
  %Dest_phi38 = phi i32 [ %23, %22 ], [ 29, %4 ]
  %39 = xor i32 %Diff_phi37, %Dest_phi38
  %40 = icmp eq i32 %39, 31
  %41 = zext i1 %40 to i32
  call void @assert_cfg_ft(i32 %41, i32 %39, i32 0)
  %42 = trunc i32 %2 to i8
  %43 = trunc i32 %2 to i8
  %44 = icmp eq i8 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %47 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %48 = icmp eq ptr %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  store i8 %43, ptr %47, align 1
  %50 = load i64, ptr %1, align 8
  %51 = load i64, ptr %1, align 8
  %52 = icmp eq i64 %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = tail call fastcc i64 @bit(i32 noundef %2, i64 noundef %51)
  %55 = icmp eq i64 %54, 0
  %.not34 = icmp eq i64 %54, 0
  %56 = icmp eq i1 %.not34, %55
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = select i1 %55, ptr %1, ptr %0
  %59 = select i1 %.not34, ptr %1, ptr %0
  %60 = icmp eq ptr %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  %63 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  %64 = icmp eq ptr %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  store ptr %59, ptr %63, align 8
  %66 = select i1 %55, ptr %0, ptr %1
  %67 = select i1 %.not34, ptr %0, ptr %1
  %68 = icmp eq ptr %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  %71 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  %72 = icmp eq ptr %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  store ptr %67, ptr %71, align 8
  br label %common.ret36

74:                                               ; preds = %22
  %Diff_phi39 = phi i32 [ %38, %22 ]
  %Dest_phi40 = phi i32 [ %23, %22 ]
  %75 = xor i32 %Diff_phi39, %Dest_phi40
  %76 = icmp eq i32 %75, 32
  %77 = zext i1 %76 to i32
  call void @assert_cfg_ft(i32 %77, i32 %75, i32 0)
  %78 = load i64, ptr %1, align 8
  %79 = load i64, ptr %1, align 8
  %80 = icmp eq i64 %79, %78
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  %82 = tail call fastcc i64 @bit(i32 noundef %14, i64 noundef %79)
  %83 = icmp eq i64 %82, 0
  %.not33 = icmp eq i64 %82, 0
  %84 = icmp eq i1 %.not33, %83
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  %86 = select i1 %.not33, i32 35, i32 34
  %87 = xor i32 32, %86
  br i1 %.not33, label %107, label %94

common.ret36:                                     ; preds = %107, %94, %common.ret
  %Diff_phi41 = phi i32 [ 2, %107 ], [ 3, %94 ], [ 62, %common.ret ]
  %Dest_phi42 = phi i32 [ %108, %107 ], [ %95, %94 ], [ %39, %common.ret ]
  %88 = phi ptr [ %1, %common.ret ], [ %0, %94 ], [ %0, %107 ]
  %common.ret36.op = phi ptr [ %1, %common.ret ], [ %0, %94 ], [ %0, %107 ]
  %89 = xor i32 %Diff_phi41, %Dest_phi42
  %90 = icmp eq i32 %89, 33
  %91 = zext i1 %90 to i32
  call void @assert_cfg_ft(i32 %91, i32 %89, i32 0)
  %92 = icmp eq ptr %common.ret36.op, %88
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  ret ptr %common.ret36.op

94:                                               ; preds = %74
  %Diff_phi43 = phi i32 [ %87, %74 ]
  %Dest_phi44 = phi i32 [ %75, %74 ]
  %95 = xor i32 %Diff_phi43, %Dest_phi44
  %96 = icmp eq i32 %95, 34
  %97 = zext i1 %96 to i32
  call void @assert_cfg_ft(i32 %97, i32 %95, i32 0)
  %98 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 5
  %99 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 5
  %100 = icmp eq ptr %99, %98
  %101 = zext i1 %100 to i32
  call void @assert_ft(i32 %101, i32 1)
  %102 = load ptr, ptr %98, align 8
  %103 = load ptr, ptr %99, align 8
  %104 = icmp eq ptr %103, %102
  %105 = zext i1 %104 to i32
  call void @assert_ft(i32 %105, i32 1)
  %106 = tail call fastcc ptr @insertR(ptr noundef %103, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0)
  store ptr %106, ptr %99, align 8
  br label %common.ret36

107:                                              ; preds = %74
  %Diff_phi45 = phi i32 [ %87, %74 ]
  %Dest_phi46 = phi i32 [ %75, %74 ]
  %108 = xor i32 %Diff_phi45, %Dest_phi46
  %109 = icmp eq i32 %108, 35
  %110 = zext i1 %109 to i32
  call void @assert_cfg_ft(i32 %110, i32 %108, i32 0)
  %111 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 4
  %112 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 4
  %113 = icmp eq ptr %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = load ptr, ptr %111, align 8
  %116 = load ptr, ptr %112, align 8
  %117 = icmp eq ptr %116, %115
  %118 = zext i1 %117 to i32
  call void @assert_ft(i32 %118, i32 1)
  %119 = tail call fastcc ptr @insertR(ptr noundef %116, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0)
  store ptr %119, ptr %112, align 8
  br label %common.ret36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @pat_remove(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pat_search(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %1, null
  %.not = icmp eq ptr %1, null
  %4 = icmp eq i1 %.not, %3
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %.not, i32 41, i32 38
  %7 = xor i32 37, %6
  br i1 %.not, label %126, label %.preheader.preheader

.preheader.preheader:                             ; preds = %2
  %Diff_phi = phi i32 [ %7, %2 ]
  %Dest_phi = phi i32 [ 37, %2 ]
  %8 = xor i32 %Diff_phi, %Dest_phi
  %9 = icmp eq i32 %8, 38
  %10 = zext i1 %9 to i32
  call void @assert_cfg_ft(i32 %10, i32 %8, i32 0)
  %11 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %.phi.trans.insert = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %12 = icmp eq ptr %.phi.trans.insert, %11
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = load i8, ptr %11, align 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %15 = icmp eq i8 %.pre, %14
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %Diff_phi22 = phi i32 [ 1, %.preheader.preheader ], [ %93, %.preheader ]
  %Dest_phi23 = phi i32 [ %8, %.preheader.preheader ], [ %21, %.preheader ]
  %17 = phi i8 [ %84, %.preheader ], [ %14, %.preheader.preheader ]
  %18 = phi i8 [ %85, %.preheader ], [ %.pre, %.preheader.preheader ]
  %19 = phi ptr [ %54, %.preheader ], [ null, %.preheader.preheader ]
  %.019 = phi ptr [ %spec.select, %.preheader ], [ null, %.preheader.preheader ]
  %20 = phi ptr [ %76, %.preheader ], [ %1, %.preheader.preheader ]
  %.018 = phi ptr [ %77, %.preheader ], [ %1, %.preheader.preheader ]
  %21 = xor i32 %Diff_phi22, %Dest_phi23
  %22 = icmp eq i32 %21, 39
  %23 = zext i1 %22 to i32
  call void @assert_cfg_ft(i32 %23, i32 %21, i32 0)
  %24 = icmp eq ptr %.018, %20
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = icmp eq ptr %.019, %19
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = icmp eq i8 %18, %17
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = load i64, ptr %20, align 8
  %31 = load i64, ptr %.018, align 8
  %32 = icmp eq i64 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = getelementptr inbounds %struct.ptree, ptr %20, i64 0, i32 1
  %35 = getelementptr inbounds %struct.ptree, ptr %.018, i64 0, i32 1
  %36 = icmp eq ptr %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = load ptr, ptr %34, align 8
  %39 = load ptr, ptr %35, align 8
  %40 = icmp eq ptr %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = load i64, ptr %38, align 8
  %43 = load i64, ptr %39, align 8
  %44 = icmp eq i64 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = and i64 %42, %0
  %47 = and i64 %43, %0
  %48 = icmp eq i64 %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = icmp eq i64 %30, %46
  %51 = icmp eq i64 %31, %47
  %52 = icmp eq i1 %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = select i1 %50, ptr %20, ptr %19
  %spec.select = select i1 %51, ptr %.018, ptr %.019
  %55 = icmp eq ptr %spec.select, %54
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  %57 = sext i8 %17 to i32
  %58 = sext i8 %18 to i32
  %59 = icmp eq i32 %58, %57
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = tail call fastcc i64 @bit(i32 noundef %58, i64 noundef %0)
  %62 = icmp eq i64 %61, 0
  %.not21 = icmp eq i64 %61, 0
  %63 = icmp eq i1 %.not21, %62
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = getelementptr inbounds %struct.ptree, ptr %20, i64 0, i32 5
  %66 = getelementptr inbounds %struct.ptree, ptr %.018, i64 0, i32 5
  %67 = icmp eq ptr %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = getelementptr inbounds %struct.ptree, ptr %20, i64 0, i32 4
  %70 = getelementptr inbounds %struct.ptree, ptr %.018, i64 0, i32 4
  %71 = icmp eq ptr %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = select i1 %62, ptr %69, ptr %65
  %.in = select i1 %.not21, ptr %70, ptr %66
  %74 = icmp eq ptr %.in, %73
  %75 = zext i1 %74 to i32
  call void @assert_ft(i32 %75, i32 1)
  %76 = load ptr, ptr %73, align 8
  %77 = load ptr, ptr %.in, align 8
  %78 = icmp eq ptr %77, %76
  %79 = zext i1 %78 to i32
  call void @assert_ft(i32 %79, i32 1)
  %80 = getelementptr inbounds %struct.ptree, ptr %76, i64 0, i32 3
  %81 = getelementptr inbounds %struct.ptree, ptr %77, i64 0, i32 3
  %82 = icmp eq ptr %81, %80
  %83 = zext i1 %82 to i32
  call void @assert_ft(i32 %83, i32 1)
  %84 = load i8, ptr %80, align 1
  %85 = load i8, ptr %81, align 1
  %86 = icmp eq i8 %85, %84
  %87 = zext i1 %86 to i32
  call void @assert_ft(i32 %87, i32 1)
  %88 = icmp slt i8 %17, %84
  %89 = icmp slt i8 %18, %85
  %90 = icmp eq i1 %89, %88
  %91 = zext i1 %90 to i32
  call void @assert_ft(i32 %91, i32 1)
  %92 = select i1 %89, i32 39, i32 40
  %93 = xor i32 39, %92
  br i1 %89, label %.preheader, label %94

94:                                               ; preds = %.preheader
  %Diff_phi24 = phi i32 [ %93, %.preheader ]
  %Dest_phi25 = phi i32 [ %21, %.preheader ]
  %95 = xor i32 %Diff_phi24, %Dest_phi25
  %96 = icmp eq i32 %95, 40
  %97 = zext i1 %96 to i32
  call void @assert_cfg_ft(i32 %97, i32 %95, i32 0)
  %98 = load i64, ptr %76, align 8
  %99 = load i64, ptr %77, align 8
  %100 = icmp eq i64 %99, %98
  %101 = zext i1 %100 to i32
  call void @assert_ft(i32 %101, i32 1)
  %102 = getelementptr inbounds %struct.ptree, ptr %76, i64 0, i32 1
  %103 = getelementptr inbounds %struct.ptree, ptr %77, i64 0, i32 1
  %104 = icmp eq ptr %103, %102
  %105 = zext i1 %104 to i32
  call void @assert_ft(i32 %105, i32 1)
  %106 = load ptr, ptr %102, align 8
  %107 = load ptr, ptr %103, align 8
  %108 = icmp eq ptr %107, %106
  %109 = zext i1 %108 to i32
  call void @assert_ft(i32 %109, i32 1)
  %110 = load i64, ptr %106, align 8
  %111 = load i64, ptr %107, align 8
  %112 = icmp eq i64 %111, %110
  %113 = zext i1 %112 to i32
  call void @assert_ft(i32 %113, i32 1)
  %114 = and i64 %110, %0
  %115 = and i64 %111, %0
  %116 = icmp eq i64 %115, %114
  %117 = zext i1 %116 to i32
  call void @assert_ft(i32 %117, i32 1)
  %118 = icmp eq i64 %98, %114
  %119 = icmp eq i64 %99, %115
  %120 = icmp eq i1 %119, %118
  %121 = zext i1 %120 to i32
  call void @assert_ft(i32 %121, i32 1)
  %122 = select i1 %118, ptr %76, ptr %54
  %123 = select i1 %119, ptr %77, ptr %spec.select
  %124 = icmp eq ptr %123, %122
  %125 = zext i1 %124 to i32
  call void @assert_ft(i32 %125, i32 1)
  br label %126

126:                                              ; preds = %94, %2
  %Diff_phi26 = phi i32 [ %7, %2 ], [ 1, %94 ]
  %Dest_phi27 = phi i32 [ 37, %2 ], [ %95, %94 ]
  %127 = phi ptr [ %122, %94 ], [ null, %2 ]
  %.0 = phi ptr [ %123, %94 ], [ null, %2 ]
  %128 = xor i32 %Diff_phi26, %Dest_phi27
  %129 = icmp eq i32 %128, 41
  %130 = zext i1 %129 to i32
  call void @assert_cfg_ft(i32 %130, i32 %128, i32 0)
  %131 = icmp eq ptr %.0, %127
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  ret ptr %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca float, align 4
  %6 = icmp slt i32 %0, 2
  %7 = icmp slt i32 %0, 2
  %8 = icmp eq i1 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = select i1 %7, i32 43, i32 44
  %11 = xor i32 42, %10
  br i1 %7, label %12, label %21

12:                                               ; preds = %2
  %Diff_phi = phi i32 [ %11, %2 ]
  %Dest_phi = phi i32 [ 42, %2 ]
  %13 = xor i32 %Diff_phi, %Dest_phi
  %14 = icmp eq i32 %13, 43
  %15 = zext i1 %14 to i32
  call void @assert_cfg_ft(i32 %15, i32 %13, i32 0)
  %16 = load ptr, ptr %1, align 8
  %17 = load ptr, ptr %1, align 8
  %18 = icmp eq ptr %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %17)
  tail call void @exit(i32 noundef -1) #16
  unreachable

21:                                               ; preds = %2
  %Diff_phi48 = phi i32 [ %11, %2 ]
  %Dest_phi49 = phi i32 [ 42, %2 ]
  %22 = xor i32 %Diff_phi48, %Dest_phi49
  %23 = icmp eq i32 %22, 44
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  %25 = getelementptr inbounds ptr, ptr %1, i64 1
  %26 = getelementptr inbounds ptr, ptr %1, i64 1
  %27 = icmp eq ptr %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = load ptr, ptr %25, align 8
  %30 = load ptr, ptr %26, align 8
  %31 = icmp eq ptr %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = tail call noalias ptr @fopen(ptr noundef %30, ptr noundef nonnull @.str.1)
  %34 = icmp eq ptr %33, null
  %35 = icmp eq ptr %33, null
  %36 = icmp eq i1 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = select i1 %35, i32 45, i32 46
  %39 = xor i32 44, %38
  br i1 %35, label %40, label %49

40:                                               ; preds = %21
  %Diff_phi50 = phi i32 [ %39, %21 ]
  %Dest_phi51 = phi i32 [ %22, %21 ]
  %41 = xor i32 %Diff_phi50, %Dest_phi51
  %42 = icmp eq i32 %41, 45
  %43 = zext i1 %42 to i32
  call void @assert_cfg_ft(i32 %43, i32 %41, i32 0)
  %44 = load ptr, ptr %25, align 8
  %45 = load ptr, ptr %26, align 8
  %46 = icmp eq ptr %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %45)
  tail call void @exit(i32 noundef 1) #16
  unreachable

49:                                               ; preds = %21
  %Diff_phi52 = phi i32 [ %39, %21 ]
  %Dest_phi53 = phi i32 [ %22, %21 ]
  %50 = xor i32 %Diff_phi52, %Dest_phi53
  %51 = icmp eq i32 %50, 46
  %52 = zext i1 %51 to i32
  call void @assert_cfg_ft(i32 %52, i32 %50, i32 0)
  %53 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14
  %54 = icmp eq ptr %53, null
  %.not = icmp eq ptr %53, null
  %55 = icmp eq i1 %.not, %54
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  %57 = select i1 %.not, i32 47, i32 48
  %58 = xor i32 46, %57
  br i1 %.not, label %59, label %63

59:                                               ; preds = %49
  %Diff_phi54 = phi i32 [ %58, %49 ]
  %Dest_phi55 = phi i32 [ %50, %49 ]
  %60 = xor i32 %Diff_phi54, %Dest_phi55
  %61 = icmp eq i32 %60, 47
  %62 = zext i1 %61 to i32
  call void @assert_cfg_ft(i32 %62, i32 %60, i32 0)
  tail call void @perror(ptr noundef nonnull @.str.3) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

63:                                               ; preds = %49
  %Diff_phi56 = phi i32 [ %58, %49 ]
  %Dest_phi57 = phi i32 [ %50, %49 ]
  %64 = xor i32 %Diff_phi56, %Dest_phi57
  %65 = icmp eq i32 %64, 48
  %66 = zext i1 %65 to i32
  call void @assert_cfg_ft(i32 %66, i32 %64, i32 0)
  tail call void @bzero(ptr noundef nonnull %53, i64 noundef 40) #15
  %67 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %68 = getelementptr inbounds %struct.ptree, ptr %53, i64 0, i32 1
  %69 = getelementptr inbounds %struct.ptree, ptr %53, i64 0, i32 1
  %70 = icmp eq ptr %69, %68
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  store ptr %67, ptr %69, align 8
  %72 = icmp eq ptr %67, null
  %.not41 = icmp eq ptr %67, null
  %73 = icmp eq i1 %.not41, %72
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = select i1 %.not41, i32 49, i32 50
  %76 = xor i32 48, %75
  br i1 %.not41, label %77, label %81

77:                                               ; preds = %63
  %Diff_phi58 = phi i32 [ %76, %63 ]
  %Dest_phi59 = phi i32 [ %64, %63 ]
  %78 = xor i32 %Diff_phi58, %Dest_phi59
  %79 = icmp eq i32 %78, 49
  %80 = zext i1 %79 to i32
  call void @assert_cfg_ft(i32 %80, i32 %78, i32 0)
  tail call void @perror(ptr noundef nonnull @.str.4) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

81:                                               ; preds = %63
  %Diff_phi60 = phi i32 [ %76, %63 ]
  %Dest_phi61 = phi i32 [ %64, %63 ]
  %82 = xor i32 %Diff_phi60, %Dest_phi61
  %83 = icmp eq i32 %82, 50
  %84 = zext i1 %83 to i32
  call void @assert_cfg_ft(i32 %84, i32 %82, i32 0)
  tail call void @bzero(ptr noundef nonnull %67, i64 noundef 16) #15
  %85 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %86 = getelementptr inbounds %struct.ptree_mask, ptr %67, i64 0, i32 1
  %87 = getelementptr inbounds %struct.ptree_mask, ptr %67, i64 0, i32 1
  %88 = icmp eq ptr %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  store ptr %85, ptr %87, align 8
  %90 = icmp eq ptr %85, null
  %.not42 = icmp eq ptr %85, null
  %91 = icmp eq i1 %.not42, %90
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = select i1 %.not42, i32 51, i32 52
  %94 = xor i32 50, %93
  br i1 %.not42, label %95, label %99

95:                                               ; preds = %81
  %Diff_phi62 = phi i32 [ %94, %81 ]
  %Dest_phi63 = phi i32 [ %82, %81 ]
  %96 = xor i32 %Diff_phi62, %Dest_phi63
  %97 = icmp eq i32 %96, 51
  %98 = zext i1 %97 to i32
  call void @assert_cfg_ft(i32 %98, i32 %96, i32 0)
  tail call void @perror(ptr noundef nonnull @.str.5) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

99:                                               ; preds = %81
  %Diff_phi64 = phi i32 [ %94, %81 ]
  %Dest_phi65 = phi i32 [ %82, %81 ]
  %100 = xor i32 %Diff_phi64, %Dest_phi65
  %101 = icmp eq i32 %100, 52
  %102 = zext i1 %101 to i32
  call void @assert_cfg_ft(i32 %102, i32 %100, i32 0)
  tail call void @bzero(ptr noundef nonnull %85, i64 noundef 1) #15
  %103 = getelementptr inbounds %struct.ptree, ptr %53, i64 0, i32 2
  %104 = getelementptr inbounds %struct.ptree, ptr %53, i64 0, i32 2
  %105 = icmp eq ptr %104, %103
  %106 = zext i1 %105 to i32
  call void @assert_ft(i32 %106, i32 1)
  store i8 1, ptr %104, align 8
  %107 = getelementptr inbounds %struct.ptree, ptr %53, i64 0, i32 5
  %108 = getelementptr inbounds %struct.ptree, ptr %53, i64 0, i32 5
  %109 = icmp eq ptr %108, %107
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  store ptr %53, ptr %108, align 8
  %111 = getelementptr inbounds %struct.ptree, ptr %53, i64 0, i32 4
  %112 = getelementptr inbounds %struct.ptree, ptr %53, i64 0, i32 4
  %113 = icmp eq ptr %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  store ptr %53, ptr %112, align 8
  br label %115

115:                                              ; preds = %218, %99
  %Diff_phi66 = phi i32 [ %229, %218 ], [ 1, %99 ]
  %Dest_phi67 = phi i32 [ %220, %218 ], [ %100, %99 ]
  %116 = xor i32 %Diff_phi66, %Dest_phi67
  %117 = icmp eq i32 %116, 53
  %118 = zext i1 %117 to i32
  call void @assert_cfg_ft(i32 %118, i32 %116, i32 0)
  %119 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull %33)
  %120 = icmp eq ptr %119, null
  %.not43 = icmp eq ptr %119, null
  %121 = icmp eq i1 %.not43, %120
  %122 = zext i1 %121 to i32
  call void @assert_ft(i32 %122, i32 1)
  %123 = select i1 %.not43, i32 65, i32 54
  %124 = xor i32 53, %123
  br i1 %.not43, label %239, label %125

125:                                              ; preds = %115
  %Diff_phi68 = phi i32 [ %124, %115 ]
  %Dest_phi69 = phi i32 [ %116, %115 ]
  %126 = xor i32 %Diff_phi68, %Dest_phi69
  %127 = icmp eq i32 %126, 54
  %128 = zext i1 %127 to i32
  call void @assert_cfg_ft(i32 %128, i32 %126, i32 0)
  %129 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %130 = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14
  %131 = icmp eq ptr %130, null
  %.not44 = icmp eq ptr %130, null
  %132 = icmp eq i1 %.not44, %131
  %133 = zext i1 %132 to i32
  call void @assert_ft(i32 %133, i32 1)
  %134 = select i1 %.not44, i32 55, i32 56
  %135 = xor i32 54, %134
  br i1 %.not44, label %136, label %140

136:                                              ; preds = %125
  %Diff_phi70 = phi i32 [ %135, %125 ]
  %Dest_phi71 = phi i32 [ %126, %125 ]
  %137 = xor i32 %Diff_phi70, %Dest_phi71
  %138 = icmp eq i32 %137, 55
  %139 = zext i1 %138 to i32
  call void @assert_cfg_ft(i32 %139, i32 %137, i32 0)
  call void @perror(ptr noundef nonnull @.str.3) #17
  call void @exit(i32 noundef 1) #16
  unreachable

140:                                              ; preds = %125
  %Diff_phi72 = phi i32 [ %135, %125 ]
  %Dest_phi73 = phi i32 [ %126, %125 ]
  %141 = xor i32 %Diff_phi72, %Dest_phi73
  %142 = icmp eq i32 %141, 56
  %143 = zext i1 %142 to i32
  call void @assert_cfg_ft(i32 %143, i32 %141, i32 0)
  call void @bzero(ptr noundef nonnull %130, i64 noundef 40) #15
  %144 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %145 = getelementptr inbounds %struct.ptree, ptr %130, i64 0, i32 1
  %146 = getelementptr inbounds %struct.ptree, ptr %130, i64 0, i32 1
  %147 = icmp eq ptr %146, %145
  %148 = zext i1 %147 to i32
  call void @assert_ft(i32 %148, i32 1)
  store ptr %144, ptr %146, align 8
  %149 = icmp eq ptr %144, null
  %.not45 = icmp eq ptr %144, null
  %150 = icmp eq i1 %.not45, %149
  %151 = zext i1 %150 to i32
  call void @assert_ft(i32 %151, i32 1)
  %152 = select i1 %.not45, i32 57, i32 58
  %153 = xor i32 56, %152
  br i1 %.not45, label %154, label %158

154:                                              ; preds = %140
  %Diff_phi74 = phi i32 [ %153, %140 ]
  %Dest_phi75 = phi i32 [ %141, %140 ]
  %155 = xor i32 %Diff_phi74, %Dest_phi75
  %156 = icmp eq i32 %155, 57
  %157 = zext i1 %156 to i32
  call void @assert_cfg_ft(i32 %157, i32 %155, i32 0)
  call void @perror(ptr noundef nonnull @.str.4) #17
  call void @exit(i32 noundef 1) #16
  unreachable

158:                                              ; preds = %140
  %Diff_phi76 = phi i32 [ %153, %140 ]
  %Dest_phi77 = phi i32 [ %141, %140 ]
  %159 = xor i32 %Diff_phi76, %Dest_phi77
  %160 = icmp eq i32 %159, 58
  %161 = zext i1 %160 to i32
  call void @assert_cfg_ft(i32 %161, i32 %159, i32 0)
  call void @bzero(ptr noundef nonnull %144, i64 noundef 16) #15
  %162 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %163 = getelementptr inbounds %struct.ptree_mask, ptr %144, i64 0, i32 1
  %164 = getelementptr inbounds %struct.ptree_mask, ptr %144, i64 0, i32 1
  %165 = icmp eq ptr %164, %163
  %166 = zext i1 %165 to i32
  call void @assert_ft(i32 %166, i32 1)
  store ptr %162, ptr %164, align 8
  %167 = icmp eq ptr %162, null
  %.not46 = icmp eq ptr %162, null
  %168 = icmp eq i1 %.not46, %167
  %169 = zext i1 %168 to i32
  call void @assert_ft(i32 %169, i32 1)
  %170 = select i1 %.not46, i32 59, i32 60
  %171 = xor i32 58, %170
  br i1 %.not46, label %172, label %176

172:                                              ; preds = %158
  %Diff_phi78 = phi i32 [ %171, %158 ]
  %Dest_phi79 = phi i32 [ %159, %158 ]
  %173 = xor i32 %Diff_phi78, %Dest_phi79
  %174 = icmp eq i32 %173, 59
  %175 = zext i1 %174 to i32
  call void @assert_cfg_ft(i32 %175, i32 %173, i32 0)
  call void @perror(ptr noundef nonnull @.str.5) #17
  call void @exit(i32 noundef 1) #16
  unreachable

176:                                              ; preds = %158
  %Diff_phi80 = phi i32 [ %171, %158 ]
  %Dest_phi81 = phi i32 [ %159, %158 ]
  %177 = xor i32 %Diff_phi80, %Dest_phi81
  %178 = icmp eq i32 %177, 60
  %179 = zext i1 %178 to i32
  call void @assert_cfg_ft(i32 %179, i32 %177, i32 0)
  call void @bzero(ptr noundef nonnull %162, i64 noundef 1) #15
  %180 = load i32, ptr %4, align 4
  %181 = load i32, ptr %4, align 4
  %182 = icmp eq i32 %181, %180
  %183 = zext i1 %182 to i32
  call void @assert_ft(i32 %183, i32 1)
  %184 = zext i32 %180 to i64
  %185 = zext i32 %181 to i64
  %186 = icmp eq i64 %185, %184
  %187 = zext i1 %186 to i32
  call void @assert_ft(i32 %187, i32 1)
  store i64 %185, ptr %130, align 8
  %188 = call i32 @htonl(i32 noundef -1) #18
  %189 = zext i32 %188 to i64
  %190 = zext i32 %188 to i64
  %191 = icmp eq i64 %190, %189
  %192 = zext i1 %191 to i32
  call void @assert_ft(i32 %192, i32 1)
  store i64 %190, ptr %144, align 8
  %193 = call ptr @pat_search(i64 noundef %185, ptr noundef nonnull %53)
  %194 = load i64, ptr %193, align 8
  %195 = load i64, ptr %193, align 8
  %196 = icmp eq i64 %195, %194
  %197 = zext i1 %196 to i32
  call void @assert_ft(i32 %197, i32 1)
  %198 = icmp eq i64 %194, %184
  %199 = icmp eq i64 %195, %185
  %200 = icmp eq i1 %199, %198
  %201 = zext i1 %200 to i32
  call void @assert_ft(i32 %201, i32 1)
  %202 = select i1 %199, i32 61, i32 62
  %203 = xor i32 60, %202
  br i1 %199, label %204, label %213

204:                                              ; preds = %176
  %Diff_phi82 = phi i32 [ %203, %176 ]
  %Dest_phi83 = phi i32 [ %177, %176 ]
  %205 = xor i32 %Diff_phi82, %Dest_phi83
  %206 = icmp eq i32 %205, 61
  %207 = zext i1 %206 to i32
  call void @assert_cfg_ft(i32 %207, i32 %205, i32 0)
  %208 = load float, ptr %5, align 4
  %209 = load float, ptr %5, align 4
  %210 = fpext float %208 to double
  %211 = fpext float %209 to double
  %212 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %211, i32 noundef %181)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %218

213:                                              ; preds = %176
  %Diff_phi84 = phi i32 [ %203, %176 ]
  %Dest_phi85 = phi i32 [ %177, %176 ]
  %214 = xor i32 %Diff_phi84, %Dest_phi85
  %215 = icmp eq i32 %214, 62
  %216 = zext i1 %215 to i32
  call void @assert_cfg_ft(i32 %216, i32 %214, i32 0)
  %217 = call ptr @pat_insert(ptr noundef nonnull %130, ptr noundef nonnull %53)
  br label %218

218:                                              ; preds = %213, %204
  %Diff_phi86 = phi i32 [ 1, %213 ], [ 2, %204 ]
  %Dest_phi87 = phi i32 [ %214, %213 ], [ %205, %204 ]
  %219 = phi ptr [ %130, %204 ], [ %217, %213 ]
  %.0 = phi ptr [ %130, %204 ], [ %217, %213 ]
  %220 = xor i32 %Diff_phi86, %Dest_phi87
  %221 = icmp eq i32 %220, 63
  %222 = zext i1 %221 to i32
  call void @assert_cfg_ft(i32 %222, i32 %220, i32 0)
  %223 = icmp eq ptr %.0, %219
  %224 = zext i1 %223 to i32
  call void @assert_ft(i32 %224, i32 1)
  %225 = icmp eq ptr %219, null
  %.not47 = icmp eq ptr %.0, null
  %226 = icmp eq i1 %.not47, %225
  %227 = zext i1 %226 to i32
  call void @assert_ft(i32 %227, i32 1)
  %228 = select i1 %.not47, i32 64, i32 53
  %229 = xor i32 63, %228
  br i1 %.not47, label %230, label %115

230:                                              ; preds = %218
  %Diff_phi88 = phi i32 [ %229, %218 ]
  %Dest_phi89 = phi i32 [ %220, %218 ]
  %231 = xor i32 %Diff_phi88, %Dest_phi89
  %232 = icmp eq i32 %231, 64
  %233 = zext i1 %232 to i32
  call void @assert_cfg_ft(i32 %233, i32 %231, i32 0)
  %234 = load ptr, ptr @stderr, align 8
  %235 = load ptr, ptr @stderr, align 8
  %236 = icmp eq ptr %235, %234
  %237 = zext i1 %236 to i32
  call void @assert_ft(i32 %237, i32 1)
  %238 = call i64 @fwrite(ptr nonnull @.str.9, i64 21, i64 1, ptr %235) #17
  call void @exit(i32 noundef 1) #16
  unreachable

239:                                              ; preds = %115
  %Diff_phi90 = phi i32 [ %124, %115 ]
  %Dest_phi91 = phi i32 [ %116, %115 ]
  %240 = xor i32 %Diff_phi90, %Dest_phi91
  %241 = icmp eq i32 %240, 65
  %242 = zext i1 %241 to i32
  call void @assert_cfg_ft(i32 %242, i32 %240, i32 0)
  call void @exit(i32 noundef 0) #16
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare void @bzero(ptr nocapture noundef writeonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @htonl(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

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

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
