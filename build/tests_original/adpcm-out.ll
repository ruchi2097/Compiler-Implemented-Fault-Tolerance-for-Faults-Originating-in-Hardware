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
  %6 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %7 = load i8, ptr %6, align 2
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %4
  %9 = sext i8 %7 to i32
  %10 = sext i16 %5 to i32
  %11 = sext i8 %7 to i64
  %12 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %45, %.lr.ph.preheader
  %.095 = phi i32 [ %46, %45 ], [ 1, %.lr.ph.preheader ]
  %.06294 = phi i32 [ %.1, %45 ], [ undef, %.lr.ph.preheader ]
  %.06393 = phi i32 [ %spec.store.select2, %45 ], [ %9, %.lr.ph.preheader ]
  %.06692 = phi i32 [ %.268, %45 ], [ %10, %.lr.ph.preheader ]
  %.06991 = phi i32 [ %37, %45 ], [ %13, %.lr.ph.preheader ]
  %.07690 = phi i32 [ %47, %45 ], [ %2, %.lr.ph.preheader ]
  %.07789 = phi ptr [ %14, %45 ], [ %0, %.lr.ph.preheader ]
  %.07888 = phi ptr [ %.179, %45 ], [ %1, %.lr.ph.preheader ]
  %14 = getelementptr inbounds i16, ptr %.07789, i64 1
  %15 = load i16, ptr %.07789, align 2
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 %16, %.06692
  %18 = icmp slt i32 %17, 0
  %19 = lshr i32 %17, 28
  %20 = and i32 %19, 8
  %spec.select = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %21 = ashr i32 %.06991, 3
  %.not84 = icmp slt i32 %spec.select, %.06991
  %.073 = select i1 %.not84, i32 0, i32 4
  %22 = select i1 %.not84, i32 0, i32 %.06991
  %.171 = sub nsw i32 %spec.select, %22
  %.064 = add nsw i32 %22, %21
  %23 = ashr i32 %.06991, 1
  %.not85 = icmp slt i32 %.171, %23
  %24 = or i32 %.073, 2
  %.174 = select i1 %.not85, i32 %.073, i32 %24
  %25 = select i1 %.not85, i32 0, i32 %23
  %.272 = sub nsw i32 %.171, %25
  %.165 = add nsw i32 %.064, %25
  %26 = ashr i32 %.06991, 2
  %.not86 = icmp sge i32 %.272, %26
  %27 = zext i1 %.not86 to i32
  %28 = select i1 %.not86, i32 %26, i32 0
  %.2 = add nsw i32 %.165, %28
  %29 = sub i32 0, %.2
  %.167.p = select i1 %18, i32 %29, i32 %.2
  %.167 = add i32 %.167.p, %.06692
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.167, i32 -32768)
  %.268 = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 32767)
  %.275 = or i32 %.174, %20
  %30 = or i32 %.275, %27
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, %.06393
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select1, i32 88)
  %35 = zext i32 %spec.store.select2 to i64
  %36 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %.not87 = icmp eq i32 %.095, 0
  br i1 %.not87, label %41, label %38

38:                                               ; preds = %.lr.ph
  %39 = shl nuw nsw i32 %30, 4
  %40 = and i32 %39, 240
  br label %45

41:                                               ; preds = %.lr.ph
  %42 = or i32 %30, %.06294
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, ptr %.07888, i64 1
  store i8 %43, ptr %.07888, align 1
  br label %45

45:                                               ; preds = %41, %38
  %.179 = phi ptr [ %.07888, %38 ], [ %44, %41 ]
  %.1 = phi i32 [ %40, %38 ], [ %.06294, %41 ]
  %46 = xor i32 %.095, 1
  %47 = add nsw i32 %.07690, -1
  %48 = icmp sgt i32 %.07690, 1
  br i1 %48, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %45
  %49 = icmp eq i32 %46, 0
  %50 = trunc i32 %.268 to i16
  %51 = trunc i32 %spec.store.select2 to i8
  br i1 %49, label %52, label %._crit_edge.thread

