; ModuleID = 'bh-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.datapoints = type { [3 x double], [3 x double], ptr, ptr }
%struct.tree = type { [3 x double], double, ptr, [64 x ptr], [64 x ptr] }
%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, ptr, ptr }
%struct.hgstruct = type { ptr, [3 x double], double, [3 x double] }
%struct.cnode = type { i16, double, [3 x double], i32, i32, [8 x ptr], ptr }
%struct.node = type { i16, double, [3 x double], i32, i32 }
%struct.tms = type { i64, i64, i64, i64 }

@__NumNodes = dso_local local_unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [27 x i8] c"nbody = %d, numnodes = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Bodies per %d = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Assertion Failure #%d\00", align 1
@cp_free_list = dso_local local_unnamed_addr global ptr null, align 8
@bp_free_list = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"testdata: not enough memory\0A\00", align 1
@root = dso_local local_unnamed_addr global ptr null, align 8
@rmin = dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@rsize = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@arg1 = dso_local local_unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"times() call failed\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.8 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@nbody = dso_local local_unnamed_addr global i32 0, align 4
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @dealwithargs(i32 noundef %0, ptr noundef %1)
  %4 = load i32, ptr @nbody, align 4
  %5 = load i32, ptr @nbody, align 4
  %6 = icmp eq i32 %5, %4
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = load i32, ptr @__NumNodes, align 4
  %9 = load i32, ptr @__NumNodes, align 4
  %10 = icmp eq i32 %9, %8
  %11 = zext i1 %10 to i32
  call void @assert_ft(i32 %11, i32 1)
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5, i32 noundef %9)
  %13 = tail call ptr @old_main()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @old_main() local_unnamed_addr #0 {
.preheader109.preheader:
  %0 = alloca [64 x i32], align 16
  %1 = alloca [64 x ptr], align 16
  %2 = alloca %struct.datapoints, align 8
  %3 = load i32, ptr @__NumNodes, align 4
  %4 = load i32, ptr @__NumNodes, align 4
  %5 = icmp eq i32 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = tail call i32 @srand(i32 noundef 123) #28
  %8 = tail call noalias dereferenceable_or_null(1064) ptr @malloc(i64 noundef 1064) #28
  %9 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 2
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  store ptr null, ptr %10, align 8
  store double -2.000000e+00, ptr %8, align 8
  %13 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 1
  %14 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 1
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  store double -2.000000e+00, ptr %14, align 8
  %17 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 2
  %18 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 2
  %19 = icmp eq ptr %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  store double -2.000000e+00, ptr %18, align 8
  %21 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 1
  %22 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 1
  %23 = icmp eq ptr %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  store double 4.000000e+00, ptr %22, align 8
  %25 = getelementptr inbounds i8, ptr %2, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 8
  %26 = icmp eq ptr %.sroa.2.0..sroa_idx, %25
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = getelementptr inbounds i8, ptr %2, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 16
  %29 = icmp eq ptr %.sroa.3.0..sroa_idx, %28
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = getelementptr inbounds i8, ptr %2, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 24
  %32 = icmp eq ptr %.sroa.4.0..sroa_idx, %31
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = getelementptr inbounds i8, ptr %2, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 32
  %35 = icmp eq ptr %.sroa.5.0..sroa_idx, %34
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = getelementptr inbounds i8, ptr %2, i64 40
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 40
  %38 = icmp eq ptr %.sroa.6.0..sroa_idx, %37
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = getelementptr inbounds i8, ptr %2, i64 48
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 48
  %41 = icmp eq ptr %.sroa.7.0..sroa_idx, %40
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = getelementptr inbounds i8, ptr %2, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 56
  %44 = icmp eq ptr %.sroa.8.0..sroa_idx, %43
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  br label %83

.preheader106:                                    ; preds = %.preheader107.preheader
  %Diff_phi = phi i32 [ %190, %.preheader107.preheader ]
  %Dest_phi = phi i32 [ %171, %.preheader107.preheader ]
  %46 = xor i32 %Diff_phi, %Dest_phi
  %47 = icmp eq i32 %46, 3
  %48 = zext i1 %47 to i32
  call void @assert_cfg_ft(i32 %48, i32 %46, i32 0)
  %49 = load i32, ptr @nbody, align 4
  %50 = load i32, ptr @nbody, align 4
  %51 = icmp eq i32 %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = sitofp i32 %49 to double
  %54 = sitofp i32 %50 to double
  %55 = fdiv double %174, %53
  %56 = fdiv double %175, %54
  %57 = fdiv double %176, %53
  %58 = fdiv double %177, %54
  %59 = fdiv double %178, %53
  %60 = fdiv double %179, %54
  %61 = fdiv double %180, %53
  %62 = fdiv double %181, %54
  %63 = fdiv double %182, %53
  %64 = fdiv double %183, %54
  %65 = fdiv double %184, %53
  %66 = fdiv double %185, %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %1, i8 0, i64 512, i1 false)
  %67 = sdiv i32 64, %3
  %68 = sdiv i32 64, %4
  %69 = icmp eq i32 %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 3
  %72 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 3
  %73 = icmp eq ptr %72, %71
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = load ptr, ptr %71, align 8
  %.090121 = load ptr, ptr %72, align 8
  %76 = icmp eq ptr %.090121, %75
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = icmp eq ptr %75, null
  %.not122 = icmp eq ptr %.090121, null
  %79 = icmp eq i1 %.not122, %78
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = select i1 %.not122, i32 8, i32 7
  %82 = xor i32 3, %81
  br i1 %.not122, label %.preheader101, label %.preheader103

83:                                               ; preds = %.preheader107.preheader, %.preheader109.preheader
  %Diff_phi180 = phi i32 [ 6, %.preheader109.preheader ], [ %190, %.preheader107.preheader ]
  %Dest_phi181 = phi i32 [ 2, %.preheader109.preheader ], [ %171, %.preheader107.preheader ]
  %84 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %184, %.preheader107.preheader ]
  %.sroa.11.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %185, %.preheader107.preheader ]
  %85 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %182, %.preheader107.preheader ]
  %.sroa.6146.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %183, %.preheader107.preheader ]
  %86 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %180, %.preheader107.preheader ]
  %.sroa.0143.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %181, %.preheader107.preheader ]
  %87 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %178, %.preheader107.preheader ]
  %.sroa.11157.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %179, %.preheader107.preheader ]
  %88 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %176, %.preheader107.preheader ]
  %.sroa.6154.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %177, %.preheader107.preheader ]
  %89 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %174, %.preheader107.preheader ]
  %.sroa.0151.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %175, %.preheader107.preheader ]
  %90 = phi i64 [ 0, %.preheader109.preheader ], [ %131, %.preheader107.preheader ]
  %indvars.iv = phi i64 [ 0, %.preheader109.preheader ], [ %indvars.iv.next, %.preheader107.preheader ]
  %91 = phi i32 [ 0, %.preheader109.preheader ], [ %134, %.preheader107.preheader ]
  %.087115 = phi i32 [ 0, %.preheader109.preheader ], [ %135, %.preheader107.preheader ]
  %92 = phi ptr [ null, %.preheader109.preheader ], [ %151, %.preheader107.preheader ]
  %.091114 = phi ptr [ null, %.preheader109.preheader ], [ %.sroa.8.0.copyload, %.preheader107.preheader ]
  %93 = xor i32 %Diff_phi180, %Dest_phi181
  %94 = icmp eq i32 %93, 4
  %95 = zext i1 %94 to i32
  call void @assert_cfg_ft(i32 %95, i32 %93, i32 0)
  %96 = icmp eq i32 %.087115, %91
  %97 = zext i1 %96 to i32
  call void @assert_ft(i32 %97, i32 1)
  %98 = icmp eq ptr %.091114, %92
  %99 = zext i1 %98 to i32
  call void @assert_ft(i32 %99, i32 1)
  %100 = icmp eq i64 %indvars.iv, %90
  %101 = zext i1 %100 to i32
  call void @assert_ft(i32 %101, i32 1)
  %102 = load i32, ptr @__NumNodes, align 4
  %103 = load i32, ptr @__NumNodes, align 4
  %104 = icmp eq i32 %103, %102
  %105 = zext i1 %104 to i32
  call void @assert_ft(i32 %105, i32 1)
  %106 = sdiv i32 32, %102
  %107 = sdiv i32 32, %103
  %108 = icmp eq i32 %107, %106
  %109 = zext i1 %108 to i32
  call void @assert_ft(i32 %109, i32 1)
  %110 = trunc i32 %91 to i8
  %.lhs.trunc = trunc i32 %.087115 to i8
  %111 = icmp eq i8 %.lhs.trunc, %110
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  %113 = trunc i32 %106 to i8
  %.rhs.trunc = trunc i32 %107 to i8
  %114 = icmp eq i8 %.rhs.trunc, %113
  %115 = zext i1 %114 to i32
  call void @assert_ft(i32 %115, i32 1)
  %116 = sdiv i8 %110, %113
  %117 = sdiv i8 %.lhs.trunc, %.rhs.trunc
  %118 = icmp eq i8 %117, %116
  %119 = zext i1 %118 to i32
  call void @assert_ft(i32 %119, i32 1)
  %120 = sext i8 %116 to i32
  %.sext = sext i8 %117 to i32
  %121 = icmp eq i32 %.sext, %120
  %122 = zext i1 %121 to i32
  call void @assert_ft(i32 %122, i32 1)
  %123 = load i32, ptr @nbody, align 4
  %124 = load i32, ptr @nbody, align 4
  %125 = icmp eq i32 %124, %123
  %126 = zext i1 %125 to i32
  call void @assert_ft(i32 %126, i32 1)
  %127 = sdiv i32 %123, 32
  %128 = sdiv i32 %124, 32
  %129 = icmp eq i32 %128, %127
  %130 = zext i1 %129 to i32
  call void @assert_ft(i32 %130, i32 1)
  %131 = add nuw nsw i64 %90, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %132 = icmp eq i64 %indvars.iv.next, %131
  %133 = zext i1 %132 to i32
  call void @assert_ft(i32 %133, i32 1)
  %134 = add nuw nsw i32 %91, 1
  %135 = add nuw nsw i32 %.087115, 1
  %136 = icmp eq i32 %135, %134
  %137 = zext i1 %136 to i32
  call void @assert_ft(i32 %137, i32 1)
  %138 = trunc i64 %131 to i32
  %139 = trunc i64 %indvars.iv.next to i32
  %140 = icmp eq i32 %139, %138
  %141 = zext i1 %140 to i32
  call void @assert_ft(i32 %141, i32 1)
  call void @uniform_testdata(ptr nonnull sret(%struct.datapoints) align 8 %2, i32 noundef %.sext, i32 noundef %128, i32 noundef %139)
  %142 = load double, ptr %2, align 8
  %.sroa.0.0.copyload = load double, ptr %2, align 8
  %143 = load double, ptr %25, align 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8
  %144 = load double, ptr %28, align 8
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8
  %145 = load double, ptr %31, align 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %146 = load double, ptr %34, align 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %147 = load double, ptr %37, align 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  %148 = load ptr, ptr %40, align 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %149 = icmp eq ptr %.sroa.7.0.copyload, %148
  %150 = zext i1 %149 to i32
  call void @assert_ft(i32 %150, i32 1)
  %151 = load ptr, ptr %43, align 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %152 = icmp eq ptr %.sroa.8.0.copyload, %151
  %153 = zext i1 %152 to i32
  call void @assert_ft(i32 %153, i32 1)
  %154 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 3, i64 %90
  %155 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 3, i64 %indvars.iv
  %156 = icmp eq ptr %155, %154
  %157 = zext i1 %156 to i32
  call void @assert_ft(i32 %157, i32 1)
  store ptr %.sroa.7.0.copyload, ptr %155, align 8
  %158 = icmp eq ptr %92, null
  %.not100 = icmp eq ptr %.091114, null
  %159 = icmp eq i1 %.not100, %158
  %160 = zext i1 %159 to i32
  call void @assert_ft(i32 %160, i32 1)
  %161 = select i1 %.not100, i32 6, i32 5
  %162 = xor i32 4, %161
  br i1 %.not100, label %.preheader107.preheader, label %163

163:                                              ; preds = %83
  %Diff_phi182 = phi i32 [ %162, %83 ]
  %Dest_phi183 = phi i32 [ %93, %83 ]
  %164 = xor i32 %Diff_phi182, %Dest_phi183
  %165 = icmp eq i32 %164, 5
  %166 = zext i1 %165 to i32
  call void @assert_cfg_ft(i32 %166, i32 %164, i32 0)
  %167 = getelementptr inbounds %struct.bnode, ptr %92, i64 0, i32 9
  %168 = getelementptr inbounds %struct.bnode, ptr %.091114, i64 0, i32 9
  %169 = icmp eq ptr %168, %167
  %170 = zext i1 %169 to i32
  call void @assert_ft(i32 %170, i32 1)
  store ptr %.sroa.7.0.copyload, ptr %168, align 8
  br label %.preheader107.preheader

.preheader107.preheader:                          ; preds = %163, %83
  %Diff_phi184 = phi i32 [ 3, %163 ], [ %162, %83 ]
  %Dest_phi185 = phi i32 [ %164, %163 ], [ %93, %83 ]
  %171 = xor i32 %Diff_phi184, %Dest_phi185
  %172 = icmp eq i32 %171, 6
  %173 = zext i1 %172 to i32
  call void @assert_cfg_ft(i32 %173, i32 %171, i32 0)
  %174 = fadd double %89, %142
  %175 = fadd double %.sroa.0151.0, %.sroa.0.0.copyload
  %176 = fadd double %88, %143
  %177 = fadd double %.sroa.6154.0, %.sroa.2.0.copyload
  %178 = fadd double %87, %144
  %179 = fadd double %.sroa.11157.0, %.sroa.3.0.copyload
  %180 = fadd double %86, %145
  %181 = fadd double %.sroa.0143.0, %.sroa.4.0.copyload
  %182 = fadd double %85, %146
  %183 = fadd double %.sroa.6146.0, %.sroa.5.0.copyload
  %184 = fadd double %84, %147
  %185 = fadd double %.sroa.11.0, %.sroa.6.0.copyload
  %186 = icmp eq i64 %131, 32
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  %187 = icmp eq i1 %exitcond.not, %186
  %188 = zext i1 %187 to i32
  call void @assert_ft(i32 %188, i32 1)
  %189 = select i1 %exitcond.not, i32 3, i32 4
  %190 = xor i32 6, %189
  br i1 %exitcond.not, label %.preheader106, label %83

.preheader103:                                    ; preds = %.preheader103, %.preheader106
  %Diff_phi186 = phi i32 [ %82, %.preheader106 ], [ %311, %.preheader103 ]
  %Dest_phi187 = phi i32 [ %46, %.preheader106 ], [ %192, %.preheader103 ]
  %191 = phi ptr [ %304, %.preheader103 ], [ %75, %.preheader106 ]
  %.090123 = phi ptr [ %.090, %.preheader103 ], [ %.090121, %.preheader106 ]
  %192 = xor i32 %Diff_phi186, %Dest_phi187
  %193 = icmp eq i32 %192, 7
  %194 = zext i1 %193 to i32
  call void @assert_cfg_ft(i32 %194, i32 %192, i32 0)
  %195 = icmp eq ptr %.090123, %191
  %196 = zext i1 %195 to i32
  call void @assert_ft(i32 %196, i32 1)
  %197 = getelementptr inbounds %struct.bnode, ptr %191, i64 0, i32 2, i64 0
  %198 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 2, i64 0
  %199 = icmp eq ptr %198, %197
  %200 = zext i1 %199 to i32
  call void @assert_ft(i32 %200, i32 1)
  %201 = load double, ptr %197, align 8
  %202 = load double, ptr %198, align 8
  %203 = fsub double %201, %55
  %204 = fsub double %202, %56
  store double %204, ptr %198, align 8
  %205 = getelementptr inbounds %struct.bnode, ptr %191, i64 0, i32 2, i64 1
  %206 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 2, i64 1
  %207 = icmp eq ptr %206, %205
  %208 = zext i1 %207 to i32
  call void @assert_ft(i32 %208, i32 1)
  %209 = load double, ptr %205, align 8
  %210 = load double, ptr %206, align 8
  %211 = fsub double %209, %57
  %212 = fsub double %210, %58
  store double %212, ptr %206, align 8
  %213 = getelementptr inbounds %struct.bnode, ptr %191, i64 0, i32 2, i64 2
  %214 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 2, i64 2
  %215 = icmp eq ptr %214, %213
  %216 = zext i1 %215 to i32
  call void @assert_ft(i32 %216, i32 1)
  %217 = load double, ptr %213, align 8
  %218 = load double, ptr %214, align 8
  %219 = fsub double %217, %59
  %220 = fsub double %218, %60
  store double %220, ptr %214, align 8
  %221 = getelementptr inbounds %struct.bnode, ptr %191, i64 0, i32 5, i64 0
  %222 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 5, i64 0
  %223 = icmp eq ptr %222, %221
  %224 = zext i1 %223 to i32
  call void @assert_ft(i32 %224, i32 1)
  %225 = load double, ptr %221, align 8
  %226 = load double, ptr %222, align 8
  %227 = fsub double %225, %61
  %228 = fsub double %226, %62
  store double %228, ptr %222, align 8
  %229 = getelementptr inbounds %struct.bnode, ptr %191, i64 0, i32 5, i64 1
  %230 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 5, i64 1
  %231 = icmp eq ptr %230, %229
  %232 = zext i1 %231 to i32
  call void @assert_ft(i32 %232, i32 1)
  %233 = load double, ptr %229, align 8
  %234 = load double, ptr %230, align 8
  %235 = fsub double %233, %63
  %236 = fsub double %234, %64
  store double %236, ptr %230, align 8
  %237 = getelementptr inbounds %struct.bnode, ptr %191, i64 0, i32 5, i64 2
  %238 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 5, i64 2
  %239 = icmp eq ptr %238, %237
  %240 = zext i1 %239 to i32
  call void @assert_ft(i32 %240, i32 1)
  %241 = load double, ptr %237, align 8
  %242 = load double, ptr %238, align 8
  %243 = fsub double %241, %65
  %244 = fsub double %242, %66
  store double %244, ptr %238, align 8
  %245 = tail call { i64, i64 } @intcoord(ptr noundef nonnull %.090123, ptr noundef nonnull %8)
  %246 = extractvalue { i64, i64 } %245, 0
  %247 = extractvalue { i64, i64 } %245, 0
  %248 = icmp eq i64 %247, %246
  %249 = zext i1 %248 to i32
  call void @assert_ft(i32 %249, i32 1)
  %250 = extractvalue { i64, i64 } %245, 1
  %251 = extractvalue { i64, i64 } %245, 1
  %252 = icmp eq i64 %251, %250
  %253 = zext i1 %252 to i32
  call void @assert_ft(i32 %253, i32 1)
  %254 = tail call i32 @old_subindex(i64 %247, i64 %251, i32 noundef 536870912)
  %255 = shl i32 %254, 3
  %256 = shl i32 %254, 3
  %257 = icmp eq i32 %256, %255
  %258 = zext i1 %257 to i32
  call void @assert_ft(i32 %258, i32 1)
  %259 = tail call i32 @old_subindex(i64 %247, i64 %251, i32 noundef 268435456)
  %260 = add nsw i32 %255, %259
  %261 = add nsw i32 %256, %259
  %262 = icmp eq i32 %261, %260
  %263 = zext i1 %262 to i32
  call void @assert_ft(i32 %263, i32 1)
  %264 = sdiv i32 %260, %67
  %265 = sdiv i32 %261, %68
  %266 = icmp eq i32 %265, %264
  %267 = zext i1 %266 to i32
  call void @assert_ft(i32 %267, i32 1)
  %268 = sext i32 %264 to i64
  %269 = sext i32 %265 to i64
  %270 = icmp eq i64 %269, %268
  %271 = zext i1 %270 to i32
  call void @assert_ft(i32 %271, i32 1)
  %272 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %268
  %273 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %269
  %274 = icmp eq ptr %273, %272
  %275 = zext i1 %274 to i32
  call void @assert_ft(i32 %275, i32 1)
  %276 = load i32, ptr %272, align 4
  %277 = load i32, ptr %273, align 4
  %278 = icmp eq i32 %277, %276
  %279 = zext i1 %278 to i32
  call void @assert_ft(i32 %279, i32 1)
  %280 = add nsw i32 %276, 1
  %281 = add nsw i32 %277, 1
  %282 = icmp eq i32 %281, %280
  %283 = zext i1 %282 to i32
  call void @assert_ft(i32 %283, i32 1)
  store i32 %281, ptr %273, align 4
  %284 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %268
  %285 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %269
  %286 = icmp eq ptr %285, %284
  %287 = zext i1 %286 to i32
  call void @assert_ft(i32 %287, i32 1)
  %288 = load ptr, ptr %284, align 8
  %289 = load ptr, ptr %285, align 8
  %290 = icmp eq ptr %289, %288
  %291 = zext i1 %290 to i32
  call void @assert_ft(i32 %291, i32 1)
  %292 = getelementptr inbounds %struct.bnode, ptr %191, i64 0, i32 10
  %293 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 10
  %294 = icmp eq ptr %293, %292
  %295 = zext i1 %294 to i32
  call void @assert_ft(i32 %295, i32 1)
  store ptr %289, ptr %293, align 8
  store ptr %.090123, ptr %285, align 8
  %296 = getelementptr inbounds %struct.bnode, ptr %191, i64 0, i32 3
  %297 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 3
  %298 = icmp eq ptr %297, %296
  %299 = zext i1 %298 to i32
  call void @assert_ft(i32 %299, i32 1)
  store i32 %265, ptr %297, align 8
  %300 = getelementptr inbounds %struct.bnode, ptr %191, i64 0, i32 9
  %301 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 9
  %302 = icmp eq ptr %301, %300
  %303 = zext i1 %302 to i32
  call void @assert_ft(i32 %303, i32 1)
  %304 = load ptr, ptr %300, align 8
  %.090 = load ptr, ptr %301, align 8
  %305 = icmp eq ptr %.090, %304
  %306 = zext i1 %305 to i32
  call void @assert_ft(i32 %306, i32 1)
  %307 = icmp eq ptr %304, null
  %.not = icmp eq ptr %.090, null
  %308 = icmp eq i1 %.not, %307
  %309 = zext i1 %308 to i32
  call void @assert_ft(i32 %309, i32 1)
  %310 = select i1 %.not, i32 8, i32 7
  %311 = xor i32 7, %310
  br i1 %.not, label %.preheader101, label %.preheader103

