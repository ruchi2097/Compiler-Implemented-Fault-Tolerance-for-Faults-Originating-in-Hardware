; ModuleID = 'sha-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }

@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%08x %08x %08x %08x %08x\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SHA_INFO, align 4
  %4 = icmp slt i32 %0, 2
  %5 = icmp slt i32 %0, 2
  %6 = icmp eq i1 %5, %4
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = select i1 %5, i32 3, i32 2
  %9 = xor i32 1, %8
  br i1 %5, label %17, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %Diff_phi = phi i32 [ %9, %2 ]
  %Dest_phi = phi i32 [ 1, %2 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 2
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %13 = add nsw i32 %0, -1
  %14 = add nsw i32 %0, -1
  %15 = icmp eq i32 %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  br label %.lr.ph

17:                                               ; preds = %2
  %Diff_phi13 = phi i32 [ %9, %2 ]
  %Dest_phi14 = phi i32 [ 1, %2 ]
  %18 = xor i32 %Diff_phi13, %Dest_phi14
  %19 = icmp eq i32 %18, 3
  %20 = zext i1 %19 to i32
  call void @assert_cfg_ft(i32 %20, i32 %18, i32 0)
  %21 = load ptr, ptr @stdin, align 8
  %22 = load ptr, ptr @stdin, align 8
  %23 = icmp eq ptr %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef %22)
  call void @sha_print(ptr noundef nonnull %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %64, %.lr.ph.preheader
  %Diff_phi15 = phi i32 [ 6, %.lr.ph.preheader ], [ %76, %64 ]
  %Dest_phi16 = phi i32 [ %10, %.lr.ph.preheader ], [ %65, %64 ]
  %25 = phi i32 [ %68, %64 ], [ %13, %.lr.ph.preheader ]
  %26 = phi i32 [ %69, %64 ], [ %14, %.lr.ph.preheader ]
  %27 = phi ptr [ %35, %64 ], [ %1, %.lr.ph.preheader ]
  %.012 = phi ptr [ %36, %64 ], [ %1, %.lr.ph.preheader ]
  %28 = xor i32 %Diff_phi15, %Dest_phi16
  %29 = icmp eq i32 %28, 4
  %30 = zext i1 %29 to i32
  call void @assert_cfg_ft(i32 %30, i32 %28, i32 0)
  %31 = icmp eq i32 %26, %25
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = icmp eq ptr %.012, %27
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = getelementptr inbounds ptr, ptr %27, i64 1
  %36 = getelementptr inbounds ptr, ptr %.012, i64 1
  %37 = icmp eq ptr %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = load ptr, ptr %35, align 8
  %40 = load ptr, ptr %36, align 8
  %41 = icmp eq ptr %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = tail call noalias ptr @fopen(ptr noundef %40, ptr noundef nonnull @.str)
  %44 = icmp eq ptr %43, null
  %45 = icmp eq ptr %43, null
  %46 = icmp eq i1 %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = select i1 %45, i32 5, i32 6
  %49 = xor i32 4, %48
  br i1 %45, label %50, label %59

50:                                               ; preds = %.lr.ph
  %Diff_phi17 = phi i32 [ %49, %.lr.ph ]
  %Dest_phi18 = phi i32 [ %28, %.lr.ph ]
  %51 = xor i32 %Diff_phi17, %Dest_phi18
  %52 = icmp eq i32 %51, 5
  %53 = zext i1 %52 to i32
  call void @assert_cfg_ft(i32 %53, i32 %51, i32 0)
  %54 = load ptr, ptr %35, align 8
  %55 = load ptr, ptr %36, align 8
  %56 = icmp eq ptr %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %55)
  br label %64

59:                                               ; preds = %.lr.ph
  %Diff_phi19 = phi i32 [ %49, %.lr.ph ]
  %Dest_phi20 = phi i32 [ %28, %.lr.ph ]
  %60 = xor i32 %Diff_phi19, %Dest_phi20
  %61 = icmp eq i32 %60, 6
  %62 = zext i1 %61 to i32
  call void @assert_cfg_ft(i32 %62, i32 %60, i32 0)
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef nonnull %43)
  call void @sha_print(ptr noundef nonnull %3)
  %63 = tail call i32 @fclose(ptr noundef nonnull %43)
  br label %64

64:                                               ; preds = %59, %50
  %Diff_phi21 = phi i32 [ 1, %59 ], [ 2, %50 ]
  %Dest_phi22 = phi i32 [ %60, %59 ], [ %51, %50 ]
  %65 = xor i32 %Diff_phi21, %Dest_phi22
  %66 = icmp eq i32 %65, 7
  %67 = zext i1 %66 to i32
  call void @assert_cfg_ft(i32 %67, i32 %65, i32 0)
  %68 = add nsw i32 %25, -1
  %69 = add nsw i32 %26, -1
  %70 = icmp eq i32 %69, %68
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  %72 = icmp eq i32 %68, 0
  %.not = icmp eq i32 %69, 0
  %73 = icmp eq i1 %.not, %72
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = select i1 %.not, i32 8, i32 4
  %76 = xor i32 7, %75
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %64, %17
  %Diff_phi23 = phi i32 [ %76, %64 ], [ 11, %17 ]
  %Dest_phi24 = phi i32 [ %65, %64 ], [ %18, %17 ]
  %77 = xor i32 %Diff_phi23, %Dest_phi24
  %78 = icmp eq i32 %77, 8
  %79 = zext i1 %78 to i32
  call void @assert_cfg_ft(i32 %79, i32 %77, i32 0)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store i32 1732584193, ptr %0, align 4
  %2 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %3 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %4 = icmp eq ptr %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  store i32 -271733879, ptr %3, align 4
  %6 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %7 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  store i32 -1732584194, ptr %7, align 4
  %10 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %11 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %12 = icmp eq ptr %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  store i32 271733878, ptr %11, align 4
  %14 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %15 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %16 = icmp eq ptr %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  store i32 -1009589776, ptr %15, align 4
  %18 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %20 = icmp eq ptr %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  store i32 0, ptr %19, align 4
  %22 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %24 = icmp eq ptr %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  store i32 0, ptr %23, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
