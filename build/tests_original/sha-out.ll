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
  br i1 %4, label %6, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %5 = add nsw i32 %0, -1
  br label %.lr.ph

6:                                                ; preds = %2
  %7 = load ptr, ptr @stdin, align 8
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef %7)
  call void @sha_print(ptr noundef nonnull %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %18, %.lr.ph.preheader
  %8 = phi i32 [ %19, %18 ], [ %5, %.lr.ph.preheader ]
  %.012 = phi ptr [ %9, %18 ], [ %1, %.lr.ph.preheader ]
  %9 = getelementptr inbounds ptr, ptr %.012, i64 1
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noalias ptr @fopen(ptr noundef %10, ptr noundef nonnull @.str)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %.lr.ph
  %14 = load ptr, ptr %9, align 8
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %14)
  br label %18

16:                                               ; preds = %.lr.ph
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef nonnull %11)
  call void @sha_print(ptr noundef nonnull %3)
  %17 = tail call i32 @fclose(ptr noundef nonnull %11)
  br label %18

18:                                               ; preds = %16, %13
  %19 = add nsw i32 %8, -1
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %18, %6
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
  store i32 -271733879, ptr %2, align 4
  %3 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  store i32 -1732584194, ptr %3, align 4
  %4 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  store i32 271733878, ptr %4, align 4
  %5 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  store i32 -1009589776, ptr %5, align 4
  %6 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
._crit_edge22:
  %3 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %2, 3
  %6 = xor i32 %4, -1
  %7 = icmp ugt i32 %5, %6
  %8 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = zext i1 %7 to i32
  %11 = add i32 %9, %10
  %12 = add i32 %4, %5
  store i32 %12, ptr %3, align 4
  %13 = lshr i32 %2, 29
  %14 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %15 = add i32 %11, %13
  store i32 %15, ptr %14, align 4
  %16 = icmp sgt i32 %2, 63
  br i1 %16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge22
  %17 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %18, %.lr.ph
  %.019 = phi i32 [ %2, %.lr.ph ], [ %20, %18 ]
  %.01718 = phi ptr [ %1, %.lr.ph ], [ %19, %18 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %17, ptr noundef nonnull align 1 dereferenceable(64) %.01718, i64 64, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %17)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  %19 = getelementptr inbounds i8, ptr %.01718, i64 64
  %20 = add nsw i32 %.019, -64
  %21 = icmp ugt i32 %.019, 127
  br i1 %21, label %18, label %._crit_edge

._crit_edge:                                      ; preds = %18, %._crit_edge22
  %.017.lcssa = phi ptr [ %1, %._crit_edge22 ], [ %19, %18 ]
  %.0.lcssa = phi i32 [ %2, %._crit_edge22 ], [ %20, %18 ]
  %22 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %23 = sext i32 %.0.lcssa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %22, ptr align 1 %.017.lcssa, i64 %23, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @byte_reverse(ptr nocapture noundef %0) unnamed_addr #5 {
  br label %2

2:                                                ; preds = %2, %1
  %.015 = phi ptr [ %0, %1 ], [ %10, %2 ]
  %.01314 = phi i32 [ 0, %1 ], [ %11, %2 ]
  %3 = load i8, ptr %.015, align 1
  %4 = getelementptr inbounds i8, ptr %.015, i64 1
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds i8, ptr %.015, i64 2
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds i8, ptr %.015, i64 3
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.015, align 1
  store i8 %7, ptr %4, align 1
  store i8 %5, ptr %6, align 1
  store i8 %3, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %.015, i64 4
  %11 = add nuw nsw i32 %.01314, 1
  %exitcond.not = icmp eq i32 %11, 16
  br i1 %exitcond.not, label %12, label %2

12:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha_transform(ptr nocapture noundef %0) unnamed_addr #6 {
.preheader112.preheader:
  %1 = alloca [80 x i32], align 16
  %scevgep = getelementptr i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %scevgep, i64 64, i1 false)
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112, %.preheader112.preheader
  %indvars.iv = phi i64 [ 16, %.preheader112.preheader ], [ %indvars.iv.next, %.preheader112 ]
  %2 = add nsw i64 %indvars.iv, -3
  %3 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4
  %5 = add nsw i64 %indvars.iv, -8
  %6 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %7, %4
  %9 = add nsw i64 %indvars.iv, -14
  %10 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %8, %11
  %13 = add nsw i64 %indvars.iv, -16
  %14 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %12, %15
  %17 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv
  store i32 %16, ptr %17, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond.not, label %18, label %.preheader112

18:                                               ; preds = %.preheader112
  %19 = load i32, ptr %0, align 4
  %20 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %28, %18
  %indvars.iv146 = phi i64 [ 0, %18 ], [ %indvars.iv.next147, %28 ]
  %.0120 = phi i32 [ %27, %18 ], [ %.090119, %28 ]
  %.090119 = phi i32 [ %25, %18 ], [ %.094118, %28 ]
  %.094118 = phi i32 [ %23, %18 ], [ %40, %28 ]
  %.098117 = phi i32 [ %21, %18 ], [ %.0102116, %28 ]
  %.0102116 = phi i32 [ %19, %18 ], [ %39, %28 ]
  %29 = tail call i32 @llvm.fshl.i32(i32 %.0102116, i32 %.0102116, i32 5)
  %30 = and i32 %.094118, %.098117
  %31 = xor i32 %.098117, -1
  %32 = and i32 %.090119, %31
  %33 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv146
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %29, 1518500249
  %36 = add i32 %35, %30
  %37 = add i32 %36, %32
  %38 = add i32 %37, %.0120
  %39 = add i32 %38, %34
  %40 = tail call i32 @llvm.fshl.i32(i32 %.098117, i32 %.098117, i32 30)
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %exitcond148.not = icmp eq i64 %indvars.iv.next147, 20
  br i1 %exitcond148.not, label %.preheader111, label %28