.preheader101:                                    ; preds = %.preheader103, %.preheader106
  %Diff_phi188 = phi i32 [ %311, %.preheader103 ], [ %82, %.preheader106 ]
  %Dest_phi189 = phi i32 [ %192, %.preheader103 ], [ %46, %.preheader106 ]
  %312 = xor i32 %Diff_phi188, %Dest_phi189
  %313 = icmp eq i32 %312, 8
  %314 = zext i1 %313 to i32
  call void @assert_cfg_ft(i32 %314, i32 %312, i32 0)
  %315 = load i32, ptr @__NumNodes, align 4
  %316 = load i32, ptr @__NumNodes, align 4
  %317 = icmp eq i32 %316, %315
  %318 = zext i1 %317 to i32
  call void @assert_ft(i32 %318, i32 1)
  %319 = icmp sgt i32 %315, 0
  %320 = icmp sgt i32 %316, 0
  %321 = icmp eq i1 %320, %319
  %322 = zext i1 %321 to i32
  call void @assert_ft(i32 %322, i32 1)
  %323 = select i1 %320, i32 9, i32 10
  %324 = xor i32 8, %323
  br i1 %320, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.preheader101
  %Diff_phi190 = phi i32 [ %324, %.preheader101 ], [ %372, %.lr.ph ]
  %Dest_phi191 = phi i32 [ %312, %.preheader101 ], [ %326, %.lr.ph ]
  %325 = phi i64 [ %356, %.lr.ph ], [ 0, %.preheader101 ]
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph ], [ 0, %.preheader101 ]
  %326 = xor i32 %Diff_phi190, %Dest_phi191
  %327 = icmp eq i32 %326, 9
  %328 = zext i1 %327 to i32
  call void @assert_cfg_ft(i32 %328, i32 %326, i32 0)
  %329 = icmp eq i64 %indvars.iv141, %325
  %330 = zext i1 %329 to i32
  call void @assert_ft(i32 %330, i32 1)
  %331 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %325
  %332 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %indvars.iv141
  %333 = icmp eq ptr %332, %331
  %334 = zext i1 %333 to i32
  call void @assert_ft(i32 %334, i32 1)
  %335 = load i32, ptr %331, align 4
  %336 = load i32, ptr %332, align 4
  %337 = icmp eq i32 %336, %335
  %338 = zext i1 %337 to i32
  call void @assert_ft(i32 %338, i32 1)
  %339 = trunc i64 %325 to i32
  %340 = trunc i64 %indvars.iv141 to i32
  %341 = icmp eq i32 %340, %339
  %342 = zext i1 %341 to i32
  call void @assert_ft(i32 %342, i32 1)
  %343 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %340, i32 noundef %336)
  %344 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %325
  %345 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %indvars.iv141
  %346 = icmp eq ptr %345, %344
  %347 = zext i1 %346 to i32
  call void @assert_ft(i32 %347, i32 1)
  %348 = load ptr, ptr %344, align 8
  %349 = load ptr, ptr %345, align 8
  %350 = icmp eq ptr %349, %348
  %351 = zext i1 %350 to i32
  call void @assert_ft(i32 %351, i32 1)
  %352 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 4, i64 %325
  %353 = getelementptr inbounds %struct.tree, ptr %8, i64 0, i32 4, i64 %indvars.iv141
  %354 = icmp eq ptr %353, %352
  %355 = zext i1 %354 to i32
  call void @assert_ft(i32 %355, i32 1)
  store ptr %349, ptr %353, align 8
  %356 = add nuw nsw i64 %325, 1
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %357 = icmp eq i64 %indvars.iv.next142, %356
  %358 = zext i1 %357 to i32
  call void @assert_ft(i32 %358, i32 1)
  %359 = load i32, ptr @__NumNodes, align 4
  %360 = load i32, ptr @__NumNodes, align 4
  %361 = icmp eq i32 %360, %359
  %362 = zext i1 %361 to i32
  call void @assert_ft(i32 %362, i32 1)
  %363 = sext i32 %359 to i64
  %364 = sext i32 %360 to i64
  %365 = icmp eq i64 %364, %363
  %366 = zext i1 %365 to i32
  call void @assert_ft(i32 %366, i32 1)
  %367 = icmp slt i64 %356, %363
  %368 = icmp slt i64 %indvars.iv.next142, %364
  %369 = icmp eq i1 %368, %367
  %370 = zext i1 %369 to i32
  call void @assert_ft(i32 %370, i32 1)
  %371 = select i1 %368, i32 9, i32 10
  %372 = xor i32 9, %371
  br i1 %368, label %.lr.ph, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader101
  %Diff_phi192 = phi i32 [ %372, %.lr.ph ], [ %324, %.preheader101 ]
  %Dest_phi193 = phi i32 [ %326, %.lr.ph ], [ %312, %.preheader101 ]
  %373 = xor i32 %Diff_phi192, %Dest_phi193
  %374 = icmp eq i32 %373, 10
  %375 = zext i1 %374 to i32
  call void @assert_cfg_ft(i32 %375, i32 %373, i32 0)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %Diff_phi194 = phi i32 [ 1, %.preheader.preheader ], [ %403, %.preheader ]
  %Dest_phi195 = phi i32 [ %373, %.preheader.preheader ], [ %378, %.preheader ]
  %376 = phi double [ %384, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %.0126 = phi double [ %385, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %377 = phi i32 [ %386, %.preheader ], [ 0, %.preheader.preheader ]
  %.1125 = phi i32 [ %387, %.preheader ], [ 0, %.preheader.preheader ]
  %378 = xor i32 %Diff_phi194, %Dest_phi195
  %379 = icmp eq i32 %378, 11
  %380 = zext i1 %379 to i32
  call void @assert_cfg_ft(i32 %380, i32 %378, i32 0)
  %381 = icmp eq i32 %.1125, %377
  %382 = zext i1 %381 to i32
  call void @assert_ft(i32 %382, i32 1)
  %383 = tail call i32 @stepsystem(ptr noundef nonnull %8, i32 noundef %.1125)
  %384 = fadd double %376, 1.250000e-02
  %385 = fadd double %.0126, 1.250000e-02
  %386 = add nuw nsw i32 %377, 1
  %387 = add nuw nsw i32 %.1125, 1
  %388 = icmp eq i32 %387, %386
  %389 = zext i1 %388 to i32
  call void @assert_ft(i32 %389, i32 1)
  %390 = fcmp olt double %384, 2.001250e+00
  %391 = fcmp olt double %385, 2.001250e+00
  %392 = icmp eq i1 %391, %390
  %393 = zext i1 %392 to i32
  call void @assert_ft(i32 %393, i32 1)
  %394 = icmp ult i32 %377, 9
  %395 = icmp ult i32 %.1125, 9
  %396 = icmp eq i1 %395, %394
  %397 = zext i1 %396 to i32
  call void @assert_ft(i32 %397, i32 1)
  %398 = and i1 %390, %394
  %399 = and i1 %391, %395
  %400 = icmp eq i1 %399, %398
  %401 = zext i1 %400 to i32
  call void @assert_ft(i32 %401, i32 1)
  %402 = select i1 %399, i32 11, i32 12
  %403 = xor i32 11, %402
  br i1 %399, label %.preheader, label %404

404:                                              ; preds = %.preheader
  %Diff_phi196 = phi i32 [ %403, %.preheader ]
  %Dest_phi197 = phi i32 [ %378, %.preheader ]
  %405 = xor i32 %Diff_phi196, %Dest_phi197
  %406 = icmp eq i32 %405, 12
  %407 = zext i1 %406 to i32
  call void @assert_cfg_ft(i32 %407, i32 %405, i32 0)
  ret ptr %8
}

; Function Attrs: nounwind
declare i32 @srand(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @uniform_testdata(ptr noalias nocapture writeonly sret(%struct.datapoints) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
.preheader100.preheader:
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  %scevgep = getelementptr inbounds i8, ptr %0, i64 24
  %5 = icmp eq ptr %scevgep, %4
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %7 = tail call ptr @ubody_alloc(i32 noundef %1)
  %8 = icmp sgt i32 %2, 0
  %9 = icmp sgt i32 %2, 0
  %10 = icmp eq i1 %9, %8
  %11 = zext i1 %10 to i32
  call void @assert_ft(i32 %11, i32 1)
  %12 = select i1 %9, i32 14, i32 22
  %13 = xor i32 13, %12
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader100.preheader
  %Diff_phi = phi i32 [ %13, %.preheader100.preheader ]
  %Dest_phi = phi i32 [ 13, %.preheader100.preheader ]
  %14 = xor i32 %Diff_phi, %Dest_phi
  %15 = icmp eq i32 %14, 14
  %16 = zext i1 %15 to i32
  call void @assert_cfg_ft(i32 %16, i32 %14, i32 0)
  %17 = sitofp i32 %3 to double
  %18 = sitofp i32 %3 to double
  %19 = fmul double %17, 1.230000e+02
  %20 = fmul double %18, 1.230000e+02
  %21 = sitofp i32 %2 to double
  %22 = sitofp i32 %2 to double
  %23 = fdiv double 1.000000e+00, %21
  %24 = fdiv double 1.000000e+00, %22
  %25 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %26 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %27 = icmp eq ptr %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %30 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %31 = icmp eq ptr %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 1
  %34 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 1
  %35 = icmp eq ptr %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 2
  %38 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 2
  %39 = icmp eq ptr %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  br label %41

41:                                               ; preds = %.preheader97.preheader, %.lr.ph
  %Diff_phi158 = phi i32 [ 1, %.lr.ph ], [ %220, %.preheader97.preheader ]
  %Dest_phi159 = phi i32 [ %14, %.lr.ph ], [ %186, %.preheader97.preheader ]
  %42 = phi double [ 0.000000e+00, %.lr.ph ], [ %210, %.preheader97.preheader ]
  %43 = phi double [ 0.000000e+00, %.lr.ph ], [ %211, %.preheader97.preheader ]
  %44 = phi double [ 0.000000e+00, %.lr.ph ], [ %208, %.preheader97.preheader ]
  %45 = phi double [ 0.000000e+00, %.lr.ph ], [ %209, %.preheader97.preheader ]
  %46 = phi double [ 0.000000e+00, %.lr.ph ], [ %206, %.preheader97.preheader ]
  %47 = phi double [ 0.000000e+00, %.lr.ph ], [ %207, %.preheader97.preheader ]
  %48 = phi double [ 0.000000e+00, %.lr.ph ], [ %121, %.preheader97.preheader ]
  %49 = phi double [ 0.000000e+00, %.lr.ph ], [ %122, %.preheader97.preheader ]
  %50 = phi double [ 0.000000e+00, %.lr.ph ], [ %119, %.preheader97.preheader ]
  %51 = phi double [ 0.000000e+00, %.lr.ph ], [ %120, %.preheader97.preheader ]
  %52 = phi double [ 0.000000e+00, %.lr.ph ], [ %117, %.preheader97.preheader ]
  %53 = phi double [ 0.000000e+00, %.lr.ph ], [ %118, %.preheader97.preheader ]
  %54 = phi ptr [ %7, %.lr.ph ], [ %64, %.preheader97.preheader ]
  %.090116 = phi ptr [ %7, %.lr.ph ], [ %64, %.preheader97.preheader ]
  %55 = phi i32 [ 0, %.lr.ph ], [ %212, %.preheader97.preheader ]
  %.091115 = phi i32 [ 0, %.lr.ph ], [ %213, %.preheader97.preheader ]
  %56 = phi double [ %19, %.lr.ph ], [ %175, %.preheader97.preheader ]
  %.094114 = phi double [ %20, %.lr.ph ], [ %175, %.preheader97.preheader ]
  %57 = xor i32 %Diff_phi158, %Dest_phi159
  %58 = icmp eq i32 %57, 15
  %59 = zext i1 %58 to i32
  call void @assert_cfg_ft(i32 %59, i32 %57, i32 0)
  %60 = icmp eq ptr %.090116, %54
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = icmp eq i32 %.091115, %55
  %63 = zext i1 %62 to i32
  call void @assert_ft(i32 %63, i32 1)
  %64 = tail call ptr @ubody_alloc(i32 noundef %1)
  %65 = icmp eq ptr %64, null
  %66 = icmp eq ptr %64, null
  %67 = icmp eq i1 %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = select i1 %66, i32 16, i32 17
  %70 = xor i32 15, %69
  br i1 %66, label %71, label %.preheader99

71:                                               ; preds = %41
  %Diff_phi160 = phi i32 [ %70, %41 ]
  %Dest_phi161 = phi i32 [ %57, %41 ]
  %72 = xor i32 %Diff_phi160, %Dest_phi161
  %73 = icmp eq i32 %72, 16
  %74 = zext i1 %73 to i32
  call void @assert_cfg_ft(i32 %74, i32 %72, i32 0)
  %75 = tail call i32 @error(ptr noundef nonnull @.str.3, ptr null, ptr null, ptr null, ptr null)
  unreachable

.preheader99:                                     ; preds = %41
  %Diff_phi162 = phi i32 [ %70, %41 ]
  %Dest_phi163 = phi i32 [ %57, %41 ]
  %76 = xor i32 %Diff_phi162, %Dest_phi163
  %77 = icmp eq i32 %76, 17
  %78 = zext i1 %77 to i32
  call void @assert_cfg_ft(i32 %78, i32 %76, i32 0)
  %79 = getelementptr inbounds %struct.bnode, ptr %54, i64 0, i32 9
  %80 = getelementptr inbounds %struct.bnode, ptr %.090116, i64 0, i32 9
  %81 = icmp eq ptr %80, %79
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  store ptr %64, ptr %80, align 8
  store i16 1, ptr %64, align 8
  %83 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 1
  %84 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 1
  %85 = icmp eq ptr %84, %83
  %86 = zext i1 %85 to i32
  call void @assert_ft(i32 %86, i32 1)
  store double %24, ptr %84, align 8
  %87 = tail call double @my_rand(double noundef %.094114)
  %88 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %87)
  %89 = tail call double @pow(double noundef %88, double noundef 0xBFE5555555555555) #28
  %90 = fadd double %89, -1.000000e+00
  %91 = fadd double %89, -1.000000e+00
  %92 = tail call double @sqrt(double noundef %91) #28
  %93 = tail call double @my_rand(double noundef %87)
  %94 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %93)
  %95 = fmul double %94, 4.000000e+00
  %96 = fmul double %94, 4.000000e+00
  %97 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 2, i64 0
  %98 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 2, i64 0
  %99 = icmp eq ptr %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  store double %96, ptr %98, align 8
  %101 = tail call double @my_rand(double noundef %93)
  %102 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %101)
  %103 = fmul double %102, 4.000000e+00
  %104 = fmul double %102, 4.000000e+00
  %105 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 2, i64 1
  %106 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 2, i64 1
  %107 = icmp eq ptr %106, %105
  %108 = zext i1 %107 to i32
  call void @assert_ft(i32 %108, i32 1)
  store double %104, ptr %106, align 8
  %109 = tail call double @my_rand(double noundef %101)
  %110 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %109)
  %111 = fmul double %110, 4.000000e+00
  %112 = fmul double %110, 4.000000e+00
  %113 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 2, i64 2
  %114 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 2, i64 2
  %115 = icmp eq ptr %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  store double %112, ptr %114, align 8
  %117 = fadd double %52, %95
  %118 = fadd double %53, %96
  store double %118, ptr %0, align 8
  %119 = fadd double %50, %103
  %120 = fadd double %51, %104
  store double %120, ptr %26, align 8
  %121 = fadd double %48, %111
  %122 = fadd double %49, %112
  store double %122, ptr %30, align 8
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98, %.preheader99
  %Diff_phi164 = phi i32 [ 3, %.preheader99 ], [ %144, %.preheader98 ]
  %Dest_phi165 = phi i32 [ %76, %.preheader99 ], [ %124, %.preheader98 ]
  %123 = phi double [ %129, %.preheader98 ], [ %109, %.preheader99 ]
  %.2 = phi double [ %129, %.preheader98 ], [ %109, %.preheader99 ]
  %124 = xor i32 %Diff_phi164, %Dest_phi165
  %125 = icmp eq i32 %124, 18
  %126 = zext i1 %125 to i32
  call void @assert_cfg_ft(i32 %126, i32 %124, i32 0)
  %127 = tail call double @my_rand(double noundef %.2)
  %128 = tail call double @xrand(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %127)
  %129 = tail call double @my_rand(double noundef %127)
  %130 = tail call double @xrand(double noundef 0.000000e+00, double noundef 1.000000e-01, double noundef %129)
  %131 = fmul double %128, %128
  %132 = fmul double %128, %128
  %133 = fneg double %128
  %134 = fneg double %128
  %135 = tail call double @llvm.fmuladd.f64(double %134, double %128, double 1.000000e+00)
  %136 = tail call double @pow(double noundef %135, double noundef 3.500000e+00) #28
  %137 = fmul double %131, %136
  %138 = fmul double %132, %136
  %139 = fcmp ogt double %130, %137
  %140 = fcmp ogt double %130, %138
  %141 = icmp eq i1 %140, %139
  %142 = zext i1 %141 to i32
  call void @assert_ft(i32 %142, i32 1)
  %143 = select i1 %140, i32 18, i32 19
  %144 = xor i32 18, %143
  br i1 %140, label %.preheader98, label %145

145:                                              ; preds = %.preheader98
  %Diff_phi166 = phi i32 [ %144, %.preheader98 ]
  %Dest_phi167 = phi i32 [ %124, %.preheader98 ]
  %146 = xor i32 %Diff_phi166, %Dest_phi167
  %147 = icmp eq i32 %146, 19
  %148 = zext i1 %147 to i32
  call void @assert_cfg_ft(i32 %148, i32 %146, i32 0)
  %149 = fmul double %128, 0x3FF6A09E667F3BCD
  %150 = fmul double %128, 0x3FF6A09E667F3BCD
  %151 = tail call double @llvm.fmuladd.f64(double %110, double %110, double 1.000000e+00)
  %152 = tail call double @pow(double noundef %151, double noundef 2.500000e-01) #28
  %153 = fdiv double %149, %152
  %154 = fdiv double %150, %152
  %155 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 5, i64 0
  %156 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 5, i64 0
  %157 = icmp eq ptr %156, %155
  %158 = zext i1 %157 to i32
  call void @assert_ft(i32 %158, i32 1)
  %159 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 5, i64 1
  %160 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 5, i64 1
  %161 = icmp eq ptr %160, %159
  %162 = zext i1 %161 to i32
  call void @assert_ft(i32 %162, i32 1)
  %163 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 5, i64 2
  %164 = getelementptr inbounds %struct.bnode, ptr %64, i64 0, i32 5, i64 2
  %165 = icmp eq ptr %164, %163
  %166 = zext i1 %165 to i32
  call void @assert_ft(i32 %166, i32 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %145
  %Diff_phi168 = phi i32 [ %185, %.preheader ], [ 7, %145 ]
  %Dest_phi169 = phi i32 [ %168, %.preheader ], [ %146, %145 ]
  %167 = phi double [ %129, %145 ], [ %175, %.preheader ]
  %.3 = phi double [ %129, %145 ], [ %175, %.preheader ]
  %168 = xor i32 %Diff_phi168, %Dest_phi169
  %169 = icmp eq i32 %168, 20
  %170 = zext i1 %169 to i32
  call void @assert_cfg_ft(i32 %170, i32 %168, i32 0)
  %171 = tail call double @my_rand(double noundef %.3)
  %172 = tail call double @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %171)
  %173 = tail call double @my_rand(double noundef %171)
  %174 = tail call double @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %173)
  %175 = tail call double @my_rand(double noundef %173)
  %176 = tail call double @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %175)
  %177 = tail call double @llvm.fmuladd.f64(double %172, double %172, double 0.000000e+00)
  %178 = tail call double @llvm.fmuladd.f64(double %174, double %174, double %177)
  %179 = tail call double @llvm.fmuladd.f64(double %176, double %176, double %178)
  %180 = fcmp ogt double %179, 1.000000e+00
  %181 = fcmp ogt double %179, 1.000000e+00
  %182 = icmp eq i1 %181, %180
  %183 = zext i1 %182 to i32
  call void @assert_ft(i32 %183, i32 1)
  %184 = select i1 %181, i32 20, i32 21
  %185 = xor i32 20, %184
  br i1 %181, label %.preheader, label %.preheader97.preheader

.preheader97.preheader:                           ; preds = %.preheader
  %Diff_phi170 = phi i32 [ %185, %.preheader ]
  %Dest_phi171 = phi i32 [ %168, %.preheader ]
  %186 = xor i32 %Diff_phi170, %Dest_phi171
  %187 = icmp eq i32 %186, 21
  %188 = zext i1 %187 to i32
  call void @assert_cfg_ft(i32 %188, i32 %186, i32 0)
  store double %172, ptr %156, align 8
  store double %174, ptr %160, align 8
  store double %176, ptr %164, align 8
  %189 = fmul double %153, 0x3FF4D8D7A58FA312
  %190 = fmul double %154, 0x3FF4D8D7A58FA312
  %191 = tail call double @sqrt(double noundef %179) #28
  %192 = fdiv double %189, %191
  %193 = fdiv double %190, %191
  %194 = load double, ptr %155, align 8
  %195 = load double, ptr %156, align 8
  %196 = fmul double %192, %194
  %197 = fmul double %193, %195
  store double %197, ptr %156, align 8
  %198 = load double, ptr %159, align 8
  %199 = load double, ptr %160, align 8
  %200 = fmul double %192, %198
  %201 = fmul double %193, %199
  store double %201, ptr %160, align 8
  %202 = load double, ptr %163, align 8
  %203 = load double, ptr %164, align 8
  %204 = fmul double %192, %202
  %205 = fmul double %193, %203
  store double %205, ptr %164, align 8
  %206 = fadd double %46, %196
  %207 = fadd double %47, %197
  store double %207, ptr %scevgep, align 8
  %208 = fadd double %44, %200
  %209 = fadd double %45, %201
  store double %209, ptr %34, align 8
  %210 = fadd double %42, %204
  %211 = fadd double %43, %205
  store double %211, ptr %38, align 8
  %212 = add nuw nsw i32 %55, 1
  %213 = add nuw nsw i32 %.091115, 1
  %214 = icmp eq i32 %213, %212
  %215 = zext i1 %214 to i32
  call void @assert_ft(i32 %215, i32 1)
  %216 = icmp eq i32 %212, %2
  %exitcond.not = icmp eq i32 %213, %2
  %217 = icmp eq i1 %exitcond.not, %216
  %218 = zext i1 %217 to i32
  call void @assert_ft(i32 %218, i32 1)
  %219 = select i1 %exitcond.not, i32 22, i32 15
  %220 = xor i32 21, %219
  br i1 %exitcond.not, label %._crit_edge, label %41

._crit_edge:                                      ; preds = %.preheader97.preheader, %.preheader100.preheader
  %Diff_phi172 = phi i32 [ %220, %.preheader97.preheader ], [ %13, %.preheader100.preheader ]
  %Dest_phi173 = phi i32 [ %186, %.preheader97.preheader ], [ 13, %.preheader100.preheader ]
  %221 = phi ptr [ %7, %.preheader100.preheader ], [ %64, %.preheader97.preheader ]
  %.090.lcssa = phi ptr [ %7, %.preheader100.preheader ], [ %64, %.preheader97.preheader ]
  %222 = xor i32 %Diff_phi172, %Dest_phi173
  %223 = icmp eq i32 %222, 22
  %224 = zext i1 %223 to i32
  call void @assert_cfg_ft(i32 %224, i32 %222, i32 0)
  %225 = icmp eq ptr %.090.lcssa, %221
  %226 = zext i1 %225 to i32
  call void @assert_ft(i32 %226, i32 1)
  %227 = getelementptr inbounds %struct.bnode, ptr %221, i64 0, i32 9
  %228 = getelementptr inbounds %struct.bnode, ptr %.090.lcssa, i64 0, i32 9
  %229 = icmp eq ptr %228, %227
  %230 = zext i1 %229 to i32
  call void @assert_ft(i32 %230, i32 1)
  store ptr null, ptr %228, align 8
  %231 = getelementptr inbounds %struct.bnode, ptr %7, i64 0, i32 9
  %232 = getelementptr inbounds %struct.bnode, ptr %7, i64 0, i32 9
  %233 = icmp eq ptr %232, %231
  %234 = zext i1 %233 to i32
  call void @assert_ft(i32 %234, i32 1)
  %235 = load ptr, ptr %231, align 8
  %236 = load ptr, ptr %232, align 8
  %237 = icmp eq ptr %236, %235
  %238 = zext i1 %237 to i32
  call void @assert_ft(i32 %238, i32 1)
  %239 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 2
  %240 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 2
  %241 = icmp eq ptr %240, %239
  %242 = zext i1 %241 to i32
  call void @assert_ft(i32 %242, i32 1)
  store ptr %236, ptr %240, align 8
  %243 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 3
  %244 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 3
  %245 = icmp eq ptr %244, %243
  %246 = zext i1 %245 to i32
  call void @assert_ft(i32 %246, i32 1)
  store ptr %.090.lcssa, ptr %244, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @intcoord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load double, ptr %3, align 8
  %8 = load double, ptr %4, align 8
  %9 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = load double, ptr %9, align 8
  %14 = load double, ptr %10, align 8
  %15 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %16 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = load double, ptr %15, align 8
  %20 = load double, ptr %16, align 8
  %21 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %22 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %23 = icmp eq ptr %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = load double, ptr %21, align 8
  %26 = load double, ptr %22, align 8
  %27 = load double, ptr %1, align 8
  %28 = load double, ptr %1, align 8
  %29 = fsub double %13, %27
  %30 = fsub double %14, %28
  %31 = fdiv double %29, %7
  %32 = fdiv double %30, %8
  %33 = fcmp oge double %31, 0.000000e+00
  %34 = fcmp oge double %32, 0.000000e+00
  %35 = icmp eq i1 %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = fcmp olt double %31, 1.000000e+00
  %38 = fcmp olt double %32, 1.000000e+00
  %39 = icmp eq i1 %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = and i1 %33, %37
  %or.cond = and i1 %34, %38
  %42 = icmp eq i1 %or.cond, %41
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %45 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %46 = icmp eq ptr %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = load double, ptr %44, align 8
  %49 = load double, ptr %45, align 8
  %50 = fsub double %19, %48
  %51 = fsub double %20, %49
  %52 = fdiv double %50, %7
  %53 = fdiv double %51, %8
  %54 = fcmp oge double %52, 0.000000e+00
  %55 = fcmp oge double %53, 0.000000e+00
  %56 = icmp eq i1 %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = fcmp olt double %52, 1.000000e+00
  %59 = fcmp olt double %53, 1.000000e+00
  %60 = icmp eq i1 %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = and i1 %54, %58
  %or.cond3 = and i1 %55, %59
  %63 = icmp eq i1 %or.cond3, %62
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = select i1 %or.cond3, i32 24, i32 25
  %66 = xor i32 23, %65
  br i1 %or.cond3, label %67, label %89

67:                                               ; preds = %2
  %Diff_phi = phi i32 [ %66, %2 ]
  %Dest_phi = phi i32 [ 23, %2 ]
  %68 = xor i32 %Diff_phi, %Dest_phi
  %69 = icmp eq i32 %68, 24
  %70 = zext i1 %69 to i32
  call void @assert_cfg_ft(i32 %70, i32 %68, i32 0)
  %71 = select i1 %41, i64 4294967296, i64 0
  %.sroa.5.0 = select i1 %or.cond, i64 4294967296, i64 0
  %72 = icmp eq i64 %.sroa.5.0, %71
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = fmul double %52, 0x41D0000000000000
  %75 = fmul double %53, 0x41D0000000000000
  %76 = tail call double @llvm.floor.f64(double %75)
  %77 = fptosi double %76 to i32
  %78 = fptosi double %76 to i32
  %79 = icmp eq i32 %78, %77
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = zext i32 %77 to i64
  %82 = zext i32 %78 to i64
  %83 = icmp eq i64 %82, %81
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = shl nuw i64 %81, 32
  %86 = shl nuw i64 %82, 32
  %87 = icmp eq i64 %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  br label %89