._crit_edge22:
  %3 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load i32, ptr %3, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = shl i32 %2, 3
  %12 = shl i32 %2, 3
  %13 = icmp eq i32 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = xor i32 %7, -1
  %16 = xor i32 %8, -1
  %17 = icmp eq i32 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = icmp ugt i32 %11, %15
  %20 = icmp ugt i32 %12, %16
  %21 = icmp eq i1 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %25 = icmp eq ptr %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = load i32, ptr %23, align 4
  %28 = load i32, ptr %24, align 4
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = zext i1 %19 to i32
  %32 = zext i1 %20 to i32
  %33 = icmp eq i32 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = add i32 %27, %31
  %36 = add i32 %28, %32
  %37 = icmp eq i32 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = add i32 %7, %11
  %40 = add i32 %8, %12
  %41 = icmp eq i32 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  store i32 %40, ptr %4, align 4
  %43 = lshr i32 %2, 29
  %44 = lshr i32 %2, 29
  %45 = icmp eq i32 %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %48 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %49 = icmp eq ptr %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = add i32 %35, %43
  %52 = add i32 %36, %44
  %53 = icmp eq i32 %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  store i32 %52, ptr %48, align 4
  %55 = icmp sgt i32 %2, 63
  %56 = icmp sgt i32 %2, 63
  %57 = icmp eq i1 %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = select i1 %56, i32 11, i32 13
  %60 = xor i32 10, %59
  br i1 %56, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge22
  %Diff_phi = phi i32 [ %60, %._crit_edge22 ]
  %Dest_phi = phi i32 [ 10, %._crit_edge22 ]
  %61 = xor i32 %Diff_phi, %Dest_phi
  %62 = icmp eq i32 %61, 11
  %63 = zext i1 %62 to i32
  call void @assert_cfg_ft(i32 %63, i32 %61, i32 0)
  %64 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %65 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %66 = icmp eq ptr %65, %64
  %67 = zext i1 %66 to i32
  call void @assert_ft(i32 %67, i32 1)
  br label %68

68:                                               ; preds = %68, %.lr.ph
  %Diff_phi27 = phi i32 [ 7, %.lr.ph ], [ %91, %68 ]
  %Dest_phi28 = phi i32 [ %61, %.lr.ph ], [ %71, %68 ]
  %69 = phi i32 [ %2, %.lr.ph ], [ %82, %68 ]
  %.019 = phi i32 [ %2, %.lr.ph ], [ %83, %68 ]
  %70 = phi ptr [ %1, %.lr.ph ], [ %78, %68 ]
  %.01718 = phi ptr [ %1, %.lr.ph ], [ %79, %68 ]
  %71 = xor i32 %Diff_phi27, %Dest_phi28
  %72 = icmp eq i32 %71, 12
  %73 = zext i1 %72 to i32
  call void @assert_cfg_ft(i32 %73, i32 %71, i32 0)
  %74 = icmp eq ptr %.01718, %70
  %75 = zext i1 %74 to i32
  call void @assert_ft(i32 %75, i32 1)
  %76 = icmp eq i32 %.019, %69
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %65, ptr noundef nonnull align 1 dereferenceable(64) %.01718, i64 64, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %65)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  %78 = getelementptr inbounds i8, ptr %70, i64 64
  %79 = getelementptr inbounds i8, ptr %.01718, i64 64
  %80 = icmp eq ptr %79, %78
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  %82 = add nsw i32 %69, -64
  %83 = add nsw i32 %.019, -64
  %84 = icmp eq i32 %83, %82
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  %86 = icmp ugt i32 %69, 127
  %87 = icmp ugt i32 %.019, 127
  %88 = icmp eq i1 %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = select i1 %87, i32 12, i32 13
  %91 = xor i32 12, %90
  br i1 %87, label %68, label %._crit_edge