.preheader111:                                    ; preds = %.preheader111, %28
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.preheader111 ], [ 20, %28 ]
  %.1126 = phi i32 [ %.191125, %.preheader111 ], [ %.090119, %28 ]
  %.191125 = phi i32 [ %.195124, %.preheader111 ], [ %.094118, %28 ]
  %.195124 = phi i32 [ %50, %.preheader111 ], [ %40, %28 ]
  %.199123 = phi i32 [ %.1103122, %.preheader111 ], [ %.0102116, %28 ]
  %.1103122 = phi i32 [ %49, %.preheader111 ], [ %39, %28 ]
  %41 = tail call i32 @llvm.fshl.i32(i32 %.1103122, i32 %.1103122, i32 5)
  %42 = xor i32 %.195124, %.199123
  %43 = xor i32 %42, %.191125
  %44 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv149
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %41, 1859775393
  %47 = add i32 %46, %43
  %48 = add i32 %47, %.1126
  %49 = add i32 %48, %45
  %50 = tail call i32 @llvm.fshl.i32(i32 %.199123, i32 %.199123, i32 30)
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %exitcond151.not = icmp eq i64 %indvars.iv.next150, 40
  br i1 %exitcond151.not, label %.preheader110, label %.preheader111

.preheader110:                                    ; preds = %.preheader110, %.preheader111
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.preheader110 ], [ 40, %.preheader111 ]
  %.2132 = phi i32 [ %.292131, %.preheader110 ], [ %.191125, %.preheader111 ]
  %.292131 = phi i32 [ %.296130, %.preheader110 ], [ %.195124, %.preheader111 ]
  %.296130 = phi i32 [ %62, %.preheader110 ], [ %50, %.preheader111 ]
  %.2100129 = phi i32 [ %.2104128, %.preheader110 ], [ %.1103122, %.preheader111 ]
  %.2104128 = phi i32 [ %61, %.preheader110 ], [ %49, %.preheader111 ]
  %51 = tail call i32 @llvm.fshl.i32(i32 %.2104128, i32 %.2104128, i32 5)
  %52 = or i32 %.292131, %.296130
  %53 = and i32 %52, %.2100129
  %54 = and i32 %.292131, %.296130
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv152
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %51, -1894007588
  %59 = add i32 %58, %.2132
  %60 = add i32 %59, %55
  %61 = add i32 %60, %57
  %62 = tail call i32 @llvm.fshl.i32(i32 %.2100129, i32 %.2100129, i32 30)
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next153, 60
  br i1 %exitcond154.not, label %.preheader, label %.preheader110

.preheader:                                       ; preds = %.preheader, %.preheader110
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.preheader ], [ 60, %.preheader110 ]
  %.3138 = phi i32 [ %.393137, %.preheader ], [ %.292131, %.preheader110 ]
  %.393137 = phi i32 [ %.397136, %.preheader ], [ %.296130, %.preheader110 ]
  %.397136 = phi i32 [ %72, %.preheader ], [ %62, %.preheader110 ]
  %.3101135 = phi i32 [ %.3105134, %.preheader ], [ %.2104128, %.preheader110 ]
  %.3105134 = phi i32 [ %71, %.preheader ], [ %61, %.preheader110 ]
  %63 = tail call i32 @llvm.fshl.i32(i32 %.3105134, i32 %.3105134, i32 5)
  %64 = xor i32 %.397136, %.3101135
  %65 = xor i32 %64, %.393137
  %66 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv155
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %63, -899497514
  %69 = add i32 %68, %65
  %70 = add i32 %69, %.3138
  %71 = add i32 %70, %67
  %72 = tail call i32 @llvm.fshl.i32(i32 %.3101135, i32 %.3101135, i32 30)
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %exitcond157.not = icmp eq i64 %indvars.iv.next156, 80
  br i1 %exitcond157.not, label %73, label %.preheader

73:                                               ; preds = %.preheader
  %74 = add i32 %71, %19
  store i32 %74, ptr %0, align 4
  %75 = add i32 %.3105134, %21
  store i32 %75, ptr %20, align 4
  %76 = add i32 %72, %23
  store i32 %76, ptr %22, align 4
  %77 = add i32 %.397136, %25
  store i32 %77, ptr %24, align 4
  %78 = add i32 %.393137, %27
  store i32 %78, ptr %26, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha_final(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %3, 3
  %7 = and i32 %6, 63
  %8 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %9 = add nuw nsw i32 %7, 1
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  store i8 -128, ptr %11, align 1
  %12 = icmp ugt i32 %7, 55
  %13 = zext i32 %9 to i64
  %14 = getelementptr inbounds i8, ptr %8, i64 %13
  br i1 %12, label %15, label %18

15:                                               ; preds = %1
  %16 = xor i32 %7, 63
  %17 = zext i32 %16 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %14, i8 0, i64 %17, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %8)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  br label %21

18:                                               ; preds = %1
  %19 = sub nuw nsw i32 55, %7
  %20 = zext i32 %19 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %14, i8 0, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %18, %15
  tail call fastcc void @byte_reverse(ptr noundef nonnull %8)
  %22 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 14
  store i32 %5, ptr %22, align 4
  %23 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 15
  store i32 %3, ptr %23, align 4
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
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %7 = phi i32 [ %9, %.lr.ph ], [ %5, %2 ]
  call void @sha_update(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %7)
  %8 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %2
  tail call void @sha_final(ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @sha_print(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10)
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