89:                                               ; preds = %67, %2
  %Diff_phi28 = phi i32 [ %66, %2 ], [ 1, %67 ]
  %Dest_phi29 = phi i32 [ 23, %2 ], [ %68, %67 ]
  %90 = phi i64 [ %85, %67 ], [ 0, %2 ]
  %.sroa.225.0 = phi i64 [ %86, %67 ], [ 0, %2 ]
  %91 = phi i64 [ %71, %67 ], [ 0, %2 ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %67 ], [ 0, %2 ]
  %92 = xor i32 %Diff_phi28, %Dest_phi29
  %93 = icmp eq i32 %92, 25
  %94 = zext i1 %93 to i32
  call void @assert_cfg_ft(i32 %94, i32 %92, i32 0)
  %95 = icmp eq i64 %.sroa.225.0, %90
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = icmp eq i64 %.sroa.5.1, %91
  %98 = zext i1 %97 to i32
  call void @assert_ft(i32 %98, i32 1)
  %99 = fmul double %31, 0x41D0000000000000
  %100 = fmul double %32, 0x41D0000000000000
  %101 = tail call double @llvm.floor.f64(double %100)
  %102 = fptosi double %101 to i32
  %103 = fptosi double %101 to i32
  %104 = icmp eq i32 %103, %102
  %105 = zext i1 %104 to i32
  call void @assert_ft(i32 %105, i32 1)
  %106 = zext i32 %102 to i64
  %107 = zext i32 %103 to i64
  %108 = icmp eq i64 %107, %106
  %109 = zext i1 %108 to i32
  call void @assert_ft(i32 %109, i32 1)
  %110 = select i1 %41, i64 %106, i64 0
  %.sroa.024.0 = select i1 %or.cond, i64 %107, i64 0
  %111 = icmp eq i64 %.sroa.024.0, %110
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  %113 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %114 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %115 = icmp eq ptr %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = load double, ptr %113, align 8
  %118 = load double, ptr %114, align 8
  %119 = fsub double %25, %117
  %120 = fsub double %26, %118
  %121 = fdiv double %119, %7
  %122 = fdiv double %120, %8
  %123 = fcmp oge double %121, 0.000000e+00
  %124 = fcmp oge double %122, 0.000000e+00
  %125 = icmp eq i1 %124, %123
  %126 = zext i1 %125 to i32
  call void @assert_ft(i32 %126, i32 1)
  %127 = fcmp olt double %121, 1.000000e+00
  %128 = fcmp olt double %122, 1.000000e+00
  %129 = icmp eq i1 %128, %127
  %130 = zext i1 %129 to i32
  call void @assert_ft(i32 %130, i32 1)
  %131 = and i1 %123, %127
  %or.cond5 = and i1 %124, %128
  %132 = icmp eq i1 %or.cond5, %131
  %133 = zext i1 %132 to i32
  call void @assert_ft(i32 %133, i32 1)
  %134 = fmul double %121, 0x41D0000000000000
  %135 = fmul double %122, 0x41D0000000000000
  %136 = tail call double @llvm.floor.f64(double %135)
  %137 = fptosi double %136 to i32
  %138 = fptosi double %136 to i32
  %139 = icmp eq i32 %138, %137
  %140 = zext i1 %139 to i32
  call void @assert_ft(i32 %140, i32 1)
  %141 = zext i32 %137 to i64
  %142 = zext i32 %138 to i64
  %143 = icmp eq i64 %142, %141
  %144 = zext i1 %143 to i32
  call void @assert_ft(i32 %144, i32 1)
  %145 = or i64 %90, %110
  %.sroa.024.0.insert.insert = or i64 %.sroa.225.0, %.sroa.024.0
  %146 = icmp eq i64 %.sroa.024.0.insert.insert, %145
  %147 = zext i1 %146 to i32
  call void @assert_ft(i32 %147, i32 1)
  %148 = insertvalue { i64, i64 } poison, i64 %145, 0
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.024.0.insert.insert, 0
  %149 = or i64 %91, %141
  %150 = or i64 %.sroa.5.1, %142
  %151 = icmp eq i64 %150, %149
  %152 = zext i1 %151 to i32
  call void @assert_ft(i32 %152, i32 1)
  %153 = select i1 %131, i64 %149, i64 0
  %.sroa.3.8.insert.insert = select i1 %or.cond5, i64 %150, i64 0
  %154 = icmp eq i64 %.sroa.3.8.insert.insert, %153
  %155 = zext i1 %154 to i32
  call void @assert_ft(i32 %155, i32 1)
  %156 = insertvalue { i64, i64 } %148, i64 %153, 1
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @old_subindex(i64 %0, i64 %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = trunc i64 %0 to i32
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %5 = icmp eq i32 %.sroa.0.0.extract.trunc, %4
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = lshr i64 %0, 32
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %8 = icmp eq i64 %.sroa.2.0.extract.shift, %7
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = trunc i64 %7 to i32
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i32
  %11 = icmp eq i32 %.sroa.2.0.extract.trunc, %10
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = trunc i64 %1 to i32
  %.sroa.3.8.extract.trunc = trunc i64 %1 to i32
  %14 = icmp eq i32 %.sroa.3.8.extract.trunc, %13
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = and i32 %4, %2
  %17 = and i32 %.sroa.0.0.extract.trunc, %2
  %18 = icmp eq i32 %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = icmp eq i32 %16, 0
  %.not = icmp eq i32 %17, 0
  %21 = icmp eq i1 %.not, %20
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = select i1 %20, i32 0, i32 4
  %24 = select i1 %.not, i32 0, i32 4
  %25 = icmp eq i32 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = and i32 %10, %2
  %28 = and i32 %.sroa.2.0.extract.trunc, %2
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = icmp eq i32 %27, 0
  %.not.1 = icmp eq i32 %28, 0
  %32 = icmp eq i1 %.not.1, %31
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = select i1 %31, i32 0, i32 2
  %35 = select i1 %.not.1, i32 0, i32 2
  %36 = icmp eq i32 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = or i32 %34, %23
  %.1.1 = or i32 %35, %24
  %39 = icmp eq i32 %.1.1, %38
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = and i32 %13, %2
  %42 = and i32 %.sroa.3.8.extract.trunc, %2
  %43 = icmp eq i32 %42, %41
  %44 = zext i1 %43 to i32
  call void @assert_ft(i32 %44, i32 1)
  %45 = icmp ne i32 %41, 0
  %.not.2 = icmp ne i32 %42, 0
  %46 = icmp eq i1 %.not.2, %45
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = zext i1 %45 to i32
  %49 = zext i1 %.not.2 to i32
  %50 = icmp eq i32 %49, %48
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = or i32 %38, %48
  %.1.2 = or i32 %.1.1, %49
  %53 = icmp eq i32 %.1.2, %52
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  ret i32 %.1.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stepsystem(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = icmp eq ptr %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = icmp eq ptr %7, null
  %.not = icmp eq ptr %8, null
  %12 = icmp eq i1 %.not, %11
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = select i1 %.not, i32 29, i32 28
  %15 = xor i32 27, %14
  br i1 %.not, label %21, label %16

16:                                               ; preds = %2
  %Diff_phi = phi i32 [ %15, %2 ]
  %Dest_phi = phi i32 [ 27, %2 ]
  %17 = xor i32 %Diff_phi, %Dest_phi
  %18 = icmp eq i32 %17, 28
  %19 = zext i1 %18 to i32
  call void @assert_cfg_ft(i32 %19, i32 %17, i32 0)
  %20 = tail call i32 @freetree1(ptr noundef nonnull %8)
  store ptr null, ptr %4, align 8
  br label %21

21:                                               ; preds = %16, %2
  %Diff_phi12 = phi i32 [ 1, %16 ], [ %15, %2 ]
  %Dest_phi13 = phi i32 [ %17, %16 ], [ 27, %2 ]
  %22 = xor i32 %Diff_phi12, %Dest_phi13
  %23 = icmp eq i32 %22, 29
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  %25 = load i32, ptr @nbody, align 4
  %26 = load i32, ptr @nbody, align 4
  %27 = icmp eq i32 %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = tail call ptr @maketree(ptr poison, i32 noundef %26, ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0)
  store ptr %29, ptr %4, align 8
  %30 = tail call i32 @computegrav(ptr noundef nonnull %0, i32 noundef %1)
  %31 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4
  %32 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4
  %33 = icmp eq ptr %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = load ptr, ptr %31, align 8
  %36 = load ptr, ptr %32, align 8
  %37 = icmp eq ptr %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = tail call i32 @vp(ptr noundef %36, i32 noundef %1)
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @freetree1(ptr noundef %0) local_unnamed_addr #7 {
  %2 = tail call i32 @freetree(ptr noundef %0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @maketree(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 2
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  store ptr null, ptr %7, align 8
  store i32 %1, ptr @nbody, align 4
  %10 = load i32, ptr @__NumNodes, align 4
  %11 = load i32, ptr @__NumNodes, align 4
  %12 = icmp eq i32 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = icmp sgt i32 %10, 0
  %15 = icmp sgt i32 %11, 0
  %16 = icmp eq i1 %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = select i1 %15, i32 32, i32 38
  %19 = xor i32 31, %18
  br i1 %15, label %.lr.ph32.preheader, label %._crit_edge

.lr.ph32.preheader:                               ; preds = %5
  %Diff_phi = phi i32 [ %19, %5 ]
  %Dest_phi = phi i32 [ 31, %5 ]
  %20 = xor i32 %Diff_phi, %Dest_phi
  %21 = icmp eq i32 %20, 32
  %22 = zext i1 %21 to i32
  call void @assert_cfg_ft(i32 %22, i32 %20, i32 0)
  %23 = zext i32 %10 to i64
  %24 = zext i32 %11 to i64
  %25 = icmp eq i64 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  br label %.lr.ph32

.loopexit:                                        ; preds = %116, %.lr.ph32
  %Diff_phi37 = phi i32 [ %135, %116 ], [ %74, %.lr.ph32 ]
  %Dest_phi38 = phi i32 [ %119, %116 ], [ %47, %.lr.ph32 ]
  %27 = phi ptr [ %43, %.lr.ph32 ], [ %117, %116 ]
  %28 = phi ptr [ %44, %.lr.ph32 ], [ %118, %116 ]
  %29 = xor i32 %Diff_phi37, %Dest_phi38
  %30 = icmp eq i32 %29, 33
  %31 = zext i1 %30 to i32
  call void @assert_cfg_ft(i32 %31, i32 %29, i32 0)
  %32 = icmp eq ptr %28, %27
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = icmp sgt i64 %45, 1
  %35 = icmp sgt i64 %indvars.iv, 1
  %36 = icmp eq i1 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = add nsw i64 %45, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %39 = icmp eq i64 %indvars.iv.next, %38
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = select i1 %35, i32 34, i32 38
  %42 = xor i32 33, %41
  br i1 %35, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %.loopexit, %.lr.ph32.preheader
  %Diff_phi39 = phi i32 [ 2, %.lr.ph32.preheader ], [ %42, %.loopexit ]
  %Dest_phi40 = phi i32 [ %20, %.lr.ph32.preheader ], [ %29, %.loopexit ]
  %43 = phi ptr [ null, %.lr.ph32.preheader ], [ %27, %.loopexit ]
  %44 = phi ptr [ null, %.lr.ph32.preheader ], [ %28, %.loopexit ]
  %45 = phi i64 [ %23, %.lr.ph32.preheader ], [ %38, %.loopexit ]
  %indvars.iv = phi i64 [ %24, %.lr.ph32.preheader ], [ %indvars.iv.next, %.loopexit ]
  %46 = phi i32 [ %10, %.lr.ph32.preheader ], [ %56, %.loopexit ]
  %.02631.in = phi i32 [ %11, %.lr.ph32.preheader ], [ %.02631, %.loopexit ]
  %47 = xor i32 %Diff_phi39, %Dest_phi40
  %48 = icmp eq i32 %47, 34
  %49 = zext i1 %48 to i32
  call void @assert_cfg_ft(i32 %49, i32 %47, i32 0)
  %50 = icmp eq i32 %.02631.in, %46
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = icmp eq ptr %44, %43
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = icmp eq i64 %indvars.iv, %45
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = add nsw i32 %46, -1
  %.02631 = add nsw i32 %.02631.in, -1
  %57 = icmp eq i32 %.02631, %56
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = zext i32 %56 to i64
  %60 = zext i32 %.02631 to i64
  %61 = icmp eq i64 %60, %59
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 4, i64 %59
  %64 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 4, i64 %60
  %65 = icmp eq ptr %64, %63
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = load ptr, ptr %63, align 8
  %.027 = load ptr, ptr %64, align 8
  %68 = icmp eq ptr %.027, %67
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = icmp eq ptr %67, null
  %.not28 = icmp eq ptr %.027, null
  %71 = icmp eq i1 %.not28, %70
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = select i1 %.not28, i32 33, i32 35
  %74 = xor i32 34, %73
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %116, %.lr.ph32
  %Diff_phi41 = phi i32 [ %74, %.lr.ph32 ], [ %135, %116 ]
  %Dest_phi42 = phi i32 [ %47, %.lr.ph32 ], [ %119, %116 ]
  %75 = phi ptr [ %117, %116 ], [ %43, %.lr.ph32 ]
  %76 = phi ptr [ %118, %116 ], [ %44, %.lr.ph32 ]
  %77 = phi ptr [ %128, %116 ], [ %67, %.lr.ph32 ]
  %.029 = phi ptr [ %.0, %116 ], [ %.027, %.lr.ph32 ]
  %78 = xor i32 %Diff_phi41, %Dest_phi42
  %79 = icmp eq i32 %78, 35
  %80 = zext i1 %79 to i32
  call void @assert_cfg_ft(i32 %80, i32 %78, i32 0)
  %81 = icmp eq ptr %76, %75
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  %83 = icmp eq ptr %.029, %77
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = getelementptr inbounds %struct.bnode, ptr %77, i64 0, i32 1
  %86 = getelementptr inbounds %struct.bnode, ptr %.029, i64 0, i32 1
  %87 = icmp eq ptr %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = load double, ptr %85, align 8
  %90 = load double, ptr %86, align 8
  %91 = fcmp une double %89, 0.000000e+00
  %92 = fcmp une double %90, 0.000000e+00
  %93 = icmp eq i1 %92, %91
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  %95 = select i1 %92, i32 36, i32 37
  %96 = xor i32 35, %95
  br i1 %92, label %97, label %116

97:                                               ; preds = %.lr.ph
  %Diff_phi43 = phi i32 [ %96, %.lr.ph ]
  %Dest_phi44 = phi i32 [ %78, %.lr.ph ]
  %98 = xor i32 %Diff_phi43, %Dest_phi44
  %99 = icmp eq i32 %98, 36
  %100 = zext i1 %99 to i32
  call void @assert_cfg_ft(i32 %100, i32 %98, i32 0)
  %101 = tail call i32 @expandbox(ptr noundef nonnull %.029, ptr noundef %2, i32 poison, i32 poison)
  %102 = tail call { i64, i64 } @intcoord(ptr noundef nonnull %.029, ptr noundef %2)
  %103 = extractvalue { i64, i64 } %102, 0
  %104 = extractvalue { i64, i64 } %102, 0
  %105 = icmp eq i64 %104, %103
  %106 = zext i1 %105 to i32
  call void @assert_ft(i32 %106, i32 1)
  %107 = extractvalue { i64, i64 } %102, 1
  %108 = extractvalue { i64, i64 } %102, 1
  %109 = icmp eq i64 %108, %107
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = load ptr, ptr %6, align 8
  %112 = load ptr, ptr %7, align 8
  %113 = icmp eq ptr %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = tail call ptr @loadtree(ptr noundef nonnull %.029, i64 %104, i64 %108, ptr noundef %112, i32 noundef 536870912, ptr noundef %2)
  store ptr %115, ptr %7, align 8
  br label %116

116:                                              ; preds = %97, %.lr.ph
  %Diff_phi45 = phi i32 [ %96, %.lr.ph ], [ 1, %97 ]
  %Dest_phi46 = phi i32 [ %78, %.lr.ph ], [ %98, %97 ]
  %117 = phi ptr [ %75, %.lr.ph ], [ %115, %97 ]
  %118 = phi ptr [ %76, %.lr.ph ], [ %115, %97 ]
  %119 = xor i32 %Diff_phi45, %Dest_phi46
  %120 = icmp eq i32 %119, 37
  %121 = zext i1 %120 to i32
  call void @assert_cfg_ft(i32 %121, i32 %119, i32 0)
  %122 = icmp eq ptr %118, %117
  %123 = zext i1 %122 to i32
  call void @assert_ft(i32 %123, i32 1)
  %124 = getelementptr inbounds %struct.bnode, ptr %77, i64 0, i32 10
  %125 = getelementptr inbounds %struct.bnode, ptr %.029, i64 0, i32 10
  %126 = icmp eq ptr %125, %124
  %127 = zext i1 %126 to i32
  call void @assert_ft(i32 %127, i32 1)
  %128 = load ptr, ptr %124, align 8
  %.0 = load ptr, ptr %125, align 8
  %129 = icmp eq ptr %.0, %128
  %130 = zext i1 %129 to i32
  call void @assert_ft(i32 %130, i32 1)
  %131 = icmp eq ptr %128, null
  %.not = icmp eq ptr %.0, null
  %132 = icmp eq i1 %.not, %131
  %133 = zext i1 %132 to i32
  call void @assert_ft(i32 %133, i32 1)
  %134 = select i1 %.not, i32 33, i32 35
  %135 = xor i32 37, %134
  br i1 %.not, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %5
  %Diff_phi47 = phi i32 [ %42, %.loopexit ], [ %19, %5 ]
  %Dest_phi48 = phi i32 [ %29, %.loopexit ], [ 31, %5 ]
  %136 = phi ptr [ null, %5 ], [ %27, %.loopexit ]
  %137 = phi ptr [ null, %5 ], [ %28, %.loopexit ]
  %138 = xor i32 %Diff_phi47, %Dest_phi48
  %139 = icmp eq i32 %138, 38
  %140 = zext i1 %139 to i32
  call void @assert_cfg_ft(i32 %140, i32 %138, i32 0)
  %141 = icmp eq ptr %137, %136
  %142 = zext i1 %141 to i32
  call void @assert_ft(i32 %142, i32 1)
  %143 = tail call double @hackcofm(ptr noundef %137)
  %144 = load ptr, ptr %6, align 8
  %145 = load ptr, ptr %7, align 8
  %146 = icmp eq ptr %145, %144
  %147 = zext i1 %146 to i32
  call void @assert_ft(i32 %147, i32 1)
  ret ptr %145
}

; Function Attrs: nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @computegrav(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load double, ptr %3, align 8
  %8 = load double, ptr %4, align 8
  %9 = load i32, ptr @__NumNodes, align 4
  %10 = load i32, ptr @__NumNodes, align 4
  %11 = icmp eq i32 %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = icmp sgt i32 %9, 0
  %14 = icmp sgt i32 %10, 0
  %15 = icmp eq i1 %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = select i1 %14, i32 40, i32 42
  %18 = xor i32 39, %17
  br i1 %14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2
  %Diff_phi = phi i32 [ %18, %2 ]
  %Dest_phi = phi i32 [ 39, %2 ]
  %19 = xor i32 %Diff_phi, %Dest_phi
  %20 = icmp eq i32 %19, 40
  %21 = zext i1 %20 to i32
  call void @assert_cfg_ft(i32 %21, i32 %19, i32 0)
  %22 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %24 = icmp eq ptr %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = zext i32 %9 to i64
  %27 = zext i32 %10 to i64
  %28 = icmp eq i64 %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  br label %30

30:                                               ; preds = %30, %.lr.ph
  %Diff_phi11 = phi i32 [ 1, %.lr.ph ], [ %68, %30 ]
  %Dest_phi12 = phi i32 [ %19, %.lr.ph ], [ %33, %30 ]
  %31 = phi i64 [ %26, %.lr.ph ], [ %64, %30 ]
  %indvars.iv = phi i64 [ %27, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %32 = phi i32 [ %9, %.lr.ph ], [ %40, %30 ]
  %.0.in10 = phi i32 [ %10, %.lr.ph ], [ %.0, %30 ]
  %33 = xor i32 %Diff_phi11, %Dest_phi12
  %34 = icmp eq i32 %33, 41
  %35 = zext i1 %34 to i32
  call void @assert_cfg_ft(i32 %35, i32 %33, i32 0)
  %36 = icmp eq i64 %indvars.iv, %31
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = icmp eq i32 %.0.in10, %32
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = add nsw i32 %32, -1
  %.0 = add nsw i32 %.0.in10, -1
  %41 = icmp eq i32 %.0, %40
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = load ptr, ptr %22, align 8
  %44 = load ptr, ptr %23, align 8
  %45 = icmp eq ptr %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = zext i32 %40 to i64
  %48 = zext i32 %.0 to i64
  %49 = icmp eq i64 %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4, i64 %47
  %52 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4, i64 %48
  %53 = icmp eq ptr %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = load ptr, ptr %51, align 8
  %56 = load ptr, ptr %52, align 8
  %57 = icmp eq ptr %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = tail call i32 @grav(double noundef %8, ptr noundef %44, ptr noundef %56, i32 noundef %1, double noundef 6.250000e-03)
  %60 = icmp ugt i64 %31, 1
  %61 = icmp ugt i64 %indvars.iv, 1
  %62 = icmp eq i1 %61, %60
  %63 = zext i1 %62 to i32
  call void @assert_ft(i32 %63, i32 1)
  %64 = add nsw i64 %31, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %65 = icmp eq i64 %indvars.iv.next, %64
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = select i1 %61, i32 41, i32 42
  %68 = xor i32 41, %67
  br i1 %61, label %30, label %._crit_edge

._crit_edge:                                      ; preds = %30, %2
  %Diff_phi13 = phi i32 [ %68, %30 ], [ %18, %2 ]
  %Dest_phi14 = phi i32 [ %33, %30 ], [ 39, %2 ]
  %69 = xor i32 %Diff_phi13, %Dest_phi14
  %70 = icmp eq i32 %69, 42
  %71 = zext i1 %70 to i32
  call void @assert_cfg_ft(i32 %71, i32 %69, i32 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %.not117153 = icmp eq ptr %0, null
  %4 = icmp eq i1 %.not117153, %3
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %.not117153, i32 96, i32 44
  %7 = xor i32 43, %6
  br i1 %.not117153, label %._crit_edge, label %.preheader140.lr.ph

.preheader140.lr.ph:                              ; preds = %2
  %Diff_phi = phi i32 [ %7, %2 ]
  %Dest_phi = phi i32 [ 43, %2 ]
  %8 = xor i32 %Diff_phi, %Dest_phi
  %9 = icmp eq i32 %8, 44
  %10 = zext i1 %9 to i32
  call void @assert_cfg_ft(i32 %10, i32 %8, i32 0)
  %11 = icmp sgt i32 %1, 0
  %12 = icmp sgt i32 %1, 0
  %13 = icmp eq i1 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  br label %.preheader140

.preheader140:                                    ; preds = %597, %.preheader140.lr.ph
  %Diff_phi178 = phi i32 [ 1, %.preheader140.lr.ph ], [ %613, %597 ]
  %Dest_phi179 = phi i32 [ %8, %.preheader140.lr.ph ], [ %598, %597 ]
  %15 = phi ptr [ %0, %.preheader140.lr.ph ], [ %605, %597 ]
  %.0154 = phi ptr [ %0, %.preheader140.lr.ph ], [ %606, %597 ]
  %16 = xor i32 %Diff_phi178, %Dest_phi179
  %17 = icmp eq i32 %16, 45
  %18 = zext i1 %17 to i32
  call void @assert_cfg_ft(i32 %18, i32 %16, i32 0)
  %19 = icmp eq ptr %.0154, %15
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = getelementptr i8, ptr %15, i64 96
  %scevgep = getelementptr i8, ptr %.0154, i64 96
  %22 = icmp eq ptr %scevgep, %21
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = load double, ptr %21, align 8
  %.sroa.0172.0.copyload = load double, ptr %scevgep, align 8
  %25 = getelementptr i8, ptr %15, i64 104
  %.sroa.3174.0.scevgep.sroa_idx = getelementptr i8, ptr %.0154, i64 104
  %26 = icmp eq ptr %.sroa.3174.0.scevgep.sroa_idx, %25
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = load double, ptr %25, align 8
  %.sroa.3174.0.copyload = load double, ptr %.sroa.3174.0.scevgep.sroa_idx, align 8
  %29 = getelementptr i8, ptr %15, i64 112
  %.sroa.4176.0.scevgep.sroa_idx = getelementptr i8, ptr %.0154, i64 112
  %30 = icmp eq ptr %.sroa.4176.0.scevgep.sroa_idx, %29
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = load double, ptr %29, align 8
  %.sroa.4176.0.copyload = load double, ptr %.sroa.4176.0.scevgep.sroa_idx, align 8
  %33 = select i1 %12, i32 46, i32 47
  %34 = xor i32 45, %33
  br i1 %12, label %.preheader139.preheader, label %.loopexit

.preheader139.preheader:                          ; preds = %.preheader140
  %Diff_phi180 = phi i32 [ %34, %.preheader140 ]
  %Dest_phi181 = phi i32 [ %16, %.preheader140 ]
  %35 = xor i32 %Diff_phi180, %Dest_phi181
  %36 = icmp eq i32 %35, 46
  %37 = zext i1 %36 to i32
  call void @assert_cfg_ft(i32 %37, i32 %35, i32 0)
  %38 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 6, i64 0
  %39 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 0
  %40 = icmp eq ptr %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = load double, ptr %38, align 8
  %43 = load double, ptr %39, align 8
  %44 = fsub double %24, %42
  %45 = fsub double %.sroa.0172.0.copyload, %43
  %46 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 6, i64 1
  %47 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 1
  %48 = icmp eq ptr %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = load double, ptr %46, align 8
  %51 = load double, ptr %47, align 8
  %52 = fsub double %28, %50
  %53 = fsub double %.sroa.3174.0.copyload, %51
  %54 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 6, i64 2
  %55 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 2
  %56 = icmp eq ptr %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = load double, ptr %54, align 8
  %59 = load double, ptr %55, align 8
  %60 = fsub double %32, %58
  %61 = fsub double %.sroa.4176.0.copyload, %59
  %62 = fmul double %44, 6.250000e-03
  %63 = fmul double %45, 6.250000e-03
  %64 = fmul double %52, 6.250000e-03
  %65 = fmul double %53, 6.250000e-03
  %66 = fmul double %60, 6.250000e-03
  %67 = fmul double %61, 6.250000e-03
  %68 = getelementptr %struct.bnode, ptr %15, i64 0, i32 5, i64 0
  %69 = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 5, i64 0
  %70 = icmp eq ptr %69, %68
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  %72 = load double, ptr %68, align 8
  %73 = load double, ptr %69, align 8
  %74 = fadd double %72, %62
  %75 = fadd double %73, %63
  %76 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 5, i64 1
  %77 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 1
  %78 = icmp eq ptr %77, %76
  %79 = zext i1 %78 to i32
  call void @assert_ft(i32 %79, i32 1)
  %80 = load double, ptr %76, align 8
  %81 = load double, ptr %77, align 8
  %82 = fadd double %80, %64
  %83 = fadd double %81, %65
  %84 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 5, i64 2
  %85 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 2
  %86 = icmp eq ptr %85, %84
  %87 = zext i1 %86 to i32
  call void @assert_ft(i32 %87, i32 1)
  %88 = load double, ptr %84, align 8
  %89 = load double, ptr %85, align 8
  %90 = fadd double %88, %66
  %91 = fadd double %89, %67
  store double %75, ptr %69, align 8
  %92 = getelementptr %struct.bnode, ptr %15, i64 0, i32 5, i64 1
  %.sroa.7165.0.scevgep155.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 5, i64 1
  %93 = icmp eq ptr %.sroa.7165.0.scevgep155.sroa_idx, %92
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  store double %83, ptr %.sroa.7165.0.scevgep155.sroa_idx, align 8
  %95 = getelementptr %struct.bnode, ptr %15, i64 0, i32 5, i64 2
  %.sroa.13.0.scevgep155.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 5, i64 2
  %96 = icmp eq ptr %.sroa.13.0.scevgep155.sroa_idx, %95
  %97 = zext i1 %96 to i32
  call void @assert_ft(i32 %97, i32 1)
  store double %91, ptr %.sroa.13.0.scevgep155.sroa_idx, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader139.preheader, %.preheader140
  %Diff_phi182 = phi i32 [ 1, %.preheader139.preheader ], [ %34, %.preheader140 ]
  %Dest_phi183 = phi i32 [ %35, %.preheader139.preheader ], [ %16, %.preheader140 ]
  %98 = xor i32 %Diff_phi182, %Dest_phi183
  %99 = icmp eq i32 %98, 47
  %100 = zext i1 %99 to i32
  call void @assert_cfg_ft(i32 %100, i32 %98, i32 0)
  %101 = getelementptr %struct.bnode, ptr %15, i64 0, i32 2
  %102 = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 2
  %103 = icmp eq ptr %102, %101
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  %105 = load double, ptr %101, align 8
  %106 = load double, ptr %102, align 8
  %107 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 2, i64 1
  %108 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 2, i64 1
  %109 = icmp eq ptr %108, %107
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = load double, ptr %107, align 8
  %112 = load double, ptr %108, align 8
  %113 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 2, i64 2
  %114 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 2, i64 2
  %115 = icmp eq ptr %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = load double, ptr %113, align 8
  %118 = load double, ptr %114, align 8
  %119 = tail call i32 (double, ...) @isnan(double noundef %106) #28
  %120 = icmp eq i32 %119, 0
  %.not118 = icmp eq i32 %119, 0
  %121 = icmp eq i1 %.not118, %120
  %122 = zext i1 %121 to i32
  call void @assert_ft(i32 %122, i32 1)
  %123 = select i1 %.not118, i32 49, i32 48
  %124 = xor i32 47, %123
  br i1 %.not118, label %131, label %125

125:                                              ; preds = %.loopexit
  %Diff_phi184 = phi i32 [ %124, %.loopexit ]
  %Dest_phi185 = phi i32 [ %98, %.loopexit ]
  %126 = xor i32 %Diff_phi184, %Dest_phi185
  %127 = icmp eq i32 %126, 48
  %128 = zext i1 %127 to i32
  call void @assert_cfg_ft(i32 %128, i32 %126, i32 0)
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 99)
  %130 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

131:                                              ; preds = %.loopexit
  %Diff_phi186 = phi i32 [ %124, %.loopexit ]
  %Dest_phi187 = phi i32 [ %98, %.loopexit ]
  %132 = xor i32 %Diff_phi186, %Dest_phi187
  %133 = icmp eq i32 %132, 49
  %134 = zext i1 %133 to i32
  call void @assert_cfg_ft(i32 %134, i32 %132, i32 0)
  %135 = tail call i32 (double, ...) @isnan(double noundef %112) #28
  %136 = icmp eq i32 %135, 0
  %.not119 = icmp eq i32 %135, 0
  %137 = icmp eq i1 %.not119, %136
  %138 = zext i1 %137 to i32
  call void @assert_ft(i32 %138, i32 1)
  %139 = select i1 %.not119, i32 51, i32 50
  %140 = xor i32 49, %139
  br i1 %.not119, label %147, label %141

141:                                              ; preds = %131
  %Diff_phi188 = phi i32 [ %140, %131 ]
  %Dest_phi189 = phi i32 [ %132, %131 ]
  %142 = xor i32 %Diff_phi188, %Dest_phi189
  %143 = icmp eq i32 %142, 50
  %144 = zext i1 %143 to i32
  call void @assert_cfg_ft(i32 %144, i32 %142, i32 0)
  %145 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 98)
  %146 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

147:                                              ; preds = %131
  %Diff_phi190 = phi i32 [ %140, %131 ]
  %Dest_phi191 = phi i32 [ %132, %131 ]
  %148 = xor i32 %Diff_phi190, %Dest_phi191
  %149 = icmp eq i32 %148, 51
  %150 = zext i1 %149 to i32
  call void @assert_cfg_ft(i32 %150, i32 %148, i32 0)
  %151 = tail call i32 (double, ...) @isnan(double noundef %118) #28
  %152 = icmp eq i32 %151, 0
  %.not120 = icmp eq i32 %151, 0
  %153 = icmp eq i1 %.not120, %152
  %154 = zext i1 %153 to i32
  call void @assert_ft(i32 %154, i32 1)
  %155 = select i1 %.not120, i32 53, i32 52
  %156 = xor i32 51, %155
  br i1 %.not120, label %163, label %157

157:                                              ; preds = %147
  %Diff_phi192 = phi i32 [ %156, %147 ]
  %Dest_phi193 = phi i32 [ %148, %147 ]
  %158 = xor i32 %Diff_phi192, %Dest_phi193
  %159 = icmp eq i32 %158, 52
  %160 = zext i1 %159 to i32
  call void @assert_cfg_ft(i32 %160, i32 %158, i32 0)
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 97)
  %162 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

163:                                              ; preds = %147
  %Diff_phi194 = phi i32 [ %156, %147 ]
  %Dest_phi195 = phi i32 [ %148, %147 ]
  %164 = xor i32 %Diff_phi194, %Dest_phi195
  %165 = icmp eq i32 %164, 53
  %166 = zext i1 %165 to i32
  call void @assert_cfg_ft(i32 %166, i32 %164, i32 0)
  %167 = tail call double @llvm.fabs.f64(double %106)
  %168 = fcmp olt double %167, 1.000000e+01
  %169 = fcmp olt double %167, 1.000000e+01
  %170 = icmp eq i1 %169, %168
  %171 = zext i1 %170 to i32
  call void @assert_ft(i32 %171, i32 1)
  %172 = select i1 %169, i32 55, i32 54
  %173 = xor i32 53, %172
  br i1 %169, label %180, label %174

174:                                              ; preds = %163
  %Diff_phi196 = phi i32 [ %173, %163 ]
  %Dest_phi197 = phi i32 [ %164, %163 ]
  %175 = xor i32 %Diff_phi196, %Dest_phi197
  %176 = icmp eq i32 %175, 54
  %177 = zext i1 %176 to i32
  call void @assert_cfg_ft(i32 %177, i32 %175, i32 0)
  %178 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 96)
  %179 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

180:                                              ; preds = %163
  %Diff_phi198 = phi i32 [ %173, %163 ]
  %Dest_phi199 = phi i32 [ %164, %163 ]
  %181 = xor i32 %Diff_phi198, %Dest_phi199
  %182 = icmp eq i32 %181, 55
  %183 = zext i1 %182 to i32
  call void @assert_cfg_ft(i32 %183, i32 %181, i32 0)
  %184 = tail call double @llvm.fabs.f64(double %112)
  %185 = fcmp olt double %184, 1.000000e+01
  %186 = fcmp olt double %184, 1.000000e+01
  %187 = icmp eq i1 %186, %185
  %188 = zext i1 %187 to i32
  call void @assert_ft(i32 %188, i32 1)
  %189 = select i1 %186, i32 57, i32 56
  %190 = xor i32 55, %189
  br i1 %186, label %197, label %191

191:                                              ; preds = %180
  %Diff_phi200 = phi i32 [ %190, %180 ]
  %Dest_phi201 = phi i32 [ %181, %180 ]
  %192 = xor i32 %Diff_phi200, %Dest_phi201
  %193 = icmp eq i32 %192, 56
  %194 = zext i1 %193 to i32
  call void @assert_cfg_ft(i32 %194, i32 %192, i32 0)
  %195 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 95)
  %196 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

197:                                              ; preds = %180
  %Diff_phi202 = phi i32 [ %190, %180 ]
  %Dest_phi203 = phi i32 [ %181, %180 ]
  %198 = xor i32 %Diff_phi202, %Dest_phi203
  %199 = icmp eq i32 %198, 57
  %200 = zext i1 %199 to i32
  call void @assert_cfg_ft(i32 %200, i32 %198, i32 0)
  %201 = tail call double @llvm.fabs.f64(double %118)
  %202 = fcmp olt double %201, 1.000000e+01
  %203 = fcmp olt double %201, 1.000000e+01
  %204 = icmp eq i1 %203, %202
  %205 = zext i1 %204 to i32
  call void @assert_ft(i32 %205, i32 1)
  %206 = select i1 %203, i32 58, i32 59
  %207 = xor i32 57, %206
  br i1 %203, label %.preheader135.preheader, label %234

.preheader135.preheader:                          ; preds = %197
  %Diff_phi204 = phi i32 [ %207, %197 ]
  %Dest_phi205 = phi i32 [ %198, %197 ]
  %208 = xor i32 %Diff_phi204, %Dest_phi205
  %209 = icmp eq i32 %208, 58
  %210 = zext i1 %209 to i32
  call void @assert_cfg_ft(i32 %210, i32 %208, i32 0)
  %211 = getelementptr i8, ptr %15, i64 72
  %scevgep156 = getelementptr i8, ptr %.0154, i64 72
  %212 = icmp eq ptr %scevgep156, %211
  %213 = zext i1 %212 to i32
  call void @assert_ft(i32 %213, i32 1)
  store double %.sroa.0172.0.copyload, ptr %scevgep156, align 8
  %214 = getelementptr i8, ptr %15, i64 80
  %.sroa.3174.0.scevgep156.sroa_idx = getelementptr i8, ptr %.0154, i64 80
  %215 = icmp eq ptr %.sroa.3174.0.scevgep156.sroa_idx, %214
  %216 = zext i1 %215 to i32
  call void @assert_ft(i32 %216, i32 1)
  store double %.sroa.3174.0.copyload, ptr %.sroa.3174.0.scevgep156.sroa_idx, align 8
  %217 = getelementptr i8, ptr %15, i64 88
  %.sroa.4176.0.scevgep156.sroa_idx = getelementptr i8, ptr %.0154, i64 88
  %218 = icmp eq ptr %.sroa.4176.0.scevgep156.sroa_idx, %217
  %219 = zext i1 %218 to i32
  call void @assert_ft(i32 %219, i32 1)
  store double %.sroa.4176.0.copyload, ptr %.sroa.4176.0.scevgep156.sroa_idx, align 8
  %220 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 6, i64 1
  %221 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 1
  %222 = icmp eq ptr %221, %220
  %223 = zext i1 %222 to i32
  call void @assert_ft(i32 %223, i32 1)
  %224 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 6, i64 2
  %225 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 2
  %226 = icmp eq ptr %225, %224
  %227 = zext i1 %226 to i32
  call void @assert_ft(i32 %227, i32 1)
  %228 = tail call i32 (double, ...) @isnan(double noundef %.sroa.0172.0.copyload) #28
  %229 = icmp eq i32 %228, 0
  %.not121 = icmp eq i32 %228, 0
  %230 = icmp eq i1 %.not121, %229
  %231 = zext i1 %230 to i32
  call void @assert_ft(i32 %231, i32 1)
  %232 = select i1 %.not121, i32 61, i32 60
  %233 = xor i32 58, %232
  br i1 %.not121, label %246, label %240

234:                                              ; preds = %197
  %Diff_phi206 = phi i32 [ %207, %197 ]
  %Dest_phi207 = phi i32 [ %198, %197 ]
  %235 = xor i32 %Diff_phi206, %Dest_phi207
  %236 = icmp eq i32 %235, 59
  %237 = zext i1 %236 to i32
  call void @assert_cfg_ft(i32 %237, i32 %235, i32 0)
  %238 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 94)
  %239 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

