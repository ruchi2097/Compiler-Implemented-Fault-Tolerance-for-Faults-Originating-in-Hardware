; ModuleID = 'qsort-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.my3DVertexStruct = type { i32, i32, i32, double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.my3DVertexStruct, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.my3DVertexStruct, ptr %0, i64 0, i32 3
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load double, ptr %3, align 8
  %8 = load double, ptr %4, align 8
  %9 = getelementptr inbounds %struct.my3DVertexStruct, ptr %1, i64 0, i32 3
  %10 = getelementptr inbounds %struct.my3DVertexStruct, ptr %1, i64 0, i32 3
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = load double, ptr %9, align 8
  %14 = load double, ptr %10, align 8
  %15 = fcmp ogt double %7, %13
  %16 = fcmp ogt double %8, %14
  %17 = icmp eq i1 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = fcmp une double %7, %13
  %20 = fcmp une double %8, %14
  %21 = icmp eq i1 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = sext i1 %19 to i32
  %24 = sext i1 %20 to i32
  %25 = icmp eq i32 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = select i1 %15, i32 1, i32 %23
  %28 = select i1 %16, i32 1, i32 %24
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca [60000 x %struct.my3DVertexStruct], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp slt i32 %0, 2
  %8 = icmp slt i32 %0, 2
  %9 = icmp eq i1 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = select i1 %8, i32 3, i32 4
  %12 = xor i32 2, %11
  br i1 %8, label %13, label %22

13:                                               ; preds = %2
  %Diff_phi = phi i32 [ %12, %2 ]
  %Dest_phi = phi i32 [ 2, %2 ]
  %14 = xor i32 %Diff_phi, %Dest_phi
  %15 = icmp eq i32 %14, 3
  %16 = zext i1 %15 to i32
  call void @assert_cfg_ft(i32 %16, i32 %14, i32 0)
  %17 = load ptr, ptr @stderr, align 8
  %18 = load ptr, ptr @stderr, align 8
  %19 = icmp eq ptr %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = tail call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %18) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable

22:                                               ; preds = %2
  %Diff_phi42 = phi i32 [ %12, %2 ]
  %Dest_phi43 = phi i32 [ 2, %2 ]
  %23 = xor i32 %Diff_phi42, %Dest_phi43
  %24 = icmp eq i32 %23, 4
  %25 = zext i1 %24 to i32
  call void @assert_cfg_ft(i32 %25, i32 %23, i32 0)
  %26 = getelementptr inbounds ptr, ptr %1, i64 1
  %27 = getelementptr inbounds ptr, ptr %1, i64 1
  %28 = icmp eq ptr %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = load ptr, ptr %26, align 8
  %31 = load ptr, ptr %27, align 8
  %32 = icmp eq ptr %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = tail call noalias ptr @fopen(ptr noundef %31, ptr noundef nonnull @.str.1)
  %35 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #10
  %36 = icmp eq i32 %35, 1
  %37 = icmp eq i32 %35, 1
  %38 = icmp eq i1 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = select i1 %37, i32 5, i32 10
  %41 = xor i32 4, %40
  br i1 %37, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %76, %22
  %Diff_phi44 = phi i32 [ %41, %22 ], [ %135, %76 ]
  %Dest_phi45 = phi i32 [ %23, %22 ], [ %77, %76 ]
  %42 = phi i64 [ %122, %76 ], [ 0, %22 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %76 ], [ 0, %22 ]
  %43 = phi i32 [ %125, %76 ], [ 0, %22 ]
  %.022 = phi i32 [ %126, %76 ], [ 0, %22 ]
  %44 = xor i32 %Diff_phi44, %Dest_phi45
  %45 = icmp eq i32 %44, 5
  %46 = zext i1 %45 to i32
  call void @assert_cfg_ft(i32 %46, i32 %44, i32 0)
  %47 = icmp eq i32 %.022, %43
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = icmp eq i64 %indvars.iv, %42
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #10
  %52 = icmp eq i32 %51, 1
  %53 = icmp eq i32 %51, 1
  %54 = icmp eq i1 %53, %52
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = select i1 %53, i32 6, i32 8
  %57 = xor i32 5, %56
  br i1 %53, label %58, label %.critedge.loopexit.split.loop.exit31

