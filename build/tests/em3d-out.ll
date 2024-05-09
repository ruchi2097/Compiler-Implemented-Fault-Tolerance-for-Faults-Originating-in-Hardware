; ModuleID = 'em3d-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node_t = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.graph_t = type { [64 x ptr], [64 x ptr] }

@.str = private unnamed_addr constant [47 x i8] c"Hello world--Doing em3d with args %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"nonlocals = %d\0A\00", align 1
@nonlocals = dso_local local_unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.1.8 = private unnamed_addr constant [56 x i8] c"/ece566/wtest/../wolfbench/Benchmarks/em3d/make_graph.c\00", align 1
@__MyNodeId = dso_local local_unnamed_addr global i32 0, align 4
@IDMASK = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Error! on dest %d @ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"pre other_node = 0x%x,number = %d,dest = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Error! no to_nodes filed on 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"post other_node = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"node 0x%x list 0x%x count %d\0A\00", align 1
@percentcheck = internal unnamed_addr global i32 0, align 4
@numlocal = internal unnamed_addr global i32 0, align 4
@.str.24 = private unnamed_addr constant [29 x i8] c"percentcheck=%d,numlocal=%d\0A\00", align 1
@DebugFlag = dso_local local_unnamed_addr global i32 0, align 4
@__NumNodes = dso_local local_unnamed_addr global i32 0, align 4
@n_nodes = dso_local local_unnamed_addr global i32 0, align 4
@d_nodes = dso_local local_unnamed_addr global i32 0, align 4
@local_p = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [22 x i8] c"Uncaught malloc error\00", align 1
@str.1 = private unnamed_addr constant [20 x i8] c"Help! no from count\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"Help!!\00", align 1
@str.3 = private unnamed_addr constant [15 x i8] c"making tables \00", align 1
@str.4 = private unnamed_addr constant [17 x i8] c"making neighbors\00", align 1
@str.5 = private unnamed_addr constant [25 x i8] c"updating from and coeffs\00", align 1
@str.6 = private unnamed_addr constant [20 x i8] c"filling from fields\00", align 1
@str.7 = private unnamed_addr constant [30 x i8] c"localizing coeffs, from_nodes\00", align 1
@str.8 = private unnamed_addr constant [23 x i8] c"cleanup for return now\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_nodes(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %.not55 = icmp eq ptr %0, null
  %3 = icmp eq i1 %.not55, %2
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = select i1 %.not55, i32 16, i32 2
  %6 = xor i32 1, %5
  br i1 %.not55, label %._crit_edge60, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %1
  %Diff_phi = phi i32 [ %6, %1 ]
  %Dest_phi = phi i32 [ 1, %1 ]
  %7 = xor i32 %Diff_phi, %Dest_phi
  %8 = icmp eq i32 %7, 2
  %9 = zext i1 %8 to i32
  call void @assert_cfg_ft(i32 %9, i32 %7, i32 0)
  %10 = load i32, ptr @nonlocals, align 4
  %nonlocals.promoted47 = load i32, ptr @nonlocals, align 4
  %11 = icmp eq i32 %nonlocals.promoted47, %10
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %259, %.lr.ph59.preheader
  %Diff_phi63 = phi i32 [ 1, %.lr.ph59.preheader ], [ %279, %259 ]
  %Dest_phi64 = phi i32 [ %7, %.lr.ph59.preheader ], [ %262, %259 ]
  %13 = phi ptr [ %271, %259 ], [ %0, %.lr.ph59.preheader ]
  %.057 = phi ptr [ %272, %259 ], [ %0, %.lr.ph59.preheader ]
  %14 = phi i32 [ %260, %259 ], [ %10, %.lr.ph59.preheader ]
  %nonlocals.promoted5456 = phi i32 [ %nonlocals.promoted48, %259 ], [ %nonlocals.promoted47, %.lr.ph59.preheader ]
  %15 = xor i32 %Diff_phi63, %Dest_phi64
  %16 = icmp eq i32 %15, 3
  %17 = zext i1 %16 to i32
  call void @assert_cfg_ft(i32 %17, i32 %15, i32 0)
  %18 = icmp eq i32 %nonlocals.promoted5456, %14
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = icmp eq ptr %.057, %13
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = load ptr, ptr %13, align 8
  %23 = load ptr, ptr %.057, align 8
  %24 = icmp eq ptr %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = load double, ptr %22, align 8
  %27 = load double, ptr %23, align 8
  %28 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 5
  %29 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 5
  %30 = icmp eq ptr %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = load i32, ptr %28, align 8
  %33 = load i32, ptr %29, align 8
  %34 = icmp eq i32 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = add nsw i32 %32, -1
  %37 = add nsw i32 %33, -1
  %38 = icmp eq i32 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = icmp sgt i32 %32, 1
  %41 = icmp sgt i32 %33, 1
  %42 = icmp eq i1 %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = select i1 %41, i32 4, i32 11
  %45 = xor i32 3, %44
  br i1 %41, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph59
  %Diff_phi65 = phi i32 [ %45, %.lr.ph59 ]
  %Dest_phi66 = phi i32 [ %15, %.lr.ph59 ]
  %46 = xor i32 %Diff_phi65, %Dest_phi66
  %47 = icmp eq i32 %46, 4
  %48 = zext i1 %47 to i32
  call void @assert_cfg_ft(i32 %48, i32 %46, i32 0)
  %49 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 3
  %50 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 3
  %51 = icmp eq ptr %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 4
  %54 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 4
  %55 = icmp eq ptr %54, %53
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  %57 = zext i32 %36 to i64
  %58 = zext i32 %37 to i64
  %59 = icmp eq i64 %58, %57
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = load ptr, ptr %49, align 8
  %.pre = load ptr, ptr %50, align 8
  %62 = icmp eq ptr %.pre, %61
  %63 = zext i1 %62 to i32
  call void @assert_ft(i32 %63, i32 1)
  %64 = load ptr, ptr %53, align 8
  %.pre62 = load ptr, ptr %54, align 8
  %65 = icmp eq ptr %.pre62, %64
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  br label %67

67:                                               ; preds = %150, %.lr.ph
  %Diff_phi67 = phi i32 [ 1, %.lr.ph ], [ %172, %150 ]
  %Dest_phi68 = phi i32 [ %46, %.lr.ph ], [ %154, %150 ]
  %68 = phi i64 [ 0, %.lr.ph ], [ %164, %150 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %150 ]
  %69 = phi i32 [ %14, %.lr.ph ], [ %151, %150 ]
  %nonlocals.promoted53 = phi i32 [ %nonlocals.promoted5456, %.lr.ph ], [ %nonlocals.promoted51, %150 ]
  %70 = phi double [ %26, %.lr.ph ], [ %163, %150 ]
  %.03845 = phi double [ %27, %.lr.ph ], [ %163, %150 ]
  %71 = phi i32 [ %14, %.lr.ph ], [ %152, %150 ]
  %72 = phi i32 [ %nonlocals.promoted5456, %.lr.ph ], [ %153, %150 ]
  %73 = xor i32 %Diff_phi67, %Dest_phi68
  %74 = icmp eq i32 %73, 5
  %75 = zext i1 %74 to i32
  call void @assert_cfg_ft(i32 %75, i32 %73, i32 0)
  %76 = icmp eq i64 %indvars.iv, %68
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = icmp eq i32 %nonlocals.promoted53, %69
  %79 = zext i1 %78 to i32
  call void @assert_ft(i32 %79, i32 1)
  %80 = icmp eq i32 %72, %71
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  %82 = getelementptr inbounds ptr, ptr %61, i64 %68
  %83 = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv
  %84 = icmp eq ptr %83, %82
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  %86 = load ptr, ptr %82, align 8
  %87 = load ptr, ptr %83, align 8
  %88 = icmp eq ptr %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = getelementptr inbounds double, ptr %64, i64 %68
  %91 = getelementptr inbounds double, ptr %.pre62, i64 %indvars.iv
  %92 = icmp eq ptr %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = load double, ptr %90, align 8
  %95 = load double, ptr %91, align 8
  %96 = icmp eq ptr %86, null
  %.not42 = icmp eq ptr %87, null
  %97 = icmp eq i1 %.not42, %96
  %98 = zext i1 %97 to i32
  call void @assert_ft(i32 %98, i32 1)
  %99 = select i1 %.not42, i32 6, i32 7
  %100 = xor i32 5, %99
  br i1 %.not42, label %101, label %109

101:                                              ; preds = %67
  %Diff_phi69 = phi i32 [ %100, %67 ]
  %Dest_phi70 = phi i32 [ %73, %67 ]
  %102 = xor i32 %Diff_phi69, %Dest_phi70
  %103 = icmp eq i32 %102, 6
  %104 = zext i1 %103 to i32
  call void @assert_cfg_ft(i32 %104, i32 %102, i32 0)
  %105 = add nsw i32 %71, 1
  %106 = add nsw i32 %72, 1
  %107 = icmp eq i32 %106, %105
  %108 = zext i1 %107 to i32
  call void @assert_ft(i32 %108, i32 1)
  store i32 %106, ptr @nonlocals, align 4
  br label %109

109:                                              ; preds = %101, %67
  %Diff_phi71 = phi i32 [ 1, %101 ], [ %100, %67 ]
  %Dest_phi72 = phi i32 [ %102, %101 ], [ %73, %67 ]
  %110 = phi i32 [ %105, %101 ], [ %69, %67 ]
  %nonlocals.promoted52 = phi i32 [ %106, %101 ], [ %nonlocals.promoted53, %67 ]
  %111 = phi i32 [ %105, %101 ], [ %71, %67 ]
  %112 = phi i32 [ %106, %101 ], [ %72, %67 ]
  %113 = xor i32 %Diff_phi71, %Dest_phi72
  %114 = icmp eq i32 %113, 7
  %115 = zext i1 %114 to i32
  call void @assert_cfg_ft(i32 %115, i32 %113, i32 0)
  %116 = icmp eq i32 %112, %111
  %117 = zext i1 %116 to i32
  call void @assert_ft(i32 %117, i32 1)
  %118 = icmp eq i32 %nonlocals.promoted52, %110
  %119 = zext i1 %118 to i32
  call void @assert_ft(i32 %119, i32 1)
  %120 = load double, ptr %86, align 8
  %121 = load double, ptr %87, align 8
  %122 = fneg double %94
  %123 = fneg double %95
  %124 = tail call double @llvm.fmuladd.f64(double %123, double %121, double %.03845)
  %125 = or i64 %68, 1
  %126 = or i64 %indvars.iv, 1
  %127 = icmp eq i64 %126, %125
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = getelementptr inbounds ptr, ptr %61, i64 %125
  %130 = getelementptr inbounds ptr, ptr %.pre, i64 %126
  %131 = icmp eq ptr %130, %129
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = load ptr, ptr %129, align 8
  %134 = load ptr, ptr %130, align 8
  %135 = icmp eq ptr %134, %133
  %136 = zext i1 %135 to i32
  call void @assert_ft(i32 %136, i32 1)
  %137 = icmp eq ptr %133, null
  %.not43 = icmp eq ptr %134, null
  %138 = icmp eq i1 %.not43, %137
  %139 = zext i1 %138 to i32
  call void @assert_ft(i32 %139, i32 1)
  %140 = select i1 %.not43, i32 8, i32 9
  %141 = xor i32 7, %140
  br i1 %.not43, label %142, label %150

142:                                              ; preds = %109
  %Diff_phi73 = phi i32 [ %141, %109 ]
  %Dest_phi74 = phi i32 [ %113, %109 ]
  %143 = xor i32 %Diff_phi73, %Dest_phi74
  %144 = icmp eq i32 %143, 8
  %145 = zext i1 %144 to i32
  call void @assert_cfg_ft(i32 %145, i32 %143, i32 0)
  %146 = add nsw i32 %111, 1
  %147 = add nsw i32 %112, 1
  %148 = icmp eq i32 %147, %146
  %149 = zext i1 %148 to i32
  call void @assert_ft(i32 %149, i32 1)
  store i32 %147, ptr @nonlocals, align 4
  br label %150