._crit_edge:                                      ; preds = %68, %._crit_edge22
  %Diff_phi29 = phi i32 [ %91, %68 ], [ %60, %._crit_edge22 ]
  %Dest_phi30 = phi i32 [ %71, %68 ], [ 10, %._crit_edge22 ]
  %92 = phi ptr [ %1, %._crit_edge22 ], [ %78, %68 ]
  %.017.lcssa = phi ptr [ %1, %._crit_edge22 ], [ %79, %68 ]
  %93 = phi i32 [ %2, %._crit_edge22 ], [ %82, %68 ]
  %.0.lcssa = phi i32 [ %2, %._crit_edge22 ], [ %83, %68 ]
  %94 = xor i32 %Diff_phi29, %Dest_phi30
  %95 = icmp eq i32 %94, 13
  %96 = zext i1 %95 to i32
  call void @assert_cfg_ft(i32 %96, i32 %94, i32 0)
  %97 = icmp eq i32 %.0.lcssa, %93
  %98 = zext i1 %97 to i32
  call void @assert_ft(i32 %98, i32 1)
  %99 = icmp eq ptr %.017.lcssa, %92
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %102 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %103 = icmp eq ptr %102, %101
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  %105 = sext i32 %93 to i64
  %106 = sext i32 %.0.lcssa to i64
  %107 = icmp eq i64 %106, %105
  %108 = zext i1 %107 to i32
  call void @assert_ft(i32 %108, i32 1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %102, ptr align 1 %.017.lcssa, i64 %106, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @byte_reverse(ptr nocapture noundef %0) unnamed_addr #5 {
  br label %2

2:                                                ; preds = %2, %1
  %Diff_phi = phi i32 [ 1, %1 ], [ %52, %2 ]
  %Dest_phi = phi i32 [ 14, %1 ], [ %5, %2 ]
  %3 = phi ptr [ %0, %1 ], [ %40, %2 ]
  %.015 = phi ptr [ %0, %1 ], [ %41, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %44, %2 ]
  %.01314 = phi i32 [ 0, %1 ], [ %45, %2 ]
  %5 = xor i32 %Diff_phi, %Dest_phi
  %6 = icmp eq i32 %5, 15
  %7 = zext i1 %6 to i32
  call void @assert_cfg_ft(i32 %7, i32 %5, i32 0)
  %8 = icmp eq i32 %.01314, %4
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = icmp eq ptr %.015, %3
  %11 = zext i1 %10 to i32
  call void @assert_ft(i32 %11, i32 1)
  %12 = load i8, ptr %3, align 1
  %13 = load i8, ptr %.015, align 1
  %14 = icmp eq i8 %13, %12
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = getelementptr inbounds i8, ptr %3, i64 1
  %17 = getelementptr inbounds i8, ptr %.015, i64 1
  %18 = icmp eq ptr %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = load i8, ptr %16, align 1
  %21 = load i8, ptr %17, align 1
  %22 = icmp eq i8 %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = getelementptr inbounds i8, ptr %3, i64 2
  %25 = getelementptr inbounds i8, ptr %.015, i64 2
  %26 = icmp eq ptr %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = load i8, ptr %24, align 1
  %29 = load i8, ptr %25, align 1
  %30 = icmp eq i8 %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = getelementptr inbounds i8, ptr %3, i64 3
  %33 = getelementptr inbounds i8, ptr %.015, i64 3
  %34 = icmp eq ptr %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = load i8, ptr %32, align 1
  %37 = load i8, ptr %33, align 1
  %38 = icmp eq i8 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  store i8 %37, ptr %.015, align 1
  store i8 %29, ptr %17, align 1
  store i8 %21, ptr %25, align 1
  store i8 %13, ptr %33, align 1
  %40 = getelementptr inbounds i8, ptr %3, i64 4
  %41 = getelementptr inbounds i8, ptr %.015, i64 4
  %42 = icmp eq ptr %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = add nuw nsw i32 %4, 1
  %45 = add nuw nsw i32 %.01314, 1
  %46 = icmp eq i32 %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = icmp eq i32 %44, 16
  %exitcond.not = icmp eq i32 %45, 16
  %49 = icmp eq i1 %exitcond.not, %48
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = select i1 %exitcond.not, i32 16, i32 15
  %52 = xor i32 15, %51
  br i1 %exitcond.not, label %53, label %2

53:                                               ; preds = %2
  %Diff_phi1 = phi i32 [ %52, %2 ]
  %Dest_phi2 = phi i32 [ %5, %2 ]
  %54 = xor i32 %Diff_phi1, %Dest_phi2
  %55 = icmp eq i32 %54, 16
  %56 = zext i1 %55 to i32
  call void @assert_cfg_ft(i32 %56, i32 %54, i32 0)
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha_transform(ptr nocapture noundef %0) unnamed_addr #6 {
.preheader112.preheader:
  %1 = alloca [80 x i32], align 16
  %2 = getelementptr i8, ptr %0, i64 28
  %scevgep = getelementptr i8, ptr %0, i64 28
  %3 = icmp eq ptr %scevgep, %2
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %scevgep, i64 64, i1 false)
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112, %.preheader112.preheader
  %Diff_phi = phi i32 [ 3, %.preheader112.preheader ], [ %82, %.preheader112 ]
  %Dest_phi = phi i32 [ 17, %.preheader112.preheader ], [ %6, %.preheader112 ]
  %5 = phi i64 [ 16, %.preheader112.preheader ], [ %75, %.preheader112 ]
  %indvars.iv = phi i64 [ 16, %.preheader112.preheader ], [ %indvars.iv.next, %.preheader112 ]
  %6 = xor i32 %Diff_phi, %Dest_phi
  %7 = icmp eq i32 %6, 18
  %8 = zext i1 %7 to i32
  call void @assert_cfg_ft(i32 %8, i32 %6, i32 0)
  %9 = icmp eq i64 %indvars.iv, %5
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = add nsw i64 %5, -3
  %12 = add nsw i64 %indvars.iv, -3
  %13 = icmp eq i64 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %11
  %16 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %12
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = load i32, ptr %15, align 4
  %20 = load i32, ptr %16, align 4
  %21 = icmp eq i32 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = add nsw i64 %5, -8
  %24 = add nsw i64 %indvars.iv, -8
  %25 = icmp eq i64 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %23
  %28 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %24
  %29 = icmp eq ptr %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = load i32, ptr %27, align 4
  %32 = load i32, ptr %28, align 4
  %33 = icmp eq i32 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = xor i32 %31, %19
  %36 = xor i32 %32, %20
  %37 = icmp eq i32 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = add nsw i64 %5, -14
  %40 = add nsw i64 %indvars.iv, -14
  %41 = icmp eq i64 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %39
  %44 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %40
  %45 = icmp eq ptr %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = load i32, ptr %43, align 4
  %48 = load i32, ptr %44, align 4
  %49 = icmp eq i32 %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = xor i32 %35, %47
  %52 = xor i32 %36, %48
  %53 = icmp eq i32 %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = add nsw i64 %5, -16
  %56 = add nsw i64 %indvars.iv, -16
  %57 = icmp eq i64 %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %55
  %60 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %56
  %61 = icmp eq ptr %60, %59
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = load i32, ptr %59, align 4
  %64 = load i32, ptr %60, align 4
  %65 = icmp eq i32 %64, %63
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = xor i32 %51, %63
  %68 = xor i32 %52, %64
  %69 = icmp eq i32 %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %5
  %72 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv
  %73 = icmp eq ptr %72, %71
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  store i32 %68, ptr %72, align 4
  %75 = add nuw nsw i64 %5, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %76 = icmp eq i64 %indvars.iv.next, %75
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = icmp eq i64 %75, 80
  %exitcond.not = icmp eq i64 %indvars.iv.next, 80
  %79 = icmp eq i1 %exitcond.not, %78
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = select i1 %exitcond.not, i32 19, i32 18
  %82 = xor i32 18, %81
  br i1 %exitcond.not, label %83, label %.preheader112

83:                                               ; preds = %.preheader112
  %Diff_phi186 = phi i32 [ %82, %.preheader112 ]
  %Dest_phi187 = phi i32 [ %6, %.preheader112 ]
  %84 = xor i32 %Diff_phi186, %Dest_phi187
  %85 = icmp eq i32 %84, 19
  %86 = zext i1 %85 to i32
  call void @assert_cfg_ft(i32 %86, i32 %84, i32 0)
  %87 = load i32, ptr %0, align 4
  %88 = load i32, ptr %0, align 4
  %89 = icmp eq i32 %88, %87
  %90 = zext i1 %89 to i32
  call void @assert_ft(i32 %90, i32 1)
  %91 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %92 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %93 = icmp eq ptr %92, %91
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  %95 = load i32, ptr %91, align 4
  %96 = load i32, ptr %92, align 4
  %97 = icmp eq i32 %96, %95
  %98 = zext i1 %97 to i32
  call void @assert_ft(i32 %98, i32 1)
  %99 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %100 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %101 = icmp eq ptr %100, %99
  %102 = zext i1 %101 to i32
  call void @assert_ft(i32 %102, i32 1)
  %103 = load i32, ptr %99, align 4
  %104 = load i32, ptr %100, align 4
  %105 = icmp eq i32 %104, %103
  %106 = zext i1 %105 to i32
  call void @assert_ft(i32 %106, i32 1)
  %107 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %108 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %109 = icmp eq ptr %108, %107
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  %111 = load i32, ptr %107, align 4
  %112 = load i32, ptr %108, align 4
  %113 = icmp eq i32 %112, %111
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %116 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %117 = icmp eq ptr %116, %115
  %118 = zext i1 %117 to i32
  call void @assert_ft(i32 %118, i32 1)
  %119 = load i32, ptr %115, align 4
  %120 = load i32, ptr %116, align 4
  %121 = icmp eq i32 %120, %119
  %122 = zext i1 %121 to i32
  call void @assert_ft(i32 %122, i32 1)
  br label %123