240:                                              ; preds = %.preheader135.preheader
  %Diff_phi208 = phi i32 [ %233, %.preheader135.preheader ]
  %Dest_phi209 = phi i32 [ %208, %.preheader135.preheader ]
  %241 = xor i32 %Diff_phi208, %Dest_phi209
  %242 = icmp eq i32 %241, 60
  %243 = zext i1 %242 to i32
  call void @assert_cfg_ft(i32 %243, i32 %241, i32 0)
  %244 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 89)
  %245 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

246:                                              ; preds = %.preheader135.preheader
  %Diff_phi210 = phi i32 [ %233, %.preheader135.preheader ]
  %Dest_phi211 = phi i32 [ %208, %.preheader135.preheader ]
  %247 = xor i32 %Diff_phi210, %Dest_phi211
  %248 = icmp eq i32 %247, 61
  %249 = zext i1 %248 to i32
  call void @assert_cfg_ft(i32 %249, i32 %247, i32 0)
  %250 = tail call i32 (double, ...) @isnan(double noundef %.sroa.3174.0.copyload) #28
  %251 = icmp eq i32 %250, 0
  %.not122 = icmp eq i32 %250, 0
  %252 = icmp eq i1 %.not122, %251
  %253 = zext i1 %252 to i32
  call void @assert_ft(i32 %253, i32 1)
  %254 = select i1 %.not122, i32 63, i32 62
  %255 = xor i32 61, %254
  br i1 %.not122, label %262, label %256

256:                                              ; preds = %246
  %Diff_phi212 = phi i32 [ %255, %246 ]
  %Dest_phi213 = phi i32 [ %247, %246 ]
  %257 = xor i32 %Diff_phi212, %Dest_phi213
  %258 = icmp eq i32 %257, 62
  %259 = zext i1 %258 to i32
  call void @assert_cfg_ft(i32 %259, i32 %257, i32 0)
  %260 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 88)
  %261 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

262:                                              ; preds = %246
  %Diff_phi214 = phi i32 [ %255, %246 ]
  %Dest_phi215 = phi i32 [ %247, %246 ]
  %263 = xor i32 %Diff_phi214, %Dest_phi215
  %264 = icmp eq i32 %263, 63
  %265 = zext i1 %264 to i32
  call void @assert_cfg_ft(i32 %265, i32 %263, i32 0)
  %266 = tail call i32 (double, ...) @isnan(double noundef %.sroa.4176.0.copyload) #28
  %267 = icmp eq i32 %266, 0
  %.not123 = icmp eq i32 %266, 0
  %268 = icmp eq i1 %.not123, %267
  %269 = zext i1 %268 to i32
  call void @assert_ft(i32 %269, i32 1)
  %270 = select i1 %.not123, i32 65, i32 64
  %271 = xor i32 63, %270
  br i1 %.not123, label %278, label %272

272:                                              ; preds = %262
  %Diff_phi216 = phi i32 [ %271, %262 ]
  %Dest_phi217 = phi i32 [ %263, %262 ]
  %273 = xor i32 %Diff_phi216, %Dest_phi217
  %274 = icmp eq i32 %273, 64
  %275 = zext i1 %274 to i32
  call void @assert_cfg_ft(i32 %275, i32 %273, i32 0)
  %276 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 87)
  %277 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

278:                                              ; preds = %262
  %Diff_phi218 = phi i32 [ %271, %262 ]
  %Dest_phi219 = phi i32 [ %263, %262 ]
  %279 = xor i32 %Diff_phi218, %Dest_phi219
  %280 = icmp eq i32 %279, 65
  %281 = zext i1 %280 to i32
  call void @assert_cfg_ft(i32 %281, i32 %279, i32 0)
  %282 = tail call double @llvm.fabs.f64(double %.sroa.0172.0.copyload)
  %283 = fcmp olt double %282, 1.000000e+04
  %284 = fcmp olt double %282, 1.000000e+04
  %285 = icmp eq i1 %284, %283
  %286 = zext i1 %285 to i32
  call void @assert_ft(i32 %286, i32 1)
  %287 = select i1 %284, i32 67, i32 66
  %288 = xor i32 65, %287
  br i1 %284, label %295, label %289

289:                                              ; preds = %278
  %Diff_phi220 = phi i32 [ %288, %278 ]
  %Dest_phi221 = phi i32 [ %279, %278 ]
  %290 = xor i32 %Diff_phi220, %Dest_phi221
  %291 = icmp eq i32 %290, 66
  %292 = zext i1 %291 to i32
  call void @assert_cfg_ft(i32 %292, i32 %290, i32 0)
  %293 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 86)
  %294 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

295:                                              ; preds = %278
  %Diff_phi222 = phi i32 [ %288, %278 ]
  %Dest_phi223 = phi i32 [ %279, %278 ]
  %296 = xor i32 %Diff_phi222, %Dest_phi223
  %297 = icmp eq i32 %296, 67
  %298 = zext i1 %297 to i32
  call void @assert_cfg_ft(i32 %298, i32 %296, i32 0)
  %299 = tail call double @llvm.fabs.f64(double %.sroa.3174.0.copyload)
  %300 = fcmp olt double %299, 1.000000e+04
  %301 = fcmp olt double %299, 1.000000e+04
  %302 = icmp eq i1 %301, %300
  %303 = zext i1 %302 to i32
  call void @assert_ft(i32 %303, i32 1)
  %304 = select i1 %301, i32 69, i32 68
  %305 = xor i32 67, %304
  br i1 %301, label %312, label %306

306:                                              ; preds = %295
  %Diff_phi224 = phi i32 [ %305, %295 ]
  %Dest_phi225 = phi i32 [ %296, %295 ]
  %307 = xor i32 %Diff_phi224, %Dest_phi225
  %308 = icmp eq i32 %307, 68
  %309 = zext i1 %308 to i32
  call void @assert_cfg_ft(i32 %309, i32 %307, i32 0)
  %310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 85)
  %311 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

312:                                              ; preds = %295
  %Diff_phi226 = phi i32 [ %305, %295 ]
  %Dest_phi227 = phi i32 [ %296, %295 ]
  %313 = xor i32 %Diff_phi226, %Dest_phi227
  %314 = icmp eq i32 %313, 69
  %315 = zext i1 %314 to i32
  call void @assert_cfg_ft(i32 %315, i32 %313, i32 0)
  %316 = tail call double @llvm.fabs.f64(double %.sroa.4176.0.copyload)
  %317 = fcmp olt double %316, 1.000000e+04
  %318 = fcmp olt double %316, 1.000000e+04
  %319 = icmp eq i1 %318, %317
  %320 = zext i1 %319 to i32
  call void @assert_ft(i32 %320, i32 1)
  %321 = select i1 %318, i32 70, i32 71
  %322 = xor i32 69, %321
  br i1 %318, label %.preheader134.preheader, label %362

.preheader134.preheader:                          ; preds = %312
  %Diff_phi228 = phi i32 [ %322, %312 ]
  %Dest_phi229 = phi i32 [ %313, %312 ]
  %323 = xor i32 %Diff_phi228, %Dest_phi229
  %324 = icmp eq i32 %323, 70
  %325 = zext i1 %324 to i32
  call void @assert_cfg_ft(i32 %325, i32 %323, i32 0)
  %326 = load double, ptr %211, align 8
  %327 = load double, ptr %scevgep156, align 8
  %328 = fmul double %326, 6.250000e-03
  %329 = fmul double %327, 6.250000e-03
  %330 = load double, ptr %220, align 8
  %331 = load double, ptr %221, align 8
  %332 = fmul double %330, 6.250000e-03
  %333 = fmul double %331, 6.250000e-03
  %334 = load double, ptr %224, align 8
  %335 = load double, ptr %225, align 8
  %336 = fmul double %334, 6.250000e-03
  %337 = fmul double %335, 6.250000e-03
  %338 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 5
  %339 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5
  %340 = icmp eq ptr %339, %338
  %341 = zext i1 %340 to i32
  call void @assert_ft(i32 %341, i32 1)
  %342 = load double, ptr %338, align 8
  %343 = load double, ptr %339, align 8
  %344 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 5, i64 1
  %345 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 1
  %346 = icmp eq ptr %345, %344
  %347 = zext i1 %346 to i32
  call void @assert_ft(i32 %347, i32 1)
  %348 = load double, ptr %344, align 8
  %349 = load double, ptr %345, align 8
  %350 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 5, i64 2
  %351 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 2
  %352 = icmp eq ptr %351, %350
  %353 = zext i1 %352 to i32
  call void @assert_ft(i32 %353, i32 1)
  %354 = load double, ptr %350, align 8
  %355 = load double, ptr %351, align 8
  %356 = tail call i32 (double, ...) @isnan(double noundef %343) #28
  %357 = icmp eq i32 %356, 0
  %.not124 = icmp eq i32 %356, 0
  %358 = icmp eq i1 %.not124, %357
  %359 = zext i1 %358 to i32
  call void @assert_ft(i32 %359, i32 1)
  %360 = select i1 %.not124, i32 73, i32 72
  %361 = xor i32 70, %360
  br i1 %.not124, label %374, label %368

362:                                              ; preds = %312
  %Diff_phi230 = phi i32 [ %322, %312 ]
  %Dest_phi231 = phi i32 [ %313, %312 ]
  %363 = xor i32 %Diff_phi230, %Dest_phi231
  %364 = icmp eq i32 %363, 71
  %365 = zext i1 %364 to i32
  call void @assert_cfg_ft(i32 %365, i32 %363, i32 0)
  %366 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 84)
  %367 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

368:                                              ; preds = %.preheader134.preheader
  %Diff_phi232 = phi i32 [ %361, %.preheader134.preheader ]
  %Dest_phi233 = phi i32 [ %323, %.preheader134.preheader ]
  %369 = xor i32 %Diff_phi232, %Dest_phi233
  %370 = icmp eq i32 %369, 72
  %371 = zext i1 %370 to i32
  call void @assert_cfg_ft(i32 %371, i32 %369, i32 0)
  %372 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 79)
  %373 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

374:                                              ; preds = %.preheader134.preheader
  %Diff_phi234 = phi i32 [ %361, %.preheader134.preheader ]
  %Dest_phi235 = phi i32 [ %323, %.preheader134.preheader ]
  %375 = xor i32 %Diff_phi234, %Dest_phi235
  %376 = icmp eq i32 %375, 73
  %377 = zext i1 %376 to i32
  call void @assert_cfg_ft(i32 %377, i32 %375, i32 0)
  %378 = tail call i32 (double, ...) @isnan(double noundef %349) #28
  %379 = icmp eq i32 %378, 0
  %.not125 = icmp eq i32 %378, 0
  %380 = icmp eq i1 %.not125, %379
  %381 = zext i1 %380 to i32
  call void @assert_ft(i32 %381, i32 1)
  %382 = select i1 %.not125, i32 75, i32 74
  %383 = xor i32 73, %382
  br i1 %.not125, label %390, label %384

384:                                              ; preds = %374
  %Diff_phi236 = phi i32 [ %383, %374 ]
  %Dest_phi237 = phi i32 [ %375, %374 ]
  %385 = xor i32 %Diff_phi236, %Dest_phi237
  %386 = icmp eq i32 %385, 74
  %387 = zext i1 %386 to i32
  call void @assert_cfg_ft(i32 %387, i32 %385, i32 0)
  %388 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 78)
  %389 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

390:                                              ; preds = %374
  %Diff_phi238 = phi i32 [ %383, %374 ]
  %Dest_phi239 = phi i32 [ %375, %374 ]
  %391 = xor i32 %Diff_phi238, %Dest_phi239
  %392 = icmp eq i32 %391, 75
  %393 = zext i1 %392 to i32
  call void @assert_cfg_ft(i32 %393, i32 %391, i32 0)
  %394 = tail call i32 (double, ...) @isnan(double noundef %355) #28
  %395 = icmp eq i32 %394, 0
  %.not126 = icmp eq i32 %394, 0
  %396 = icmp eq i1 %.not126, %395
  %397 = zext i1 %396 to i32
  call void @assert_ft(i32 %397, i32 1)
  %398 = select i1 %.not126, i32 77, i32 76
  %399 = xor i32 75, %398
  br i1 %.not126, label %406, label %400

400:                                              ; preds = %390
  %Diff_phi240 = phi i32 [ %399, %390 ]
  %Dest_phi241 = phi i32 [ %391, %390 ]
  %401 = xor i32 %Diff_phi240, %Dest_phi241
  %402 = icmp eq i32 %401, 76
  %403 = zext i1 %402 to i32
  call void @assert_cfg_ft(i32 %403, i32 %401, i32 0)
  %404 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 77)
  %405 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

406:                                              ; preds = %390
  %Diff_phi242 = phi i32 [ %399, %390 ]
  %Dest_phi243 = phi i32 [ %391, %390 ]
  %407 = xor i32 %Diff_phi242, %Dest_phi243
  %408 = icmp eq i32 %407, 77
  %409 = zext i1 %408 to i32
  call void @assert_cfg_ft(i32 %409, i32 %407, i32 0)
  %410 = tail call double @llvm.fabs.f64(double %343)
  %411 = fcmp olt double %410, 1.000000e+04
  %412 = fcmp olt double %410, 1.000000e+04
  %413 = icmp eq i1 %412, %411
  %414 = zext i1 %413 to i32
  call void @assert_ft(i32 %414, i32 1)
  %415 = select i1 %412, i32 79, i32 78
  %416 = xor i32 77, %415
  br i1 %412, label %423, label %417

417:                                              ; preds = %406
  %Diff_phi244 = phi i32 [ %416, %406 ]
  %Dest_phi245 = phi i32 [ %407, %406 ]
  %418 = xor i32 %Diff_phi244, %Dest_phi245
  %419 = icmp eq i32 %418, 78
  %420 = zext i1 %419 to i32
  call void @assert_cfg_ft(i32 %420, i32 %418, i32 0)
  %421 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 76)
  %422 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

423:                                              ; preds = %406
  %Diff_phi246 = phi i32 [ %416, %406 ]
  %Dest_phi247 = phi i32 [ %407, %406 ]
  %424 = xor i32 %Diff_phi246, %Dest_phi247
  %425 = icmp eq i32 %424, 79
  %426 = zext i1 %425 to i32
  call void @assert_cfg_ft(i32 %426, i32 %424, i32 0)
  %427 = tail call double @llvm.fabs.f64(double %349)
  %428 = fcmp olt double %427, 1.000000e+04
  %429 = fcmp olt double %427, 1.000000e+04
  %430 = icmp eq i1 %429, %428
  %431 = zext i1 %430 to i32
  call void @assert_ft(i32 %431, i32 1)
  %432 = select i1 %429, i32 81, i32 80
  %433 = xor i32 79, %432
  br i1 %429, label %440, label %434

434:                                              ; preds = %423
  %Diff_phi248 = phi i32 [ %433, %423 ]
  %Dest_phi249 = phi i32 [ %424, %423 ]
  %435 = xor i32 %Diff_phi248, %Dest_phi249
  %436 = icmp eq i32 %435, 80
  %437 = zext i1 %436 to i32
  call void @assert_cfg_ft(i32 %437, i32 %435, i32 0)
  %438 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 75)
  %439 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

440:                                              ; preds = %423
  %Diff_phi250 = phi i32 [ %433, %423 ]
  %Dest_phi251 = phi i32 [ %424, %423 ]
  %441 = xor i32 %Diff_phi250, %Dest_phi251
  %442 = icmp eq i32 %441, 81
  %443 = zext i1 %442 to i32
  call void @assert_cfg_ft(i32 %443, i32 %441, i32 0)
  %444 = tail call double @llvm.fabs.f64(double %355)
  %445 = fcmp olt double %444, 1.000000e+04
  %446 = fcmp olt double %444, 1.000000e+04
  %447 = icmp eq i1 %446, %445
  %448 = zext i1 %447 to i32
  call void @assert_ft(i32 %448, i32 1)
  %449 = select i1 %446, i32 82, i32 83
  %450 = xor i32 81, %449
  br i1 %446, label %.preheader133.preheader, label %502

.preheader133.preheader:                          ; preds = %440
  %Diff_phi252 = phi i32 [ %450, %440 ]
  %Dest_phi253 = phi i32 [ %441, %440 ]
  %451 = xor i32 %Diff_phi252, %Dest_phi253
  %452 = icmp eq i32 %451, 82
  %453 = zext i1 %452 to i32
  call void @assert_cfg_ft(i32 %453, i32 %451, i32 0)
  %454 = load double, ptr %338, align 8
  %455 = load double, ptr %339, align 8
  %456 = fadd double %454, %328
  %457 = fadd double %455, %329
  %458 = load double, ptr %344, align 8
  %459 = load double, ptr %345, align 8
  %460 = fadd double %458, %332
  %461 = fadd double %459, %333
  %462 = load double, ptr %350, align 8
  %463 = load double, ptr %351, align 8
  %464 = fadd double %462, %336
  %465 = fadd double %463, %337
  %466 = fmul double %456, 1.250000e-02
  %467 = fmul double %457, 1.250000e-02
  %468 = fmul double %460, 1.250000e-02
  %469 = fmul double %461, 1.250000e-02
  %470 = fmul double %464, 1.250000e-02
  %471 = fmul double %465, 1.250000e-02
  %472 = load double, ptr %101, align 8
  %473 = load double, ptr %102, align 8
  %474 = fadd double %472, %466
  %475 = fadd double %473, %467
  %476 = load double, ptr %107, align 8
  %477 = load double, ptr %108, align 8
  %478 = fadd double %476, %468
  %479 = fadd double %477, %469
  %480 = load double, ptr %113, align 8
  %481 = load double, ptr %114, align 8
  %482 = fadd double %480, %470
  %483 = fadd double %481, %471
  store double %475, ptr %102, align 8
  %484 = getelementptr %struct.bnode, ptr %15, i64 0, i32 2, i64 1
  %.sroa.4.0.scevgep157.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 2, i64 1
  %485 = icmp eq ptr %.sroa.4.0.scevgep157.sroa_idx, %484
  %486 = zext i1 %485 to i32
  call void @assert_ft(i32 %486, i32 1)
  store double %479, ptr %.sroa.4.0.scevgep157.sroa_idx, align 8
  %487 = getelementptr %struct.bnode, ptr %15, i64 0, i32 2, i64 2
  %.sroa.7.0.scevgep157.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 2, i64 2
  %488 = icmp eq ptr %.sroa.7.0.scevgep157.sroa_idx, %487
  %489 = zext i1 %488 to i32
  call void @assert_ft(i32 %489, i32 1)
  store double %483, ptr %.sroa.7.0.scevgep157.sroa_idx, align 8
  %490 = fadd double %456, %328
  %491 = fadd double %457, %329
  store double %491, ptr %339, align 8
  %492 = fadd double %460, %332
  %493 = fadd double %461, %333
  store double %493, ptr %345, align 8
  %494 = fadd double %464, %336
  %495 = fadd double %465, %337
  store double %495, ptr %351, align 8
  %496 = tail call i32 (double, ...) @isnan(double noundef %475) #28
  %497 = icmp eq i32 %496, 0
  %.not127 = icmp eq i32 %496, 0
  %498 = icmp eq i1 %.not127, %497
  %499 = zext i1 %498 to i32
  call void @assert_ft(i32 %499, i32 1)
  %500 = select i1 %.not127, i32 85, i32 84
  %501 = xor i32 82, %500
  br i1 %.not127, label %514, label %508

502:                                              ; preds = %440
  %Diff_phi254 = phi i32 [ %450, %440 ]
  %Dest_phi255 = phi i32 [ %441, %440 ]
  %503 = xor i32 %Diff_phi254, %Dest_phi255
  %504 = icmp eq i32 %503, 83
  %505 = zext i1 %504 to i32
  call void @assert_cfg_ft(i32 %505, i32 %503, i32 0)
  %506 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 74)
  %507 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

508:                                              ; preds = %.preheader133.preheader
  %Diff_phi256 = phi i32 [ %501, %.preheader133.preheader ]
  %Dest_phi257 = phi i32 [ %451, %.preheader133.preheader ]
  %509 = xor i32 %Diff_phi256, %Dest_phi257
  %510 = icmp eq i32 %509, 84
  %511 = zext i1 %510 to i32
  call void @assert_cfg_ft(i32 %511, i32 %509, i32 0)
  %512 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 69)
  %513 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

514:                                              ; preds = %.preheader133.preheader
  %Diff_phi258 = phi i32 [ %501, %.preheader133.preheader ]
  %Dest_phi259 = phi i32 [ %451, %.preheader133.preheader ]
  %515 = xor i32 %Diff_phi258, %Dest_phi259
  %516 = icmp eq i32 %515, 85
  %517 = zext i1 %516 to i32
  call void @assert_cfg_ft(i32 %517, i32 %515, i32 0)
  %518 = tail call i32 (double, ...) @isnan(double noundef %479) #28
  %519 = icmp eq i32 %518, 0
  %.not128 = icmp eq i32 %518, 0
  %520 = icmp eq i1 %.not128, %519
  %521 = zext i1 %520 to i32
  call void @assert_ft(i32 %521, i32 1)
  %522 = select i1 %.not128, i32 87, i32 86
  %523 = xor i32 85, %522
  br i1 %.not128, label %530, label %524

524:                                              ; preds = %514
  %Diff_phi260 = phi i32 [ %523, %514 ]
  %Dest_phi261 = phi i32 [ %515, %514 ]
  %525 = xor i32 %Diff_phi260, %Dest_phi261
  %526 = icmp eq i32 %525, 86
  %527 = zext i1 %526 to i32
  call void @assert_cfg_ft(i32 %527, i32 %525, i32 0)
  %528 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 68)
  %529 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

530:                                              ; preds = %514
  %Diff_phi262 = phi i32 [ %523, %514 ]
  %Dest_phi263 = phi i32 [ %515, %514 ]
  %531 = xor i32 %Diff_phi262, %Dest_phi263
  %532 = icmp eq i32 %531, 87
  %533 = zext i1 %532 to i32
  call void @assert_cfg_ft(i32 %533, i32 %531, i32 0)
  %534 = tail call i32 (double, ...) @isnan(double noundef %483) #28
  %535 = icmp eq i32 %534, 0
  %.not129 = icmp eq i32 %534, 0
  %536 = icmp eq i1 %.not129, %535
  %537 = zext i1 %536 to i32
  call void @assert_ft(i32 %537, i32 1)
  %538 = select i1 %.not129, i32 89, i32 88
  %539 = xor i32 87, %538
  br i1 %.not129, label %546, label %540

540:                                              ; preds = %530
  %Diff_phi264 = phi i32 [ %539, %530 ]
  %Dest_phi265 = phi i32 [ %531, %530 ]
  %541 = xor i32 %Diff_phi264, %Dest_phi265
  %542 = icmp eq i32 %541, 88
  %543 = zext i1 %542 to i32
  call void @assert_cfg_ft(i32 %543, i32 %541, i32 0)
  %544 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 67)
  %545 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

546:                                              ; preds = %530
  %Diff_phi266 = phi i32 [ %539, %530 ]
  %Dest_phi267 = phi i32 [ %531, %530 ]
  %547 = xor i32 %Diff_phi266, %Dest_phi267
  %548 = icmp eq i32 %547, 89
  %549 = zext i1 %548 to i32
  call void @assert_cfg_ft(i32 %549, i32 %547, i32 0)
  %550 = tail call double @llvm.fabs.f64(double %475)
  %551 = fcmp olt double %550, 1.000000e+04
  %552 = fcmp olt double %550, 1.000000e+04
  %553 = icmp eq i1 %552, %551
  %554 = zext i1 %553 to i32
  call void @assert_ft(i32 %554, i32 1)
  %555 = select i1 %552, i32 91, i32 90
  %556 = xor i32 89, %555
  br i1 %552, label %563, label %557

557:                                              ; preds = %546
  %Diff_phi268 = phi i32 [ %556, %546 ]
  %Dest_phi269 = phi i32 [ %547, %546 ]
  %558 = xor i32 %Diff_phi268, %Dest_phi269
  %559 = icmp eq i32 %558, 90
  %560 = zext i1 %559 to i32
  call void @assert_cfg_ft(i32 %560, i32 %558, i32 0)
  %561 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 66)
  %562 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

563:                                              ; preds = %546
  %Diff_phi270 = phi i32 [ %556, %546 ]
  %Dest_phi271 = phi i32 [ %547, %546 ]
  %564 = xor i32 %Diff_phi270, %Dest_phi271
  %565 = icmp eq i32 %564, 91
  %566 = zext i1 %565 to i32
  call void @assert_cfg_ft(i32 %566, i32 %564, i32 0)
  %567 = tail call double @llvm.fabs.f64(double %479)
  %568 = fcmp olt double %567, 1.000000e+04
  %569 = fcmp olt double %567, 1.000000e+04
  %570 = icmp eq i1 %569, %568
  %571 = zext i1 %570 to i32
  call void @assert_ft(i32 %571, i32 1)
  %572 = select i1 %569, i32 93, i32 92
  %573 = xor i32 91, %572
  br i1 %569, label %580, label %574

574:                                              ; preds = %563
  %Diff_phi272 = phi i32 [ %573, %563 ]
  %Dest_phi273 = phi i32 [ %564, %563 ]
  %575 = xor i32 %Diff_phi272, %Dest_phi273
  %576 = icmp eq i32 %575, 92
  %577 = zext i1 %576 to i32
  call void @assert_cfg_ft(i32 %577, i32 %575, i32 0)
  %578 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 65)
  %579 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

580:                                              ; preds = %563
  %Diff_phi274 = phi i32 [ %573, %563 ]
  %Dest_phi275 = phi i32 [ %564, %563 ]
  %581 = xor i32 %Diff_phi274, %Dest_phi275
  %582 = icmp eq i32 %581, 93
  %583 = zext i1 %582 to i32
  call void @assert_cfg_ft(i32 %583, i32 %581, i32 0)
  %584 = tail call double @llvm.fabs.f64(double %483)
  %585 = fcmp olt double %584, 1.000000e+04
  %586 = fcmp olt double %584, 1.000000e+04
  %587 = icmp eq i1 %586, %585
  %588 = zext i1 %587 to i32
  call void @assert_ft(i32 %588, i32 1)
  %589 = select i1 %586, i32 95, i32 94
  %590 = xor i32 93, %589
  br i1 %586, label %597, label %591