150:                                              ; preds = %142, %109
  %Diff_phi75 = phi i32 [ 1, %142 ], [ %141, %109 ]
  %Dest_phi76 = phi i32 [ %143, %142 ], [ %113, %109 ]
  %151 = phi i32 [ %146, %142 ], [ %110, %109 ]
  %nonlocals.promoted51 = phi i32 [ %147, %142 ], [ %nonlocals.promoted52, %109 ]
  %152 = phi i32 [ %146, %142 ], [ %111, %109 ]
  %153 = phi i32 [ %147, %142 ], [ %112, %109 ]
  %154 = xor i32 %Diff_phi75, %Dest_phi76
  %155 = icmp eq i32 %154, 9
  %156 = zext i1 %155 to i32
  call void @assert_cfg_ft(i32 %156, i32 %154, i32 0)
  %157 = icmp eq i32 %153, %152
  %158 = zext i1 %157 to i32
  call void @assert_ft(i32 %158, i32 1)
  %159 = icmp eq i32 %nonlocals.promoted51, %151
  %160 = zext i1 %159 to i32
  call void @assert_ft(i32 %160, i32 1)
  %161 = load double, ptr %133, align 8
  %162 = load double, ptr %134, align 8
  %163 = tail call double @llvm.fmuladd.f64(double %123, double %162, double %124)
  %164 = add nuw nsw i64 %68, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %165 = icmp eq i64 %indvars.iv.next, %164
  %166 = zext i1 %165 to i32
  call void @assert_ft(i32 %166, i32 1)
  %167 = icmp ult i64 %164, %57
  %168 = icmp ult i64 %indvars.iv.next, %58
  %169 = icmp eq i1 %168, %167
  %170 = zext i1 %169 to i32
  call void @assert_ft(i32 %170, i32 1)
  %171 = select i1 %168, i32 5, i32 10
  %172 = xor i32 9, %171
  br i1 %168, label %67, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %150
  %Diff_phi77 = phi i32 [ %172, %150 ]
  %Dest_phi78 = phi i32 [ %154, %150 ]
  %173 = xor i32 %Diff_phi77, %Dest_phi78
  %174 = icmp eq i32 %173, 10
  %175 = zext i1 %174 to i32
  call void @assert_cfg_ft(i32 %175, i32 %173, i32 0)
  %176 = trunc i64 %164 to i32
  %177 = trunc i64 %indvars.iv.next to i32
  %178 = icmp eq i32 %177, %176
  %179 = zext i1 %178 to i32
  call void @assert_ft(i32 %179, i32 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph59
  %Diff_phi79 = phi i32 [ 1, %._crit_edge.loopexit ], [ %45, %.lr.ph59 ]
  %Dest_phi80 = phi i32 [ %173, %._crit_edge.loopexit ], [ %15, %.lr.ph59 ]
  %180 = phi i32 [ %14, %.lr.ph59 ], [ %151, %._crit_edge.loopexit ]
  %nonlocals.promoted50 = phi i32 [ %nonlocals.promoted5456, %.lr.ph59 ], [ %nonlocals.promoted51, %._crit_edge.loopexit ]
  %181 = phi i32 [ 0, %.lr.ph59 ], [ %176, %._crit_edge.loopexit ]
  %.039.lcssa = phi i32 [ 0, %.lr.ph59 ], [ %177, %._crit_edge.loopexit ]
  %182 = phi double [ %26, %.lr.ph59 ], [ %163, %._crit_edge.loopexit ]
  %.038.lcssa = phi double [ %27, %.lr.ph59 ], [ %163, %._crit_edge.loopexit ]
  %183 = xor i32 %Diff_phi79, %Dest_phi80
  %184 = icmp eq i32 %183, 11
  %185 = zext i1 %184 to i32
  call void @assert_cfg_ft(i32 %185, i32 %183, i32 0)
  %186 = icmp eq i32 %.039.lcssa, %181
  %187 = zext i1 %186 to i32
  call void @assert_ft(i32 %187, i32 1)
  %188 = icmp eq i32 %nonlocals.promoted50, %180
  %189 = zext i1 %188 to i32
  call void @assert_ft(i32 %189, i32 1)
  %190 = icmp eq i32 %181, %36
  %191 = icmp eq i32 %.039.lcssa, %37
  %192 = icmp eq i1 %191, %190
  %193 = zext i1 %192 to i32
  call void @assert_ft(i32 %193, i32 1)
  %194 = select i1 %191, i32 12, i32 15
  %195 = xor i32 11, %194
  br i1 %191, label %196, label %259

196:                                              ; preds = %._crit_edge
  %Diff_phi81 = phi i32 [ %195, %._crit_edge ]
  %Dest_phi82 = phi i32 [ %183, %._crit_edge ]
  %197 = xor i32 %Diff_phi81, %Dest_phi82
  %198 = icmp eq i32 %197, 12
  %199 = zext i1 %198 to i32
  call void @assert_cfg_ft(i32 %199, i32 %197, i32 0)
  %200 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 3
  %201 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 3
  %202 = icmp eq ptr %201, %200
  %203 = zext i1 %202 to i32
  call void @assert_ft(i32 %203, i32 1)
  %204 = load ptr, ptr %200, align 8
  %205 = load ptr, ptr %201, align 8
  %206 = icmp eq ptr %205, %204
  %207 = zext i1 %206 to i32
  call void @assert_ft(i32 %207, i32 1)
  %208 = zext i32 %36 to i64
  %209 = zext i32 %37 to i64
  %210 = icmp eq i64 %209, %208
  %211 = zext i1 %210 to i32
  call void @assert_ft(i32 %211, i32 1)
  %212 = getelementptr inbounds ptr, ptr %204, i64 %208
  %213 = getelementptr inbounds ptr, ptr %205, i64 %209
  %214 = icmp eq ptr %213, %212
  %215 = zext i1 %214 to i32
  call void @assert_ft(i32 %215, i32 1)
  %216 = load ptr, ptr %212, align 8
  %217 = load ptr, ptr %213, align 8
  %218 = icmp eq ptr %217, %216
  %219 = zext i1 %218 to i32
  call void @assert_ft(i32 %219, i32 1)
  %220 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 4
  %221 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 4
  %222 = icmp eq ptr %221, %220
  %223 = zext i1 %222 to i32
  call void @assert_ft(i32 %223, i32 1)
  %224 = load ptr, ptr %220, align 8
  %225 = load ptr, ptr %221, align 8
  %226 = icmp eq ptr %225, %224
  %227 = zext i1 %226 to i32
  call void @assert_ft(i32 %227, i32 1)
  %228 = getelementptr inbounds double, ptr %224, i64 %208
  %229 = getelementptr inbounds double, ptr %225, i64 %209
  %230 = icmp eq ptr %229, %228
  %231 = zext i1 %230 to i32
  call void @assert_ft(i32 %231, i32 1)
  %232 = load double, ptr %228, align 8
  %233 = load double, ptr %229, align 8
  %234 = icmp eq ptr %216, null
  %.not41 = icmp eq ptr %217, null
  %235 = icmp eq i1 %.not41, %234
  %236 = zext i1 %235 to i32
  call void @assert_ft(i32 %236, i32 1)
  %237 = select i1 %.not41, i32 13, i32 14
  %238 = xor i32 12, %237
  br i1 %.not41, label %239, label %247

239:                                              ; preds = %196
  %Diff_phi83 = phi i32 [ %238, %196 ]
  %Dest_phi84 = phi i32 [ %197, %196 ]
  %240 = xor i32 %Diff_phi83, %Dest_phi84
  %241 = icmp eq i32 %240, 13
  %242 = zext i1 %241 to i32
  call void @assert_cfg_ft(i32 %242, i32 %240, i32 0)
  %243 = add nsw i32 %180, 1
  %244 = add nsw i32 %nonlocals.promoted50, 1
  %245 = icmp eq i32 %244, %243
  %246 = zext i1 %245 to i32
  call void @assert_ft(i32 %246, i32 1)
  store i32 %244, ptr @nonlocals, align 4
  br label %247

247:                                              ; preds = %239, %196
  %Diff_phi85 = phi i32 [ 3, %239 ], [ %238, %196 ]
  %Dest_phi86 = phi i32 [ %240, %239 ], [ %197, %196 ]
  %248 = phi i32 [ %243, %239 ], [ %180, %196 ]
  %nonlocals.promoted49 = phi i32 [ %244, %239 ], [ %nonlocals.promoted50, %196 ]
  %249 = xor i32 %Diff_phi85, %Dest_phi86
  %250 = icmp eq i32 %249, 14
  %251 = zext i1 %250 to i32
  call void @assert_cfg_ft(i32 %251, i32 %249, i32 0)
  %252 = icmp eq i32 %nonlocals.promoted49, %248
  %253 = zext i1 %252 to i32
  call void @assert_ft(i32 %253, i32 1)
  %254 = load double, ptr %216, align 8
  %255 = load double, ptr %217, align 8
  %256 = fneg double %232
  %257 = fneg double %233
  %258 = tail call double @llvm.fmuladd.f64(double %257, double %255, double %.038.lcssa)
  br label %259

259:                                              ; preds = %247, %._crit_edge
  %Diff_phi87 = phi i32 [ 1, %247 ], [ %195, %._crit_edge ]
  %Dest_phi88 = phi i32 [ %249, %247 ], [ %183, %._crit_edge ]
  %260 = phi i32 [ %248, %247 ], [ %180, %._crit_edge ]
  %nonlocals.promoted48 = phi i32 [ %nonlocals.promoted49, %247 ], [ %nonlocals.promoted50, %._crit_edge ]
  %261 = phi double [ %258, %247 ], [ %182, %._crit_edge ]
  %.1 = phi double [ %258, %247 ], [ %.038.lcssa, %._crit_edge ]
  %262 = xor i32 %Diff_phi87, %Dest_phi88
  %263 = icmp eq i32 %262, 15
  %264 = zext i1 %263 to i32
  call void @assert_cfg_ft(i32 %264, i32 %262, i32 0)
  %265 = icmp eq i32 %nonlocals.promoted48, %260
  %266 = zext i1 %265 to i32
  call void @assert_ft(i32 %266, i32 1)
  store double %.1, ptr %23, align 8
  %267 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 1
  %268 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 1
  %269 = icmp eq ptr %268, %267
  %270 = zext i1 %269 to i32
  call void @assert_ft(i32 %270, i32 1)
  %271 = load ptr, ptr %267, align 8
  %272 = load ptr, ptr %268, align 8
  %273 = icmp eq ptr %272, %271
  %274 = zext i1 %273 to i32
  call void @assert_ft(i32 %274, i32 1)
  %275 = icmp eq ptr %271, null
  %.not = icmp eq ptr %272, null
  %276 = icmp eq i1 %.not, %275
  %277 = zext i1 %276 to i32
  call void @assert_ft(i32 %277, i32 1)
  %278 = select i1 %.not, i32 16, i32 3
  %279 = xor i32 15, %278
  br i1 %.not, label %._crit_edge60, label %.lr.ph59

._crit_edge60:                                    ; preds = %259, %1
  %Diff_phi89 = phi i32 [ %279, %259 ], [ %6, %1 ]
  %Dest_phi90 = phi i32 [ %262, %259 ], [ 1, %1 ]
  %280 = xor i32 %Diff_phi89, %Dest_phi90
  %281 = icmp eq i32 %280, 16
  %282 = zext i1 %281 to i32
  call void @assert_cfg_ft(i32 %282, i32 %280, i32 0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
.loopexit:
  tail call void @dealwithargs(i32 noundef %0, ptr noundef %1)
  %2 = load i32, ptr @n_nodes, align 4
  %3 = load i32, ptr @n_nodes, align 4
  %4 = icmp eq i32 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = load i32, ptr @d_nodes, align 4
  %7 = load i32, ptr @d_nodes, align 4
  %8 = icmp eq i32 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = load i32, ptr @local_p, align 4
  %11 = load i32, ptr @local_p, align 4
  %12 = icmp eq i32 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = load i32, ptr @__NumNodes, align 4
  %15 = load i32, ptr @__NumNodes, align 4
  %16 = icmp eq i32 %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %3, i32 noundef %7, i32 noundef %11, i32 noundef %15)
  %19 = tail call ptr @initialize_graph()
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %19, align 8
  %22 = icmp eq ptr %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  tail call void @compute_nodes(ptr noundef %21)
  %24 = getelementptr inbounds %struct.graph_t, ptr %19, i64 0, i32 1
  %25 = getelementptr inbounds %struct.graph_t, ptr %19, i64 0, i32 1
  %26 = icmp eq ptr %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = load ptr, ptr %24, align 8
  %29 = load ptr, ptr %25, align 8
  %30 = icmp eq ptr %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  tail call void @compute_nodes(ptr noundef %29)
  %32 = load i32, ptr @nonlocals, align 4
  %33 = load i32, ptr @nonlocals, align 4
  %34 = icmp eq i32 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %33)
  tail call void @printstats()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ATOMICINC(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = add nsw i32 %2, 1
  %7 = add nsw i32 %3, 1
  %8 = icmp eq i32 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  store i32 %7, ptr %0, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @make_table(i32 noundef %0, i32 %1) local_unnamed_addr #2 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %0 to i64
  %5 = icmp eq i64 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = shl nsw i64 %3, 3
  %8 = shl nsw i64 %4, 3
  %9 = icmp eq i64 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = tail call noalias ptr @malloc(i64 noundef %8) #13
  %12 = icmp eq ptr %11, null
  %.not = icmp eq ptr %11, null
  %13 = icmp eq i1 %.not, %12
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = select i1 %.not, i32 20, i32 21
  %16 = xor i32 19, %15
  br i1 %.not, label %17, label %21

17:                                               ; preds = %2
  %Diff_phi = phi i32 [ %16, %2 ]
  %Dest_phi = phi i32 [ 19, %2 ]
  %18 = xor i32 %Diff_phi, %Dest_phi
  %19 = icmp eq i32 %18, 20
  %20 = zext i1 %19 to i32
  call void @assert_cfg_ft(i32 %20, i32 %18, i32 0)
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1.8, i32 noundef 51, ptr noundef null) #14
  unreachable