123:                                              ; preds = %123, %83
  %Diff_phi188 = phi i32 [ 7, %83 ], [ %194, %123 ]
  %Dest_phi189 = phi i32 [ %84, %83 ], [ %130, %123 ]
  %124 = phi i64 [ 0, %83 ], [ %187, %123 ]
  %indvars.iv146 = phi i64 [ 0, %83 ], [ %indvars.iv.next147, %123 ]
  %125 = phi i32 [ %119, %83 ], [ %126, %123 ]
  %.0120 = phi i32 [ %120, %83 ], [ %.090119, %123 ]
  %126 = phi i32 [ %111, %83 ], [ %127, %123 ]
  %.090119 = phi i32 [ %112, %83 ], [ %.094118, %123 ]
  %127 = phi i32 [ %103, %83 ], [ %186, %123 ]
  %.094118 = phi i32 [ %104, %83 ], [ %186, %123 ]
  %128 = phi i32 [ %95, %83 ], [ %129, %123 ]
  %.098117 = phi i32 [ %96, %83 ], [ %.0102116, %123 ]
  %129 = phi i32 [ %87, %83 ], [ %182, %123 ]
  %.0102116 = phi i32 [ %88, %83 ], [ %183, %123 ]
  %130 = xor i32 %Diff_phi188, %Dest_phi189
  %131 = icmp eq i32 %130, 20
  %132 = zext i1 %131 to i32
  call void @assert_cfg_ft(i32 %132, i32 %130, i32 0)
  %133 = icmp eq i32 %.0120, %125
  %134 = zext i1 %133 to i32
  call void @assert_ft(i32 %134, i32 1)
  %135 = icmp eq i32 %.090119, %126
  %136 = zext i1 %135 to i32
  call void @assert_ft(i32 %136, i32 1)
  %137 = icmp eq i32 %.0102116, %129
  %138 = zext i1 %137 to i32
  call void @assert_ft(i32 %138, i32 1)
  %139 = icmp eq i32 %.098117, %128
  %140 = zext i1 %139 to i32
  call void @assert_ft(i32 %140, i32 1)
  %141 = icmp eq i32 %.094118, %127
  %142 = zext i1 %141 to i32
  call void @assert_ft(i32 %142, i32 1)
  %143 = icmp eq i64 %indvars.iv146, %124
  %144 = zext i1 %143 to i32
  call void @assert_ft(i32 %144, i32 1)
  %145 = tail call i32 @llvm.fshl.i32(i32 %.0102116, i32 %.0102116, i32 5)
  %146 = and i32 %127, %128
  %147 = and i32 %.094118, %.098117
  %148 = icmp eq i32 %147, %146
  %149 = zext i1 %148 to i32
  call void @assert_ft(i32 %149, i32 1)
  %150 = xor i32 %128, -1
  %151 = xor i32 %.098117, -1
  %152 = icmp eq i32 %151, %150
  %153 = zext i1 %152 to i32
  call void @assert_ft(i32 %153, i32 1)
  %154 = and i32 %126, %150
  %155 = and i32 %.090119, %151
  %156 = icmp eq i32 %155, %154
  %157 = zext i1 %156 to i32
  call void @assert_ft(i32 %157, i32 1)
  %158 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %124
  %159 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv146
  %160 = icmp eq ptr %159, %158
  %161 = zext i1 %160 to i32
  call void @assert_ft(i32 %161, i32 1)
  %162 = load i32, ptr %158, align 4
  %163 = load i32, ptr %159, align 4
  %164 = icmp eq i32 %163, %162
  %165 = zext i1 %164 to i32
  call void @assert_ft(i32 %165, i32 1)
  %166 = add i32 %145, 1518500249
  %167 = add i32 %145, 1518500249
  %168 = icmp eq i32 %167, %166
  %169 = zext i1 %168 to i32
  call void @assert_ft(i32 %169, i32 1)
  %170 = add i32 %166, %146
  %171 = add i32 %167, %147
  %172 = icmp eq i32 %171, %170
  %173 = zext i1 %172 to i32
  call void @assert_ft(i32 %173, i32 1)
  %174 = add i32 %170, %154
  %175 = add i32 %171, %155
  %176 = icmp eq i32 %175, %174
  %177 = zext i1 %176 to i32
  call void @assert_ft(i32 %177, i32 1)
  %178 = add i32 %174, %125
  %179 = add i32 %175, %.0120
  %180 = icmp eq i32 %179, %178
  %181 = zext i1 %180 to i32
  call void @assert_ft(i32 %181, i32 1)
  %182 = add i32 %178, %162
  %183 = add i32 %179, %163
  %184 = icmp eq i32 %183, %182
  %185 = zext i1 %184 to i32
  call void @assert_ft(i32 %185, i32 1)
  %186 = tail call i32 @llvm.fshl.i32(i32 %.098117, i32 %.098117, i32 30)
  %187 = add nuw nsw i64 %124, 1
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %188 = icmp eq i64 %indvars.iv.next147, %187
  %189 = zext i1 %188 to i32
  call void @assert_ft(i32 %189, i32 1)
  %190 = icmp eq i64 %187, 20
  %exitcond148.not = icmp eq i64 %indvars.iv.next147, 20
  %191 = icmp eq i1 %exitcond148.not, %190
  %192 = zext i1 %191 to i32
  call void @assert_ft(i32 %192, i32 1)
  %193 = select i1 %exitcond148.not, i32 21, i32 20
  %194 = xor i32 20, %193
  br i1 %exitcond148.not, label %.preheader111, label %123