591:                                              ; preds = %580
  %Diff_phi276 = phi i32 [ %590, %580 ]
  %Dest_phi277 = phi i32 [ %581, %580 ]
  %592 = xor i32 %Diff_phi276, %Dest_phi277
  %593 = icmp eq i32 %592, 94
  %594 = zext i1 %593 to i32
  call void @assert_cfg_ft(i32 %594, i32 %592, i32 0)
  %595 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 64)
  %596 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

597:                                              ; preds = %580
  %Diff_phi278 = phi i32 [ %590, %580 ]
  %Dest_phi279 = phi i32 [ %581, %580 ]
  %598 = xor i32 %Diff_phi278, %Dest_phi279
  %599 = icmp eq i32 %598, 95
  %600 = zext i1 %599 to i32
  call void @assert_cfg_ft(i32 %600, i32 %598, i32 0)
  %601 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 10
  %602 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 10
  %603 = icmp eq ptr %602, %601
  %604 = zext i1 %603 to i32
  call void @assert_ft(i32 %604, i32 1)
  %605 = load ptr, ptr %601, align 8
  %606 = load ptr, ptr %602, align 8
  %607 = icmp eq ptr %606, %605
  %608 = zext i1 %607 to i32
  call void @assert_ft(i32 %608, i32 1)
  %609 = icmp eq ptr %605, null
  %.not117 = icmp eq ptr %606, null
  %610 = icmp eq i1 %.not117, %609
  %611 = zext i1 %610 to i32
  call void @assert_ft(i32 %611, i32 1)
  %612 = select i1 %.not117, i32 96, i32 45
  %613 = xor i32 95, %612
  br i1 %.not117, label %._crit_edge, label %.preheader140

._crit_edge:                                      ; preds = %597, %2
  %Diff_phi280 = phi i32 [ %613, %597 ], [ %7, %2 ]
  %Dest_phi281 = phi i32 [ %598, %597 ], [ 43, %2 ]
  %614 = xor i32 %Diff_phi280, %Dest_phi281
  %615 = icmp eq i32 %614, 96
  %616 = zext i1 %615 to i32
  call void @assert_cfg_ft(i32 %616, i32 %614, i32 0)
  ret i32 0
}

declare i32 @isnan(...) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare i32 @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @grav(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #8 {
  %6 = icmp eq ptr %2, null
  %.not1112 = icmp eq ptr %2, null
  %7 = icmp eq i1 %.not1112, %6
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = select i1 %.not1112, i32 99, i32 98
  %10 = xor i32 97, %9
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %5
  %Diff_phi = phi i32 [ %10, %5 ], [ %30, %.lr.ph ]
  %Dest_phi = phi i32 [ 97, %5 ], [ %12, %.lr.ph ]
  %11 = phi ptr [ %22, %.lr.ph ], [ %2, %5 ]
  %.013 = phi ptr [ %23, %.lr.ph ], [ %2, %5 ]
  %12 = xor i32 %Diff_phi, %Dest_phi
  %13 = icmp eq i32 %12, 98
  %14 = zext i1 %13 to i32
  call void @assert_cfg_ft(i32 %14, i32 %12, i32 0)
  %15 = icmp eq ptr %.013, %11
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = tail call i32 @gravstep(double noundef %0, ptr noundef %1, ptr noundef nonnull %.013, i32 poison, double poison)
  %18 = getelementptr inbounds %struct.bnode, ptr %11, i64 0, i32 10
  %19 = getelementptr inbounds %struct.bnode, ptr %.013, i64 0, i32 10
  %20 = icmp eq ptr %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = load ptr, ptr %18, align 8
  %23 = load ptr, ptr %19, align 8
  %24 = icmp eq ptr %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = icmp eq ptr %22, null
  %.not11 = icmp eq ptr %23, null
  %27 = icmp eq i1 %.not11, %26
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = select i1 %.not11, i32 99, i32 98
  %30 = xor i32 98, %29
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %5
  %Diff_phi14 = phi i32 [ %30, %.lr.ph ], [ %10, %5 ]
  %Dest_phi15 = phi i32 [ %12, %.lr.ph ], [ 97, %5 ]
  %31 = xor i32 %Diff_phi14, %Dest_phi15
  %32 = icmp eq i32 %31, 99
  %33 = zext i1 %32 to i32
  call void @assert_cfg_ft(i32 %33, i32 %31, i32 0)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local i32 @gravstep(double noundef %0, ptr noundef %1, ptr noundef %2, i32 %3, double %4) local_unnamed_addr #12 {
  %6 = tail call i32 @hackgrav(ptr noundef %2, double noundef %0, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local i32 @hackgrav(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.hgstruct, align 8
  %5 = alloca %struct.hgstruct, align 8
  store ptr %0, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  %scevgep = getelementptr inbounds i8, ptr %4, i64 8
  %7 = icmp eq ptr %scevgep, %6
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = getelementptr i8, ptr %0, i64 16
  %scevgep23 = getelementptr i8, ptr %0, i64 16
  %10 = icmp eq ptr %scevgep23, %9
  %11 = zext i1 %10 to i32
  call void @assert_ft(i32 %11, i32 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep, ptr noundef nonnull align 8 dereferenceable(24) %scevgep23, i64 24, i1 false)
  %12 = getelementptr inbounds %struct.hgstruct, ptr %4, i64 0, i32 2
  %13 = getelementptr inbounds %struct.hgstruct, ptr %4, i64 0, i32 2
  %14 = icmp eq ptr %13, %12
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = getelementptr inbounds i8, ptr %4, i64 40
  %scevgep24 = getelementptr inbounds i8, ptr %4, i64 40
  %17 = icmp eq ptr %scevgep24, %16
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = fmul double %1, %1
  %20 = fmul double %1, %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %5, ptr noundef %2, double noundef %20, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false)
  %21 = load double, ptr %12, align 8
  %22 = load double, ptr %13, align 8
  %23 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 8
  %24 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 8
  %25 = icmp eq ptr %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  store double %22, ptr %24, align 8
  %27 = getelementptr i8, ptr %0, i64 96
  %scevgep25 = getelementptr i8, ptr %0, i64 96
  %28 = icmp eq ptr %scevgep25, %27
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep25, ptr noundef nonnull align 8 dereferenceable(24) %scevgep24, i64 24, i1 false)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @walksub(ptr noalias nocapture writeonly sret(%struct.hgstruct) align 8 %0, ptr noundef readonly %1, double noundef %2, double noundef %3, ptr nocapture noundef byval(%struct.hgstruct) align 8 %4, i32 noundef %5) local_unnamed_addr #12 {
  %7 = alloca %struct.hgstruct, align 8
  %8 = alloca %struct.hgstruct, align 8
  %9 = tail call signext i16 @subdivp(ptr noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4), !range !6
  %10 = icmp eq i16 %9, 0
  %.not = icmp eq i16 %9, 0
  %11 = icmp eq i1 %.not, %10
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = select i1 %.not, i32 119, i32 103
  %14 = xor i32 102, %13
  br i1 %.not, label %188, label %.preheader

.preheader:                                       ; preds = %6
  %Diff_phi = phi i32 [ %14, %6 ]
  %Dest_phi = phi i32 [ 102, %6 ]
  %15 = xor i32 %Diff_phi, %Dest_phi
  %16 = icmp eq i32 %15, 103
  %17 = zext i1 %16 to i32
  call void @assert_cfg_ft(i32 %17, i32 %15, i32 0)
  %18 = fmul double %2, 2.500000e-01
  %19 = fmul double %2, 2.500000e-01
  %20 = add nsw i32 %5, 1
  %21 = add nsw i32 %5, 1
  %22 = icmp eq i32 %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 0
  %25 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 0
  %26 = icmp eq ptr %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = load ptr, ptr %24, align 8
  %29 = load ptr, ptr %25, align 8
  %30 = icmp eq ptr %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = icmp eq ptr %28, null
  %.not16 = icmp eq ptr %29, null
  %33 = icmp eq i1 %.not16, %32
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = select i1 %.not16, i32 105, i32 104
  %36 = xor i32 103, %35
  br i1 %.not16, label %41, label %37

37:                                               ; preds = %.preheader
  %Diff_phi18 = phi i32 [ %36, %.preheader ]
  %Dest_phi19 = phi i32 [ %15, %.preheader ]
  %38 = xor i32 %Diff_phi18, %Dest_phi19
  %39 = icmp eq i32 %38, 104
  %40 = zext i1 %39 to i32
  call void @assert_cfg_ft(i32 %40, i32 %38, i32 0)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %29, double noundef %19, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %41

41:                                               ; preds = %37, %.preheader
  %Diff_phi20 = phi i32 [ %36, %.preheader ], [ 1, %37 ]
  %Dest_phi21 = phi i32 [ %15, %.preheader ], [ %38, %37 ]
  %42 = xor i32 %Diff_phi20, %Dest_phi21
  %43 = icmp eq i32 %42, 105
  %44 = zext i1 %43 to i32
  call void @assert_cfg_ft(i32 %44, i32 %42, i32 0)
  %45 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 1
  %46 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 1
  %47 = icmp eq ptr %46, %45
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = load ptr, ptr %45, align 8
  %50 = load ptr, ptr %46, align 8
  %51 = icmp eq ptr %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = icmp eq ptr %49, null
  %.not16.1 = icmp eq ptr %50, null
  %54 = icmp eq i1 %.not16.1, %53
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = select i1 %.not16.1, i32 107, i32 106
  %57 = xor i32 105, %56
  br i1 %.not16.1, label %62, label %58

58:                                               ; preds = %41
  %Diff_phi22 = phi i32 [ %57, %41 ]
  %Dest_phi23 = phi i32 [ %42, %41 ]
  %59 = xor i32 %Diff_phi22, %Dest_phi23
  %60 = icmp eq i32 %59, 106
  %61 = zext i1 %60 to i32
  call void @assert_cfg_ft(i32 %61, i32 %59, i32 0)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %50, double noundef %19, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %62

62:                                               ; preds = %58, %41
  %Diff_phi24 = phi i32 [ 1, %58 ], [ %57, %41 ]
  %Dest_phi25 = phi i32 [ %59, %58 ], [ %42, %41 ]
  %63 = xor i32 %Diff_phi24, %Dest_phi25
  %64 = icmp eq i32 %63, 107
  %65 = zext i1 %64 to i32
  call void @assert_cfg_ft(i32 %65, i32 %63, i32 0)
  %66 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 2
  %67 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 2
  %68 = icmp eq ptr %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = load ptr, ptr %66, align 8
  %71 = load ptr, ptr %67, align 8
  %72 = icmp eq ptr %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = icmp eq ptr %70, null
  %.not16.2 = icmp eq ptr %71, null
  %75 = icmp eq i1 %.not16.2, %74
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  %77 = select i1 %.not16.2, i32 109, i32 108
  %78 = xor i32 107, %77
  br i1 %.not16.2, label %83, label %79

79:                                               ; preds = %62
  %Diff_phi26 = phi i32 [ %78, %62 ]
  %Dest_phi27 = phi i32 [ %63, %62 ]
  %80 = xor i32 %Diff_phi26, %Dest_phi27
  %81 = icmp eq i32 %80, 108
  %82 = zext i1 %81 to i32
  call void @assert_cfg_ft(i32 %82, i32 %80, i32 0)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %71, double noundef %19, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %83

83:                                               ; preds = %79, %62
  %Diff_phi28 = phi i32 [ 1, %79 ], [ %78, %62 ]
  %Dest_phi29 = phi i32 [ %80, %79 ], [ %63, %62 ]
  %84 = xor i32 %Diff_phi28, %Dest_phi29
  %85 = icmp eq i32 %84, 109
  %86 = zext i1 %85 to i32
  call void @assert_cfg_ft(i32 %86, i32 %84, i32 0)
  %87 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 3
  %88 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 3
  %89 = icmp eq ptr %88, %87
  %90 = zext i1 %89 to i32
  call void @assert_ft(i32 %90, i32 1)
  %91 = load ptr, ptr %87, align 8
  %92 = load ptr, ptr %88, align 8
  %93 = icmp eq ptr %92, %91
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  %95 = icmp eq ptr %91, null
  %.not16.3 = icmp eq ptr %92, null
  %96 = icmp eq i1 %.not16.3, %95
  %97 = zext i1 %96 to i32
  call void @assert_ft(i32 %97, i32 1)
  %98 = select i1 %.not16.3, i32 111, i32 110
  %99 = xor i32 109, %98
  br i1 %.not16.3, label %104, label %100

100:                                              ; preds = %83
  %Diff_phi30 = phi i32 [ %99, %83 ]
  %Dest_phi31 = phi i32 [ %84, %83 ]
  %101 = xor i32 %Diff_phi30, %Dest_phi31
  %102 = icmp eq i32 %101, 110
  %103 = zext i1 %102 to i32
  call void @assert_cfg_ft(i32 %103, i32 %101, i32 0)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %92, double noundef %19, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %104

104:                                              ; preds = %100, %83
  %Diff_phi32 = phi i32 [ 1, %100 ], [ %99, %83 ]
  %Dest_phi33 = phi i32 [ %101, %100 ], [ %84, %83 ]
  %105 = xor i32 %Diff_phi32, %Dest_phi33
  %106 = icmp eq i32 %105, 111
  %107 = zext i1 %106 to i32
  call void @assert_cfg_ft(i32 %107, i32 %105, i32 0)
  %108 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 4
  %109 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 4
  %110 = icmp eq ptr %109, %108
  %111 = zext i1 %110 to i32
  call void @assert_ft(i32 %111, i32 1)
  %112 = load ptr, ptr %108, align 8
  %113 = load ptr, ptr %109, align 8
  %114 = icmp eq ptr %113, %112
  %115 = zext i1 %114 to i32
  call void @assert_ft(i32 %115, i32 1)
  %116 = icmp eq ptr %112, null
  %.not16.4 = icmp eq ptr %113, null
  %117 = icmp eq i1 %.not16.4, %116
  %118 = zext i1 %117 to i32
  call void @assert_ft(i32 %118, i32 1)
  %119 = select i1 %.not16.4, i32 113, i32 112
  %120 = xor i32 111, %119
  br i1 %.not16.4, label %125, label %121

121:                                              ; preds = %104
  %Diff_phi34 = phi i32 [ %120, %104 ]
  %Dest_phi35 = phi i32 [ %105, %104 ]
  %122 = xor i32 %Diff_phi34, %Dest_phi35
  %123 = icmp eq i32 %122, 112
  %124 = zext i1 %123 to i32
  call void @assert_cfg_ft(i32 %124, i32 %122, i32 0)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %113, double noundef %19, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %125

125:                                              ; preds = %121, %104
  %Diff_phi36 = phi i32 [ 1, %121 ], [ %120, %104 ]
  %Dest_phi37 = phi i32 [ %122, %121 ], [ %105, %104 ]
  %126 = xor i32 %Diff_phi36, %Dest_phi37
  %127 = icmp eq i32 %126, 113
  %128 = zext i1 %127 to i32
  call void @assert_cfg_ft(i32 %128, i32 %126, i32 0)
  %129 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 5
  %130 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 5
  %131 = icmp eq ptr %130, %129
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = load ptr, ptr %129, align 8
  %134 = load ptr, ptr %130, align 8
  %135 = icmp eq ptr %134, %133
  %136 = zext i1 %135 to i32
  call void @assert_ft(i32 %136, i32 1)
  %137 = icmp eq ptr %133, null
  %.not16.5 = icmp eq ptr %134, null
  %138 = icmp eq i1 %.not16.5, %137
  %139 = zext i1 %138 to i32
  call void @assert_ft(i32 %139, i32 1)
  %140 = select i1 %.not16.5, i32 115, i32 114
  %141 = xor i32 113, %140
  br i1 %.not16.5, label %146, label %142

142:                                              ; preds = %125
  %Diff_phi38 = phi i32 [ %141, %125 ]
  %Dest_phi39 = phi i32 [ %126, %125 ]
  %143 = xor i32 %Diff_phi38, %Dest_phi39
  %144 = icmp eq i32 %143, 114
  %145 = zext i1 %144 to i32
  call void @assert_cfg_ft(i32 %145, i32 %143, i32 0)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %134, double noundef %19, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %146

146:                                              ; preds = %142, %125
  %Diff_phi40 = phi i32 [ 1, %142 ], [ %141, %125 ]
  %Dest_phi41 = phi i32 [ %143, %142 ], [ %126, %125 ]
  %147 = xor i32 %Diff_phi40, %Dest_phi41
  %148 = icmp eq i32 %147, 115
  %149 = zext i1 %148 to i32
  call void @assert_cfg_ft(i32 %149, i32 %147, i32 0)
  %150 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 6
  %151 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 6
  %152 = icmp eq ptr %151, %150
  %153 = zext i1 %152 to i32
  call void @assert_ft(i32 %153, i32 1)
  %154 = load ptr, ptr %150, align 8
  %155 = load ptr, ptr %151, align 8
  %156 = icmp eq ptr %155, %154
  %157 = zext i1 %156 to i32
  call void @assert_ft(i32 %157, i32 1)
  %158 = icmp eq ptr %154, null
  %.not16.6 = icmp eq ptr %155, null
  %159 = icmp eq i1 %.not16.6, %158
  %160 = zext i1 %159 to i32
  call void @assert_ft(i32 %160, i32 1)
  %161 = select i1 %.not16.6, i32 117, i32 116
  %162 = xor i32 115, %161
  br i1 %.not16.6, label %167, label %163

163:                                              ; preds = %146
  %Diff_phi42 = phi i32 [ %162, %146 ]
  %Dest_phi43 = phi i32 [ %147, %146 ]
  %164 = xor i32 %Diff_phi42, %Dest_phi43
  %165 = icmp eq i32 %164, 116
  %166 = zext i1 %165 to i32
  call void @assert_cfg_ft(i32 %166, i32 %164, i32 0)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %155, double noundef %19, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %167

167:                                              ; preds = %163, %146
  %Diff_phi44 = phi i32 [ 1, %163 ], [ %162, %146 ]
  %Dest_phi45 = phi i32 [ %164, %163 ], [ %147, %146 ]
  %168 = xor i32 %Diff_phi44, %Dest_phi45
  %169 = icmp eq i32 %168, 117
  %170 = zext i1 %169 to i32
  call void @assert_cfg_ft(i32 %170, i32 %168, i32 0)
  %171 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 7
  %172 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 7
  %173 = icmp eq ptr %172, %171
  %174 = zext i1 %173 to i32
  call void @assert_ft(i32 %174, i32 1)
  %175 = load ptr, ptr %171, align 8
  %176 = load ptr, ptr %172, align 8
  %177 = icmp eq ptr %176, %175
  %178 = zext i1 %177 to i32
  call void @assert_ft(i32 %178, i32 1)
  %179 = icmp eq ptr %175, null
  %.not16.7 = icmp eq ptr %176, null
  %180 = icmp eq i1 %.not16.7, %179
  %181 = zext i1 %180 to i32
  call void @assert_ft(i32 %181, i32 1)
  %182 = select i1 %.not16.7, i32 122, i32 118
  %183 = xor i32 117, %182
  br i1 %.not16.7, label %.loopexit, label %184

184:                                              ; preds = %167
  %Diff_phi46 = phi i32 [ %183, %167 ]
  %Dest_phi47 = phi i32 [ %168, %167 ]
  %185 = xor i32 %Diff_phi46, %Dest_phi47
  %186 = icmp eq i32 %185, 118
  %187 = zext i1 %186 to i32
  call void @assert_cfg_ft(i32 %187, i32 %185, i32 0)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %176, double noundef %19, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %21)
  br label %.loopexit.sink.split

188:                                              ; preds = %6
  %Diff_phi48 = phi i32 [ %14, %6 ]
  %Dest_phi49 = phi i32 [ 102, %6 ]
  %189 = xor i32 %Diff_phi48, %Dest_phi49
  %190 = icmp eq i32 %189, 119
  %191 = zext i1 %190 to i32
  call void @assert_cfg_ft(i32 %191, i32 %189, i32 0)
  %192 = load ptr, ptr %4, align 8
  %193 = load ptr, ptr %4, align 8
  %194 = icmp eq ptr %193, %192
  %195 = zext i1 %194 to i32
  call void @assert_ft(i32 %195, i32 1)
  %196 = icmp eq ptr %192, %1
  %.not15 = icmp eq ptr %193, %1
  %197 = icmp eq i1 %.not15, %196
  %198 = zext i1 %197 to i32
  call void @assert_ft(i32 %198, i32 1)
  %199 = select i1 %.not15, i32 122, i32 120
  %200 = xor i32 119, %199
  br i1 %.not15, label %.loopexit, label %201

201:                                              ; preds = %188
  %Diff_phi50 = phi i32 [ %200, %188 ]
  %Dest_phi51 = phi i32 [ %189, %188 ]
  %202 = xor i32 %Diff_phi50, %Dest_phi51
  %203 = icmp eq i32 %202, 120
  %204 = zext i1 %203 to i32
  call void @assert_cfg_ft(i32 %204, i32 %202, i32 0)
  call void @gravsub(ptr nonnull sret(%struct.hgstruct) align 8 %8, ptr noundef %1, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4)
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %201, %184
  %Diff_phi52 = phi i32 [ 1, %201 ], [ 15, %184 ]
  %Dest_phi53 = phi i32 [ %202, %201 ], [ %185, %184 ]
  %205 = phi ptr [ %7, %184 ], [ %8, %201 ]
  %.sink = phi ptr [ %7, %184 ], [ %8, %201 ]
  %206 = xor i32 %Diff_phi52, %Dest_phi53
  %207 = icmp eq i32 %206, 121
  %208 = zext i1 %207 to i32
  call void @assert_cfg_ft(i32 %208, i32 %206, i32 0)
  %209 = icmp eq ptr %.sink, %205
  %210 = zext i1 %209 to i32
  call void @assert_ft(i32 %210, i32 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %.sink, i64 64, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %188, %167
  %Diff_phi54 = phi i32 [ 3, %.loopexit.sink.split ], [ %183, %167 ], [ %200, %188 ]
  %Dest_phi55 = phi i32 [ %206, %.loopexit.sink.split ], [ %168, %167 ], [ %189, %188 ]
  %211 = xor i32 %Diff_phi54, %Dest_phi55
  %212 = icmp eq i32 %211, 122
  %213 = zext i1 %212 to i32
  call void @assert_cfg_ft(i32 %213, i32 %211, i32 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @subdivp(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly byval(%struct.hgstruct) align 8 %3) local_unnamed_addr #5 {
  %5 = load i16, ptr %0, align 8
  %6 = load i16, ptr %0, align 8
  %7 = icmp eq i16 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = icmp eq i16 %5, 1
  %10 = icmp eq i16 %6, 1
  %11 = icmp eq i1 %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = select i1 %10, i32 125, i32 124
  %14 = xor i32 123, %13
  br i1 %10, label %73, label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %4
  %Diff_phi = phi i32 [ %14, %4 ]
  %Dest_phi = phi i32 [ 123, %4 ]
  %15 = xor i32 %Diff_phi, %Dest_phi
  %16 = icmp eq i32 %15, 124
  %17 = zext i1 %16 to i32
  call void @assert_cfg_ft(i32 %17, i32 %15, i32 0)
  %18 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 0
  %19 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 0
  %20 = icmp eq ptr %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = load double, ptr %18, align 8
  %23 = load double, ptr %19, align 8
  %24 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %25 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %26 = icmp eq ptr %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = load double, ptr %24, align 8
  %29 = load double, ptr %25, align 8
  %30 = fsub double %22, %28
  %31 = fsub double %23, %29
  %32 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %33 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %34 = icmp eq ptr %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = load double, ptr %32, align 8
  %37 = load double, ptr %33, align 8
  %38 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %39 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %40 = icmp eq ptr %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = load double, ptr %38, align 8
  %43 = load double, ptr %39, align 8
  %44 = fsub double %36, %42
  %45 = fsub double %37, %43
  %46 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %47 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %48 = icmp eq ptr %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = load double, ptr %46, align 8
  %51 = load double, ptr %47, align 8
  %52 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %53 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %54 = icmp eq ptr %53, %52
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = load double, ptr %52, align 8
  %57 = load double, ptr %53, align 8
  %58 = fsub double %50, %56
  %59 = fsub double %51, %57
  %60 = tail call double @llvm.fmuladd.f64(double %31, double %31, double 0.000000e+00)
  %61 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %60)
  %62 = tail call double @llvm.fmuladd.f64(double %59, double %59, double %61)
  %63 = fmul double %62, %2
  %64 = fmul double %62, %2
  %65 = fcmp olt double %63, %1
  %66 = fcmp olt double %64, %1
  %67 = icmp eq i1 %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = zext i1 %65 to i16
  %70 = zext i1 %66 to i16
  %71 = icmp eq i16 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  br label %73

73:                                               ; preds = %.preheader19.preheader, %4
  %Diff_phi23 = phi i32 [ %14, %4 ], [ 1, %.preheader19.preheader ]
  %Dest_phi24 = phi i32 [ 123, %4 ], [ %15, %.preheader19.preheader ]
  %74 = phi i16 [ %69, %.preheader19.preheader ], [ 0, %4 ]
  %.018 = phi i16 [ %70, %.preheader19.preheader ], [ 0, %4 ]
  %75 = xor i32 %Diff_phi23, %Dest_phi24
  %76 = icmp eq i32 %75, 125
  %77 = zext i1 %76 to i32
  call void @assert_cfg_ft(i32 %77, i32 %75, i32 0)
  %78 = icmp eq i16 %.018, %74
  %79 = zext i1 %78 to i32
  call void @assert_ft(i32 %79, i32 1)
  ret i16 %.018
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @gravsub(ptr noalias nocapture writeonly sret(%struct.hgstruct) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.hgstruct) align 8 %2) local_unnamed_addr #13 {
.preheader32.preheader:
  %3 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 0
  %4 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 0
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load double, ptr %3, align 8
  %8 = load double, ptr %4, align 8
  %9 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 0
  %10 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 0
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = load double, ptr %9, align 8
  %14 = load double, ptr %10, align 8
  %15 = fsub double %7, %13
  %16 = fsub double %8, %14
  %17 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 1
  %18 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 1
  %19 = icmp eq ptr %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = load double, ptr %17, align 8
  %22 = load double, ptr %18, align 8
  %23 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 1
  %24 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 1
  %25 = icmp eq ptr %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = load double, ptr %23, align 8
  %28 = load double, ptr %24, align 8
  %29 = fsub double %21, %27
  %30 = fsub double %22, %28
  %31 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 2
  %32 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 2
  %33 = icmp eq ptr %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = load double, ptr %31, align 8
  %36 = load double, ptr %32, align 8
  %37 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 2
  %38 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 2
  %39 = icmp eq ptr %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = load double, ptr %37, align 8
  %42 = load double, ptr %38, align 8
  %43 = fsub double %35, %41
  %44 = fsub double %36, %42
  %45 = tail call double @llvm.fmuladd.f64(double %16, double %16, double 0.000000e+00)
  %46 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %45)
  %47 = tail call double @llvm.fmuladd.f64(double %44, double %44, double %46)
  %48 = fadd double %47, 0x3F647AE147AE147C
  %49 = fadd double %47, 0x3F647AE147AE147C
  %50 = tail call double @sqrt(double noundef %49) #28
  %51 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %52 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %53 = icmp eq ptr %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = load double, ptr %51, align 8
  %56 = load double, ptr %52, align 8
  %57 = fdiv double %55, %50
  %58 = fdiv double %56, %50
  %59 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 2
  %60 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 2
  %61 = icmp eq ptr %60, %59
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = load double, ptr %59, align 8
  %64 = load double, ptr %60, align 8
  %65 = fsub double %63, %57
  %66 = fsub double %64, %58
  store double %66, ptr %60, align 8
  %67 = fdiv double %57, %48
  %68 = fdiv double %58, %49
  %69 = fmul double %67, %15
  %70 = fmul double %68, %16
  %71 = fmul double %67, %29
  %72 = fmul double %68, %30
  %73 = fmul double %67, %43
  %74 = fmul double %68, %44
  %75 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 0
  %76 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 0
  %77 = icmp eq ptr %76, %75
  %78 = zext i1 %77 to i32
  call void @assert_ft(i32 %78, i32 1)
  %79 = load double, ptr %75, align 8
  %80 = load double, ptr %76, align 8
  %81 = fadd double %79, %69
  %82 = fadd double %80, %70
  store double %82, ptr %76, align 8
  %83 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 1
  %84 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 1
  %85 = icmp eq ptr %84, %83
  %86 = zext i1 %85 to i32
  call void @assert_ft(i32 %86, i32 1)
  %87 = load double, ptr %83, align 8
  %88 = load double, ptr %84, align 8
  %89 = fadd double %87, %71
  %90 = fadd double %88, %72
  store double %90, ptr %84, align 8
  %91 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 2
  %92 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 2
  %93 = icmp eq ptr %92, %91
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  %95 = load double, ptr %91, align 8
  %96 = load double, ptr %92, align 8
  %97 = fadd double %95, %73
  %98 = fadd double %96, %74
  store double %98, ptr %92, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @expandbox(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i32 @ic_test(ptr noundef %0, ptr noundef %1), !range !7
  %6 = icmp eq i32 %5, 0
  %.not43 = icmp eq i32 %5, 0
  %7 = icmp eq i1 %.not43, %6
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = select i1 %.not43, i32 128, i32 142
  %10 = xor i32 127, %9
  br i1 %.not43, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4
  %Diff_phi = phi i32 [ %10, %4 ]
  %Dest_phi = phi i32 [ 127, %4 ]
  %11 = xor i32 %Diff_phi, %Dest_phi
  %12 = icmp eq i32 %11, 128
  %13 = zext i1 %12 to i32
  call void @assert_cfg_ft(i32 %13, i32 %11, i32 0)
  %14 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %16 = icmp eq ptr %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 2
  %19 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 2
  %20 = icmp eq ptr %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %23 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %24 = icmp eq ptr %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %27 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %28 = icmp eq ptr %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 0
  %31 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 0
  %32 = icmp eq ptr %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %35 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %36 = icmp eq ptr %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %39 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %40 = icmp eq ptr %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  br label %42

42:                                               ; preds = %188, %.lr.ph
  %Diff_phi48 = phi i32 [ 1, %.lr.ph ], [ %199, %188 ]
  %Dest_phi49 = phi i32 [ %11, %.lr.ph ], [ %190, %188 ]
  %43 = xor i32 %Diff_phi48, %Dest_phi49
  %44 = icmp eq i32 %43, 129
  %45 = zext i1 %44 to i32
  call void @assert_cfg_ft(i32 %45, i32 %43, i32 0)
  %46 = load double, ptr %14, align 8
  %47 = load double, ptr %15, align 8
  %48 = fcmp olt double %46, 1.000000e+03
  %49 = fcmp olt double %47, 1.000000e+03
  %50 = icmp eq i1 %49, %48
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = select i1 %49, i32 130, i32 131
  %53 = xor i32 129, %52
  br i1 %49, label %.preheader40.preheader, label %74

.preheader40.preheader:                           ; preds = %42
  %Diff_phi50 = phi i32 [ %53, %42 ]
  %Dest_phi51 = phi i32 [ %43, %42 ]
  %54 = xor i32 %Diff_phi50, %Dest_phi51
  %55 = icmp eq i32 %54, 130
  %56 = zext i1 %55 to i32
  call void @assert_cfg_ft(i32 %56, i32 %54, i32 0)
  %57 = load double, ptr %1, align 8
  %58 = load double, ptr %1, align 8
  %59 = tail call double @llvm.fmuladd.f64(double %47, double 5.000000e-01, double %58)
  %60 = load double, ptr %22, align 8
  %61 = load double, ptr %23, align 8
  %62 = tail call double @llvm.fmuladd.f64(double %47, double 5.000000e-01, double %61)
  %63 = load double, ptr %26, align 8
  %64 = load double, ptr %27, align 8
  %65 = tail call double @llvm.fmuladd.f64(double %47, double 5.000000e-01, double %64)
  %66 = load double, ptr %30, align 8
  %67 = load double, ptr %31, align 8
  %68 = fcmp olt double %66, %59
  %69 = fcmp olt double %67, %59
  %70 = icmp eq i1 %69, %68
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  %72 = select i1 %69, i32 132, i32 133
  %73 = xor i32 130, %72
  br i1 %69, label %80, label %.preheader.1

74:                                               ; preds = %42
  %Diff_phi52 = phi i32 [ %53, %42 ]
  %Dest_phi53 = phi i32 [ %43, %42 ]
  %75 = xor i32 %Diff_phi52, %Dest_phi53
  %76 = icmp eq i32 %75, 131
  %77 = zext i1 %76 to i32
  call void @assert_cfg_ft(i32 %77, i32 %75, i32 0)
  %78 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 999)
  %79 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