58:                                               ; preds = %.lr.ph
  %Diff_phi46 = phi i32 [ %57, %.lr.ph ]
  %Dest_phi47 = phi i32 [ %44, %.lr.ph ]
  %59 = xor i32 %Diff_phi46, %Dest_phi47
  %60 = icmp eq i32 %59, 6
  %61 = zext i1 %60 to i32
  call void @assert_cfg_ft(i32 %61, i32 %59, i32 0)
  %62 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  %63 = icmp eq i32 %62, 1
  %64 = icmp eq i32 %62, 1
  %65 = icmp eq i1 %64, %63
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = icmp ult i64 %42, 60000
  %68 = icmp ult i64 %indvars.iv, 60000
  %69 = icmp eq i1 %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = select i1 %63, i1 %67, i1 false
  %or.cond = select i1 %64, i1 %68, i1 false
  %72 = icmp eq i1 %or.cond, %71
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = select i1 %or.cond, i32 7, i32 9
  %75 = xor i32 6, %74
  br i1 %or.cond, label %76, label %.critedge.loopexit.split.loop.exit33

76:                                               ; preds = %58
  %Diff_phi48 = phi i32 [ %75, %58 ]
  %Dest_phi49 = phi i32 [ %59, %58 ]
  %77 = xor i32 %Diff_phi48, %Dest_phi49
  %78 = icmp eq i32 %77, 7
  %79 = zext i1 %78 to i32
  call void @assert_cfg_ft(i32 %79, i32 %77, i32 0)
  %80 = load i32, ptr %4, align 4
  %81 = load i32, ptr %4, align 4
  %82 = icmp eq i32 %81, %80
  %83 = zext i1 %82 to i32
  call void @assert_ft(i32 %83, i32 1)
  %84 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %42
  %85 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv
  %86 = icmp eq ptr %85, %84
  %87 = zext i1 %86 to i32
  call void @assert_ft(i32 %87, i32 1)
  store i32 %81, ptr %85, align 8
  %88 = load i32, ptr %5, align 4
  %89 = load i32, ptr %5, align 4
  %90 = icmp eq i32 %89, %88
  %91 = zext i1 %90 to i32
  call void @assert_ft(i32 %91, i32 1)
  %92 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %42, i32 1
  %93 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 1
  %94 = icmp eq ptr %93, %92
  %95 = zext i1 %94 to i32
  call void @assert_ft(i32 %95, i32 1)
  store i32 %89, ptr %93, align 4
  %96 = load i32, ptr %6, align 4
  %97 = load i32, ptr %6, align 4
  %98 = icmp eq i32 %97, %96
  %99 = zext i1 %98 to i32
  call void @assert_ft(i32 %99, i32 1)
  %100 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %42, i32 2
  %101 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 2
  %102 = icmp eq ptr %101, %100
  %103 = zext i1 %102 to i32
  call void @assert_ft(i32 %103, i32 1)
  store i32 %97, ptr %101, align 8
  %104 = sitofp i32 %80 to double
  %105 = sitofp i32 %81 to double
  %106 = fmul double %104, %104
  %square = fmul double %105, %105
  %107 = sitofp i32 %88 to double
  %108 = sitofp i32 %89 to double
  %109 = fmul double %107, %107
  %square20 = fmul double %108, %108
  %110 = fadd double %106, %109
  %111 = fadd double %square, %square20
  %112 = sitofp i32 %96 to double
  %113 = sitofp i32 %97 to double
  %114 = fmul double %112, %112
  %square21 = fmul double %113, %113
  %115 = fadd double %110, %114
  %116 = fadd double %111, %square21
  %117 = call double @sqrt(double noundef %116) #10
  %118 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %42, i32 3
  %119 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 3
  %120 = icmp eq ptr %119, %118
  %121 = zext i1 %120 to i32
  call void @assert_ft(i32 %121, i32 1)
  store double %117, ptr %119, align 8
  %122 = add nuw nsw i64 %42, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %123 = icmp eq i64 %indvars.iv.next, %122
  %124 = zext i1 %123 to i32
  call void @assert_ft(i32 %124, i32 1)
  %125 = add nuw nsw i32 %43, 1
  %126 = add nuw nsw i32 %.022, 1
  %127 = icmp eq i32 %126, %125
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #10
  %130 = icmp eq i32 %129, 1
  %131 = icmp eq i32 %129, 1
  %132 = icmp eq i1 %131, %130
  %133 = zext i1 %132 to i32
  call void @assert_ft(i32 %133, i32 1)
  %134 = select i1 %131, i32 5, i32 10
  %135 = xor i32 7, %134
  br i1 %131, label %.lr.ph, label %.critedge