.preheader111:                                    ; preds = %.preheader111, %123
  %Diff_phi190 = phi i32 [ %194, %123 ], [ %257, %.preheader111 ]
  %Dest_phi191 = phi i32 [ %130, %123 ], [ %201, %.preheader111 ]
  %195 = phi i64 [ %250, %.preheader111 ], [ 20, %123 ]
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.preheader111 ], [ 20, %123 ]
  %196 = phi i32 [ %197, %.preheader111 ], [ %126, %123 ]
  %.1126 = phi i32 [ %.191125, %.preheader111 ], [ %.090119, %123 ]
  %197 = phi i32 [ %198, %.preheader111 ], [ %127, %123 ]
  %.191125 = phi i32 [ %.195124, %.preheader111 ], [ %.094118, %123 ]
  %198 = phi i32 [ %249, %.preheader111 ], [ %186, %123 ]
  %.195124 = phi i32 [ %249, %.preheader111 ], [ %186, %123 ]
  %199 = phi i32 [ %200, %.preheader111 ], [ %129, %123 ]
  %.199123 = phi i32 [ %.1103122, %.preheader111 ], [ %.0102116, %123 ]
  %200 = phi i32 [ %245, %.preheader111 ], [ %182, %123 ]
  %.1103122 = phi i32 [ %246, %.preheader111 ], [ %183, %123 ]
  %201 = xor i32 %Diff_phi190, %Dest_phi191
  %202 = icmp eq i32 %201, 21
  %203 = zext i1 %202 to i32
  call void @assert_cfg_ft(i32 %203, i32 %201, i32 0)
  %204 = icmp eq i32 %.1126, %196
  %205 = zext i1 %204 to i32
  call void @assert_ft(i32 %205, i32 1)
  %206 = icmp eq i32 %.1103122, %200
  %207 = zext i1 %206 to i32
  call void @assert_ft(i32 %207, i32 1)
  %208 = icmp eq i32 %.191125, %197
  %209 = zext i1 %208 to i32
  call void @assert_ft(i32 %209, i32 1)
  %210 = icmp eq i32 %.195124, %198
  %211 = zext i1 %210 to i32
  call void @assert_ft(i32 %211, i32 1)
  %212 = icmp eq i64 %indvars.iv149, %195
  %213 = zext i1 %212 to i32
  call void @assert_ft(i32 %213, i32 1)
  %214 = icmp eq i32 %.199123, %199
  %215 = zext i1 %214 to i32
  call void @assert_ft(i32 %215, i32 1)
  %216 = tail call i32 @llvm.fshl.i32(i32 %.1103122, i32 %.1103122, i32 5)
  %217 = xor i32 %198, %199
  %218 = xor i32 %.195124, %.199123
  %219 = icmp eq i32 %218, %217
  %220 = zext i1 %219 to i32
  call void @assert_ft(i32 %220, i32 1)
  %221 = xor i32 %217, %197
  %222 = xor i32 %218, %.191125
  %223 = icmp eq i32 %222, %221
  %224 = zext i1 %223 to i32
  call void @assert_ft(i32 %224, i32 1)
  %225 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %195
  %226 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv149
  %227 = icmp eq ptr %226, %225
  %228 = zext i1 %227 to i32
  call void @assert_ft(i32 %228, i32 1)
  %229 = load i32, ptr %225, align 4
  %230 = load i32, ptr %226, align 4
  %231 = icmp eq i32 %230, %229
  %232 = zext i1 %231 to i32
  call void @assert_ft(i32 %232, i32 1)
  %233 = add i32 %216, 1859775393
  %234 = add i32 %216, 1859775393
  %235 = icmp eq i32 %234, %233
  %236 = zext i1 %235 to i32
  call void @assert_ft(i32 %236, i32 1)
  %237 = add i32 %233, %221
  %238 = add i32 %234, %222
  %239 = icmp eq i32 %238, %237
  %240 = zext i1 %239 to i32
  call void @assert_ft(i32 %240, i32 1)
  %241 = add i32 %237, %196
  %242 = add i32 %238, %.1126
  %243 = icmp eq i32 %242, %241
  %244 = zext i1 %243 to i32
  call void @assert_ft(i32 %244, i32 1)
  %245 = add i32 %241, %229
  %246 = add i32 %242, %230
  %247 = icmp eq i32 %246, %245
  %248 = zext i1 %247 to i32
  call void @assert_ft(i32 %248, i32 1)
  %249 = tail call i32 @llvm.fshl.i32(i32 %.199123, i32 %.199123, i32 30)
  %250 = add nuw nsw i64 %195, 1
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %251 = icmp eq i64 %indvars.iv.next150, %250
  %252 = zext i1 %251 to i32
  call void @assert_ft(i32 %252, i32 1)
  %253 = icmp eq i64 %250, 40
  %exitcond151.not = icmp eq i64 %indvars.iv.next150, 40
  %254 = icmp eq i1 %exitcond151.not, %253
  %255 = zext i1 %254 to i32
  call void @assert_ft(i32 %255, i32 1)
  %256 = select i1 %exitcond151.not, i32 22, i32 21
  %257 = xor i32 21, %256
  br i1 %exitcond151.not, label %.preheader110, label %.preheader111