80:                                               ; preds = %.preheader40.preheader
  %Diff_phi54 = phi i32 [ %73, %.preheader40.preheader ]
  %Dest_phi55 = phi i32 [ %54, %.preheader40.preheader ]
  %81 = xor i32 %Diff_phi54, %Dest_phi55
  %82 = icmp eq i32 %81, 132
  %83 = zext i1 %82 to i32
  call void @assert_cfg_ft(i32 %83, i32 %81, i32 0)
  %84 = fsub double %57, %46
  %85 = fsub double %58, %47
  store double %85, ptr %1, align 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %80, %.preheader40.preheader
  %Diff_phi56 = phi i32 [ %73, %.preheader40.preheader ], [ 1, %80 ]
  %Dest_phi57 = phi i32 [ %54, %.preheader40.preheader ], [ %81, %80 ]
  %86 = xor i32 %Diff_phi56, %Dest_phi57
  %87 = icmp eq i32 %86, 133
  %88 = zext i1 %87 to i32
  call void @assert_cfg_ft(i32 %88, i32 %86, i32 0)
  %89 = load double, ptr %34, align 8
  %90 = load double, ptr %35, align 8
  %91 = fcmp olt double %89, %62
  %92 = fcmp olt double %90, %62
  %93 = icmp eq i1 %92, %91
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  %95 = select i1 %92, i32 134, i32 135
  %96 = xor i32 133, %95
  br i1 %92, label %97, label %.preheader.2

97:                                               ; preds = %.preheader.1
  %Diff_phi58 = phi i32 [ %96, %.preheader.1 ]
  %Dest_phi59 = phi i32 [ %86, %.preheader.1 ]
  %98 = xor i32 %Diff_phi58, %Dest_phi59
  %99 = icmp eq i32 %98, 134
  %100 = zext i1 %99 to i32
  call void @assert_cfg_ft(i32 %100, i32 %98, i32 0)
  %101 = fsub double %60, %46
  %102 = fsub double %61, %47
  store double %102, ptr %23, align 8
  br label %.preheader.2

.preheader.2:                                     ; preds = %97, %.preheader.1
  %Diff_phi60 = phi i32 [ 1, %97 ], [ %96, %.preheader.1 ]
  %Dest_phi61 = phi i32 [ %98, %97 ], [ %86, %.preheader.1 ]
  %103 = xor i32 %Diff_phi60, %Dest_phi61
  %104 = icmp eq i32 %103, 135
  %105 = zext i1 %104 to i32
  call void @assert_cfg_ft(i32 %105, i32 %103, i32 0)
  %106 = load double, ptr %38, align 8
  %107 = load double, ptr %39, align 8
  %108 = fcmp olt double %106, %65
  %109 = fcmp olt double %107, %65
  %110 = icmp eq i1 %109, %108
  %111 = zext i1 %110 to i32
  call void @assert_ft(i32 %111, i32 1)
  %112 = select i1 %109, i32 136, i32 137
  %113 = xor i32 135, %112
  br i1 %109, label %114, label %120

114:                                              ; preds = %.preheader.2
  %Diff_phi62 = phi i32 [ %113, %.preheader.2 ]
  %Dest_phi63 = phi i32 [ %103, %.preheader.2 ]
  %115 = xor i32 %Diff_phi62, %Dest_phi63
  %116 = icmp eq i32 %115, 136
  %117 = zext i1 %116 to i32
  call void @assert_cfg_ft(i32 %117, i32 %115, i32 0)
  %118 = fsub double %63, %46
  %119 = fsub double %64, %47
  store double %119, ptr %27, align 8
  br label %120

120:                                              ; preds = %114, %.preheader.2
  %Diff_phi64 = phi i32 [ 1, %114 ], [ %113, %.preheader.2 ]
  %Dest_phi65 = phi i32 [ %115, %114 ], [ %103, %.preheader.2 ]
  %121 = xor i32 %Diff_phi64, %Dest_phi65
  %122 = icmp eq i32 %121, 137
  %123 = zext i1 %122 to i32
  call void @assert_cfg_ft(i32 %123, i32 %121, i32 0)
  %124 = fmul double %46, 2.000000e+00
  %125 = fmul double %47, 2.000000e+00
  store double %125, ptr %15, align 8
  %126 = load ptr, ptr %18, align 8
  %127 = load ptr, ptr %19, align 8
  %128 = icmp eq ptr %127, %126
  %129 = zext i1 %128 to i32
  call void @assert_ft(i32 %129, i32 1)
  %130 = icmp eq ptr %126, null
  %.not38 = icmp eq ptr %127, null
  %131 = icmp eq i1 %.not38, %130
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = select i1 %.not38, i32 141, i32 138
  %134 = xor i32 137, %133
  br i1 %.not38, label %188, label %135

135:                                              ; preds = %120
  %Diff_phi66 = phi i32 [ %134, %120 ]
  %Dest_phi67 = phi i32 [ %121, %120 ]
  %136 = xor i32 %Diff_phi66, %Dest_phi67
  %137 = icmp eq i32 %136, 138
  %138 = zext i1 %137 to i32
  call void @assert_cfg_ft(i32 %138, i32 %136, i32 0)
  %139 = tail call ptr @cell_alloc(i32 noundef 0)
  %140 = tail call { i64, i64 } @intcoord1(double noundef %59, double noundef %62, double noundef %65, ptr noundef nonnull %1)
  %141 = extractvalue { i64, i64 } %140, 1
  %142 = extractvalue { i64, i64 } %140, 1
  %143 = icmp eq i64 %142, %141
  %144 = zext i1 %143 to i32
  call void @assert_ft(i32 %144, i32 1)
  %145 = and i64 %141, 281470681743360
  %146 = and i64 %142, 281470681743360
  %147 = icmp eq i64 %146, %145
  %148 = zext i1 %147 to i32
  call void @assert_ft(i32 %148, i32 1)
  %149 = icmp eq i64 %145, 0
  %.not39 = icmp eq i64 %146, 0
  %150 = icmp eq i1 %.not39, %149
  %151 = zext i1 %150 to i32
  call void @assert_ft(i32 %151, i32 1)
  %152 = select i1 %.not39, i32 139, i32 140
  %153 = xor i32 138, %152
  br i1 %.not39, label %154, label %160

154:                                              ; preds = %135
  %Diff_phi68 = phi i32 [ %153, %135 ]
  %Dest_phi69 = phi i32 [ %136, %135 ]
  %155 = xor i32 %Diff_phi68, %Dest_phi69
  %156 = icmp eq i32 %155, 139
  %157 = zext i1 %156 to i32
  call void @assert_cfg_ft(i32 %157, i32 %155, i32 0)
  %158 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 1)
  %159 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

160:                                              ; preds = %135
  %Diff_phi70 = phi i32 [ %153, %135 ]
  %Dest_phi71 = phi i32 [ %136, %135 ]
  %161 = xor i32 %Diff_phi70, %Dest_phi71
  %162 = icmp eq i32 %161, 140
  %163 = zext i1 %162 to i32
  call void @assert_cfg_ft(i32 %163, i32 %161, i32 0)
  %164 = extractvalue { i64, i64 } %140, 0
  %165 = extractvalue { i64, i64 } %140, 0
  %166 = icmp eq i64 %165, %164
  %167 = zext i1 %166 to i32
  call void @assert_ft(i32 %167, i32 1)
  %168 = and i64 %141, 4294967295
  %.sroa.219.8.insert.ext = and i64 %142, 4294967295
  %169 = icmp eq i64 %.sroa.219.8.insert.ext, %168
  %170 = zext i1 %169 to i32
  call void @assert_ft(i32 %170, i32 1)
  %171 = or i64 %168, 4294967296
  %.sroa.219.8.insert.insert = or i64 %.sroa.219.8.insert.ext, 4294967296
  %172 = icmp eq i64 %.sroa.219.8.insert.insert, %171
  %173 = zext i1 %172 to i32
  call void @assert_ft(i32 %173, i32 1)
  %174 = tail call i32 @old_subindex(i64 %165, i64 %.sroa.219.8.insert.insert, i32 noundef 536870912)
  %175 = load ptr, ptr %18, align 8
  %176 = load ptr, ptr %19, align 8
  %177 = icmp eq ptr %176, %175
  %178 = zext i1 %177 to i32
  call void @assert_ft(i32 %178, i32 1)
  %179 = sext i32 %174 to i64
  %180 = sext i32 %174 to i64
  %181 = icmp eq i64 %180, %179
  %182 = zext i1 %181 to i32
  call void @assert_ft(i32 %182, i32 1)
  %183 = getelementptr inbounds %struct.cnode, ptr %139, i64 0, i32 5, i64 %179
  %184 = getelementptr inbounds %struct.cnode, ptr %139, i64 0, i32 5, i64 %180
  %185 = icmp eq ptr %184, %183
  %186 = zext i1 %185 to i32
  call void @assert_ft(i32 %186, i32 1)
  store ptr %176, ptr %184, align 8
  store ptr %139, ptr %19, align 8
  %187 = tail call i32 @ic_test(ptr noundef nonnull %0, ptr noundef nonnull %1), !range !7
  br label %188

188:                                              ; preds = %160, %120
  %Diff_phi72 = phi i32 [ 1, %160 ], [ %134, %120 ]
  %Dest_phi73 = phi i32 [ %161, %160 ], [ %121, %120 ]
  %189 = phi i32 [ %187, %160 ], [ 0, %120 ]
  %.1 = phi i32 [ %187, %160 ], [ 0, %120 ]
  %190 = xor i32 %Diff_phi72, %Dest_phi73
  %191 = icmp eq i32 %190, 141
  %192 = zext i1 %191 to i32
  call void @assert_cfg_ft(i32 %192, i32 %190, i32 0)
  %193 = icmp eq i32 %.1, %189
  %194 = zext i1 %193 to i32
  call void @assert_ft(i32 %194, i32 1)
  %195 = icmp eq i32 %189, 0
  %.not = icmp eq i32 %.1, 0
  %196 = icmp eq i1 %.not, %195
  %197 = zext i1 %196 to i32
  call void @assert_ft(i32 %197, i32 1)
  %198 = select i1 %.not, i32 129, i32 142
  %199 = xor i32 141, %198
  br i1 %.not, label %42, label %._crit_edge

._crit_edge:                                      ; preds = %188, %4
  %Diff_phi74 = phi i32 [ %199, %188 ], [ %10, %4 ]
  %Dest_phi75 = phi i32 [ %190, %188 ], [ 127, %4 ]
  %200 = xor i32 %Diff_phi74, %Dest_phi75
  %201 = icmp eq i32 %200, 142
  %202 = zext i1 %201 to i32
  call void @assert_cfg_ft(i32 %202, i32 %200, i32 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @loadtree(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %3, null
  %8 = icmp eq ptr %3, null
  %9 = icmp eq i1 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = select i1 %8, i32 148, i32 144
  %12 = xor i32 143, %11
  br i1 %8, label %common.ret28, label %13

13:                                               ; preds = %6
  %Diff_phi = phi i32 [ %12, %6 ]
  %Dest_phi = phi i32 [ 143, %6 ]
  %14 = xor i32 %Diff_phi, %Dest_phi
  %15 = icmp eq i32 %14, 144
  %16 = zext i1 %15 to i32
  call void @assert_cfg_ft(i32 %16, i32 %14, i32 0)
  %17 = icmp eq i32 %4, 0
  %.not = icmp eq i32 %4, 0
  %18 = icmp eq i1 %.not, %17
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = select i1 %.not, i32 145, i32 146
  %21 = xor i32 144, %20
  br i1 %.not, label %22, label %28

22:                                               ; preds = %13
  %Diff_phi29 = phi i32 [ %21, %13 ]
  %Dest_phi30 = phi i32 [ %14, %13 ]
  %23 = xor i32 %Diff_phi29, %Dest_phi30
  %24 = icmp eq i32 %23, 145
  %25 = zext i1 %24 to i32
  call void @assert_cfg_ft(i32 %25, i32 %23, i32 0)
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 2)
  %27 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

28:                                               ; preds = %13
  %Diff_phi31 = phi i32 [ %21, %13 ]
  %Dest_phi32 = phi i32 [ %14, %13 ]
  %29 = xor i32 %Diff_phi31, %Dest_phi32
  %30 = icmp eq i32 %29, 146
  %31 = zext i1 %30 to i32
  call void @assert_cfg_ft(i32 %31, i32 %29, i32 0)
  %32 = load i16, ptr %3, align 8
  %33 = load i16, ptr %3, align 8
  %34 = icmp eq i16 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = icmp eq i16 %32, 1
  %37 = icmp eq i16 %33, 1
  %38 = icmp eq i1 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = select i1 %37, i32 147, i32 149
  %41 = xor i32 146, %40
  br i1 %37, label %42, label %74

42:                                               ; preds = %28
  %Diff_phi33 = phi i32 [ %41, %28 ]
  %Dest_phi34 = phi i32 [ %29, %28 ]
  %43 = xor i32 %Diff_phi33, %Dest_phi34
  %44 = icmp eq i32 %43, 147
  %45 = zext i1 %44 to i32
  call void @assert_cfg_ft(i32 %45, i32 %43, i32 0)
  %46 = ptrtoint ptr %3 to i64
  %47 = ptrtoint ptr %3 to i64
  %48 = icmp eq i64 %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = trunc i64 %46 to i32
  %51 = trunc i64 %47 to i32
  %52 = icmp eq i32 %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = and i32 %50, 127
  %55 = and i32 %51, 127
  %56 = icmp eq i32 %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = tail call ptr @cell_alloc(i32 noundef %55)
  %59 = tail call i32 @subindex(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %4)
  %60 = sext i32 %59 to i64
  %61 = sext i32 %59 to i64
  %62 = icmp eq i64 %61, %60
  %63 = zext i1 %62 to i32
  call void @assert_ft(i32 %63, i32 1)
  %64 = getelementptr inbounds %struct.cnode, ptr %58, i64 0, i32 5, i64 %60
  %65 = getelementptr inbounds %struct.cnode, ptr %58, i64 0, i32 5, i64 %61
  %66 = icmp eq ptr %65, %64
  %67 = zext i1 %66 to i32
  call void @assert_ft(i32 %67, i32 1)
  store ptr %3, ptr %65, align 8
  br label %74

common.ret28:                                     ; preds = %74, %6
  %Diff_phi35 = phi i32 [ %12, %6 ], [ 1, %74 ]
  %Dest_phi36 = phi i32 [ 143, %6 ], [ %76, %74 ]
  %68 = phi ptr [ %75, %74 ], [ %0, %6 ]
  %common.ret28.op = phi ptr [ %.025, %74 ], [ %0, %6 ]
  %69 = xor i32 %Diff_phi35, %Dest_phi36
  %70 = icmp eq i32 %69, 148
  %71 = zext i1 %70 to i32
  call void @assert_cfg_ft(i32 %71, i32 %69, i32 0)
  %72 = icmp eq ptr %common.ret28.op, %68
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  ret ptr %common.ret28.op

74:                                               ; preds = %42, %28
  %Diff_phi37 = phi i32 [ 6, %42 ], [ %41, %28 ]
  %Dest_phi38 = phi i32 [ %43, %42 ], [ %29, %28 ]
  %75 = phi ptr [ %58, %42 ], [ %3, %28 ]
  %.025 = phi ptr [ %58, %42 ], [ %3, %28 ]
  %76 = xor i32 %Diff_phi37, %Dest_phi38
  %77 = icmp eq i32 %76, 149
  %78 = zext i1 %77 to i32
  call void @assert_cfg_ft(i32 %78, i32 %76, i32 0)
  %79 = icmp eq ptr %.025, %75
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = tail call i32 @old_subindex(i64 %1, i64 %2, i32 noundef %4)
  %82 = sext i32 %81 to i64
  %83 = sext i32 %81 to i64
  %84 = icmp eq i64 %83, %82
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  %86 = getelementptr inbounds %struct.cnode, ptr %75, i64 0, i32 5, i64 %82
  %87 = getelementptr inbounds %struct.cnode, ptr %.025, i64 0, i32 5, i64 %83
  %88 = icmp eq ptr %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = load ptr, ptr %86, align 8
  %91 = load ptr, ptr %87, align 8
  %92 = icmp eq ptr %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = ashr i32 %4, 1
  %95 = ashr i32 %4, 1
  %96 = icmp eq i32 %95, %94
  %97 = zext i1 %96 to i32
  call void @assert_ft(i32 %97, i32 1)
  %98 = tail call ptr @loadtree(ptr noundef %0, i64 %1, i64 %2, ptr noundef %91, i32 noundef %95, ptr noundef %5)
  store ptr %98, ptr %87, align 8
  br label %common.ret28
}

; Function Attrs: nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local double @hackcofm(ptr nocapture noundef %0) local_unnamed_addr #15 {
  %2 = load i16, ptr %0, align 8
  %3 = load i16, ptr %0, align 8
  %4 = icmp eq i16 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = icmp eq i16 %2, 2
  %7 = icmp eq i16 %3, 2
  %8 = icmp eq i1 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = select i1 %7, i32 151, i32 155
  %11 = xor i32 150, %10
  br i1 %7, label %.preheader46, label %111