21:                                               ; preds = %2
  %Diff_phi2 = phi i32 [ %16, %2 ]
  %Dest_phi3 = phi i32 [ 19, %2 ]
  %22 = xor i32 %Diff_phi2, %Dest_phi3
  %23 = icmp eq i32 %22, 21
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_table(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #2 {
  %5 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13
  store ptr %5, ptr %0, align 8
  %6 = tail call double @gen_uniform_double()
  store double %6, ptr %1, align 8
  store ptr %1, ptr %5, align 8
  %7 = getelementptr inbounds %struct.node_t, ptr %5, i64 0, i32 5
  %8 = getelementptr inbounds %struct.node_t, ptr %5, i64 0, i32 5
  %9 = icmp eq ptr %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  store i32 0, ptr %8, align 8
  %11 = icmp sgt i32 %2, 1
  %12 = icmp sgt i32 %2, 1
  %13 = icmp eq i1 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = select i1 %12, i32 23, i32 25
  %16 = xor i32 22, %15
  br i1 %12, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %4
  %Diff_phi = phi i32 [ %16, %4 ]
  %Dest_phi = phi i32 [ 22, %4 ]
  %17 = xor i32 %Diff_phi, %Dest_phi
  %18 = icmp eq i32 %17, 23
  %19 = zext i1 %18 to i32
  call void @assert_cfg_ft(i32 %19, i32 %17, i32 0)
  %20 = zext i32 %2 to i64
  %wide.trip.count = zext i32 %2 to i64
  %21 = icmp eq i64 %wide.trip.count, %20
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %Diff_phi24 = phi i32 [ 15, %.lr.ph.preheader ], [ %59, %.lr.ph ]
  %Dest_phi25 = phi i32 [ %17, %.lr.ph.preheader ], [ %26, %.lr.ph ]
  %23 = phi i64 [ 1, %.lr.ph.preheader ], [ %52, %.lr.ph ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %24 = phi ptr [ %5, %.lr.ph.preheader ], [ %38, %.lr.ph ]
  %.01922 = phi ptr [ %5, %.lr.ph.preheader ], [ %38, %.lr.ph ]
  %25 = phi ptr [ %1, %.lr.ph.preheader ], [ %35, %.lr.ph ]
  %.pn21 = phi ptr [ %1, %.lr.ph.preheader ], [ %.020, %.lr.ph ]
  %26 = xor i32 %Diff_phi24, %Dest_phi25
  %27 = icmp eq i32 %26, 24
  %28 = zext i1 %27 to i32
  call void @assert_cfg_ft(i32 %28, i32 %26, i32 0)
  %29 = icmp eq ptr %.01922, %24
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = icmp eq ptr %.pn21, %25
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = icmp eq i64 %indvars.iv, %23
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = getelementptr inbounds double, ptr %25, i64 1
  %.020 = getelementptr inbounds double, ptr %.pn21, i64 1
  %36 = icmp eq ptr %.020, %35
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13
  %39 = tail call double @gen_uniform_double()
  store double %39, ptr %.020, align 8
  store ptr %.020, ptr %38, align 8
  %40 = getelementptr inbounds %struct.node_t, ptr %38, i64 0, i32 5
  %41 = getelementptr inbounds %struct.node_t, ptr %38, i64 0, i32 5
  %42 = icmp eq ptr %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  store i32 0, ptr %41, align 8
  %44 = getelementptr inbounds ptr, ptr %0, i64 %23
  %45 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %46 = icmp eq ptr %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  store ptr %38, ptr %45, align 8
  %48 = getelementptr inbounds %struct.node_t, ptr %24, i64 0, i32 1
  %49 = getelementptr inbounds %struct.node_t, ptr %.01922, i64 0, i32 1
  %50 = icmp eq ptr %49, %48
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  store ptr %38, ptr %49, align 8
  %52 = add nuw nsw i64 %23, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %53 = icmp eq i64 %indvars.iv.next, %52
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = icmp eq i64 %52, %20
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %56 = icmp eq i1 %exitcond.not, %55
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = select i1 %exitcond.not, i32 25, i32 24
  %59 = xor i32 24, %58
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %4
  %Diff_phi26 = phi i32 [ %59, %.lr.ph ], [ %16, %4 ]
  %Dest_phi27 = phi i32 [ %26, %.lr.ph ], [ 22, %4 ]
  %60 = phi ptr [ %5, %4 ], [ %38, %.lr.ph ]
  %.019.lcssa = phi ptr [ %5, %4 ], [ %38, %.lr.ph ]
  %61 = xor i32 %Diff_phi26, %Dest_phi27
  %62 = icmp eq i32 %61, 25
  %63 = zext i1 %62 to i32
  call void @assert_cfg_ft(i32 %63, i32 %61, i32 0)
  %64 = icmp eq ptr %.019.lcssa, %60
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = getelementptr inbounds %struct.node_t, ptr %60, i64 0, i32 1
  %67 = getelementptr inbounds %struct.node_t, ptr %.019.lcssa, i64 0, i32 1
  %68 = icmp eq ptr %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  store ptr null, ptr %67, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_neighbors(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = icmp eq ptr %0, null
  %.not66 = icmp eq ptr %0, null
  %8 = icmp eq i1 %.not66, %7
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = select i1 %.not66, i32 50, i32 27
  %11 = xor i32 26, %10
  br i1 %.not66, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %6
  %Diff_phi = phi i32 [ %11, %6 ]
  %Dest_phi = phi i32 [ 26, %6 ]
  %12 = xor i32 %Diff_phi, %Dest_phi
  %13 = icmp eq i32 %12, 27
  %14 = zext i1 %13 to i32
  call void @assert_cfg_ft(i32 %14, i32 %12, i32 0)
  %15 = sext i32 %3 to i64
  %16 = sext i32 %3 to i64
  %17 = icmp eq i64 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = shl nsw i64 %15, 3
  %20 = shl nsw i64 %16, 3
  %21 = icmp eq i64 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = icmp sgt i32 %3, 0
  %24 = icmp sgt i32 %3, 0
  %25 = icmp eq i1 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = add nsw i32 %5, 64
  %28 = add nsw i32 %5, 64
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = zext i32 %3 to i64
  %wide.trip.count84 = zext i32 %3 to i64
  %32 = icmp eq i64 %wide.trip.count84, %31
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  br label %34

34:                                               ; preds = %._crit_edge65, %.lr.ph69
  %Diff_phi137 = phi i32 [ 7, %.lr.ph69 ], [ %304, %._crit_edge65 ]
  %Dest_phi138 = phi i32 [ %12, %.lr.ph69 ], [ %289, %._crit_edge65 ]
  %35 = phi ptr [ %0, %.lr.ph69 ], [ %296, %._crit_edge65 ]
  %.067 = phi ptr [ %0, %.lr.ph69 ], [ %297, %._crit_edge65 ]
  %36 = xor i32 %Diff_phi137, %Dest_phi138
  %37 = icmp eq i32 %36, 28
  %38 = zext i1 %37 to i32
  call void @assert_cfg_ft(i32 %38, i32 %36, i32 0)
  %39 = icmp eq ptr %.067, %35
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = tail call noalias ptr @malloc(i64 noundef %20) #13
  %42 = getelementptr inbounds %struct.node_t, ptr %35, i64 0, i32 2
  %43 = getelementptr inbounds %struct.node_t, ptr %.067, i64 0, i32 2
  %44 = icmp eq ptr %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  store ptr %41, ptr %43, align 8
  %46 = icmp eq ptr %41, null
  %.not44 = icmp eq ptr %41, null
  %47 = icmp eq i1 %.not44, %46
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = select i1 %.not44, i32 30, i32 29
  %50 = xor i32 28, %49
  br i1 %.not44, label %56, label %.preheader49

.preheader49:                                     ; preds = %34
  %Diff_phi139 = phi i32 [ %50, %34 ]
  %Dest_phi140 = phi i32 [ %36, %34 ]
  %51 = xor i32 %Diff_phi139, %Dest_phi140
  %52 = icmp eq i32 %51, 29
  %53 = zext i1 %52 to i32
  call void @assert_cfg_ft(i32 %53, i32 %51, i32 0)
  %54 = select i1 %24, i32 31, i32 49
  %55 = xor i32 29, %54
  br i1 %24, label %.preheader48, label %._crit_edge65

56:                                               ; preds = %34
  %Diff_phi141 = phi i32 [ %50, %34 ]
  %Dest_phi142 = phi i32 [ %36, %34 ]
  %57 = xor i32 %Diff_phi141, %Dest_phi142
  %58 = icmp eq i32 %57, 30
  %59 = zext i1 %58 to i32
  call void @assert_cfg_ft(i32 %59, i32 %57, i32 0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 0) #14
  unreachable

.preheader48:                                     ; preds = %272, %.preheader49
  %Diff_phi143 = phi i32 [ %55, %.preheader49 ], [ %288, %272 ]
  %Dest_phi144 = phi i32 [ %51, %.preheader49 ], [ %273, %272 ]
  %60 = phi i64 [ %281, %272 ], [ 0, %.preheader49 ]
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %272 ], [ 0, %.preheader49 ]
  %61 = xor i32 %Diff_phi143, %Dest_phi144
  %62 = icmp eq i32 %61, 31
  %63 = zext i1 %62 to i32
  call void @assert_cfg_ft(i32 %63, i32 %61, i32 0)
  %64 = icmp eq i64 %indvars.iv82, %60
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = icmp eq i64 %60, 0
  %.not86 = icmp eq i64 %indvars.iv82, 0
  %67 = icmp eq i1 %.not86, %66
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  br label %69

69:                                               ; preds = %225, %.preheader48
  %Diff_phi145 = phi i32 [ 63, %.preheader48 ], [ %230, %225 ]
  %Dest_phi146 = phi i32 [ %61, %.preheader48 ], [ %226, %225 ]
  %70 = xor i32 %Diff_phi145, %Dest_phi146
  %71 = icmp eq i32 %70, 32
  %72 = zext i1 %71 to i32
  call void @assert_cfg_ft(i32 %72, i32 %70, i32 0)
  %73 = tail call i32 @gen_number(i32 noundef %2), !range !6
  %74 = tail call i32 @check_percent(i32 noundef %4), !range !7
  %75 = icmp eq i32 %74, 0
  %.not45 = icmp eq i32 %74, 0
  %76 = icmp eq i1 %.not45, %75
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = select i1 %.not45, i32 33, i32 34
  %79 = xor i32 32, %78
  br i1 %.not45, label %80, label %97

80:                                               ; preds = %69
  %Diff_phi147 = phi i32 [ %79, %69 ]
  %Dest_phi148 = phi i32 [ %70, %69 ]
  %81 = xor i32 %Diff_phi147, %Dest_phi148
  %82 = icmp eq i32 %81, 33
  %83 = zext i1 %82 to i32
  call void @assert_cfg_ft(i32 %83, i32 %81, i32 0)
  %84 = tail call i32 @gen_signed_number(i32 noundef 1), !range !8
  %85 = shl nsw i32 %84, 2
  %86 = shl nsw i32 %84, 2
  %87 = icmp eq i32 %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = add nsw i32 %27, %85
  %90 = add nsw i32 %28, %86
  %91 = icmp eq i32 %90, %89
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = srem i32 %89, 64
  %94 = srem i32 %90, 64
  %95 = icmp eq i32 %94, %93
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  br label %97

97:                                               ; preds = %80, %69
  %Diff_phi149 = phi i32 [ %79, %69 ], [ 3, %80 ]
  %Dest_phi150 = phi i32 [ %70, %69 ], [ %81, %80 ]
  %98 = phi i32 [ %93, %80 ], [ %5, %69 ]
  %99 = phi i32 [ %94, %80 ], [ %5, %69 ]
  %100 = xor i32 %Diff_phi149, %Dest_phi150
  %101 = icmp eq i32 %100, 34
  %102 = zext i1 %101 to i32
  call void @assert_cfg_ft(i32 %102, i32 %100, i32 0)
  %103 = icmp eq i32 %99, %98
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  %105 = sext i32 %98 to i64
  %106 = sext i32 %99 to i64
  %107 = icmp eq i64 %106, %105
  %108 = zext i1 %107 to i32
  call void @assert_ft(i32 %108, i32 1)
  %109 = getelementptr inbounds ptr, ptr %1, i64 %105
  %110 = getelementptr inbounds ptr, ptr %1, i64 %106
  %111 = icmp eq ptr %110, %109
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  %113 = load ptr, ptr %109, align 8
  %114 = load ptr, ptr %110, align 8
  %115 = icmp eq ptr %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = sext i32 %73 to i64
  %118 = sext i32 %73 to i64
  %119 = icmp eq i64 %118, %117
  %120 = zext i1 %119 to i32
  call void @assert_ft(i32 %120, i32 1)
  %121 = getelementptr inbounds ptr, ptr %113, i64 %117
  %122 = getelementptr inbounds ptr, ptr %114, i64 %118
  %123 = icmp eq ptr %122, %121
  %124 = zext i1 %123 to i32
  call void @assert_ft(i32 %124, i32 1)
  %125 = load ptr, ptr %121, align 8
  %126 = load ptr, ptr %122, align 8
  %127 = icmp eq ptr %126, %125
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = icmp eq ptr %125, null
  %.not46 = icmp eq ptr %126, null
  %130 = icmp eq i1 %.not46, %129
  %131 = zext i1 %130 to i32
  call void @assert_ft(i32 %131, i32 1)
  %132 = select i1 %.not46, i32 37, i32 35
  %133 = xor i32 34, %132
  br i1 %.not46, label %156, label %.preheader

.preheader:                                       ; preds = %97
  %Diff_phi151 = phi i32 [ %133, %97 ]
  %Dest_phi152 = phi i32 [ %100, %97 ]
  %134 = xor i32 %Diff_phi151, %Dest_phi152
  %135 = icmp eq i32 %134, 35
  %136 = zext i1 %135 to i32
  call void @assert_cfg_ft(i32 %136, i32 %134, i32 0)
  %137 = select i1 %.not86, i32 41, i32 36
  %138 = xor i32 35, %137
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %Diff_phi153 = phi i32 [ %138, %.preheader ]
  %Dest_phi154 = phi i32 [ %134, %.preheader ]
  %139 = xor i32 %Diff_phi153, %Dest_phi154
  %140 = icmp eq i32 %139, 36
  %141 = zext i1 %140 to i32
  call void @assert_cfg_ft(i32 %141, i32 %139, i32 0)
  %142 = load ptr, ptr %42, align 8
  %143 = load ptr, ptr %43, align 8
  %144 = icmp eq ptr %143, %142
  %145 = zext i1 %144 to i32
  call void @assert_ft(i32 %145, i32 1)
  %146 = load ptr, ptr %142, align 8
  %147 = load ptr, ptr %143, align 8
  %148 = icmp eq ptr %147, %146
  %149 = zext i1 %148 to i32
  call void @assert_ft(i32 %149, i32 1)
  %150 = icmp eq ptr %125, %146
  %151 = icmp eq ptr %126, %147
  %152 = icmp eq i1 %151, %150
  %153 = zext i1 %152 to i32
  call void @assert_ft(i32 %153, i32 1)
  %154 = select i1 %151, i32 41, i32 38
  %155 = xor i32 36, %154
  br i1 %151, label %._crit_edge, label %.lr.ph110

156:                                              ; preds = %97
  %Diff_phi155 = phi i32 [ %133, %97 ]
  %Dest_phi156 = phi i32 [ %100, %97 ]
  %157 = xor i32 %Diff_phi155, %Dest_phi156
  %158 = icmp eq i32 %157, 37
  %159 = zext i1 %158 to i32
  call void @assert_cfg_ft(i32 %159, i32 %157, i32 0)
  %160 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %73, i32 noundef %99)
  tail call void @exit(i32 noundef 0) #14
  unreachable

.lr.ph110:                                        ; preds = %175, %.lr.ph
  %Diff_phi157 = phi i32 [ %155, %.lr.ph ], [ %192, %175 ]
  %Dest_phi158 = phi i32 [ %139, %.lr.ph ], [ %176, %175 ]
  %161 = phi i64 [ %167, %175 ], [ 0, %.lr.ph ]
  %indvars.iv109 = phi i64 [ %indvars.iv.next, %175 ], [ 0, %.lr.ph ]
  %162 = xor i32 %Diff_phi157, %Dest_phi158
  %163 = icmp eq i32 %162, 38
  %164 = zext i1 %163 to i32
  call void @assert_cfg_ft(i32 %164, i32 %162, i32 0)
  %165 = icmp eq i64 %indvars.iv109, %161
  %166 = zext i1 %165 to i32
  call void @assert_ft(i32 %166, i32 1)
  %167 = add nuw nsw i64 %161, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv109, 1
  %168 = icmp eq i64 %indvars.iv.next, %167
  %169 = zext i1 %168 to i32
  call void @assert_ft(i32 %169, i32 1)
  %170 = icmp eq i64 %167, %60
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv82
  %171 = icmp eq i1 %exitcond.not, %170
  %172 = zext i1 %171 to i32
  call void @assert_ft(i32 %172, i32 1)
  %173 = select i1 %exitcond.not, i32 40, i32 39
  %174 = xor i32 38, %173
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %175

175:                                              ; preds = %.lr.ph110
  %Diff_phi159 = phi i32 [ %174, %.lr.ph110 ]
  %Dest_phi160 = phi i32 [ %162, %.lr.ph110 ]
  %176 = xor i32 %Diff_phi159, %Dest_phi160
  %177 = icmp eq i32 %176, 39
  %178 = zext i1 %177 to i32
  call void @assert_cfg_ft(i32 %178, i32 %176, i32 0)
  %179 = getelementptr inbounds ptr, ptr %142, i64 %167
  %180 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next
  %181 = icmp eq ptr %180, %179
  %182 = zext i1 %181 to i32
  call void @assert_ft(i32 %182, i32 1)
  %183 = load ptr, ptr %179, align 8
  %184 = load ptr, ptr %180, align 8
  %185 = icmp eq ptr %184, %183
  %186 = zext i1 %185 to i32
  call void @assert_ft(i32 %186, i32 1)
  %187 = icmp eq ptr %125, %183
  %188 = icmp eq ptr %126, %184
  %189 = icmp eq i1 %188, %187
  %190 = zext i1 %189 to i32
  call void @assert_ft(i32 %190, i32 1)
  %191 = select i1 %188, i32 40, i32 38
  %192 = xor i32 39, %191
  br i1 %188, label %._crit_edge.loopexit, label %.lr.ph110

._crit_edge.loopexit:                             ; preds = %175, %.lr.ph110
  %Diff_phi161 = phi i32 [ %174, %.lr.ph110 ], [ %192, %175 ]
  %Dest_phi162 = phi i32 [ %162, %.lr.ph110 ], [ %176, %175 ]
  %193 = xor i32 %Diff_phi161, %Dest_phi162
  %194 = icmp eq i32 %193, 40
  %195 = zext i1 %194 to i32
  call void @assert_cfg_ft(i32 %195, i32 %193, i32 0)
  %196 = icmp ult i64 %167, %60
  %197 = icmp ult i64 %indvars.iv.next, %indvars.iv82
  %198 = icmp eq i1 %197, %196
  %199 = zext i1 %198 to i32
  call void @assert_ft(i32 %199, i32 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph, %.preheader
  %Diff_phi163 = phi i32 [ 1, %._crit_edge.loopexit ], [ %155, %.lr.ph ], [ %138, %.preheader ]
  %Dest_phi164 = phi i32 [ %193, %._crit_edge.loopexit ], [ %139, %.lr.ph ], [ %134, %.preheader ]
  %200 = phi i1 [ false, %.preheader ], [ true, %.lr.ph ], [ %196, %._crit_edge.loopexit ]
  %.lcssa = phi i1 [ false, %.preheader ], [ true, %.lr.ph ], [ %197, %._crit_edge.loopexit ]
  %201 = xor i32 %Diff_phi163, %Dest_phi164
  %202 = icmp eq i32 %201, 41
  %203 = zext i1 %202 to i32
  call void @assert_cfg_ft(i32 %203, i32 %201, i32 0)
  %204 = icmp eq i1 %.lcssa, %200
  %205 = zext i1 %204 to i32
  call void @assert_ft(i32 %205, i32 1)
  %206 = ptrtoint ptr %125 to i64
  %207 = ptrtoint ptr %126 to i64
  %208 = icmp eq i64 %207, %206
  %209 = zext i1 %208 to i32
  call void @assert_ft(i32 %209, i32 1)
  %210 = trunc i64 %206 to i32
  %211 = trunc i64 %207 to i32
  %212 = icmp eq i32 %211, %210
  %213 = zext i1 %212 to i32
  call void @assert_ft(i32 %213, i32 1)
  %214 = icmp ult i32 %210, 262144
  %215 = icmp ult i32 %211, 262144
  %216 = icmp eq i1 %215, %214
  %217 = zext i1 %216 to i32
  call void @assert_ft(i32 %217, i32 1)
  %218 = select i1 %215, i32 42, i32 43
  %219 = xor i32 41, %218
  br i1 %215, label %220, label %225

220:                                              ; preds = %._crit_edge
  %Diff_phi165 = phi i32 [ %219, %._crit_edge ]
  %Dest_phi166 = phi i32 [ %201, %._crit_edge ]
  %221 = xor i32 %Diff_phi165, %Dest_phi166
  %222 = icmp eq i32 %221, 42
  %223 = zext i1 %222 to i32
  call void @assert_cfg_ft(i32 %223, i32 %221, i32 0)
  %224 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %211, i32 noundef %73, i32 noundef %99)
  br label %225

225:                                              ; preds = %220, %._crit_edge
  %Diff_phi167 = phi i32 [ %219, %._crit_edge ], [ 1, %220 ]
  %Dest_phi168 = phi i32 [ %201, %._crit_edge ], [ %221, %220 ]
  %226 = xor i32 %Diff_phi167, %Dest_phi168
  %227 = icmp eq i32 %226, 43
  %228 = zext i1 %227 to i32
  call void @assert_cfg_ft(i32 %228, i32 %226, i32 0)
  %229 = select i1 %.lcssa, i32 32, i32 44
  %230 = xor i32 43, %229
  br i1 %.lcssa, label %69, label %231

231:                                              ; preds = %225
  %Diff_phi169 = phi i32 [ %230, %225 ]
  %Dest_phi170 = phi i32 [ %226, %225 ]
  %232 = xor i32 %Diff_phi169, %Dest_phi170
  %233 = icmp eq i32 %232, 44
  %234 = zext i1 %233 to i32
  call void @assert_cfg_ft(i32 %234, i32 %232, i32 0)
  %235 = load ptr, ptr %42, align 8
  %236 = load ptr, ptr %43, align 8
  %237 = icmp eq ptr %236, %235
  %238 = zext i1 %237 to i32
  call void @assert_ft(i32 %238, i32 1)
  %239 = icmp eq ptr %235, null
  %.not47 = icmp eq ptr %236, null
  %240 = icmp eq i1 %.not47, %239
  %241 = zext i1 %240 to i32
  call void @assert_ft(i32 %241, i32 1)
  %242 = select i1 %.not47, i32 45, i32 46
  %243 = xor i32 44, %242
  br i1 %.not47, label %244, label %257

244:                                              ; preds = %231
  %Diff_phi171 = phi i32 [ %243, %231 ]
  %Dest_phi172 = phi i32 [ %232, %231 ]
  %245 = xor i32 %Diff_phi171, %Dest_phi172
  %246 = icmp eq i32 %245, 45
  %247 = zext i1 %246 to i32
  call void @assert_cfg_ft(i32 %247, i32 %245, i32 0)
  %248 = ptrtoint ptr %35 to i64
  %249 = ptrtoint ptr %.067 to i64
  %250 = icmp eq i64 %249, %248
  %251 = zext i1 %250 to i32
  call void @assert_ft(i32 %251, i32 1)
  %252 = trunc i64 %248 to i32
  %253 = trunc i64 %249 to i32
  %254 = icmp eq i32 %253, %252
  %255 = zext i1 %254 to i32
  call void @assert_ft(i32 %255, i32 1)
  %256 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %253)
  tail call void @exit(i32 noundef 0) #14
  unreachable