.preheader110:                                    ; preds = %.preheader110, %.preheader111
  %Diff_phi192 = phi i32 [ %257, %.preheader111 ], [ %328, %.preheader110 ]
  %Dest_phi193 = phi i32 [ %201, %.preheader111 ], [ %264, %.preheader110 ]
  %258 = phi i64 [ %321, %.preheader110 ], [ 40, %.preheader111 ]
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.preheader110 ], [ 40, %.preheader111 ]
  %259 = phi i32 [ %260, %.preheader110 ], [ %197, %.preheader111 ]
  %.2132 = phi i32 [ %.292131, %.preheader110 ], [ %.191125, %.preheader111 ]
  %260 = phi i32 [ %261, %.preheader110 ], [ %198, %.preheader111 ]
  %.292131 = phi i32 [ %.296130, %.preheader110 ], [ %.195124, %.preheader111 ]
  %261 = phi i32 [ %320, %.preheader110 ], [ %249, %.preheader111 ]
  %.296130 = phi i32 [ %320, %.preheader110 ], [ %249, %.preheader111 ]
  %262 = phi i32 [ %263, %.preheader110 ], [ %200, %.preheader111 ]
  %.2100129 = phi i32 [ %.2104128, %.preheader110 ], [ %.1103122, %.preheader111 ]
  %263 = phi i32 [ %316, %.preheader110 ], [ %245, %.preheader111 ]
  %.2104128 = phi i32 [ %317, %.preheader110 ], [ %246, %.preheader111 ]
  %264 = xor i32 %Diff_phi192, %Dest_phi193
  %265 = icmp eq i32 %264, 22
  %266 = zext i1 %265 to i32
  call void @assert_cfg_ft(i32 %266, i32 %264, i32 0)
  %267 = icmp eq i32 %.2132, %259
  %268 = zext i1 %267 to i32
  call void @assert_ft(i32 %268, i32 1)
  %269 = icmp eq i32 %.296130, %261
  %270 = zext i1 %269 to i32
  call void @assert_ft(i32 %270, i32 1)
  %271 = icmp eq i32 %.292131, %260
  %272 = zext i1 %271 to i32
  call void @assert_ft(i32 %272, i32 1)
  %273 = icmp eq i32 %.2104128, %263
  %274 = zext i1 %273 to i32
  call void @assert_ft(i32 %274, i32 1)
  %275 = icmp eq i64 %indvars.iv152, %258
  %276 = zext i1 %275 to i32
  call void @assert_ft(i32 %276, i32 1)
  %277 = icmp eq i32 %.2100129, %262
  %278 = zext i1 %277 to i32
  call void @assert_ft(i32 %278, i32 1)
  %279 = tail call i32 @llvm.fshl.i32(i32 %.2104128, i32 %.2104128, i32 5)
  %280 = or i32 %260, %261
  %281 = or i32 %.292131, %.296130
  %282 = icmp eq i32 %281, %280
  %283 = zext i1 %282 to i32
  call void @assert_ft(i32 %283, i32 1)
  %284 = and i32 %280, %262
  %285 = and i32 %281, %.2100129
  %286 = icmp eq i32 %285, %284
  %287 = zext i1 %286 to i32
  call void @assert_ft(i32 %287, i32 1)
  %288 = and i32 %260, %261
  %289 = and i32 %.292131, %.296130
  %290 = icmp eq i32 %289, %288
  %291 = zext i1 %290 to i32
  call void @assert_ft(i32 %291, i32 1)
  %292 = or i32 %284, %288
  %293 = or i32 %285, %289
  %294 = icmp eq i32 %293, %292
  %295 = zext i1 %294 to i32
  call void @assert_ft(i32 %295, i32 1)
  %296 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %258
  %297 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv152
  %298 = icmp eq ptr %297, %296
  %299 = zext i1 %298 to i32
  call void @assert_ft(i32 %299, i32 1)
  %300 = load i32, ptr %296, align 4
  %301 = load i32, ptr %297, align 4
  %302 = icmp eq i32 %301, %300
  %303 = zext i1 %302 to i32
  call void @assert_ft(i32 %303, i32 1)
  %304 = add i32 %279, -1894007588
  %305 = add i32 %279, -1894007588
  %306 = icmp eq i32 %305, %304
  %307 = zext i1 %306 to i32
  call void @assert_ft(i32 %307, i32 1)
  %308 = add i32 %304, %259
  %309 = add i32 %305, %.2132
  %310 = icmp eq i32 %309, %308
  %311 = zext i1 %310 to i32
  call void @assert_ft(i32 %311, i32 1)
  %312 = add i32 %308, %292
  %313 = add i32 %309, %293
  %314 = icmp eq i32 %313, %312
  %315 = zext i1 %314 to i32
  call void @assert_ft(i32 %315, i32 1)
  %316 = add i32 %312, %300
  %317 = add i32 %313, %301
  %318 = icmp eq i32 %317, %316
  %319 = zext i1 %318 to i32
  call void @assert_ft(i32 %319, i32 1)
  %320 = tail call i32 @llvm.fshl.i32(i32 %.2100129, i32 %.2100129, i32 30)
  %321 = add nuw nsw i64 %258, 1
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %322 = icmp eq i64 %indvars.iv.next153, %321
  %323 = zext i1 %322 to i32
  call void @assert_ft(i32 %323, i32 1)
  %324 = icmp eq i64 %321, 60
  %exitcond154.not = icmp eq i64 %indvars.iv.next153, 60
  %325 = icmp eq i1 %exitcond154.not, %324
  %326 = zext i1 %325 to i32
  call void @assert_ft(i32 %326, i32 1)
  %327 = select i1 %exitcond154.not, i32 23, i32 22
  %328 = xor i32 22, %327
  br i1 %exitcond154.not, label %.preheader, label %.preheader110