.preheader46:                                     ; preds = %.loopexit45, %1
  %Diff_phi = phi i32 [ %11, %1 ], [ %85, %.loopexit45 ]
  %Dest_phi = phi i32 [ 150, %1 ], [ %75, %.loopexit45 ]
  %12 = phi double [ %71, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %.sroa.0.0 = phi double [ %.sroa.0.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %13 = phi double [ %72, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %.sroa.4.0 = phi double [ %.sroa.4.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %14 = phi double [ %73, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %.sroa.7.0 = phi double [ %.sroa.7.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %15 = phi i64 [ %78, %.loopexit45 ], [ 0, %1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit45 ], [ 0, %1 ]
  %16 = phi double [ %74, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %.04252 = phi double [ %.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %17 = xor i32 %Diff_phi, %Dest_phi
  %18 = icmp eq i32 %17, 151
  %19 = zext i1 %18 to i32
  call void @assert_cfg_ft(i32 %19, i32 %17, i32 0)
  %20 = icmp eq i64 %indvars.iv, %15
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 %15
  %23 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 %indvars.iv
  %24 = icmp eq ptr %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = load ptr, ptr %22, align 8
  %27 = load ptr, ptr %23, align 8
  %28 = icmp eq ptr %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = icmp eq ptr %26, null
  %.not = icmp eq ptr %27, null
  %31 = icmp eq i1 %.not, %30
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = select i1 %.not, i32 153, i32 152
  %34 = xor i32 151, %33
  br i1 %.not, label %.loopexit45, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader46
  %Diff_phi62 = phi i32 [ %34, %.preheader46 ]
  %Dest_phi63 = phi i32 [ %17, %.preheader46 ]
  %35 = xor i32 %Diff_phi62, %Dest_phi63
  %36 = icmp eq i32 %35, 152
  %37 = zext i1 %36 to i32
  call void @assert_cfg_ft(i32 %37, i32 %35, i32 0)
  %38 = tail call double @hackcofm(ptr noundef nonnull %27)
  %39 = getelementptr inbounds %struct.node, ptr %26, i64 0, i32 2, i64 0
  %40 = getelementptr inbounds %struct.node, ptr %27, i64 0, i32 2, i64 0
  %41 = icmp eq ptr %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = load double, ptr %39, align 8
  %44 = load double, ptr %40, align 8
  %45 = fmul double %38, %43
  %46 = fmul double %38, %44
  %47 = getelementptr inbounds %struct.node, ptr %26, i64 0, i32 2, i64 1
  %48 = getelementptr inbounds %struct.node, ptr %27, i64 0, i32 2, i64 1
  %49 = icmp eq ptr %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = load double, ptr %47, align 8
  %52 = load double, ptr %48, align 8
  %53 = fmul double %38, %51
  %54 = fmul double %38, %52
  %55 = getelementptr inbounds %struct.node, ptr %26, i64 0, i32 2, i64 2
  %56 = getelementptr inbounds %struct.node, ptr %27, i64 0, i32 2, i64 2
  %57 = icmp eq ptr %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = load double, ptr %55, align 8
  %60 = load double, ptr %56, align 8
  %61 = fmul double %38, %59
  %62 = fmul double %38, %60
  %63 = fadd double %12, %45
  %64 = fadd double %.sroa.0.0, %46
  %65 = fadd double %13, %53
  %66 = fadd double %.sroa.4.0, %54
  %67 = fadd double %14, %61
  %68 = fadd double %.sroa.7.0, %62
  %69 = fadd double %16, %38
  %70 = fadd double %.04252, %38
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader.preheader, %.preheader46
  %Diff_phi64 = phi i32 [ 1, %.preheader.preheader ], [ %34, %.preheader46 ]
  %Dest_phi65 = phi i32 [ %35, %.preheader.preheader ], [ %17, %.preheader46 ]
  %71 = phi double [ %12, %.preheader46 ], [ %63, %.preheader.preheader ]
  %.sroa.0.1 = phi double [ %.sroa.0.0, %.preheader46 ], [ %64, %.preheader.preheader ]
  %72 = phi double [ %13, %.preheader46 ], [ %65, %.preheader.preheader ]
  %.sroa.4.1 = phi double [ %.sroa.4.0, %.preheader46 ], [ %66, %.preheader.preheader ]
  %73 = phi double [ %14, %.preheader46 ], [ %67, %.preheader.preheader ]
  %.sroa.7.1 = phi double [ %.sroa.7.0, %.preheader46 ], [ %68, %.preheader.preheader ]
  %74 = phi double [ %16, %.preheader46 ], [ %69, %.preheader.preheader ]
  %.1 = phi double [ %.04252, %.preheader46 ], [ %70, %.preheader.preheader ]
  %75 = xor i32 %Diff_phi64, %Dest_phi65
  %76 = icmp eq i32 %75, 153
  %77 = zext i1 %76 to i32
  call void @assert_cfg_ft(i32 %77, i32 %75, i32 0)
  %78 = add nuw nsw i64 %15, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %79 = icmp eq i64 %indvars.iv.next, %78
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = icmp eq i64 %78, 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  %82 = icmp eq i1 %exitcond.not, %81
  %83 = zext i1 %82 to i32
  call void @assert_ft(i32 %83, i32 1)
  %84 = select i1 %exitcond.not, i32 154, i32 151
  %85 = xor i32 153, %84
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.preheader46

.loopexit.loopexit:                               ; preds = %.loopexit45
  %Diff_phi66 = phi i32 [ %85, %.loopexit45 ]
  %Dest_phi67 = phi i32 [ %75, %.loopexit45 ]
  %86 = xor i32 %Diff_phi66, %Dest_phi67
  %87 = icmp eq i32 %86, 154
  %88 = zext i1 %87 to i32
  call void @assert_cfg_ft(i32 %88, i32 %86, i32 0)
  %89 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %90 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %91 = icmp eq ptr %90, %89
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  store double %.1, ptr %90, align 8
  %93 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %94 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %95 = icmp eq ptr %94, %93
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %98 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %99 = icmp eq ptr %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %102 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %103 = icmp eq ptr %102, %101
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  %105 = fdiv double %71, %74
  %106 = fdiv double %.sroa.0.1, %.1
  store double %106, ptr %94, align 8
  %107 = fdiv double %72, %74
  %108 = fdiv double %.sroa.4.1, %.1
  store double %108, ptr %98, align 8
  %109 = fdiv double %73, %74
  %110 = fdiv double %.sroa.7.1, %.1
  store double %110, ptr %102, align 8
  br label %.loopexit

111:                                              ; preds = %1
  %Diff_phi68 = phi i32 [ %11, %1 ]
  %Dest_phi69 = phi i32 [ 150, %1 ]
  %112 = xor i32 %Diff_phi68, %Dest_phi69
  %113 = icmp eq i32 %112, 155
  %114 = zext i1 %113 to i32
  call void @assert_cfg_ft(i32 %114, i32 %112, i32 0)
  %115 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %116 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %117 = icmp eq ptr %116, %115
  %118 = zext i1 %117 to i32
  call void @assert_ft(i32 %118, i32 1)
  %119 = load double, ptr %115, align 8
  %120 = load double, ptr %116, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %111, %.loopexit.loopexit
  %Diff_phi70 = phi i32 [ 6, %.loopexit.loopexit ], [ 7, %111 ]
  %Dest_phi71 = phi i32 [ %86, %.loopexit.loopexit ], [ %112, %111 ]
  %121 = phi double [ %119, %111 ], [ %74, %.loopexit.loopexit ]
  %.041 = phi double [ %120, %111 ], [ %.1, %.loopexit.loopexit ]
  %122 = xor i32 %Diff_phi70, %Dest_phi71
  %123 = icmp eq i32 %122, 156
  %124 = zext i1 %123 to i32
  call void @assert_cfg_ft(i32 %124, i32 %122, i32 0)
  ret double %.041
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local ptr @cell_alloc(i32 noundef %0) local_unnamed_addr #16 {
  %2 = load ptr, ptr @cp_free_list, align 8
  %3 = load ptr, ptr @cp_free_list, align 8
  %4 = icmp eq ptr %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = icmp eq ptr %2, null
  %.not = icmp eq ptr %3, null
  %7 = icmp eq i1 %.not, %6
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = select i1 %.not, i32 159, i32 158
  %10 = xor i32 157, %9
  br i1 %.not, label %23, label %11

11:                                               ; preds = %1
  %Diff_phi = phi i32 [ %10, %1 ]
  %Dest_phi = phi i32 [ 157, %1 ]
  %12 = xor i32 %Diff_phi, %Dest_phi
  %13 = icmp eq i32 %12, 158
  %14 = zext i1 %13 to i32
  call void @assert_cfg_ft(i32 %14, i32 %12, i32 0)
  %15 = getelementptr inbounds %struct.cnode, ptr %2, i64 0, i32 6
  %16 = getelementptr inbounds %struct.cnode, ptr %3, i64 0, i32 6
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = load ptr, ptr %15, align 8
  %20 = load ptr, ptr %16, align 8
  %21 = icmp eq ptr %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  store ptr %20, ptr @cp_free_list, align 8
  br label %28

23:                                               ; preds = %1
  %Diff_phi10 = phi i32 [ %10, %1 ]
  %Dest_phi11 = phi i32 [ 157, %1 ]
  %24 = xor i32 %Diff_phi10, %Dest_phi11
  %25 = icmp eq i32 %24, 159
  %26 = zext i1 %25 to i32
  call void @assert_cfg_ft(i32 %26, i32 %24, i32 0)
  %27 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #28
  br label %28

28:                                               ; preds = %23, %11
  %Diff_phi12 = phi i32 [ 63, %23 ], [ 62, %11 ]
  %Dest_phi13 = phi i32 [ %24, %23 ], [ %12, %11 ]
  %29 = phi ptr [ %2, %11 ], [ %27, %23 ]
  %.07 = phi ptr [ %3, %11 ], [ %27, %23 ]
  %30 = xor i32 %Diff_phi12, %Dest_phi13
  %31 = icmp eq i32 %30, 160
  %32 = zext i1 %31 to i32
  call void @assert_cfg_ft(i32 %32, i32 %30, i32 0)
  %33 = icmp eq ptr %.07, %29
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  store i16 2, ptr %.07, align 8
  %35 = getelementptr inbounds %struct.cnode, ptr %29, i64 0, i32 3
  %36 = getelementptr inbounds %struct.cnode, ptr %.07, i64 0, i32 3
  %37 = icmp eq ptr %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  store i32 %0, ptr %36, align 8
  %39 = getelementptr i8, ptr %29, i64 48
  %scevgep = getelementptr i8, ptr %.07, i64 48
  %40 = icmp eq ptr %scevgep, %39
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %scevgep, i8 0, i64 64, i1 false)
  ret ptr %.07
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %6 = icmp eq ptr %5, %4
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = load double, ptr %4, align 8
  %9 = load double, ptr %5, align 8
  %10 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %11 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %12 = icmp eq ptr %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = load double, ptr %10, align 8
  %15 = load double, ptr %11, align 8
  %16 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %18 = icmp eq ptr %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = load double, ptr %16, align 8
  %21 = load double, ptr %17, align 8
  %22 = load double, ptr %1, align 8
  %23 = load double, ptr %1, align 8
  %24 = fsub double %8, %22
  %25 = fsub double %9, %23
  %26 = fdiv double %24, %20
  %27 = fdiv double %25, %21
  %28 = fcmp oge double %26, 0.000000e+00
  %29 = fcmp oge double %27, 0.000000e+00
  %30 = icmp eq i1 %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = fcmp olt double %26, 1.000000e+00
  %33 = fcmp olt double %27, 1.000000e+00
  %34 = icmp eq i1 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = and i1 %28, %32
  %or.cond = and i1 %29, %33
  %37 = icmp eq i1 %or.cond, %36
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = select i1 %or.cond, i32 163, i32 162
  %40 = xor i32 161, %39
  br i1 %or.cond, label %47, label %41

41:                                               ; preds = %3
  %Diff_phi = phi i32 [ %40, %3 ]
  %Dest_phi = phi i32 [ 161, %3 ]
  %42 = xor i32 %Diff_phi, %Dest_phi
  %43 = icmp eq i32 %42, 162
  %44 = zext i1 %43 to i32
  call void @assert_cfg_ft(i32 %44, i32 %42, i32 0)
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 5)
  %46 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

47:                                               ; preds = %3
  %Diff_phi36 = phi i32 [ %40, %3 ]
  %Dest_phi37 = phi i32 [ 161, %3 ]
  %48 = xor i32 %Diff_phi36, %Dest_phi37
  %49 = icmp eq i32 %48, 163
  %50 = zext i1 %49 to i32
  call void @assert_cfg_ft(i32 %50, i32 %48, i32 0)
  %51 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %52 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %53 = icmp eq ptr %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = load double, ptr %51, align 8
  %56 = load double, ptr %52, align 8
  %57 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %58 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %59 = icmp eq ptr %58, %57
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = load double, ptr %57, align 8
  %62 = load double, ptr %58, align 8
  %63 = fsub double %55, %61
  %64 = fsub double %56, %62
  %65 = fdiv double %63, %20
  %66 = fdiv double %64, %21
  %67 = fcmp oge double %65, 0.000000e+00
  %68 = fcmp oge double %66, 0.000000e+00
  %69 = icmp eq i1 %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = fcmp olt double %65, 1.000000e+00
  %72 = fcmp olt double %66, 1.000000e+00
  %73 = icmp eq i1 %72, %71
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = and i1 %67, %71
  %or.cond3 = and i1 %68, %72
  %76 = icmp eq i1 %or.cond3, %75
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = select i1 %or.cond3, i32 165, i32 164
  %79 = xor i32 163, %78
  br i1 %or.cond3, label %86, label %80

80:                                               ; preds = %47
  %Diff_phi38 = phi i32 [ %79, %47 ]
  %Dest_phi39 = phi i32 [ %48, %47 ]
  %81 = xor i32 %Diff_phi38, %Dest_phi39
  %82 = icmp eq i32 %81, 164
  %83 = zext i1 %82 to i32
  call void @assert_cfg_ft(i32 %83, i32 %81, i32 0)
  %84 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 6)
  %85 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

86:                                               ; preds = %47
  %Diff_phi40 = phi i32 [ %79, %47 ]
  %Dest_phi41 = phi i32 [ %48, %47 ]
  %87 = xor i32 %Diff_phi40, %Dest_phi41
  %88 = icmp eq i32 %87, 165
  %89 = zext i1 %88 to i32
  call void @assert_cfg_ft(i32 %89, i32 %87, i32 0)
  %90 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %91 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %92 = icmp eq ptr %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = load double, ptr %90, align 8
  %95 = load double, ptr %91, align 8
  %96 = fsub double %14, %94
  %97 = fsub double %15, %95
  %98 = fdiv double %96, %20
  %99 = fdiv double %97, %21
  %100 = fcmp oge double %98, 0.000000e+00
  %101 = fcmp oge double %99, 0.000000e+00
  %102 = icmp eq i1 %101, %100
  %103 = zext i1 %102 to i32
  call void @assert_ft(i32 %103, i32 1)
  %104 = fcmp olt double %98, 1.000000e+00
  %105 = fcmp olt double %99, 1.000000e+00
  %106 = icmp eq i1 %105, %104
  %107 = zext i1 %106 to i32
  call void @assert_ft(i32 %107, i32 1)
  %108 = and i1 %100, %104
  %or.cond5 = and i1 %101, %105
  %109 = icmp eq i1 %or.cond5, %108
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = select i1 %or.cond5, i32 167, i32 166
  %112 = xor i32 165, %111
  br i1 %or.cond5, label %119, label %113

113:                                              ; preds = %86
  %Diff_phi42 = phi i32 [ %112, %86 ]
  %Dest_phi43 = phi i32 [ %87, %86 ]
  %114 = xor i32 %Diff_phi42, %Dest_phi43
  %115 = icmp eq i32 %114, 166
  %116 = zext i1 %115 to i32
  call void @assert_cfg_ft(i32 %116, i32 %114, i32 0)
  %117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 7)
  %118 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

119:                                              ; preds = %86
  %Diff_phi44 = phi i32 [ %112, %86 ]
  %Dest_phi45 = phi i32 [ %87, %86 ]
  %120 = xor i32 %Diff_phi44, %Dest_phi45
  %121 = icmp eq i32 %120, 167
  %122 = zext i1 %121 to i32
  call void @assert_cfg_ft(i32 %122, i32 %120, i32 0)
  %123 = fmul double %65, 0x41D0000000000000
  %124 = fmul double %66, 0x41D0000000000000
  %125 = tail call double @llvm.floor.f64(double %124)
  %126 = fptosi double %125 to i32
  %127 = fptosi double %125 to i32
  %128 = icmp eq i32 %127, %126
  %129 = zext i1 %128 to i32
  call void @assert_ft(i32 %129, i32 1)
  %130 = fmul double %26, 0x41D0000000000000
  %131 = fmul double %27, 0x41D0000000000000
  %132 = tail call double @llvm.floor.f64(double %131)
  %133 = fptosi double %132 to i32
  %134 = fptosi double %132 to i32
  %135 = icmp eq i32 %134, %133
  %136 = zext i1 %135 to i32
  call void @assert_ft(i32 %136, i32 1)
  %137 = fmul double %98, 0x41D0000000000000
  %138 = fmul double %99, 0x41D0000000000000
  %139 = tail call double @llvm.floor.f64(double %138)
  %140 = fptosi double %139 to i32
  %141 = fptosi double %139 to i32
  %142 = icmp eq i32 %141, %140
  %143 = zext i1 %142 to i32
  call void @assert_ft(i32 %143, i32 1)
  %144 = and i32 %133, %2
  %145 = and i32 %134, %2
  %146 = icmp eq i32 %145, %144
  %147 = zext i1 %146 to i32
  call void @assert_ft(i32 %147, i32 1)
  %148 = icmp eq i32 %144, 0
  %.not = icmp eq i32 %145, 0
  %149 = icmp eq i1 %.not, %148
  %150 = zext i1 %149 to i32
  call void @assert_ft(i32 %150, i32 1)
  %151 = select i1 %148, i32 0, i32 4
  %152 = select i1 %.not, i32 0, i32 4
  %153 = icmp eq i32 %152, %151
  %154 = zext i1 %153 to i32
  call void @assert_ft(i32 %154, i32 1)
  %155 = and i32 %126, %2
  %156 = and i32 %127, %2
  %157 = icmp eq i32 %156, %155
  %158 = zext i1 %157 to i32
  call void @assert_ft(i32 %158, i32 1)
  %159 = icmp eq i32 %155, 0
  %.not.1 = icmp eq i32 %156, 0
  %160 = icmp eq i1 %.not.1, %159
  %161 = zext i1 %160 to i32
  call void @assert_ft(i32 %161, i32 1)
  %162 = select i1 %159, i32 0, i32 2
  %163 = select i1 %.not.1, i32 0, i32 2
  %164 = icmp eq i32 %163, %162
  %165 = zext i1 %164 to i32
  call void @assert_ft(i32 %165, i32 1)
  %166 = or i32 %162, %151
  %.1.1 = or i32 %163, %152
  %167 = icmp eq i32 %.1.1, %166
  %168 = zext i1 %167 to i32
  call void @assert_ft(i32 %168, i32 1)
  %169 = and i32 %140, %2
  %170 = and i32 %141, %2
  %171 = icmp eq i32 %170, %169
  %172 = zext i1 %171 to i32
  call void @assert_ft(i32 %172, i32 1)
  %173 = icmp ne i32 %169, 0
  %.not.2 = icmp ne i32 %170, 0
  %174 = icmp eq i1 %.not.2, %173
  %175 = zext i1 %174 to i32
  call void @assert_ft(i32 %175, i32 1)
  %176 = zext i1 %173 to i32
  %177 = zext i1 %.not.2 to i32
  %178 = icmp eq i32 %177, %176
  %179 = zext i1 %178 to i32
  call void @assert_ft(i32 %179, i32 1)
  %180 = or i32 %166, %176
  %.1.2 = or i32 %.1.1, %177
  %181 = icmp eq i32 %.1.2, %180
  %182 = zext i1 %181 to i32
  call void @assert_ft(i32 %182, i32 1)
  ret i32 %.1.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ic_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load double, ptr %3, align 8
  %8 = load double, ptr %4, align 8
  %9 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %10 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = load double, ptr %9, align 8
  %14 = load double, ptr %10, align 8
  %15 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %16 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = load double, ptr %15, align 8
  %20 = load double, ptr %16, align 8
  %21 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %22 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %23 = icmp eq ptr %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = load double, ptr %21, align 8
  %26 = load double, ptr %22, align 8
  %27 = load double, ptr %1, align 8
  %28 = load double, ptr %1, align 8
  %29 = fsub double %7, %27
  %30 = fsub double %8, %28
  %31 = fdiv double %29, %25
  %32 = fdiv double %30, %26
  %33 = fcmp oge double %31, 0.000000e+00
  %34 = fcmp oge double %32, 0.000000e+00
  %35 = icmp eq i1 %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = fcmp olt double %31, 1.000000e+00
  %38 = fcmp olt double %32, 1.000000e+00
  %39 = icmp eq i1 %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = and i1 %33, %37
  %or.cond = and i1 %34, %38
  %42 = icmp eq i1 %or.cond, %41
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %45 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %46 = icmp eq ptr %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = load double, ptr %44, align 8
  %49 = load double, ptr %45, align 8
  %50 = fsub double %13, %48
  %51 = fsub double %14, %49
  %52 = fdiv double %50, %25
  %53 = fdiv double %51, %26
  %54 = fcmp oge double %52, 0.000000e+00
  %55 = fcmp oge double %53, 0.000000e+00
  %56 = icmp eq i1 %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = fcmp olt double %52, 1.000000e+00
  %59 = fcmp olt double %53, 1.000000e+00
  %60 = icmp eq i1 %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = and i1 %54, %58
  %or.cond3 = and i1 %55, %59
  %63 = icmp eq i1 %or.cond3, %62
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %66 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %67 = icmp eq ptr %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = load double, ptr %65, align 8
  %70 = load double, ptr %66, align 8
  %71 = fsub double %19, %69
  %72 = fsub double %20, %70
  %73 = fdiv double %71, %25
  %74 = fdiv double %72, %26
  %75 = fcmp oge double %73, 0.000000e+00
  %76 = fcmp oge double %74, 0.000000e+00
  %77 = icmp eq i1 %76, %75
  %78 = zext i1 %77 to i32
  call void @assert_ft(i32 %78, i32 1)
  %79 = fcmp olt double %73, 1.000000e+00
  %80 = fcmp olt double %74, 1.000000e+00
  %81 = icmp eq i1 %80, %79
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  %83 = and i1 %75, %79
  %or.cond5 = and i1 %76, %80
  %84 = icmp eq i1 %or.cond5, %83
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  %86 = select i1 %83, i1 %62, i1 false
  %87 = select i1 %or.cond5, i1 %or.cond3, i1 false
  %88 = icmp eq i1 %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = select i1 %86, i1 %41, i1 false
  %narrow21 = select i1 %87, i1 %or.cond, i1 false
  %91 = icmp eq i1 %narrow21, %90
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = zext i1 %90 to i32
  %.2 = zext i1 %narrow21 to i32
  %94 = icmp eq i32 %.2, %93
  %95 = zext i1 %94 to i32
  call void @assert_ft(i32 %95, i32 1)
  ret i32 %.2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @intcoord1(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = load double, ptr %3, align 8
  %6 = load double, ptr %3, align 8
  %7 = fsub double %0, %5
  %8 = fsub double %0, %6
  %9 = getelementptr inbounds %struct.tree, ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %struct.tree, ptr %3, i64 0, i32 1
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = load double, ptr %9, align 8
  %14 = load double, ptr %10, align 8
  %15 = fdiv double %7, %13
  %16 = fdiv double %8, %14
  %17 = fcmp oge double %15, 0.000000e+00
  %18 = fcmp oge double %16, 0.000000e+00
  %19 = icmp eq i1 %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = fcmp olt double %15, 1.000000e+00
  %22 = fcmp olt double %16, 1.000000e+00
  %23 = icmp eq i1 %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = and i1 %17, %21
  %or.cond = and i1 %18, %22
  %26 = icmp eq i1 %or.cond, %25
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %29 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %30 = icmp eq ptr %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = load double, ptr %28, align 8
  %33 = load double, ptr %29, align 8
  %34 = fsub double %1, %32
  %35 = fsub double %1, %33
  %36 = fdiv double %34, %13
  %37 = fdiv double %35, %14
  %38 = fcmp oge double %36, 0.000000e+00
  %39 = fcmp oge double %37, 0.000000e+00
  %40 = icmp eq i1 %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = fcmp olt double %36, 1.000000e+00
  %43 = fcmp olt double %37, 1.000000e+00
  %44 = icmp eq i1 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = and i1 %38, %42
  %or.cond3 = and i1 %39, %43
  %47 = icmp eq i1 %or.cond3, %46
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = select i1 %or.cond3, i32 170, i32 171
  %50 = xor i32 169, %49
  br i1 %or.cond3, label %51, label %73

51:                                               ; preds = %4
  %Diff_phi = phi i32 [ %50, %4 ]
  %Dest_phi = phi i32 [ 169, %4 ]
  %52 = xor i32 %Diff_phi, %Dest_phi
  %53 = icmp eq i32 %52, 170
  %54 = zext i1 %53 to i32
  call void @assert_cfg_ft(i32 %54, i32 %52, i32 0)
  %55 = select i1 %25, i64 4294967296, i64 0
  %.sroa.5.0 = select i1 %or.cond, i64 4294967296, i64 0
  %56 = icmp eq i64 %.sroa.5.0, %55
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = fmul double %36, 0x41D0000000000000
  %59 = fmul double %37, 0x41D0000000000000
  %60 = tail call double @llvm.floor.f64(double %59)
  %61 = fptosi double %60 to i32
  %62 = fptosi double %60 to i32
  %63 = icmp eq i32 %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = zext i32 %61 to i64
  %66 = zext i32 %62 to i64
  %67 = icmp eq i64 %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = shl nuw i64 %65, 32
  %70 = shl nuw i64 %66, 32
  %71 = icmp eq i64 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  br label %73

73:                                               ; preds = %51, %4
  %Diff_phi25 = phi i32 [ %50, %4 ], [ 1, %51 ]
  %Dest_phi26 = phi i32 [ 169, %4 ], [ %52, %51 ]
  %74 = phi i64 [ %69, %51 ], [ 0, %4 ]
  %.sroa.2.0 = phi i64 [ %70, %51 ], [ 0, %4 ]
  %75 = phi i64 [ %55, %51 ], [ 0, %4 ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %51 ], [ 0, %4 ]
  %76 = xor i32 %Diff_phi25, %Dest_phi26
  %77 = icmp eq i32 %76, 171
  %78 = zext i1 %77 to i32
  call void @assert_cfg_ft(i32 %78, i32 %76, i32 0)
  %79 = icmp eq i64 %.sroa.5.1, %75
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = icmp eq i64 %.sroa.2.0, %74
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  %83 = fmul double %15, 0x41D0000000000000
  %84 = fmul double %16, 0x41D0000000000000
  %85 = tail call double @llvm.floor.f64(double %84)
  %86 = fptosi double %85 to i32
  %87 = fptosi double %85 to i32
  %88 = icmp eq i32 %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = zext i32 %86 to i64
  %91 = zext i32 %87 to i64
  %92 = icmp eq i64 %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = select i1 %25, i64 %90, i64 0
  %.sroa.0.0 = select i1 %or.cond, i64 %91, i64 0
  %95 = icmp eq i64 %.sroa.0.0, %94
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %98 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %99 = icmp eq ptr %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = load double, ptr %97, align 8
  %102 = load double, ptr %98, align 8
  %103 = fsub double %2, %101
  %104 = fsub double %2, %102
  %105 = fdiv double %103, %13
  %106 = fdiv double %104, %14
  %107 = fcmp oge double %105, 0.000000e+00
  %108 = fcmp oge double %106, 0.000000e+00
  %109 = icmp eq i1 %108, %107
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = fcmp olt double %105, 1.000000e+00
  %112 = fcmp olt double %106, 1.000000e+00
  %113 = icmp eq i1 %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = and i1 %107, %111
  %or.cond5 = and i1 %108, %112
  %116 = icmp eq i1 %or.cond5, %115
  %117 = zext i1 %116 to i32
  call void @assert_ft(i32 %117, i32 1)
  %118 = fmul double %105, 0x41D0000000000000
  %119 = fmul double %106, 0x41D0000000000000
  %120 = tail call double @llvm.floor.f64(double %119)
  %121 = fptosi double %120 to i32
  %122 = fptosi double %120 to i32
  %123 = icmp eq i32 %122, %121
  %124 = zext i1 %123 to i32
  call void @assert_ft(i32 %124, i32 1)
  %125 = zext i32 %121 to i64
  %126 = zext i32 %122 to i64
  %127 = icmp eq i64 %126, %125
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = or i64 %74, %94
  %.sroa.0.0.insert.insert = or i64 %.sroa.2.0, %.sroa.0.0
  %130 = icmp eq i64 %.sroa.0.0.insert.insert, %129
  %131 = zext i1 %130 to i32
  call void @assert_ft(i32 %131, i32 1)
  %132 = insertvalue { i64, i64 } poison, i64 %129, 0
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %133 = or i64 %75, %125
  %134 = or i64 %.sroa.5.1, %126
  %135 = icmp eq i64 %134, %133
  %136 = zext i1 %135 to i32
  call void @assert_ft(i32 %136, i32 1)
  %137 = select i1 %115, i64 %133, i64 0
  %.sroa.3.8.insert.insert = select i1 %or.cond5, i64 %134, i64 0
  %138 = icmp eq i64 %.sroa.3.8.insert.insert, %137
  %139 = zext i1 %138 to i32
  call void @assert_ft(i32 %139, i32 1)
  %140 = insertvalue { i64, i64 } %132, i64 %137, 1
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @freetree(ptr noundef %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  %3 = icmp eq ptr %0, null
  %4 = icmp eq i1 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %3, i32 191, i32 173
  %7 = xor i32 172, %6
  br i1 %3, label %195, label %8

8:                                                ; preds = %1
  %Diff_phi = phi i32 [ %7, %1 ]
  %Dest_phi = phi i32 [ 172, %1 ]
  %9 = xor i32 %Diff_phi, %Dest_phi
  %10 = icmp eq i32 %9, 173
  %11 = zext i1 %10 to i32
  call void @assert_cfg_ft(i32 %11, i32 %9, i32 0)
  %12 = load i16, ptr %0, align 8
  %13 = load i16, ptr %0, align 8
  %14 = icmp eq i16 %13, %12
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = icmp eq i16 %12, 1
  %17 = icmp eq i16 %13, 1
  %18 = icmp eq i1 %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = select i1 %17, i32 191, i32 174
  %21 = xor i32 173, %20
  br i1 %17, label %195, label %.preheader.preheader

.preheader.preheader:                             ; preds = %8
  %Diff_phi13 = phi i32 [ %21, %8 ]
  %Dest_phi14 = phi i32 [ %9, %8 ]
  %22 = xor i32 %Diff_phi13, %Dest_phi14
  %23 = icmp eq i32 %22, 174
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  %25 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 7
  %26 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 7
  %27 = icmp eq ptr %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = load ptr, ptr %25, align 8
  %30 = load ptr, ptr %26, align 8
  %31 = icmp eq ptr %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = icmp eq ptr %29, null
  %.not = icmp eq ptr %30, null
  %34 = icmp eq i1 %.not, %33
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = select i1 %.not, i32 176, i32 175
  %37 = xor i32 174, %36
  br i1 %.not, label %.preheader.1, label %38

38:                                               ; preds = %.preheader.preheader
  %Diff_phi15 = phi i32 [ %37, %.preheader.preheader ]
  %Dest_phi16 = phi i32 [ %22, %.preheader.preheader ]
  %39 = xor i32 %Diff_phi15, %Dest_phi16
  %40 = icmp eq i32 %39, 175
  %41 = zext i1 %40 to i32
  call void @assert_cfg_ft(i32 %41, i32 %39, i32 0)
  %42 = tail call i32 @freetree(ptr noundef nonnull %30)
  br label %.preheader.1

.preheader.1:                                     ; preds = %38, %.preheader.preheader
  %Diff_phi17 = phi i32 [ %37, %.preheader.preheader ], [ 31, %38 ]
  %Dest_phi18 = phi i32 [ %22, %.preheader.preheader ], [ %39, %38 ]
  %43 = xor i32 %Diff_phi17, %Dest_phi18
  %44 = icmp eq i32 %43, 176
  %45 = zext i1 %44 to i32
  call void @assert_cfg_ft(i32 %45, i32 %43, i32 0)
  %46 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 6
  %47 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 6
  %48 = icmp eq ptr %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = load ptr, ptr %46, align 8
  %51 = load ptr, ptr %47, align 8
  %52 = icmp eq ptr %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = icmp eq ptr %50, null
  %.not.1 = icmp eq ptr %51, null
  %55 = icmp eq i1 %.not.1, %54
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  %57 = select i1 %.not.1, i32 178, i32 177
  %58 = xor i32 176, %57
  br i1 %.not.1, label %.preheader.2, label %59

59:                                               ; preds = %.preheader.1
  %Diff_phi19 = phi i32 [ %58, %.preheader.1 ]
  %Dest_phi20 = phi i32 [ %43, %.preheader.1 ]
  %60 = xor i32 %Diff_phi19, %Dest_phi20
  %61 = icmp eq i32 %60, 177
  %62 = zext i1 %61 to i32
  call void @assert_cfg_ft(i32 %62, i32 %60, i32 0)
  %63 = tail call i32 @freetree(ptr noundef nonnull %51)
  br label %.preheader.2

.preheader.2:                                     ; preds = %59, %.preheader.1
  %Diff_phi21 = phi i32 [ 3, %59 ], [ %58, %.preheader.1 ]
  %Dest_phi22 = phi i32 [ %60, %59 ], [ %43, %.preheader.1 ]
  %64 = xor i32 %Diff_phi21, %Dest_phi22
  %65 = icmp eq i32 %64, 178
  %66 = zext i1 %65 to i32
  call void @assert_cfg_ft(i32 %66, i32 %64, i32 0)
  %67 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 5
  %68 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 5
  %69 = icmp eq ptr %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = load ptr, ptr %67, align 8
  %72 = load ptr, ptr %68, align 8
  %73 = icmp eq ptr %72, %71
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = icmp eq ptr %71, null
  %.not.2 = icmp eq ptr %72, null
  %76 = icmp eq i1 %.not.2, %75
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = select i1 %.not.2, i32 180, i32 179
  %79 = xor i32 178, %78
  br i1 %.not.2, label %.preheader.3, label %80

80:                                               ; preds = %.preheader.2
  %Diff_phi23 = phi i32 [ %79, %.preheader.2 ]
  %Dest_phi24 = phi i32 [ %64, %.preheader.2 ]
  %81 = xor i32 %Diff_phi23, %Dest_phi24
  %82 = icmp eq i32 %81, 179
  %83 = zext i1 %82 to i32
  call void @assert_cfg_ft(i32 %83, i32 %81, i32 0)
  %84 = tail call i32 @freetree(ptr noundef nonnull %72)
  br label %.preheader.3

.preheader.3:                                     ; preds = %80, %.preheader.2
  %Diff_phi25 = phi i32 [ 7, %80 ], [ %79, %.preheader.2 ]
  %Dest_phi26 = phi i32 [ %81, %80 ], [ %64, %.preheader.2 ]
  %85 = xor i32 %Diff_phi25, %Dest_phi26
  %86 = icmp eq i32 %85, 180
  %87 = zext i1 %86 to i32
  call void @assert_cfg_ft(i32 %87, i32 %85, i32 0)
  %88 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 4
  %89 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 4
  %90 = icmp eq ptr %89, %88
  %91 = zext i1 %90 to i32
  call void @assert_ft(i32 %91, i32 1)
  %92 = load ptr, ptr %88, align 8
  %93 = load ptr, ptr %89, align 8
  %94 = icmp eq ptr %93, %92
  %95 = zext i1 %94 to i32
  call void @assert_ft(i32 %95, i32 1)
  %96 = icmp eq ptr %92, null
  %.not.3 = icmp eq ptr %93, null
  %97 = icmp eq i1 %.not.3, %96
  %98 = zext i1 %97 to i32
  call void @assert_ft(i32 %98, i32 1)
  %99 = select i1 %.not.3, i32 182, i32 181
  %100 = xor i32 180, %99
  br i1 %.not.3, label %.preheader.4, label %101

101:                                              ; preds = %.preheader.3
  %Diff_phi27 = phi i32 [ %100, %.preheader.3 ]
  %Dest_phi28 = phi i32 [ %85, %.preheader.3 ]
  %102 = xor i32 %Diff_phi27, %Dest_phi28
  %103 = icmp eq i32 %102, 181
  %104 = zext i1 %103 to i32
  call void @assert_cfg_ft(i32 %104, i32 %102, i32 0)
  %105 = tail call i32 @freetree(ptr noundef nonnull %93)
  br label %.preheader.4

.preheader.4:                                     ; preds = %101, %.preheader.3
  %Diff_phi29 = phi i32 [ 3, %101 ], [ %100, %.preheader.3 ]
  %Dest_phi30 = phi i32 [ %102, %101 ], [ %85, %.preheader.3 ]
  %106 = xor i32 %Diff_phi29, %Dest_phi30
  %107 = icmp eq i32 %106, 182
  %108 = zext i1 %107 to i32
  call void @assert_cfg_ft(i32 %108, i32 %106, i32 0)
  %109 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 3
  %110 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 3
  %111 = icmp eq ptr %110, %109
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  %113 = load ptr, ptr %109, align 8
  %114 = load ptr, ptr %110, align 8
  %115 = icmp eq ptr %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = icmp eq ptr %113, null
  %.not.4 = icmp eq ptr %114, null
  %118 = icmp eq i1 %.not.4, %117
  %119 = zext i1 %118 to i32
  call void @assert_ft(i32 %119, i32 1)
  %120 = select i1 %.not.4, i32 184, i32 183
  %121 = xor i32 182, %120
  br i1 %.not.4, label %.preheader.5, label %122

122:                                              ; preds = %.preheader.4
  %Diff_phi31 = phi i32 [ %121, %.preheader.4 ]
  %Dest_phi32 = phi i32 [ %106, %.preheader.4 ]
  %123 = xor i32 %Diff_phi31, %Dest_phi32
  %124 = icmp eq i32 %123, 183
  %125 = zext i1 %124 to i32
  call void @assert_cfg_ft(i32 %125, i32 %123, i32 0)
  %126 = tail call i32 @freetree(ptr noundef nonnull %114)
  br label %.preheader.5

.preheader.5:                                     ; preds = %122, %.preheader.4
  %Diff_phi33 = phi i32 [ 15, %122 ], [ %121, %.preheader.4 ]
  %Dest_phi34 = phi i32 [ %123, %122 ], [ %106, %.preheader.4 ]
  %127 = xor i32 %Diff_phi33, %Dest_phi34
  %128 = icmp eq i32 %127, 184
  %129 = zext i1 %128 to i32
  call void @assert_cfg_ft(i32 %129, i32 %127, i32 0)
  %130 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 2
  %131 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 2
  %132 = icmp eq ptr %131, %130
  %133 = zext i1 %132 to i32
  call void @assert_ft(i32 %133, i32 1)
  %134 = load ptr, ptr %130, align 8
  %135 = load ptr, ptr %131, align 8
  %136 = icmp eq ptr %135, %134
  %137 = zext i1 %136 to i32
  call void @assert_ft(i32 %137, i32 1)
  %138 = icmp eq ptr %134, null
  %.not.5 = icmp eq ptr %135, null
  %139 = icmp eq i1 %.not.5, %138
  %140 = zext i1 %139 to i32
  call void @assert_ft(i32 %140, i32 1)
  %141 = select i1 %.not.5, i32 186, i32 185
  %142 = xor i32 184, %141
  br i1 %.not.5, label %.preheader.6, label %143

143:                                              ; preds = %.preheader.5
  %Diff_phi35 = phi i32 [ %142, %.preheader.5 ]
  %Dest_phi36 = phi i32 [ %127, %.preheader.5 ]
  %144 = xor i32 %Diff_phi35, %Dest_phi36
  %145 = icmp eq i32 %144, 185
  %146 = zext i1 %145 to i32
  call void @assert_cfg_ft(i32 %146, i32 %144, i32 0)
  %147 = tail call i32 @freetree(ptr noundef nonnull %135)
  br label %.preheader.6

.preheader.6:                                     ; preds = %143, %.preheader.5
  %Diff_phi37 = phi i32 [ 3, %143 ], [ %142, %.preheader.5 ]
  %Dest_phi38 = phi i32 [ %144, %143 ], [ %127, %.preheader.5 ]
  %148 = xor i32 %Diff_phi37, %Dest_phi38
  %149 = icmp eq i32 %148, 186
  %150 = zext i1 %149 to i32
  call void @assert_cfg_ft(i32 %150, i32 %148, i32 0)
  %151 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 1
  %152 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 1
  %153 = icmp eq ptr %152, %151
  %154 = zext i1 %153 to i32
  call void @assert_ft(i32 %154, i32 1)
  %155 = load ptr, ptr %151, align 8
  %156 = load ptr, ptr %152, align 8
  %157 = icmp eq ptr %156, %155
  %158 = zext i1 %157 to i32
  call void @assert_ft(i32 %158, i32 1)
  %159 = icmp eq ptr %155, null
  %.not.6 = icmp eq ptr %156, null
  %160 = icmp eq i1 %.not.6, %159
  %161 = zext i1 %160 to i32
  call void @assert_ft(i32 %161, i32 1)
  %162 = select i1 %.not.6, i32 188, i32 187
  %163 = xor i32 186, %162
  br i1 %.not.6, label %.preheader.7, label %164

164:                                              ; preds = %.preheader.6
  %Diff_phi39 = phi i32 [ %163, %.preheader.6 ]
  %Dest_phi40 = phi i32 [ %148, %.preheader.6 ]
  %165 = xor i32 %Diff_phi39, %Dest_phi40
  %166 = icmp eq i32 %165, 187
  %167 = zext i1 %166 to i32
  call void @assert_cfg_ft(i32 %167, i32 %165, i32 0)
  %168 = tail call i32 @freetree(ptr noundef nonnull %156)
  br label %.preheader.7

.preheader.7:                                     ; preds = %164, %.preheader.6
  %Diff_phi41 = phi i32 [ 7, %164 ], [ %163, %.preheader.6 ]
  %Dest_phi42 = phi i32 [ %165, %164 ], [ %148, %.preheader.6 ]
  %169 = xor i32 %Diff_phi41, %Dest_phi42
  %170 = icmp eq i32 %169, 188
  %171 = zext i1 %170 to i32
  call void @assert_cfg_ft(i32 %171, i32 %169, i32 0)
  %172 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 0
  %173 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 0
  %174 = icmp eq ptr %173, %172
  %175 = zext i1 %174 to i32
  call void @assert_ft(i32 %175, i32 1)
  %176 = load ptr, ptr %172, align 8
  %177 = load ptr, ptr %173, align 8
  %178 = icmp eq ptr %177, %176
  %179 = zext i1 %178 to i32
  call void @assert_ft(i32 %179, i32 1)
  %180 = icmp eq ptr %176, null
  %.not.7 = icmp eq ptr %177, null
  %181 = icmp eq i1 %.not.7, %180
  %182 = zext i1 %181 to i32
  call void @assert_ft(i32 %182, i32 1)
  %183 = select i1 %.not.7, i32 190, i32 189
  %184 = xor i32 188, %183
  br i1 %.not.7, label %190, label %185

185:                                              ; preds = %.preheader.7
  %Diff_phi43 = phi i32 [ %184, %.preheader.7 ]
  %Dest_phi44 = phi i32 [ %169, %.preheader.7 ]
  %186 = xor i32 %Diff_phi43, %Dest_phi44
  %187 = icmp eq i32 %186, 189
  %188 = zext i1 %187 to i32
  call void @assert_cfg_ft(i32 %188, i32 %186, i32 0)
  %189 = tail call i32 @freetree(ptr noundef nonnull %177)
  br label %190

190:                                              ; preds = %185, %.preheader.7
  %Diff_phi45 = phi i32 [ 3, %185 ], [ %184, %.preheader.7 ]
  %Dest_phi46 = phi i32 [ %186, %185 ], [ %169, %.preheader.7 ]
  %191 = xor i32 %Diff_phi45, %Dest_phi46
  %192 = icmp eq i32 %191, 190
  %193 = zext i1 %192 to i32
  call void @assert_cfg_ft(i32 %193, i32 %191, i32 0)
  %194 = tail call i32 @my_free(ptr noundef nonnull %0)
  br label %195

195:                                              ; preds = %190, %8, %1
  %Diff_phi47 = phi i32 [ %7, %1 ], [ %21, %8 ], [ 1, %190 ]
  %Dest_phi48 = phi i32 [ 172, %1 ], [ %9, %8 ], [ %191, %190 ]
  %196 = xor i32 %Diff_phi47, %Dest_phi48
  %197 = icmp eq i32 %196, 191
  %198 = zext i1 %197 to i32
  call void @assert_cfg_ft(i32 %198, i32 %196, i32 0)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @my_free(ptr noundef %0) local_unnamed_addr #18 {
  %2 = load i16, ptr %0, align 8
  %3 = load i16, ptr %0, align 8
  %4 = icmp eq i16 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = icmp eq i16 %2, 1
  %7 = icmp eq i16 %3, 1
  %8 = icmp eq i1 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = select i1 %7, i32 193, i32 194
  %11 = xor i32 192, %10
  br i1 %7, label %12, label %24

12:                                               ; preds = %1
  %Diff_phi = phi i32 [ %11, %1 ]
  %Dest_phi = phi i32 [ 192, %1 ]
  %13 = xor i32 %Diff_phi, %Dest_phi
  %14 = icmp eq i32 %13, 193
  %15 = zext i1 %14 to i32
  call void @assert_cfg_ft(i32 %15, i32 %13, i32 0)
  %16 = load ptr, ptr @bp_free_list, align 8
  %17 = load ptr, ptr @bp_free_list, align 8
  %18 = icmp eq ptr %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 9
  %21 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 9
  %22 = icmp eq ptr %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  store ptr %17, ptr %21, align 8
  br label %36

24:                                               ; preds = %1
  %Diff_phi5 = phi i32 [ %11, %1 ]
  %Dest_phi6 = phi i32 [ 192, %1 ]
  %25 = xor i32 %Diff_phi5, %Dest_phi6
  %26 = icmp eq i32 %25, 194
  %27 = zext i1 %26 to i32
  call void @assert_cfg_ft(i32 %27, i32 %25, i32 0)
  %28 = load ptr, ptr @cp_free_list, align 8
  %29 = load ptr, ptr @cp_free_list, align 8
  %30 = icmp eq ptr %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 6
  %33 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 6
  %34 = icmp eq ptr %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  store ptr %29, ptr %33, align 8
  br label %36

36:                                               ; preds = %24, %12
  %Diff_phi7 = phi i32 [ 1, %24 ], [ 2, %12 ]
  %Dest_phi8 = phi i32 [ %25, %24 ], [ %13, %12 ]
  %37 = phi ptr [ @cp_free_list, %24 ], [ @bp_free_list, %12 ]
  %cp_free_list.sink = phi ptr [ @cp_free_list, %24 ], [ @bp_free_list, %12 ]
  %38 = xor i32 %Diff_phi7, %Dest_phi8
  %39 = icmp eq i32 %38, 195
  %40 = zext i1 %39 to i32
  call void @assert_cfg_ft(i32 %40, i32 %38, i32 0)
  %41 = icmp eq ptr %cp_free_list.sink, %37
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  store ptr %0, ptr %cp_free_list.sink, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @ubody_alloc(i32 noundef %0) local_unnamed_addr #19 {
  %2 = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #28
  store i16 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 3
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  store i32 %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 10
  %8 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 10
  %9 = icmp eq ptr %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  store ptr null, ptr %8, align 8
  %11 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 4
  %12 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 4
  %13 = icmp eq ptr %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  store i32 %0, ptr %12, align 4
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local noalias nonnull ptr @testdata() local_unnamed_addr #20 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 99)
  %2 = tail call i32 @exit(i32 noundef 0) #29
  unreachable
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local ptr @body_alloc(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, ptr nocapture noundef readnone %11) local_unnamed_addr #16 {
  %13 = load ptr, ptr @bp_free_list, align 8
  %14 = load ptr, ptr @bp_free_list, align 8
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = icmp eq ptr %13, null
  %.not = icmp eq ptr %14, null
  %18 = icmp eq i1 %.not, %17
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = select i1 %.not, i32 200, i32 199
  %21 = xor i32 198, %20
  br i1 %.not, label %34, label %22

22:                                               ; preds = %12
  %Diff_phi = phi i32 [ %21, %12 ]
  %Dest_phi = phi i32 [ 198, %12 ]
  %23 = xor i32 %Diff_phi, %Dest_phi
  %24 = icmp eq i32 %23, 199
  %25 = zext i1 %24 to i32
  call void @assert_cfg_ft(i32 %25, i32 %23, i32 0)
  %26 = getelementptr inbounds %struct.bnode, ptr %13, i64 0, i32 9
  %27 = getelementptr inbounds %struct.bnode, ptr %14, i64 0, i32 9
  %28 = icmp eq ptr %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = load ptr, ptr %26, align 8
  %31 = load ptr, ptr %27, align 8
  %32 = icmp eq ptr %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  store ptr %31, ptr @bp_free_list, align 8
  br label %39

34:                                               ; preds = %12
  %Diff_phi24 = phi i32 [ %21, %12 ]
  %Dest_phi25 = phi i32 [ 198, %12 ]
  %35 = xor i32 %Diff_phi24, %Dest_phi25
  %36 = icmp eq i32 %35, 200
  %37 = zext i1 %36 to i32
  call void @assert_cfg_ft(i32 %37, i32 %35, i32 0)
  %38 = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #28
  br label %39

39:                                               ; preds = %34, %22
  %Diff_phi26 = phi i32 [ 1, %34 ], [ 14, %22 ]
  %Dest_phi27 = phi i32 [ %35, %34 ], [ %23, %22 ]
  %40 = phi ptr [ %13, %22 ], [ %38, %34 ]
  %.0 = phi ptr [ %14, %22 ], [ %38, %34 ]
  %41 = xor i32 %Diff_phi26, %Dest_phi27
  %42 = icmp eq i32 %41, 201
  %43 = zext i1 %42 to i32
  call void @assert_cfg_ft(i32 %43, i32 %41, i32 0)
  %44 = icmp eq ptr %.0, %40
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  store i16 1, ptr %.0, align 8
  %46 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 3
  %47 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 3
  %48 = icmp eq ptr %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  store i32 %0, ptr %47, align 8
  %50 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 2
  %51 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 2
  %52 = icmp eq ptr %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  store double %1, ptr %51, align 8
  %54 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 2, i64 1
  %55 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 2, i64 1
  %56 = icmp eq ptr %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  store double %2, ptr %55, align 8
  %58 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 2, i64 2
  %59 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 2, i64 2
  %60 = icmp eq ptr %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  store double %3, ptr %59, align 8
  %62 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 5
  %63 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 5
  %64 = icmp eq ptr %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  store double %4, ptr %63, align 8
  %66 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 5, i64 1
  %67 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 5, i64 1
  %68 = icmp eq ptr %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  store double %5, ptr %67, align 8
  %70 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 5, i64 2
  %71 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 5, i64 2
  %72 = icmp eq ptr %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  store double %6, ptr %71, align 8
  %74 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 6
  %75 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 6
  %76 = icmp eq ptr %75, %74
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  store double %7, ptr %75, align 8
  %78 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 6, i64 1
  %79 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 6, i64 1
  %80 = icmp eq ptr %79, %78
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  store double %8, ptr %79, align 8
  %82 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 6, i64 2
  %83 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 6, i64 2
  %84 = icmp eq ptr %83, %82
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  store double %9, ptr %83, align 8
  %86 = getelementptr inbounds %struct.bnode, ptr %40, i64 0, i32 1
  %87 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 1
  %88 = icmp eq ptr %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  store double %10, ptr %87, align 8
  ret ptr %.0
}

; Function Attrs: nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @dis_number(ptr noundef %0) local_unnamed_addr #15 {
  %2 = load i32, ptr @nbody, align 4
  %3 = load i32, ptr @nbody, align 4
  %4 = icmp eq i32 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = sitofp i32 %2 to double
  %7 = sitofp i32 %3 to double
  %8 = load i32, ptr @__NumNodes, align 4
  %9 = load i32, ptr @__NumNodes, align 4
  %10 = icmp eq i32 %9, %8
  %11 = zext i1 %10 to i32
  call void @assert_ft(i32 %11, i32 1)
  %12 = sitofp i32 %8 to double
  %13 = sitofp i32 %9 to double
  %14 = fdiv double %6, %12
  %15 = fdiv double %7, %13
  %16 = tail call double @llvm.ceil.f64(double %15)
  %17 = fptosi double %16 to i32
  %18 = fptosi double %16 to i32
  %19 = icmp eq i32 %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = tail call i32 @dis2_number(ptr noundef %0, i32 noundef -1, i32 noundef %18)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #11

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @dis2_number(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #21 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %.preheader.preheader, %3
  %Diff_phi = phi i32 [ 2, %.preheader.preheader ], [ 7, %3 ]
  %Dest_phi = phi i32 [ %33, %.preheader.preheader ], [ 203, %3 ]
  %4 = phi ptr [ %0, %3 ], [ %103, %.preheader.preheader ]
  %.tr = phi ptr [ %0, %3 ], [ %104, %.preheader.preheader ]
  %5 = phi i32 [ %1, %3 ], [ %98, %.preheader.preheader ]
  %.tr20 = phi i32 [ %1, %3 ], [ %98, %.preheader.preheader ]
  %6 = xor i32 %Diff_phi, %Dest_phi
  %7 = icmp eq i32 %6, 204
  %8 = zext i1 %7 to i32
  call void @assert_cfg_ft(i32 %8, i32 %6, i32 0)
  %9 = icmp eq i32 %.tr20, %5
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = icmp eq ptr %.tr, %4
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = icmp eq ptr %4, null
  %14 = icmp eq ptr %.tr, null
  %15 = icmp eq i1 %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = select i1 %14, i32 208, i32 205
  %18 = xor i32 204, %17
  br i1 %14, label %.loopexit, label %19

19:                                               ; preds = %tailrecurse
  %Diff_phi22 = phi i32 [ %18, %tailrecurse ]
  %Dest_phi23 = phi i32 [ %6, %tailrecurse ]
  %20 = xor i32 %Diff_phi22, %Dest_phi23
  %21 = icmp eq i32 %20, 205
  %22 = zext i1 %21 to i32
  call void @assert_cfg_ft(i32 %22, i32 %20, i32 0)
  %23 = load i16, ptr %4, align 8
  %24 = load i16, ptr %.tr, align 8
  %25 = icmp eq i16 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = icmp eq i16 %23, 1
  %28 = icmp eq i16 %24, 1
  %29 = icmp eq i1 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = select i1 %28, i32 207, i32 206
  %32 = xor i32 205, %31
  br i1 %28, label %107, label %.preheader.preheader

.preheader.preheader:                             ; preds = %19
  %Diff_phi24 = phi i32 [ %32, %19 ]
  %Dest_phi25 = phi i32 [ %20, %19 ]
  %33 = xor i32 %Diff_phi24, %Dest_phi25
  %34 = icmp eq i32 %33, 206
  %35 = zext i1 %34 to i32
  call void @assert_cfg_ft(i32 %35, i32 %33, i32 0)
  %36 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 0
  %37 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 0
  %38 = icmp eq ptr %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = load ptr, ptr %36, align 8
  %41 = load ptr, ptr %37, align 8
  %42 = icmp eq ptr %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = tail call i32 @dis2_number(ptr noundef %41, i32 noundef %.tr20, i32 noundef %2)
  %45 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 1
  %46 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 1
  %47 = icmp eq ptr %46, %45
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = load ptr, ptr %45, align 8
  %50 = load ptr, ptr %46, align 8
  %51 = icmp eq ptr %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = tail call i32 @dis2_number(ptr noundef %50, i32 noundef %44, i32 noundef %2)
  %54 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 2
  %55 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 2
  %56 = icmp eq ptr %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = load ptr, ptr %54, align 8
  %59 = load ptr, ptr %55, align 8
  %60 = icmp eq ptr %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = tail call i32 @dis2_number(ptr noundef %59, i32 noundef %53, i32 noundef %2)
  %63 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 3
  %64 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 3
  %65 = icmp eq ptr %64, %63
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = load ptr, ptr %63, align 8
  %68 = load ptr, ptr %64, align 8
  %69 = icmp eq ptr %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = tail call i32 @dis2_number(ptr noundef %68, i32 noundef %62, i32 noundef %2)
  %72 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 4
  %73 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 4
  %74 = icmp eq ptr %73, %72
  %75 = zext i1 %74 to i32
  call void @assert_ft(i32 %75, i32 1)
  %76 = load ptr, ptr %72, align 8
  %77 = load ptr, ptr %73, align 8
  %78 = icmp eq ptr %77, %76
  %79 = zext i1 %78 to i32
  call void @assert_ft(i32 %79, i32 1)
  %80 = tail call i32 @dis2_number(ptr noundef %77, i32 noundef %71, i32 noundef %2)
  %81 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 5
  %82 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 5
  %83 = icmp eq ptr %82, %81
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = load ptr, ptr %81, align 8
  %86 = load ptr, ptr %82, align 8
  %87 = icmp eq ptr %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = tail call i32 @dis2_number(ptr noundef %86, i32 noundef %80, i32 noundef %2)
  %90 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 6
  %91 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 6
  %92 = icmp eq ptr %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = load ptr, ptr %90, align 8
  %95 = load ptr, ptr %91, align 8
  %96 = icmp eq ptr %95, %94
  %97 = zext i1 %96 to i32
  call void @assert_ft(i32 %97, i32 1)
  %98 = tail call i32 @dis2_number(ptr noundef %95, i32 noundef %89, i32 noundef %2)
  %99 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 7
  %100 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 7
  %101 = icmp eq ptr %100, %99
  %102 = zext i1 %101 to i32
  call void @assert_ft(i32 %102, i32 1)
  %103 = load ptr, ptr %99, align 8
  %104 = load ptr, ptr %100, align 8
  %105 = icmp eq ptr %104, %103
  %106 = zext i1 %105 to i32
  call void @assert_ft(i32 %106, i32 1)
  br label %tailrecurse

107:                                              ; preds = %19
  %Diff_phi26 = phi i32 [ %32, %19 ]
  %Dest_phi27 = phi i32 [ %20, %19 ]
  %108 = xor i32 %Diff_phi26, %Dest_phi27
  %109 = icmp eq i32 %108, 207
  %110 = zext i1 %109 to i32
  call void @assert_cfg_ft(i32 %110, i32 %108, i32 0)
  %111 = add nsw i32 %5, 1
  %112 = add nsw i32 %.tr20, 1
  %113 = icmp eq i32 %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = sdiv i32 %111, %2
  %116 = sdiv i32 %112, %2
  %117 = icmp eq i32 %116, %115
  %118 = zext i1 %117 to i32
  call void @assert_ft(i32 %118, i32 1)
  %119 = getelementptr inbounds %struct.node, ptr %4, i64 0, i32 4
  %120 = getelementptr inbounds %struct.node, ptr %.tr, i64 0, i32 4
  %121 = icmp eq ptr %120, %119
  %122 = zext i1 %121 to i32
  call void @assert_ft(i32 %122, i32 1)
  store i32 %116, ptr %120, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %107, %tailrecurse
  %Diff_phi28 = phi i32 [ %18, %tailrecurse ], [ 31, %107 ]
  %Dest_phi29 = phi i32 [ %6, %tailrecurse ], [ %108, %107 ]
  %123 = phi i32 [ %111, %107 ], [ %5, %tailrecurse ]
  %.0 = phi i32 [ %112, %107 ], [ %.tr20, %tailrecurse ]
  %124 = xor i32 %Diff_phi28, %Dest_phi29
  %125 = icmp eq i32 %124, 208
  %126 = zext i1 %125 to i32
  call void @assert_cfg_ft(i32 %126, i32 %124, i32 0)
  %127 = icmp eq i32 %.0, %123
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable
define dso_local double @my_rand(double noundef %0) local_unnamed_addr #22 {
  %2 = tail call double @llvm.fmuladd.f64(double %0, double 1.680700e+04, double 1.000000e+00)
  %3 = fdiv double %2, 0x41DFFFFFFFC00000
  %4 = fdiv double %2, 0x41DFFFFFFFC00000
  %5 = tail call double @llvm.floor.f64(double %4)
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 0xC1DFFFFFFFC00000, double %2)
  ret double %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @xrand(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #6 {
  %4 = fsub double %1, %0
  %5 = fsub double %1, %0
  %6 = fmul double %4, %2
  %7 = fmul double %5, %2
  %8 = fdiv double %6, 0x41DFFFFFFFC00000
  %9 = fdiv double %7, 0x41DFFFFFFFC00000
  %10 = fadd double %8, %0
  %11 = fadd double %9, %0
  ret double %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @cputime() local_unnamed_addr #0 {
  %1 = alloca %struct.tms, align 8
  %2 = call i64 @times(ptr noundef nonnull %1) #28
  %3 = icmp eq i64 %2, -1
  %4 = icmp eq i64 %2, -1
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = select i1 %4, i32 212, i32 213
  %8 = xor i32 211, %7
  br i1 %4, label %9, label %14

9:                                                ; preds = %0
  %Diff_phi = phi i32 [ %8, %0 ]
  %Dest_phi = phi i32 [ 211, %0 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 212
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %13 = tail call i32 @error(ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  unreachable

14:                                               ; preds = %0
  %Diff_phi1 = phi i32 [ %8, %0 ]
  %Dest_phi2 = phi i32 [ 211, %0 ]
  %15 = xor i32 %Diff_phi1, %Dest_phi2
  %16 = icmp eq i32 %15, 213
  %17 = zext i1 %16 to i32
  call void @assert_cfg_ft(i32 %17, i32 %15, i32 0)
  %18 = load i64, ptr %1, align 8
  %19 = load i64, ptr %1, align 8
  %20 = icmp eq i64 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = sitofp i64 %18 to double
  %23 = sitofp i64 %19 to double
  %24 = fdiv double %22, 3.600000e+03
  %25 = fdiv double %23, 3.600000e+03
  ret double %25
}

; Function Attrs: nofree nounwind
declare noundef i64 @times(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @error(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #20 {
  %6 = load ptr, ptr @stderr, align 8
  %7 = load ptr, ptr @stderr, align 8
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #30
  %11 = tail call ptr @__errno_location() #31
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %11, align 4
  %14 = icmp eq i32 %13, %12
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = icmp eq i32 %12, 0
  %.not = icmp eq i32 %13, 0
  %17 = icmp eq i1 %.not, %16
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = select i1 %.not, i32 216, i32 215
  %20 = xor i32 214, %19
  br i1 %.not, label %25, label %21

21:                                               ; preds = %5
  %Diff_phi = phi i32 [ %20, %5 ]
  %Dest_phi = phi i32 [ 214, %5 ]
  %22 = xor i32 %Diff_phi, %Dest_phi
  %23 = icmp eq i32 %22, 215
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  tail call void @perror(ptr noundef nonnull @.str.1.8) #30
  br label %25

25:                                               ; preds = %21, %5
  %Diff_phi5 = phi i32 [ 15, %21 ], [ %20, %5 ]
  %Dest_phi6 = phi i32 [ %22, %21 ], [ 214, %5 ]
  %26 = xor i32 %Diff_phi5, %Dest_phi6
  %27 = icmp eq i32 %26, 216
  %28 = zext i1 %27 to i32
  call void @assert_cfg_ft(i32 %28, i32 %26, i32 0)
  tail call void @exit(i32 noundef 0) #29
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #23

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define dso_local i32 @dealwithargs(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #25 {
  %3 = icmp sgt i32 %0, 1
  %4 = icmp sgt i32 %0, 1
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = select i1 %4, i32 218, i32 219
  %8 = xor i32 217, %7
  br i1 %4, label %9, label %22

9:                                                ; preds = %2
  %Diff_phi = phi i32 [ %8, %2 ]
  %Dest_phi = phi i32 [ 217, %2 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 218
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = load ptr, ptr %13, align 8
  %18 = load ptr, ptr %14, align 8
  %19 = icmp eq ptr %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = tail call i32 @atoi(ptr nocapture noundef %18) #32
  br label %22

22:                                               ; preds = %9, %2
  %Diff_phi2 = phi i32 [ %8, %2 ], [ 1, %9 ]
  %Dest_phi3 = phi i32 [ 217, %2 ], [ %10, %9 ]
  %23 = phi i32 [ %21, %9 ], [ 2048, %2 ]
  %storemerge = phi i32 [ %21, %9 ], [ 2048, %2 ]
  %24 = xor i32 %Diff_phi2, %Dest_phi3
  %25 = icmp eq i32 %24, 219
  %26 = zext i1 %25 to i32
  call void @assert_cfg_ft(i32 %26, i32 %24, i32 0)
  %27 = icmp eq i32 %storemerge, %23
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  store i32 %storemerge, ptr @nbody, align 4
  ret i32 undef
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

declare void @exit.1(i32, ...)

declare i32 @printf.2(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
  %3 = call i32 @exit(i32 1099)
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
  %4 = call i32 @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree noinline nounwind memory(write, argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { cold }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i16 0, i16 2}
!7 = !{i32 0, i32 2}