257:                                              ; preds = %231
  %Diff_phi173 = phi i32 [ %243, %231 ]
  %Dest_phi174 = phi i32 [ %232, %231 ]
  %258 = xor i32 %Diff_phi173, %Dest_phi174
  %259 = icmp eq i32 %258, 46
  %260 = zext i1 %259 to i32
  call void @assert_cfg_ft(i32 %260, i32 %258, i32 0)
  %261 = getelementptr inbounds ptr, ptr %235, i64 %60
  %262 = getelementptr inbounds ptr, ptr %236, i64 %indvars.iv82
  %263 = icmp eq ptr %262, %261
  %264 = zext i1 %263 to i32
  call void @assert_ft(i32 %264, i32 1)
  store ptr %126, ptr %262, align 8
  %265 = select i1 %215, i32 47, i32 48
  %266 = xor i32 46, %265
  br i1 %215, label %267, label %272

267:                                              ; preds = %257
  %Diff_phi175 = phi i32 [ %266, %257 ]
  %Dest_phi176 = phi i32 [ %258, %257 ]
  %268 = xor i32 %Diff_phi175, %Dest_phi176
  %269 = icmp eq i32 %268, 47
  %270 = zext i1 %269 to i32
  call void @assert_cfg_ft(i32 %270, i32 %268, i32 0)
  %271 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %211)
  br label %272

272:                                              ; preds = %267, %257
  %Diff_phi177 = phi i32 [ 31, %267 ], [ %266, %257 ]
  %Dest_phi178 = phi i32 [ %268, %267 ], [ %258, %257 ]
  %273 = xor i32 %Diff_phi177, %Dest_phi178
  %274 = icmp eq i32 %273, 48
  %275 = zext i1 %274 to i32
  call void @assert_cfg_ft(i32 %275, i32 %273, i32 0)
  %276 = getelementptr inbounds %struct.node_t, ptr %125, i64 0, i32 5
  %277 = getelementptr inbounds %struct.node_t, ptr %126, i64 0, i32 5
  %278 = icmp eq ptr %277, %276
  %279 = zext i1 %278 to i32
  call void @assert_ft(i32 %279, i32 1)
  %280 = tail call i32 @ATOMICINC(ptr noundef nonnull %277)
  %281 = add nuw nsw i64 %60, 1
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %282 = icmp eq i64 %indvars.iv.next83, %281
  %283 = zext i1 %282 to i32
  call void @assert_ft(i32 %283, i32 1)
  %284 = icmp eq i64 %281, %31
  %exitcond85.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count84
  %285 = icmp eq i1 %exitcond85.not, %284
  %286 = zext i1 %285 to i32
  call void @assert_ft(i32 %286, i32 1)
  %287 = select i1 %exitcond85.not, i32 49, i32 31
  %288 = xor i32 48, %287
  br i1 %exitcond85.not, label %._crit_edge65, label %.preheader48