.preheader:                                       ; preds = %.preheader, %.preheader110
  %Diff_phi194 = phi i32 [ %328, %.preheader110 ], [ %391, %.preheader ]
  %Dest_phi195 = phi i32 [ %264, %.preheader110 ], [ %335, %.preheader ]
  %329 = phi i64 [ %384, %.preheader ], [ 60, %.preheader110 ]
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.preheader ], [ 60, %.preheader110 ]
  %330 = phi i32 [ %331, %.preheader ], [ %260, %.preheader110 ]
  %.3138 = phi i32 [ %.393137, %.preheader ], [ %.292131, %.preheader110 ]
  %331 = phi i32 [ %332, %.preheader ], [ %261, %.preheader110 ]
  %.393137 = phi i32 [ %.397136, %.preheader ], [ %.296130, %.preheader110 ]
  %332 = phi i32 [ %383, %.preheader ], [ %320, %.preheader110 ]
  %.397136 = phi i32 [ %383, %.preheader ], [ %320, %.preheader110 ]
  %333 = phi i32 [ %334, %.preheader ], [ %263, %.preheader110 ]
  %.3101135 = phi i32 [ %.3105134, %.preheader ], [ %.2104128, %.preheader110 ]
  %334 = phi i32 [ %379, %.preheader ], [ %316, %.preheader110 ]
  %.3105134 = phi i32 [ %380, %.preheader ], [ %317, %.preheader110 ]
  %335 = xor i32 %Diff_phi194, %Dest_phi195
  %336 = icmp eq i32 %335, 23
  %337 = zext i1 %336 to i32
  call void @assert_cfg_ft(i32 %337, i32 %335, i32 0)
  %338 = icmp eq i32 %.3138, %330
  %339 = zext i1 %338 to i32
  call void @assert_ft(i32 %339, i32 1)
  %340 = icmp eq i32 %.393137, %331
  %341 = zext i1 %340 to i32
  call void @assert_ft(i32 %341, i32 1)
  %342 = icmp eq i64 %indvars.iv155, %329
  %343 = zext i1 %342 to i32
  call void @assert_ft(i32 %343, i32 1)
  %344 = icmp eq i32 %.3101135, %333
  %345 = zext i1 %344 to i32
  call void @assert_ft(i32 %345, i32 1)
  %346 = icmp eq i32 %.3105134, %334
  %347 = zext i1 %346 to i32
  call void @assert_ft(i32 %347, i32 1)
  %348 = icmp eq i32 %.397136, %332
  %349 = zext i1 %348 to i32
  call void @assert_ft(i32 %349, i32 1)
  %350 = tail call i32 @llvm.fshl.i32(i32 %.3105134, i32 %.3105134, i32 5)
  %351 = xor i32 %332, %333
  %352 = xor i32 %.397136, %.3101135
  %353 = icmp eq i32 %352, %351
  %354 = zext i1 %353 to i32
  call void @assert_ft(i32 %354, i32 1)
  %355 = xor i32 %351, %331
  %356 = xor i32 %352, %.393137
  %357 = icmp eq i32 %356, %355
  %358 = zext i1 %357 to i32
  call void @assert_ft(i32 %358, i32 1)
  %359 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %329
  %360 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv155
  %361 = icmp eq ptr %360, %359
  %362 = zext i1 %361 to i32
  call void @assert_ft(i32 %362, i32 1)
  %363 = load i32, ptr %359, align 4
  %364 = load i32, ptr %360, align 4
  %365 = icmp eq i32 %364, %363
  %366 = zext i1 %365 to i32
  call void @assert_ft(i32 %366, i32 1)
  %367 = add i32 %350, -899497514
  %368 = add i32 %350, -899497514
  %369 = icmp eq i32 %368, %367
  %370 = zext i1 %369 to i32
  call void @assert_ft(i32 %370, i32 1)
  %371 = add i32 %367, %355
  %372 = add i32 %368, %356
  %373 = icmp eq i32 %372, %371
  %374 = zext i1 %373 to i32
  call void @assert_ft(i32 %374, i32 1)
  %375 = add i32 %371, %330
  %376 = add i32 %372, %.3138
  %377 = icmp eq i32 %376, %375
  %378 = zext i1 %377 to i32
  call void @assert_ft(i32 %378, i32 1)
  %379 = add i32 %375, %363
  %380 = add i32 %376, %364
  %381 = icmp eq i32 %380, %379
  %382 = zext i1 %381 to i32
  call void @assert_ft(i32 %382, i32 1)
  %383 = tail call i32 @llvm.fshl.i32(i32 %.3101135, i32 %.3101135, i32 30)
  %384 = add nuw nsw i64 %329, 1
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %385 = icmp eq i64 %indvars.iv.next156, %384
  %386 = zext i1 %385 to i32
  call void @assert_ft(i32 %386, i32 1)
  %387 = icmp eq i64 %384, 80
  %exitcond157.not = icmp eq i64 %indvars.iv.next156, 80
  %388 = icmp eq i1 %exitcond157.not, %387
  %389 = zext i1 %388 to i32
  call void @assert_ft(i32 %389, i32 1)
  %390 = select i1 %exitcond157.not, i32 24, i32 23
  %391 = xor i32 23, %390
  br i1 %exitcond157.not, label %392, label %.preheader

392:                                              ; preds = %.preheader
  %Diff_phi196 = phi i32 [ %391, %.preheader ]
  %Dest_phi197 = phi i32 [ %335, %.preheader ]
  %393 = xor i32 %Diff_phi196, %Dest_phi197
  %394 = icmp eq i32 %393, 24
  %395 = zext i1 %394 to i32
  call void @assert_cfg_ft(i32 %395, i32 %393, i32 0)
  %396 = add i32 %379, %87
  %397 = add i32 %380, %88
  %398 = icmp eq i32 %397, %396
  %399 = zext i1 %398 to i32
  call void @assert_ft(i32 %399, i32 1)
  store i32 %397, ptr %0, align 4
  %400 = add i32 %334, %95
  %401 = add i32 %.3105134, %96
  %402 = icmp eq i32 %401, %400
  %403 = zext i1 %402 to i32
  call void @assert_ft(i32 %403, i32 1)
  store i32 %401, ptr %92, align 4
  %404 = add i32 %383, %103
  %405 = add i32 %383, %104
  %406 = icmp eq i32 %405, %404
  %407 = zext i1 %406 to i32
  call void @assert_ft(i32 %407, i32 1)
  store i32 %405, ptr %100, align 4
  %408 = add i32 %332, %111
  %409 = add i32 %.397136, %112
  %410 = icmp eq i32 %409, %408
  %411 = zext i1 %410 to i32
  call void @assert_ft(i32 %411, i32 1)
  store i32 %409, ptr %108, align 4
  %412 = add i32 %331, %119
  %413 = add i32 %.393137, %120
  %414 = icmp eq i32 %413, %412
  %415 = zext i1 %414 to i32
  call void @assert_ft(i32 %415, i32 1)
  store i32 %413, ptr %116, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha_final(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %4 = icmp eq ptr %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = load i32, ptr %2, align 4
  %7 = load i32, ptr %3, align 4
  %8 = icmp eq i32 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = load i32, ptr %10, align 4
  %15 = load i32, ptr %11, align 4
  %16 = icmp eq i32 %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = lshr i32 %6, 3
  %19 = lshr i32 %7, 3
  %20 = icmp eq i32 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = and i32 %18, 63
  %23 = and i32 %19, 63
  %24 = icmp eq i32 %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %28 = icmp eq ptr %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = add nuw nsw i32 %22, 1
  %31 = add nuw nsw i32 %23, 1
  %32 = icmp eq i32 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = zext i32 %22 to i64
  %35 = zext i32 %23 to i64
  %36 = icmp eq i64 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = getelementptr inbounds i8, ptr %26, i64 %34
  %39 = getelementptr inbounds i8, ptr %27, i64 %35
  %40 = icmp eq ptr %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  store i8 -128, ptr %39, align 1
  %42 = icmp ugt i32 %22, 55
  %43 = icmp ugt i32 %23, 55
  %44 = icmp eq i1 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = zext i32 %30 to i64
  %47 = zext i32 %31 to i64
  %48 = icmp eq i64 %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = getelementptr inbounds i8, ptr %26, i64 %46
  %51 = getelementptr inbounds i8, ptr %27, i64 %47
  %52 = icmp eq ptr %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = select i1 %43, i32 26, i32 27
  %55 = xor i32 25, %54
  br i1 %43, label %56, label %68

56:                                               ; preds = %1
  %Diff_phi = phi i32 [ %55, %1 ]
  %Dest_phi = phi i32 [ 25, %1 ]
  %57 = xor i32 %Diff_phi, %Dest_phi
  %58 = icmp eq i32 %57, 26
  %59 = zext i1 %58 to i32
  call void @assert_cfg_ft(i32 %59, i32 %57, i32 0)
  %60 = xor i32 %22, 63
  %61 = xor i32 %23, 63
  %62 = icmp eq i32 %61, %60
  %63 = zext i1 %62 to i32
  call void @assert_ft(i32 %63, i32 1)
  %64 = zext i32 %60 to i64
  %65 = zext i32 %61 to i64
  %66 = icmp eq i64 %65, %64
  %67 = zext i1 %66 to i32
  call void @assert_ft(i32 %67, i32 1)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %51, i8 0, i64 %65, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %27)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %27, i8 0, i64 56, i1 false)
  br label %80