52:                                               ; preds = %._crit_edge
  %53 = trunc i32 %.1 to i8
  store i8 %53, ptr %.179, align 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %52, %._crit_edge, %4
  %.063.lcssa106 = phi i8 [ %51, %52 ], [ %51, %._crit_edge ], [ %7, %4 ]
  %.066.lcssa105 = phi i16 [ %50, %52 ], [ %50, %._crit_edge ], [ %5, %4 ]
  store i16 %.066.lcssa105, ptr %3, align 2
  store i8 %.063.lcssa106, ptr %6, align 2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @adpcm_decoder(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %3, align 2
  %6 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %7 = load i8, ptr %6, align 2
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %4
  %9 = sext i8 %7 to i32
  %10 = sext i16 %5 to i32
  %11 = sext i8 %7 to i64
  %12 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %19, %.lr.ph.preheader
  %.067 = phi i32 [ %20, %19 ], [ 0, %.lr.ph.preheader ]
  %.04366 = phi i32 [ %.1, %19 ], [ undef, %.lr.ph.preheader ]
  %.04465 = phi i32 [ %spec.store.select2, %19 ], [ %9, %.lr.ph.preheader ]
  %.04764 = phi i32 [ %.249, %19 ], [ %10, %.lr.ph.preheader ]
  %.05063 = phi i32 [ %38, %19 ], [ %13, %.lr.ph.preheader ]
  %.05262 = phi i32 [ %41, %19 ], [ %2, %.lr.ph.preheader ]
  %.05361 = phi ptr [ %40, %19 ], [ %1, %.lr.ph.preheader ]
  %.05460 = phi ptr [ %.155, %19 ], [ %0, %.lr.ph.preheader ]
  %.not = icmp eq i32 %.067, 0
  br i1 %.not, label %14, label %19

14:                                               ; preds = %.lr.ph
  %15 = getelementptr inbounds i8, ptr %.05460, i64 1
  %16 = load i8, ptr %.05460, align 1
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %17, 4
  br label %19

19:                                               ; preds = %14, %.lr.ph
  %.155 = phi ptr [ %15, %14 ], [ %.05460, %.lr.ph ]
  %.051.in = phi i32 [ %18, %14 ], [ %.04366, %.lr.ph ]
  %.1 = phi i32 [ %17, %14 ], [ %.04366, %.lr.ph ]
  %.051 = and i32 %.051.in, 15
  %20 = xor i32 %.067, 1
  %21 = zext i32 %.051 to i64
  %22 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, %.04465
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %24, i32 0)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 88)
  %25 = and i32 %.051.in, 8
  %26 = ashr i32 %.05063, 3
  %27 = and i32 %.051.in, 4
  %.not56 = icmp eq i32 %27, 0
  %28 = select i1 %.not56, i32 0, i32 %.05063
  %spec.select = add nsw i32 %28, %26
  %29 = and i32 %.051.in, 2
  %.not57 = icmp eq i32 %29, 0
  %30 = ashr i32 %.05063, 1
  %31 = select i1 %.not57, i32 0, i32 %30
  %.146 = add nsw i32 %spec.select, %31
  %32 = and i32 %.051.in, 1
  %.not58 = icmp eq i32 %32, 0
  %33 = ashr i32 %.05063, 2
  %34 = select i1 %.not58, i32 0, i32 %33
  %.2 = add nsw i32 %.146, %34
  %.not59 = icmp eq i32 %25, 0
  %35 = sub i32 0, %.2
  %.148.p = select i1 %.not59, i32 %.2, i32 %35
  %.148 = add i32 %.148.p, %.04764
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %.148, i32 -32768)
  %.249 = tail call i32 @llvm.smin.i32(i32 %spec.store.select1, i32 32767)
  %36 = zext i32 %spec.store.select2 to i64
  %37 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = trunc i32 %.249 to i16
  %40 = getelementptr inbounds i16, ptr %.05361, i64 1
  store i16 %39, ptr %.05361, align 2
  %41 = add nsw i32 %.05262, -1
  %42 = icmp sgt i32 %.05262, 1
  br i1 %42, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %19
  %43 = trunc i32 %spec.store.select2 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %4
  %.pre-phi = phi i16 [ %39, %._crit_edge.loopexit ], [ %5, %4 ]
  %.044.lcssa = phi i8 [ %43, %._crit_edge.loopexit ], [ %7, %4 ]
  store i16 %.pre-phi, ptr %3, align 2
  store i8 %.044.lcssa, ptr %6, align 2
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = tail call i32 (i32, ptr, i32, ...) @read(i32 noundef 0, ptr noundef nonnull @abuf, i32 noundef 500) #7
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %5, %0
  tail call void @perror(ptr noundef nonnull @.str) #8
  tail call void @exit(i32 noundef 1) #9
  unreachable

.lr.ph:                                           ; preds = %5, %0
  %3 = phi i32 [ %9, %5 ], [ %1, %0 ]
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %.lr.ph
  %6 = shl nuw nsw i32 %3, 1
  tail call void @adpcm_decoder(ptr noundef nonnull @abuf, ptr noundef nonnull @sbuf, i32 noundef %6, ptr noundef nonnull @state)
  %7 = shl nsw i32 %3, 2
  %8 = tail call i32 (i32, ptr, i32, ...) @write(i32 noundef 1, ptr noundef nonnull @sbuf, i32 noundef %7) #7
  %9 = tail call i32 (i32, ptr, i32, ...) @read(i32 noundef 0, ptr noundef nonnull @abuf, i32 noundef 500) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %._crit_edge, label %.lr.ph

11:                                               ; preds = %.lr.ph
  %12 = load ptr, ptr @stderr, align 8
  %13 = load i16, ptr @state, align 2
  %14 = sext i16 %13 to i32
  %15 = load i8, ptr getelementptr inbounds (%struct.adpcm_state, ptr @state, i64 0, i32 1), align 2
  %16 = sext i8 %15 to i32
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %14, i32 noundef %16) #8
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