.critedge.loopexit.split.loop.exit31:             ; preds = %.lr.ph
  %Diff_phi50 = phi i32 [ %57, %.lr.ph ]
  %Dest_phi51 = phi i32 [ %44, %.lr.ph ]
  %136 = xor i32 %Diff_phi50, %Dest_phi51
  %137 = icmp eq i32 %136, 8
  %138 = zext i1 %137 to i32
  call void @assert_cfg_ft(i32 %138, i32 %136, i32 0)
  %139 = trunc i64 %42 to i32
  %140 = trunc i64 %indvars.iv to i32
  %141 = icmp eq i32 %140, %139
  %142 = zext i1 %141 to i32
  call void @assert_ft(i32 %142, i32 1)
  br label %.critedge

.critedge.loopexit.split.loop.exit33:             ; preds = %58
  %Diff_phi52 = phi i32 [ %75, %58 ]
  %Dest_phi53 = phi i32 [ %59, %58 ]
  %143 = xor i32 %Diff_phi52, %Dest_phi53
  %144 = icmp eq i32 %143, 9
  %145 = zext i1 %144 to i32
  call void @assert_cfg_ft(i32 %145, i32 %143, i32 0)
  %146 = trunc i64 %42 to i32
  %147 = trunc i64 %indvars.iv to i32
  %148 = icmp eq i32 %147, %146
  %149 = zext i1 %148 to i32
  call void @assert_ft(i32 %149, i32 1)
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit.split.loop.exit33, %.critedge.loopexit.split.loop.exit31, %76, %22
  %Diff_phi54 = phi i32 [ %135, %76 ], [ 2, %.critedge.loopexit.split.loop.exit31 ], [ 3, %.critedge.loopexit.split.loop.exit33 ], [ %41, %22 ]
  %Dest_phi55 = phi i32 [ %77, %76 ], [ %136, %.critedge.loopexit.split.loop.exit31 ], [ %143, %.critedge.loopexit.split.loop.exit33 ], [ %23, %22 ]
  %150 = phi i32 [ 0, %22 ], [ %139, %.critedge.loopexit.split.loop.exit31 ], [ %146, %.critedge.loopexit.split.loop.exit33 ], [ %125, %76 ]
  %.0.lcssa = phi i32 [ 0, %22 ], [ %140, %.critedge.loopexit.split.loop.exit31 ], [ %147, %.critedge.loopexit.split.loop.exit33 ], [ %126, %76 ]
  %151 = xor i32 %Diff_phi54, %Dest_phi55
  %152 = icmp eq i32 %151, 10
  %153 = zext i1 %152 to i32
  call void @assert_cfg_ft(i32 %153, i32 %151, i32 0)
  %154 = icmp eq i32 %.0.lcssa, %150
  %155 = zext i1 %154 to i32
  call void @assert_ft(i32 %155, i32 1)
  %156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.0.lcssa)
  %157 = zext i32 %150 to i64
  %158 = zext i32 %.0.lcssa to i64
  %159 = icmp eq i64 %158, %157
  %160 = zext i1 %159 to i32
  call void @assert_ft(i32 %160, i32 1)
  call void @qsort(ptr noundef nonnull %3, i64 noundef %158, i64 noundef 24, ptr noundef nonnull @compare) #10
  %161 = icmp eq i32 %150, 0
  %.not = icmp eq i32 %.0.lcssa, 0
  %162 = icmp eq i1 %.not, %161
  %163 = zext i1 %162 to i32
  call void @assert_ft(i32 %163, i32 1)
  %164 = select i1 %.not, i32 12, i32 11
  %165 = xor i32 10, %164
  br i1 %.not, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28, %.critedge
  %Diff_phi56 = phi i32 [ %165, %.critedge ], [ %204, %.lr.ph28 ]
  %Dest_phi57 = phi i32 [ %151, %.critedge ], [ %167, %.lr.ph28 ]
  %166 = phi i64 [ %197, %.lr.ph28 ], [ 0, %.critedge ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %.lr.ph28 ], [ 0, %.critedge ]
  %167 = xor i32 %Diff_phi56, %Dest_phi57
  %168 = icmp eq i32 %167, 11
  %169 = zext i1 %168 to i32
  call void @assert_cfg_ft(i32 %169, i32 %167, i32 0)
  %170 = icmp eq i64 %indvars.iv29, %166
  %171 = zext i1 %170 to i32
  call void @assert_ft(i32 %171, i32 1)
  %172 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %166
  %173 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv29
  %174 = icmp eq ptr %173, %172
  %175 = zext i1 %174 to i32
  call void @assert_ft(i32 %175, i32 1)
  %176 = load i32, ptr %172, align 8
  %177 = load i32, ptr %173, align 8
  %178 = icmp eq i32 %177, %176
  %179 = zext i1 %178 to i32
  call void @assert_ft(i32 %179, i32 1)
  %180 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %166, i32 1
  %181 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv29, i32 1
  %182 = icmp eq ptr %181, %180
  %183 = zext i1 %182 to i32
  call void @assert_ft(i32 %183, i32 1)
  %184 = load i32, ptr %180, align 4
  %185 = load i32, ptr %181, align 4
  %186 = icmp eq i32 %185, %184
  %187 = zext i1 %186 to i32
  call void @assert_ft(i32 %187, i32 1)
  %188 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %166, i32 2
  %189 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv29, i32 2
  %190 = icmp eq ptr %189, %188
  %191 = zext i1 %190 to i32
  call void @assert_ft(i32 %191, i32 1)
  %192 = load i32, ptr %188, align 8
  %193 = load i32, ptr %189, align 8
  %194 = icmp eq i32 %193, %192
  %195 = zext i1 %194 to i32
  call void @assert_ft(i32 %195, i32 1)
  %196 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %177, i32 noundef %185, i32 noundef %193)
  %197 = add nuw nsw i64 %166, 1
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %198 = icmp eq i64 %indvars.iv.next30, %197
  %199 = zext i1 %198 to i32
  call void @assert_ft(i32 %199, i32 1)
  %200 = icmp eq i64 %197, %157
  %exitcond.not = icmp eq i64 %indvars.iv.next30, %158
  %201 = icmp eq i1 %exitcond.not, %200
  %202 = zext i1 %201 to i32
  call void @assert_ft(i32 %202, i32 1)
  %203 = select i1 %exitcond.not, i32 12, i32 11
  %204 = xor i32 11, %203
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph28

._crit_edge:                                      ; preds = %.lr.ph28, %.critedge
  %Diff_phi58 = phi i32 [ %204, %.lr.ph28 ], [ %165, %.critedge ]
  %Dest_phi59 = phi i32 [ %167, %.lr.ph28 ], [ %151, %.critedge ]
  %205 = xor i32 %Diff_phi58, %Dest_phi59
  %206 = icmp eq i32 %205, 12
  %207 = zext i1 %206 to i32
  call void @assert_cfg_ft(i32 %207, i32 %205, i32 0)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

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

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