68:                                               ; preds = %1
  %Diff_phi20 = phi i32 [ %55, %1 ]
  %Dest_phi21 = phi i32 [ 25, %1 ]
  %69 = xor i32 %Diff_phi20, %Dest_phi21
  %70 = icmp eq i32 %69, 27
  %71 = zext i1 %70 to i32
  call void @assert_cfg_ft(i32 %71, i32 %69, i32 0)
  %72 = sub nuw nsw i32 55, %22
  %73 = sub nuw nsw i32 55, %23
  %74 = icmp eq i32 %73, %72
  %75 = zext i1 %74 to i32
  call void @assert_ft(i32 %75, i32 1)
  %76 = zext i32 %72 to i64
  %77 = zext i32 %73 to i64
  %78 = icmp eq i64 %77, %76
  %79 = zext i1 %78 to i32
  call void @assert_ft(i32 %79, i32 1)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %51, i8 0, i64 %77, i1 false)
  br label %80

80:                                               ; preds = %68, %56
  %Diff_phi22 = phi i32 [ 7, %68 ], [ 6, %56 ]
  %Dest_phi23 = phi i32 [ %69, %68 ], [ %57, %56 ]
  %81 = xor i32 %Diff_phi22, %Dest_phi23
  %82 = icmp eq i32 %81, 28
  %83 = zext i1 %82 to i32
  call void @assert_cfg_ft(i32 %83, i32 %81, i32 0)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %27)
  %84 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 14
  %85 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 14
  %86 = icmp eq ptr %85, %84
  %87 = zext i1 %86 to i32
  call void @assert_ft(i32 %87, i32 1)
  store i32 %15, ptr %85, align 4
  %88 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 15
  %89 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 15
  %90 = icmp eq ptr %89, %88
  %91 = zext i1 %90 to i32
  call void @assert_ft(i32 %91, i32 1)
  store i32 %7, ptr %89, align 4
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @sha_stream(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8192 x i8], align 16
  tail call void @sha_init(ptr noundef %0)
  %4 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %5 = trunc i64 %4 to i32
  %6 = trunc i64 %4 to i32
  %7 = icmp eq i32 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = icmp sgt i32 %5, 0
  %10 = icmp sgt i32 %6, 0
  %11 = icmp eq i1 %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = select i1 %10, i32 30, i32 31
  %14 = xor i32 29, %13
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %Diff_phi = phi i32 [ %14, %2 ], [ %32, %.lr.ph ]
  %Dest_phi = phi i32 [ 29, %2 ], [ %17, %.lr.ph ]
  %15 = phi i32 [ %23, %.lr.ph ], [ %5, %2 ]
  %16 = phi i32 [ %24, %.lr.ph ], [ %6, %2 ]
  %17 = xor i32 %Diff_phi, %Dest_phi
  %18 = icmp eq i32 %17, 30
  %19 = zext i1 %18 to i32
  call void @assert_cfg_ft(i32 %19, i32 %17, i32 0)
  %20 = icmp eq i32 %16, %15
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  call void @sha_update(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %16)
  %22 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %23 = trunc i64 %22 to i32
  %24 = trunc i64 %22 to i32
  %25 = icmp eq i32 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = icmp sgt i32 %23, 0
  %28 = icmp sgt i32 %24, 0
  %29 = icmp eq i1 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = select i1 %28, i32 30, i32 31
  %32 = xor i32 30, %31
  br i1 %28, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %2
  %Diff_phi4 = phi i32 [ %32, %.lr.ph ], [ %14, %2 ]
  %Dest_phi5 = phi i32 [ %17, %.lr.ph ], [ 29, %2 ]
  %33 = xor i32 %Diff_phi4, %Dest_phi5
  %34 = icmp eq i32 %33, 31
  %35 = zext i1 %34 to i32
  call void @assert_cfg_ft(i32 %35, i32 %33, i32 0)
  tail call void @sha_final(ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @sha_print(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %7 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = load i32, ptr %6, align 4
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %15 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %16 = icmp eq ptr %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = load i32, ptr %14, align 4
  %19 = load i32, ptr %15, align 4
  %20 = icmp eq i32 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %23 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %24 = icmp eq ptr %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = load i32, ptr %22, align 4
  %27 = load i32, ptr %23, align 4
  %28 = icmp eq i32 %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %31 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %32 = icmp eq ptr %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = load i32, ptr %30, align 4
  %35 = load i32, ptr %31, align 4
  %36 = icmp eq i32 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %3, i32 noundef %11, i32 noundef %19, i32 noundef %27, i32 noundef %35)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

declare void @exit(i32, ...)

declare i32 @printf.1(ptr, i32, ...)

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
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