._crit_edge65:                                    ; preds = %272, %.preheader49
  %Diff_phi179 = phi i32 [ %288, %272 ], [ %55, %.preheader49 ]
  %Dest_phi180 = phi i32 [ %273, %272 ], [ %51, %.preheader49 ]
  %289 = xor i32 %Diff_phi179, %Dest_phi180
  %290 = icmp eq i32 %289, 49
  %291 = zext i1 %290 to i32
  call void @assert_cfg_ft(i32 %291, i32 %289, i32 0)
  %292 = getelementptr inbounds %struct.node_t, ptr %35, i64 0, i32 1
  %293 = getelementptr inbounds %struct.node_t, ptr %.067, i64 0, i32 1
  %294 = icmp eq ptr %293, %292
  %295 = zext i1 %294 to i32
  call void @assert_ft(i32 %295, i32 1)
  %296 = load ptr, ptr %292, align 8
  %297 = load ptr, ptr %293, align 8
  %298 = icmp eq ptr %297, %296
  %299 = zext i1 %298 to i32
  call void @assert_ft(i32 %299, i32 1)
  %300 = icmp eq ptr %296, null
  %.not = icmp eq ptr %297, null
  %301 = icmp eq i1 %.not, %300
  %302 = zext i1 %301 to i32
  call void @assert_ft(i32 %302, i32 1)
  %303 = select i1 %.not, i32 50, i32 28
  %304 = xor i32 49, %303
  br i1 %.not, label %._crit_edge70, label %34

._crit_edge70:                                    ; preds = %._crit_edge65, %6
  %Diff_phi181 = phi i32 [ %304, %._crit_edge65 ], [ %11, %6 ]
  %Dest_phi182 = phi i32 [ %289, %._crit_edge65 ], [ 26, %6 ]
  %305 = xor i32 %Diff_phi181, %Dest_phi182
  %306 = icmp eq i32 %305, 50
  %307 = zext i1 %306 to i32
  call void @assert_cfg_ft(i32 %307, i32 %305, i32 0)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @update_from_coeffs(ptr noundef %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  %.not9 = icmp eq ptr %0, null
  %3 = icmp eq i1 %.not9, %2
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = select i1 %.not9, i32 55, i32 52
  %6 = xor i32 51, %5
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %31, %1
  %Diff_phi = phi i32 [ %6, %1 ], [ %69, %31 ]
  %Dest_phi = phi i32 [ 51, %1 ], [ %32, %31 ]
  %7 = phi ptr [ %61, %31 ], [ %0, %1 ]
  %.010 = phi ptr [ %62, %31 ], [ %0, %1 ]
  %8 = xor i32 %Diff_phi, %Dest_phi
  %9 = icmp eq i32 %8, 52
  %10 = zext i1 %9 to i32
  call void @assert_cfg_ft(i32 %10, i32 %8, i32 0)
  %11 = icmp eq ptr %.010, %7
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = getelementptr inbounds %struct.node_t, ptr %7, i64 0, i32 5
  %14 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 5
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = load i32, ptr %13, align 8
  %18 = load i32, ptr %14, align 8
  %19 = icmp eq i32 %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = icmp slt i32 %17, 1
  %22 = icmp slt i32 %18, 1
  %23 = icmp eq i1 %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = select i1 %22, i32 53, i32 54
  %26 = xor i32 52, %25
  br i1 %22, label %27, label %31

27:                                               ; preds = %.lr.ph
  %Diff_phi11 = phi i32 [ %26, %.lr.ph ]
  %Dest_phi12 = phi i32 [ %8, %.lr.ph ]
  %28 = xor i32 %Diff_phi11, %Dest_phi12
  %29 = icmp eq i32 %28, 53
  %30 = zext i1 %29 to i32
  call void @assert_cfg_ft(i32 %30, i32 %28, i32 0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %31

31:                                               ; preds = %27, %.lr.ph
  %Diff_phi13 = phi i32 [ 3, %27 ], [ %26, %.lr.ph ]
  %Dest_phi14 = phi i32 [ %28, %27 ], [ %8, %.lr.ph ]
  %32 = xor i32 %Diff_phi13, %Dest_phi14
  %33 = icmp eq i32 %32, 54
  %34 = zext i1 %33 to i32
  call void @assert_cfg_ft(i32 %34, i32 %32, i32 0)
  %35 = sext i32 %17 to i64
  %36 = sext i32 %18 to i64
  %37 = icmp eq i64 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = shl nsw i64 %35, 3
  %40 = shl nsw i64 %36, 3
  %41 = icmp eq i64 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = tail call noalias ptr @malloc(i64 noundef %40) #13
  %44 = getelementptr inbounds %struct.node_t, ptr %7, i64 0, i32 3
  %45 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 3
  %46 = icmp eq ptr %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  store ptr %43, ptr %45, align 8
  %48 = tail call noalias ptr @malloc(i64 noundef %40) #13
  %49 = getelementptr inbounds %struct.node_t, ptr %7, i64 0, i32 4
  %50 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 4
  %51 = icmp eq ptr %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  store ptr %48, ptr %50, align 8
  %53 = getelementptr inbounds %struct.node_t, ptr %7, i64 0, i32 6
  %54 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 6
  %55 = icmp eq ptr %54, %53
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  store i32 0, ptr %54, align 4
  %57 = getelementptr inbounds %struct.node_t, ptr %7, i64 0, i32 1
  %58 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 1
  %59 = icmp eq ptr %58, %57
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = load ptr, ptr %57, align 8
  %62 = load ptr, ptr %58, align 8
  %63 = icmp eq ptr %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = icmp eq ptr %61, null
  %.not = icmp eq ptr %62, null
  %66 = icmp eq i1 %.not, %65
  %67 = zext i1 %66 to i32
  call void @assert_ft(i32 %67, i32 1)
  %68 = select i1 %.not, i32 55, i32 52
  %69 = xor i32 54, %68
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %31, %1
  %Diff_phi15 = phi i32 [ %69, %31 ], [ %6, %1 ]
  %Dest_phi16 = phi i32 [ %32, %31 ], [ 51, %1 ]
  %70 = xor i32 %Diff_phi15, %Dest_phi16
  %71 = icmp eq i32 %70, 55
  %72 = zext i1 %71 to i32
  call void @assert_cfg_ft(i32 %72, i32 %70, i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_from_fields(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %.not28 = icmp eq ptr %0, null
  %4 = icmp eq i1 %.not28, %3
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %.not28, i32 66, i32 57
  %7 = xor i32 56, %6
  br i1 %.not28, label %._crit_edge30, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %2
  %Diff_phi = phi i32 [ %7, %2 ]
  %Dest_phi = phi i32 [ 56, %2 ]
  %8 = xor i32 %Diff_phi, %Dest_phi
  %9 = icmp eq i32 %8, 57
  %10 = zext i1 %9 to i32
  call void @assert_cfg_ft(i32 %10, i32 %8, i32 0)
  %11 = icmp sgt i32 %1, 0
  %12 = icmp sgt i32 %1, 0
  %13 = icmp eq i1 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = zext i32 %1 to i64
  %wide.trip.count = zext i32 %1 to i64
  %16 = icmp eq i64 %wide.trip.count, %15
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %Diff_phi31 = phi i32 [ 3, %.preheader.lr.ph ], [ %163, %._crit_edge ]
  %Dest_phi32 = phi i32 [ %8, %.preheader.lr.ph ], [ %148, %._crit_edge ]
  %18 = phi ptr [ %0, %.preheader.lr.ph ], [ %155, %._crit_edge ]
  %.029 = phi ptr [ %0, %.preheader.lr.ph ], [ %156, %._crit_edge ]
  %19 = xor i32 %Diff_phi31, %Dest_phi32
  %20 = icmp eq i32 %19, 58
  %21 = zext i1 %20 to i32
  call void @assert_cfg_ft(i32 %21, i32 %19, i32 0)
  %22 = icmp eq ptr %.029, %18
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = select i1 %12, i32 59, i32 65
  %25 = xor i32 58, %24
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %Diff_phi33 = phi i32 [ %25, %.preheader ]
  %Dest_phi34 = phi i32 [ %19, %.preheader ]
  %26 = xor i32 %Diff_phi33, %Dest_phi34
  %27 = icmp eq i32 %26, 59
  %28 = zext i1 %27 to i32
  call void @assert_cfg_ft(i32 %28, i32 %26, i32 0)
  %29 = getelementptr inbounds %struct.node_t, ptr %18, i64 0, i32 2
  %30 = getelementptr inbounds %struct.node_t, ptr %.029, i64 0, i32 2
  %31 = icmp eq ptr %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  br label %33

33:                                               ; preds = %112, %.lr.ph
  %Diff_phi35 = phi i32 [ 7, %.lr.ph ], [ %147, %112 ]
  %Dest_phi36 = phi i32 [ %26, %.lr.ph ], [ %114, %112 ]
  %34 = phi i64 [ 0, %.lr.ph ], [ %140, %112 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %112 ]
  %35 = xor i32 %Diff_phi35, %Dest_phi36
  %36 = icmp eq i32 %35, 60
  %37 = zext i1 %36 to i32
  call void @assert_cfg_ft(i32 %37, i32 %35, i32 0)
  %38 = icmp eq i64 %indvars.iv, %34
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = load ptr, ptr %29, align 8
  %41 = load ptr, ptr %30, align 8
  %42 = icmp eq ptr %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = getelementptr inbounds ptr, ptr %40, i64 %34
  %45 = getelementptr inbounds ptr, ptr %41, i64 %indvars.iv
  %46 = icmp eq ptr %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = load ptr, ptr %44, align 8
  %49 = load ptr, ptr %45, align 8
  %50 = icmp eq ptr %49, %48
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = load ptr, ptr %18, align 8
  %53 = load ptr, ptr %.029, align 8
  %54 = icmp eq ptr %53, %52
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = icmp eq ptr %48, null
  %.not25 = icmp eq ptr %49, null
  %57 = icmp eq i1 %.not25, %56
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = select i1 %.not25, i32 61, i32 62
  %60 = xor i32 60, %59
  br i1 %.not25, label %61, label %65

61:                                               ; preds = %33
  %Diff_phi37 = phi i32 [ %60, %33 ]
  %Dest_phi38 = phi i32 [ %35, %33 ]
  %62 = xor i32 %Diff_phi37, %Dest_phi38
  %63 = icmp eq i32 %62, 61
  %64 = zext i1 %63 to i32
  call void @assert_cfg_ft(i32 %64, i32 %62, i32 0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %65

65:                                               ; preds = %61, %33
  %Diff_phi39 = phi i32 [ 3, %61 ], [ %60, %33 ]
  %Dest_phi40 = phi i32 [ %62, %61 ], [ %35, %33 ]
  %66 = xor i32 %Diff_phi39, %Dest_phi40
  %67 = icmp eq i32 %66, 62
  %68 = zext i1 %67 to i32
  call void @assert_cfg_ft(i32 %68, i32 %66, i32 0)
  %69 = getelementptr inbounds %struct.node_t, ptr %48, i64 0, i32 6
  %70 = getelementptr inbounds %struct.node_t, ptr %49, i64 0, i32 6
  %71 = icmp eq ptr %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = tail call i32 @ATOMICINC(ptr noundef nonnull %70)
  %74 = getelementptr inbounds %struct.node_t, ptr %48, i64 0, i32 3
  %75 = getelementptr inbounds %struct.node_t, ptr %49, i64 0, i32 3
  %76 = icmp eq ptr %75, %74
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = load ptr, ptr %74, align 8
  %79 = load ptr, ptr %75, align 8
  %80 = icmp eq ptr %79, %78
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  %82 = icmp eq ptr %78, null
  %.not26 = icmp eq ptr %79, null
  %83 = icmp eq i1 %.not26, %82
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = select i1 %.not26, i32 63, i32 64
  %86 = xor i32 62, %85
  br i1 %.not26, label %87, label %112

87:                                               ; preds = %65
  %Diff_phi41 = phi i32 [ %86, %65 ]
  %Dest_phi42 = phi i32 [ %66, %65 ]
  %88 = xor i32 %Diff_phi41, %Dest_phi42
  %89 = icmp eq i32 %88, 63
  %90 = zext i1 %89 to i32
  call void @assert_cfg_ft(i32 %90, i32 %88, i32 0)
  %91 = getelementptr inbounds %struct.node_t, ptr %48, i64 0, i32 5
  %92 = getelementptr inbounds %struct.node_t, ptr %49, i64 0, i32 5
  %93 = icmp eq ptr %92, %91
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  %95 = load i32, ptr %91, align 8
  %96 = load i32, ptr %92, align 8
  %97 = icmp eq i32 %96, %95
  %98 = zext i1 %97 to i32
  call void @assert_ft(i32 %98, i32 1)
  %99 = ptrtoint ptr %48 to i64
  %100 = ptrtoint ptr %49 to i64
  %101 = icmp eq i64 %100, %99
  %102 = zext i1 %101 to i32
  call void @assert_ft(i32 %102, i32 1)
  %103 = trunc i64 %99 to i32
  %104 = trunc i64 %100 to i32
  %105 = icmp eq i32 %104, %103
  %106 = zext i1 %105 to i32
  call void @assert_ft(i32 %106, i32 1)
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %104, i32 noundef 0, i32 noundef %96)
  %108 = load ptr, ptr %74, align 8
  %109 = load ptr, ptr %75, align 8
  %110 = icmp eq ptr %109, %108
  %111 = zext i1 %110 to i32
  call void @assert_ft(i32 %111, i32 1)
  br label %112

112:                                              ; preds = %87, %65
  %Diff_phi43 = phi i32 [ 127, %87 ], [ %86, %65 ]
  %Dest_phi44 = phi i32 [ %88, %87 ], [ %66, %65 ]
  %113 = phi ptr [ %78, %65 ], [ %108, %87 ]
  %.022 = phi ptr [ %79, %65 ], [ %109, %87 ]
  %114 = xor i32 %Diff_phi43, %Dest_phi44
  %115 = icmp eq i32 %114, 64
  %116 = zext i1 %115 to i32
  call void @assert_cfg_ft(i32 %116, i32 %114, i32 0)
  %117 = icmp eq ptr %.022, %113
  %118 = zext i1 %117 to i32
  call void @assert_ft(i32 %118, i32 1)
  %119 = sext i32 %73 to i64
  %120 = sext i32 %73 to i64
  %121 = icmp eq i64 %120, %119
  %122 = zext i1 %121 to i32
  call void @assert_ft(i32 %122, i32 1)
  %123 = getelementptr inbounds ptr, ptr %113, i64 %119
  %124 = getelementptr inbounds ptr, ptr %.022, i64 %120
  %125 = icmp eq ptr %124, %123
  %126 = zext i1 %125 to i32
  call void @assert_ft(i32 %126, i32 1)
  store ptr %53, ptr %124, align 8
  %127 = tail call double @gen_uniform_double()
  %128 = getelementptr inbounds %struct.node_t, ptr %48, i64 0, i32 4
  %129 = getelementptr inbounds %struct.node_t, ptr %49, i64 0, i32 4
  %130 = icmp eq ptr %129, %128
  %131 = zext i1 %130 to i32
  call void @assert_ft(i32 %131, i32 1)
  %132 = load ptr, ptr %128, align 8
  %133 = load ptr, ptr %129, align 8
  %134 = icmp eq ptr %133, %132
  %135 = zext i1 %134 to i32
  call void @assert_ft(i32 %135, i32 1)
  %136 = getelementptr inbounds double, ptr %132, i64 %119
  %137 = getelementptr inbounds double, ptr %133, i64 %120
  %138 = icmp eq ptr %137, %136
  %139 = zext i1 %138 to i32
  call void @assert_ft(i32 %139, i32 1)
  store double %127, ptr %137, align 8
  %140 = add nuw nsw i64 %34, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %141 = icmp eq i64 %indvars.iv.next, %140
  %142 = zext i1 %141 to i32
  call void @assert_ft(i32 %142, i32 1)
  %143 = icmp eq i64 %140, %15
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %144 = icmp eq i1 %exitcond.not, %143
  %145 = zext i1 %144 to i32
  call void @assert_ft(i32 %145, i32 1)
  %146 = select i1 %exitcond.not, i32 65, i32 60
  %147 = xor i32 64, %146
  br i1 %exitcond.not, label %._crit_edge, label %33

._crit_edge:                                      ; preds = %112, %.preheader
  %Diff_phi45 = phi i32 [ %147, %112 ], [ %25, %.preheader ]
  %Dest_phi46 = phi i32 [ %114, %112 ], [ %19, %.preheader ]
  %148 = xor i32 %Diff_phi45, %Dest_phi46
  %149 = icmp eq i32 %148, 65
  %150 = zext i1 %149 to i32
  call void @assert_cfg_ft(i32 %150, i32 %148, i32 0)
  %151 = getelementptr inbounds %struct.node_t, ptr %18, i64 0, i32 1
  %152 = getelementptr inbounds %struct.node_t, ptr %.029, i64 0, i32 1
  %153 = icmp eq ptr %152, %151
  %154 = zext i1 %153 to i32
  call void @assert_ft(i32 %154, i32 1)
  %155 = load ptr, ptr %151, align 8
  %156 = load ptr, ptr %152, align 8
  %157 = icmp eq ptr %156, %155
  %158 = zext i1 %157 to i32
  call void @assert_ft(i32 %158, i32 1)
  %159 = icmp eq ptr %155, null
  %.not = icmp eq ptr %156, null
  %160 = icmp eq i1 %.not, %159
  %161 = zext i1 %160 to i32
  call void @assert_ft(i32 %161, i32 1)
  %162 = select i1 %.not, i32 66, i32 58
  %163 = xor i32 65, %162
  br i1 %.not, label %._crit_edge30, label %.preheader

._crit_edge30:                                    ; preds = %._crit_edge, %2
  %Diff_phi47 = phi i32 [ %163, %._crit_edge ], [ %7, %2 ]
  %Dest_phi48 = phi i32 [ %148, %._crit_edge ], [ 56, %2 ]
  %164 = xor i32 %Diff_phi47, %Dest_phi48
  %165 = icmp eq i32 %164, 66
  %166 = zext i1 %165 to i32
  call void @assert_cfg_ft(i32 %166, i32 %164, i32 0)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local void @localize_local(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  %.not12 = icmp eq ptr %0, null
  %3 = icmp eq i1 %.not12, %2
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = select i1 %.not12, i32 69, i32 68
  %6 = xor i32 67, %5
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %1
  %Diff_phi = phi i32 [ %6, %1 ], [ %25, %.lr.ph ]
  %Dest_phi = phi i32 [ 67, %1 ], [ %8, %.lr.ph ]
  %7 = phi ptr [ %17, %.lr.ph ], [ %0, %1 ]
  %.013 = phi ptr [ %18, %.lr.ph ], [ %0, %1 ]
  %8 = xor i32 %Diff_phi, %Dest_phi
  %9 = icmp eq i32 %8, 68
  %10 = zext i1 %9 to i32
  call void @assert_cfg_ft(i32 %10, i32 %8, i32 0)
  %11 = icmp eq ptr %.013, %7
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = getelementptr inbounds %struct.node_t, ptr %7, i64 0, i32 1
  %14 = getelementptr inbounds %struct.node_t, ptr %.013, i64 0, i32 1
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = load ptr, ptr %13, align 8
  %18 = load ptr, ptr %14, align 8
  %19 = icmp eq ptr %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = icmp eq ptr %17, null
  %.not = icmp eq ptr %18, null
  %22 = icmp eq i1 %.not, %21
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = select i1 %.not, i32 69, i32 68
  %25 = xor i32 68, %24
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %1
  %Diff_phi14 = phi i32 [ %25, %.lr.ph ], [ %6, %1 ]
  %Dest_phi15 = phi i32 [ %8, %.lr.ph ], [ 67, %1 ]
  %26 = xor i32 %Diff_phi14, %Dest_phi15
  %27 = icmp eq i32 %26, 69
  %28 = zext i1 %27 to i32
  call void @assert_cfg_ft(i32 %28, i32 %26, i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_tables(ptr nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = mul nsw i32 %1, 793
  %4 = mul nsw i32 %1, 793
  %5 = icmp eq i32 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  tail call void @init_random(i32 noundef %4)
  %7 = load i32, ptr @n_nodes, align 4
  %8 = load i32, ptr @n_nodes, align 4
  %9 = icmp eq i32 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = sdiv i32 %7, 64
  %12 = sdiv i32 %8, 64
  %13 = icmp eq i32 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = sext i32 %11 to i64
  %16 = sext i32 %12 to i64
  %17 = icmp eq i64 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = shl nsw i64 %15, 3
  %20 = shl nsw i64 %16, 3
  %21 = icmp eq i64 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = tail call noalias ptr @malloc(i64 noundef %20) #13
  %24 = tail call ptr @make_table(i32 noundef %12, i32 poison)
  %25 = load i32, ptr @n_nodes, align 4
  %26 = load i32, ptr @n_nodes, align 4
  %27 = icmp eq i32 %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = sdiv i32 %25, 64
  %30 = sdiv i32 %26, 64
  %31 = icmp eq i32 %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  tail call void @fill_table(ptr noundef %24, ptr noundef %23, i32 noundef %30, i32 poison)
  %33 = load i32, ptr @n_nodes, align 4
  %34 = load i32, ptr @n_nodes, align 4
  %35 = icmp eq i32 %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = sdiv i32 %33, 64
  %38 = sdiv i32 %34, 64
  %39 = icmp eq i32 %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = sext i32 %37 to i64
  %42 = sext i32 %38 to i64
  %43 = icmp eq i64 %42, %41
  %44 = zext i1 %43 to i32
  call void @assert_ft(i32 %44, i32 1)
  %45 = shl nsw i64 %41, 3
  %46 = shl nsw i64 %42, 3
  %47 = icmp eq i64 %46, %45
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = tail call noalias ptr @malloc(i64 noundef %46) #13
  %50 = tail call ptr @make_table(i32 noundef %38, i32 poison)
  %51 = load i32, ptr @n_nodes, align 4
  %52 = load i32, ptr @n_nodes, align 4
  %53 = icmp eq i32 %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = sdiv i32 %51, 64
  %56 = sdiv i32 %52, 64
  %57 = icmp eq i32 %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  tail call void @fill_table(ptr noundef %50, ptr noundef %49, i32 noundef %56, i32 poison)
  %59 = sext i32 %1 to i64
  %60 = sext i32 %1 to i64
  %61 = icmp eq i64 %60, %59
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %59
  %64 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %60
  %65 = icmp eq ptr %64, %63
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  store ptr %50, ptr %64, align 8
  %67 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %59
  %68 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %60
  %69 = icmp eq ptr %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  store ptr %24, ptr %68, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_all_neighbors(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = mul nsw i32 %1, 39
  %4 = mul nsw i32 %1, 39
  %5 = icmp eq i32 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  tail call void @init_random(i32 noundef %4)
  %7 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1
  %9 = icmp eq ptr %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = sext i32 %1 to i64
  %12 = sext i32 %1 to i64
  %13 = icmp eq i64 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %11
  %16 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %12
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = load ptr, ptr %15, align 8
  %20 = load ptr, ptr %16, align 8
  %21 = icmp eq ptr %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = load ptr, ptr %19, align 8
  %24 = load ptr, ptr %20, align 8
  %25 = icmp eq ptr %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = load i32, ptr @n_nodes, align 4
  %28 = load i32, ptr @n_nodes, align 4
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = sdiv i32 %27, 64
  %32 = sdiv i32 %28, 64
  %33 = icmp eq i32 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = load i32, ptr @d_nodes, align 4
  %36 = load i32, ptr @d_nodes, align 4
  %37 = icmp eq i32 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = load i32, ptr @local_p, align 4
  %40 = load i32, ptr @local_p, align 4
  %41 = icmp eq i32 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  tail call void @make_neighbors(ptr noundef %24, ptr noundef %0, i32 noundef %32, i32 noundef %36, i32 noundef %40, i32 noundef %1)
  %43 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %11
  %44 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %12
  %45 = icmp eq ptr %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = load ptr, ptr %43, align 8
  %48 = load ptr, ptr %44, align 8
  %49 = icmp eq ptr %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = load ptr, ptr %47, align 8
  %52 = load ptr, ptr %48, align 8
  %53 = icmp eq ptr %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = load i32, ptr @n_nodes, align 4
  %56 = load i32, ptr @n_nodes, align 4
  %57 = icmp eq i32 %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = sdiv i32 %55, 64
  %60 = sdiv i32 %56, 64
  %61 = icmp eq i32 %60, %59
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = load i32, ptr @d_nodes, align 4
  %64 = load i32, ptr @d_nodes, align 4
  %65 = icmp eq i32 %64, %63
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = load i32, ptr @local_p, align 4
  %68 = load i32, ptr @local_p, align 4
  %69 = icmp eq i32 %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  tail call void @make_neighbors(ptr noundef %52, ptr noundef nonnull %8, i32 noundef %60, i32 noundef %64, i32 noundef %68, i32 noundef %1)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @update_all_from_coeffs(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %1 to i64
  %5 = icmp eq i64 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %3
  %8 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %4
  %9 = icmp eq ptr %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = icmp eq ptr %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = load ptr, ptr %11, align 8
  %16 = load ptr, ptr %12, align 8
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  tail call void @update_from_coeffs(ptr noundef %16)
  %19 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %3
  %20 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %4
  %21 = icmp eq ptr %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = load ptr, ptr %19, align 8
  %24 = load ptr, ptr %20, align 8
  %25 = icmp eq ptr %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = load ptr, ptr %23, align 8
  %28 = load ptr, ptr %24, align 8
  %29 = icmp eq ptr %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  tail call void @update_from_coeffs(ptr noundef %28)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_all_from_fields(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = mul nsw i32 %1, 17
  %4 = mul nsw i32 %1, 17
  %5 = icmp eq i32 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  tail call void @init_random(i32 noundef %4)
  %7 = sext i32 %1 to i64
  %8 = sext i32 %1 to i64
  %9 = icmp eq i64 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %7
  %12 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %8
  %13 = icmp eq ptr %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = load ptr, ptr %11, align 8
  %16 = load ptr, ptr %12, align 8
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = load ptr, ptr %15, align 8
  %20 = load ptr, ptr %16, align 8
  %21 = icmp eq ptr %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = load i32, ptr @d_nodes, align 4
  %24 = load i32, ptr @d_nodes, align 4
  %25 = icmp eq i32 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  tail call void @fill_from_fields(ptr noundef %20, i32 noundef %24)
  %27 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %7
  %28 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %8
  %29 = icmp eq ptr %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = load ptr, ptr %27, align 8
  %32 = load ptr, ptr %28, align 8
  %33 = icmp eq ptr %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = load ptr, ptr %31, align 8
  %36 = load ptr, ptr %32, align 8
  %37 = icmp eq ptr %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = load i32, ptr @d_nodes, align 4
  %40 = load i32, ptr @d_nodes, align 4
  %41 = icmp eq i32 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  tail call void @fill_from_fields(ptr noundef %36, i32 noundef %40)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local void @localize(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %1 to i64
  %5 = icmp eq i64 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %3
  %8 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %4
  %9 = icmp eq ptr %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = icmp eq ptr %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = load ptr, ptr %11, align 8
  %16 = load ptr, ptr %12, align 8
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  tail call void @localize_local(ptr noundef %16)
  %19 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %3
  %20 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %4
  %21 = icmp eq ptr %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = load ptr, ptr %19, align 8
  %24 = load ptr, ptr %20, align 8
  %25 = icmp eq ptr %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = load ptr, ptr %23, align 8
  %28 = load ptr, ptr %24, align 8
  %29 = icmp eq ptr %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  tail call void @localize_local(ptr noundef %28)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_all(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp sgt i32 %2, 1
  %7 = icmp sgt i32 %2, 1
  %8 = icmp eq i1 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = select i1 %7, i32 76, i32 77
  %11 = xor i32 75, %10
  br i1 %7, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %tailrecurse, %5
  %Diff_phi = phi i32 [ %11, %5 ], [ %31, %tailrecurse ]
  %Dest_phi = phi i32 [ 75, %5 ], [ %13, %tailrecurse ]
  %12 = phi i32 [ %18, %tailrecurse ], [ %2, %5 ]
  %.tr1720 = phi i32 [ %19, %tailrecurse ], [ %2, %5 ]
  %13 = xor i32 %Diff_phi, %Dest_phi
  %14 = icmp eq i32 %13, 76
  %15 = zext i1 %14 to i32
  call void @assert_cfg_ft(i32 %15, i32 %13, i32 0)
  %16 = icmp eq i32 %.tr1720, %12
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = lshr i32 %12, 1
  %19 = lshr i32 %.tr1720, 1
  %20 = icmp eq i32 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = add nsw i32 %18, %1
  %23 = add nsw i32 %19, %1
  %24 = icmp eq i32 %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  tail call void @do_all(ptr noundef %0, i32 noundef %23, i32 noundef %19, ptr noundef %3, i32 noundef %4)
  %26 = icmp ugt i32 %12, 3
  %27 = icmp ugt i32 %.tr1720, 3
  %28 = icmp eq i1 %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = select i1 %27, i32 76, i32 77
  %31 = xor i32 76, %30
  br i1 %27, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %5
  %Diff_phi21 = phi i32 [ %31, %tailrecurse ], [ %11, %5 ]
  %Dest_phi22 = phi i32 [ %13, %tailrecurse ], [ 75, %5 ]
  %32 = xor i32 %Diff_phi21, %Dest_phi22
  %33 = icmp eq i32 %32, 77
  %34 = zext i1 %33 to i32
  call void @assert_cfg_ft(i32 %34, i32 %32, i32 0)
  tail call void %3(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @initialize_graph() local_unnamed_addr #2 {
  %1 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #13
  %2 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #13
  %3 = load i32, ptr @__NumNodes, align 4
  %4 = load i32, ptr @__NumNodes, align 4
  %5 = icmp eq i32 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = sdiv i32 64, %3
  %8 = sdiv i32 64, %4
  %9 = icmp eq i32 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @make_tables, i32 noundef %8)
  %puts54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @make_all_neighbors, i32 noundef %8)
  %puts55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @update_all_from_coeffs, i32 noundef %8)
  %puts56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @fill_all_from_fields, i32 noundef %8)
  %puts57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @localize, i32 noundef %8)
  %11 = load i32, ptr @__NumNodes, align 4
  %12 = load i32, ptr @__NumNodes, align 4
  %13 = icmp eq i32 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %puts58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  %15 = load i32, ptr @__NumNodes, align 4
  %16 = load i32, ptr @__NumNodes, align 4
  %17 = icmp eq i32 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = icmp sgt i32 %15, 0
  %20 = icmp sgt i32 %16, 0
  %21 = icmp eq i1 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = select i1 %20, i32 79, i32 83
  %24 = xor i32 78, %23
  br i1 %20, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %0
  %Diff_phi = phi i32 [ %24, %0 ]
  %Dest_phi = phi i32 [ 78, %0 ]
  %25 = xor i32 %Diff_phi, %Dest_phi
  %26 = icmp eq i32 %25, 79
  %27 = zext i1 %26 to i32
  call void @assert_cfg_ft(i32 %27, i32 %25, i32 0)
  %28 = sdiv i32 64, %11
  %29 = sdiv i32 64, %12
  %30 = icmp eq i32 %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = icmp sgt i32 %28, 1
  %33 = icmp sgt i32 %29, 1
  %34 = icmp eq i1 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = load i32, ptr @n_nodes, align 4
  %37 = load i32, ptr @n_nodes, align 4
  %38 = icmp eq i32 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = sdiv i32 %36, 64
  %41 = sdiv i32 %37, 64
  %42 = icmp eq i32 %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = add nsw i32 %40, -1
  %45 = add nsw i32 %41, -1
  %46 = icmp eq i32 %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = sext i32 %44 to i64
  %49 = sext i32 %45 to i64
  %50 = icmp eq i64 %49, %48
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = sext i32 %28 to i64
  %53 = sext i32 %29 to i64
  %54 = icmp eq i64 %53, %52
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = zext i32 %15 to i64
  %wide.trip.count66 = zext i32 %16 to i64
  %57 = icmp eq i64 %wide.trip.count66, %56
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = zext i32 %28 to i64
  %wide.trip.count = zext i32 %29 to i64
  %60 = icmp eq i64 %wide.trip.count, %59
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  br label %62

62:                                               ; preds = %._crit_edge, %.lr.ph62
  %Diff_phi68 = phi i32 [ 31, %.lr.ph62 ], [ %203, %._crit_edge ]
  %Dest_phi69 = phi i32 [ %25, %.lr.ph62 ], [ %193, %._crit_edge ]
  %63 = phi i64 [ 0, %.lr.ph62 ], [ %196, %._crit_edge ]
  %indvars.iv64 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next65, %._crit_edge ]
  %64 = xor i32 %Diff_phi68, %Dest_phi69
  %65 = icmp eq i32 %64, 80
  %66 = zext i1 %65 to i32
  call void @assert_cfg_ft(i32 %66, i32 %64, i32 0)
  %67 = icmp eq i64 %indvars.iv64, %63
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = mul nsw i64 %63, %52
  %70 = mul nsw i64 %indvars.iv64, %53
  %71 = icmp eq i64 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %69
  %74 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %70
  %75 = icmp eq ptr %74, %73
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  %77 = load ptr, ptr %73, align 8
  %78 = load ptr, ptr %74, align 8
  %79 = icmp eq ptr %78, %77
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = load ptr, ptr %77, align 8
  %82 = load ptr, ptr %78, align 8
  %83 = icmp eq ptr %82, %81
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %63
  %86 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %indvars.iv64
  %87 = icmp eq ptr %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  store ptr %82, ptr %86, align 8
  %89 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %69
  %90 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %70
  %91 = icmp eq ptr %90, %89
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = load ptr, ptr %89, align 8
  %94 = load ptr, ptr %90, align 8
  %95 = icmp eq ptr %94, %93
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = load ptr, ptr %93, align 8
  %98 = load ptr, ptr %94, align 8
  %99 = icmp eq ptr %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %63
  %102 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %indvars.iv64
  %103 = icmp eq ptr %102, %101
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  store ptr %98, ptr %102, align 8
  %105 = select i1 %33, i32 81, i32 82
  %106 = xor i32 80, %105
  br i1 %33, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %62
  %Diff_phi70 = phi i32 [ %106, %62 ], [ %192, %.lr.ph ]
  %Dest_phi71 = phi i32 [ %64, %62 ], [ %108, %.lr.ph ]
  %107 = phi i64 [ %185, %.lr.ph ], [ 1, %62 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %62 ]
  %108 = xor i32 %Diff_phi70, %Dest_phi71
  %109 = icmp eq i32 %108, 81
  %110 = zext i1 %109 to i32
  call void @assert_cfg_ft(i32 %110, i32 %108, i32 0)
  %111 = icmp eq i64 %indvars.iv, %107
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  %113 = add nsw i64 %107, %69
  %114 = add nsw i64 %indvars.iv, %70
  %115 = icmp eq i64 %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = add nsw i64 %113, -1
  %118 = add nsw i64 %114, -1
  %119 = icmp eq i64 %118, %117
  %120 = zext i1 %119 to i32
  call void @assert_ft(i32 %120, i32 1)
  %121 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %117
  %122 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %118
  %123 = icmp eq ptr %122, %121
  %124 = zext i1 %123 to i32
  call void @assert_ft(i32 %124, i32 1)
  %125 = load ptr, ptr %121, align 8
  %126 = load ptr, ptr %122, align 8
  %127 = icmp eq ptr %126, %125
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = getelementptr inbounds ptr, ptr %125, i64 %48
  %130 = getelementptr inbounds ptr, ptr %126, i64 %49
  %131 = icmp eq ptr %130, %129
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = load ptr, ptr %129, align 8
  %134 = load ptr, ptr %130, align 8
  %135 = icmp eq ptr %134, %133
  %136 = zext i1 %135 to i32
  call void @assert_ft(i32 %136, i32 1)
  %137 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %113
  %138 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %114
  %139 = icmp eq ptr %138, %137
  %140 = zext i1 %139 to i32
  call void @assert_ft(i32 %140, i32 1)
  %141 = load ptr, ptr %137, align 8
  %142 = load ptr, ptr %138, align 8
  %143 = icmp eq ptr %142, %141
  %144 = zext i1 %143 to i32
  call void @assert_ft(i32 %144, i32 1)
  %145 = load ptr, ptr %141, align 8
  %146 = load ptr, ptr %142, align 8
  %147 = icmp eq ptr %146, %145
  %148 = zext i1 %147 to i32
  call void @assert_ft(i32 %148, i32 1)
  %149 = getelementptr inbounds %struct.node_t, ptr %133, i64 0, i32 1
  %150 = getelementptr inbounds %struct.node_t, ptr %134, i64 0, i32 1
  %151 = icmp eq ptr %150, %149
  %152 = zext i1 %151 to i32
  call void @assert_ft(i32 %152, i32 1)
  store ptr %146, ptr %150, align 8
  %153 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %117
  %154 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %118
  %155 = icmp eq ptr %154, %153
  %156 = zext i1 %155 to i32
  call void @assert_ft(i32 %156, i32 1)
  %157 = load ptr, ptr %153, align 8
  %158 = load ptr, ptr %154, align 8
  %159 = icmp eq ptr %158, %157
  %160 = zext i1 %159 to i32
  call void @assert_ft(i32 %160, i32 1)
  %161 = getelementptr inbounds ptr, ptr %157, i64 %48
  %162 = getelementptr inbounds ptr, ptr %158, i64 %49
  %163 = icmp eq ptr %162, %161
  %164 = zext i1 %163 to i32
  call void @assert_ft(i32 %164, i32 1)
  %165 = load ptr, ptr %161, align 8
  %166 = load ptr, ptr %162, align 8
  %167 = icmp eq ptr %166, %165
  %168 = zext i1 %167 to i32
  call void @assert_ft(i32 %168, i32 1)
  %169 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %113
  %170 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %114
  %171 = icmp eq ptr %170, %169
  %172 = zext i1 %171 to i32
  call void @assert_ft(i32 %172, i32 1)
  %173 = load ptr, ptr %169, align 8
  %174 = load ptr, ptr %170, align 8
  %175 = icmp eq ptr %174, %173
  %176 = zext i1 %175 to i32
  call void @assert_ft(i32 %176, i32 1)
  %177 = load ptr, ptr %173, align 8
  %178 = load ptr, ptr %174, align 8
  %179 = icmp eq ptr %178, %177
  %180 = zext i1 %179 to i32
  call void @assert_ft(i32 %180, i32 1)
  %181 = getelementptr inbounds %struct.node_t, ptr %165, i64 0, i32 1
  %182 = getelementptr inbounds %struct.node_t, ptr %166, i64 0, i32 1
  %183 = icmp eq ptr %182, %181
  %184 = zext i1 %183 to i32
  call void @assert_ft(i32 %184, i32 1)
  store ptr %178, ptr %182, align 8
  %185 = add nuw nsw i64 %107, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %186 = icmp eq i64 %indvars.iv.next, %185
  %187 = zext i1 %186 to i32
  call void @assert_ft(i32 %187, i32 1)
  %188 = icmp eq i64 %185, %59
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %189 = icmp eq i1 %exitcond.not, %188
  %190 = zext i1 %189 to i32
  call void @assert_ft(i32 %190, i32 1)
  %191 = select i1 %exitcond.not, i32 82, i32 81
  %192 = xor i32 81, %191
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %62
  %Diff_phi72 = phi i32 [ %192, %.lr.ph ], [ %106, %62 ]
  %Dest_phi73 = phi i32 [ %108, %.lr.ph ], [ %64, %62 ]
  %193 = xor i32 %Diff_phi72, %Dest_phi73
  %194 = icmp eq i32 %193, 82
  %195 = zext i1 %194 to i32
  call void @assert_cfg_ft(i32 %195, i32 %193, i32 0)
  %196 = add nuw nsw i64 %63, 1
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %197 = icmp eq i64 %indvars.iv.next65, %196
  %198 = zext i1 %197 to i32
  call void @assert_ft(i32 %198, i32 1)
  %199 = icmp eq i64 %196, %56
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count66
  %200 = icmp eq i1 %exitcond67.not, %199
  %201 = zext i1 %200 to i32
  call void @assert_ft(i32 %201, i32 1)
  %202 = select i1 %exitcond67.not, i32 83, i32 80
  %203 = xor i32 82, %202
  br i1 %exitcond67.not, label %._crit_edge63, label %62

._crit_edge63:                                    ; preds = %._crit_edge, %0
  %Diff_phi74 = phi i32 [ %203, %._crit_edge ], [ %24, %0 ]
  %Dest_phi75 = phi i32 [ %193, %._crit_edge ], [ 78, %0 ]
  %204 = xor i32 %Diff_phi74, %Dest_phi75
  %205 = icmp eq i32 %204, 83
  %206 = zext i1 %205 to i32
  call void @assert_cfg_ft(i32 %206, i32 %204, i32 0)
  ret ptr %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_random(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 (i32, ...) @srand48(i32 noundef %0) #15
  ret void
}

declare i32 @srand48(...) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gen_number(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 (...) @lrand48() #15
  %3 = sext i32 %0 to i64
  %4 = sext i32 %0 to i64
  %5 = icmp eq i64 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = srem i64 %2, %3
  %8 = srem i64 %2, %4
  %9 = icmp eq i64 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = trunc i64 %7 to i32
  %12 = trunc i64 %8 to i32
  %13 = icmp eq i32 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  ret i32 %12
}

declare i64 @lrand48(...) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gen_signed_number(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 (...) @lrand48() #15
  %3 = shl nsw i32 %0, 1
  %4 = shl nsw i32 %0, 1
  %5 = icmp eq i32 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = sext i32 %3 to i64
  %8 = sext i32 %4 to i64
  %9 = icmp eq i64 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = srem i64 %2, %7
  %12 = srem i64 %2, %8
  %13 = icmp eq i64 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = trunc i64 %11 to i32
  %16 = trunc i64 %12 to i32
  %17 = icmp eq i32 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = sub nsw i32 %15, %0
  %20 = sub nsw i32 %16, %0
  %21 = icmp eq i32 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = icmp sgt i32 %19, -1
  %24 = icmp sgt i32 %20, -1
  %25 = icmp eq i1 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = zext i1 %23 to i32
  %28 = zext i1 %24 to i32
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = add nuw nsw i32 %19, %27
  %spec.select = add nuw nsw i32 %20, %28
  %32 = icmp eq i32 %spec.select, %31
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @gen_uniform_double() local_unnamed_addr #2 {
  %1 = tail call double (...) @drand48() #15
  ret double %1
}

declare double @drand48(...) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_percent(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call double (...) @drand48() #15
  %3 = sitofp i32 %0 to double
  %4 = sitofp i32 %0 to double
  %5 = fdiv double %3, 1.000000e+02
  %6 = fdiv double %4, 1.000000e+02
  %7 = fcmp olt double %2, %5
  %8 = fcmp olt double %2, %6
  %9 = icmp eq i1 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = load i32, ptr @percentcheck, align 4
  %12 = load i32, ptr @percentcheck, align 4
  %13 = icmp eq i32 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = add nsw i32 %11, 1
  %16 = add nsw i32 %12, 1
  %17 = icmp eq i32 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  store i32 %16, ptr @percentcheck, align 4
  %19 = select i1 %8, i32 89, i32 90
  %20 = xor i32 88, %19
  br i1 %8, label %21, label %33

21:                                               ; preds = %1
  %Diff_phi = phi i32 [ %20, %1 ]
  %Dest_phi = phi i32 [ 88, %1 ]
  %22 = xor i32 %Diff_phi, %Dest_phi
  %23 = icmp eq i32 %22, 89
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  %25 = load i32, ptr @numlocal, align 4
  %26 = load i32, ptr @numlocal, align 4
  %27 = icmp eq i32 %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = add nsw i32 %25, 1
  %30 = add nsw i32 %26, 1
  %31 = icmp eq i32 %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  store i32 %30, ptr @numlocal, align 4
  br label %33

33:                                               ; preds = %21, %1
  %Diff_phi3 = phi i32 [ 3, %21 ], [ %20, %1 ]
  %Dest_phi4 = phi i32 [ %22, %21 ], [ 88, %1 ]
  %34 = xor i32 %Diff_phi3, %Dest_phi4
  %35 = icmp eq i32 %34, 90
  %36 = zext i1 %35 to i32
  call void @assert_cfg_ft(i32 %36, i32 %34, i32 0)
  %37 = zext i1 %7 to i32
  %38 = zext i1 %8 to i32
  %39 = icmp eq i32 %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  ret i32 %38
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @printstats() local_unnamed_addr #7 {
  %1 = load i32, ptr @percentcheck, align 4
  %2 = load i32, ptr @percentcheck, align 4
  %3 = icmp eq i32 %2, %1
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = load i32, ptr @numlocal, align 4
  %6 = load i32, ptr @numlocal, align 4
  %7 = icmp eq i32 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %2, i32 noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define dso_local void @dealwithargs(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = icmp sgt i32 %0, 5
  %4 = icmp sgt i32 %0, 5
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = select i1 %4, i32 93, i32 94
  %8 = xor i32 92, %7
  br i1 %4, label %.thread, label %21

.thread:                                          ; preds = %2
  %Diff_phi = phi i32 [ %8, %2 ]
  %Dest_phi = phi i32 [ 92, %2 ]
  %9 = xor i32 %Diff_phi, %Dest_phi
  %10 = icmp eq i32 %9, 93
  %11 = zext i1 %10 to i32
  call void @assert_cfg_ft(i32 %11, i32 %9, i32 0)
  %12 = getelementptr inbounds ptr, ptr %1, i64 5
  %13 = getelementptr inbounds ptr, ptr %1, i64 5
  %14 = icmp eq ptr %13, %12
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = load ptr, ptr %12, align 8
  %17 = load ptr, ptr %13, align 8
  %18 = icmp eq ptr %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = tail call i32 @atoi(ptr nocapture noundef %17) #16
  store i32 %20, ptr @DebugFlag, align 4
  br label %.thread14

21:                                               ; preds = %2
  %Diff_phi20 = phi i32 [ %8, %2 ]
  %Dest_phi21 = phi i32 [ 92, %2 ]
  %22 = xor i32 %Diff_phi20, %Dest_phi21
  %23 = icmp eq i32 %22, 94
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  store i32 0, ptr @DebugFlag, align 4
  %25 = icmp eq i32 %0, 5
  %26 = icmp eq i32 %0, 5
  %27 = icmp eq i1 %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = select i1 %26, i32 95, i32 96
  %30 = xor i32 94, %29
  br i1 %26, label %.thread14, label %43

.thread14:                                        ; preds = %21, %.thread
  %Diff_phi22 = phi i32 [ %30, %21 ], [ 2, %.thread ]
  %Dest_phi23 = phi i32 [ %22, %21 ], [ %9, %.thread ]
  %31 = xor i32 %Diff_phi22, %Dest_phi23
  %32 = icmp eq i32 %31, 95
  %33 = zext i1 %32 to i32
  call void @assert_cfg_ft(i32 %33, i32 %31, i32 0)
  %34 = getelementptr inbounds ptr, ptr %1, i64 4
  %35 = getelementptr inbounds ptr, ptr %1, i64 4
  %36 = icmp eq ptr %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = load ptr, ptr %34, align 8
  %39 = load ptr, ptr %35, align 8
  %40 = icmp eq ptr %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = tail call i32 @atoi(ptr nocapture noundef %39) #16
  store i32 %42, ptr @__NumNodes, align 4
  br label %56

43:                                               ; preds = %21
  %Diff_phi24 = phi i32 [ %30, %21 ]
  %Dest_phi25 = phi i32 [ %22, %21 ]
  %44 = xor i32 %Diff_phi24, %Dest_phi25
  %45 = icmp eq i32 %44, 96
  %46 = zext i1 %45 to i32
  call void @assert_cfg_ft(i32 %46, i32 %44, i32 0)
  store i32 4, ptr @__NumNodes, align 4
  %47 = icmp sgt i32 %0, 1
  %48 = icmp sgt i32 %0, 1
  %49 = icmp eq i1 %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = select i1 %48, i32 98, i32 97
  %52 = xor i32 96, %51
  br i1 %48, label %56, label %.thread16

.thread16:                                        ; preds = %43
  %Diff_phi26 = phi i32 [ %52, %43 ]
  %Dest_phi27 = phi i32 [ %44, %43 ]
  %53 = xor i32 %Diff_phi26, %Dest_phi27
  %54 = icmp eq i32 %53, 97
  %55 = zext i1 %54 to i32
  call void @assert_cfg_ft(i32 %55, i32 %53, i32 0)
  store i32 64, ptr @n_nodes, align 4
  br label %.thread18

56:                                               ; preds = %43, %.thread14
  %Diff_phi28 = phi i32 [ %52, %43 ], [ 61, %.thread14 ]
  %Dest_phi29 = phi i32 [ %44, %43 ], [ %31, %.thread14 ]
  %57 = xor i32 %Diff_phi28, %Dest_phi29
  %58 = icmp eq i32 %57, 98
  %59 = zext i1 %58 to i32
  call void @assert_cfg_ft(i32 %59, i32 %57, i32 0)
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
  store i32 %68, ptr @n_nodes, align 4
  %69 = icmp ugt i32 %0, 2
  %70 = icmp ugt i32 %0, 2
  %71 = icmp eq i1 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = select i1 %70, i32 100, i32 99
  %74 = xor i32 98, %73
  br i1 %70, label %78, label %.thread18

.thread18:                                        ; preds = %56, %.thread16
  %Diff_phi30 = phi i32 [ 2, %.thread16 ], [ %74, %56 ]
  %Dest_phi31 = phi i32 [ %53, %.thread16 ], [ %57, %56 ]
  %75 = xor i32 %Diff_phi30, %Dest_phi31
  %76 = icmp eq i32 %75, 99
  %77 = zext i1 %76 to i32
  call void @assert_cfg_ft(i32 %77, i32 %75, i32 0)
  store i32 3, ptr @d_nodes, align 4
  br label %109

78:                                               ; preds = %56
  %Diff_phi32 = phi i32 [ %74, %56 ]
  %Dest_phi33 = phi i32 [ %57, %56 ]
  %79 = xor i32 %Diff_phi32, %Dest_phi33
  %80 = icmp eq i32 %79, 100
  %81 = zext i1 %80 to i32
  call void @assert_cfg_ft(i32 %81, i32 %79, i32 0)
  %82 = getelementptr inbounds ptr, ptr %1, i64 2
  %83 = getelementptr inbounds ptr, ptr %1, i64 2
  %84 = icmp eq ptr %83, %82
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  %86 = load ptr, ptr %82, align 8
  %87 = load ptr, ptr %83, align 8
  %88 = icmp eq ptr %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = tail call i32 @atoi(ptr nocapture noundef %87) #16
  store i32 %90, ptr @d_nodes, align 4
  %91 = icmp eq i32 %0, 3
  %.not = icmp eq i32 %0, 3
  %92 = icmp eq i1 %.not, %91
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = select i1 %.not, i32 102, i32 101
  %95 = xor i32 100, %94
  br i1 %.not, label %109, label %96

96:                                               ; preds = %78
  %Diff_phi34 = phi i32 [ %95, %78 ]
  %Dest_phi35 = phi i32 [ %79, %78 ]
  %97 = xor i32 %Diff_phi34, %Dest_phi35
  %98 = icmp eq i32 %97, 101
  %99 = zext i1 %98 to i32
  call void @assert_cfg_ft(i32 %99, i32 %97, i32 0)
  %100 = getelementptr inbounds ptr, ptr %1, i64 3
  %101 = getelementptr inbounds ptr, ptr %1, i64 3
  %102 = icmp eq ptr %101, %100
  %103 = zext i1 %102 to i32
  call void @assert_ft(i32 %103, i32 1)
  %104 = load ptr, ptr %100, align 8
  %105 = load ptr, ptr %101, align 8
  %106 = icmp eq ptr %105, %104
  %107 = zext i1 %106 to i32
  call void @assert_ft(i32 %107, i32 1)
  %108 = tail call i32 @atoi(ptr nocapture noundef %105) #16
  br label %109

109:                                              ; preds = %96, %78, %.thread18
  %Diff_phi36 = phi i32 [ 5, %.thread18 ], [ %95, %78 ], [ 3, %96 ]
  %Dest_phi37 = phi i32 [ %75, %.thread18 ], [ %79, %78 ], [ %97, %96 ]
  %110 = phi i32 [ %108, %96 ], [ 75, %78 ], [ 75, %.thread18 ]
  %storemerge12 = phi i32 [ %108, %96 ], [ 75, %78 ], [ 75, %.thread18 ]
  %111 = xor i32 %Diff_phi36, %Dest_phi37
  %112 = icmp eq i32 %111, 102
  %113 = zext i1 %112 to i32
  call void @assert_cfg_ft(i32 %113, i32 %111, i32 0)
  %114 = icmp eq i32 %storemerge12, %110
  %115 = zext i1 %114 to i32
  call void @assert_ft(i32 %115, i32 1)
  store i32 %storemerge12, ptr @local_p, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

declare void @exit.9(i32, ...)

declare i32 @printf.10(ptr, i32, ...)

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

attributes #0 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 -2147483647, i32 -2147483648}
!7 = !{i32 0, i32 2}
!8 = !{i32 1, i32 0}
