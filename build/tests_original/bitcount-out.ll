; ModuleID = 'bitcount-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bfile = type { ptr, i8, i8, i8, i8 }

@bits.1 = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@main.pBitCntFunc = internal unnamed_addr constant [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 16
@main.text = internal unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @bit_count(i64 noundef %0) #0 {
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader, %1
  %.05 = phi i64 [ %4, %.preheader ], [ %0, %1 ]
  %.0 = phi i32 [ %2, %.preheader ], [ 0, %1 ]
  %2 = add nuw nsw i32 %.0, 1
  %3 = add nsw i64 %.05, -1
  %4 = and i64 %3, %.05
  %.not7 = icmp eq i64 %4, 0
  br i1 %.not7, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %1
  %.1 = phi i32 [ 0, %1 ], [ %2, %.preheader ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @bitcount(i64 noundef %0) #1 {
  %2 = lshr i64 %0, 1
  %3 = and i64 %2, 1431655765
  %4 = and i64 %0, 1431655765
  %5 = add nuw nsw i64 %3, %4
  %6 = lshr i64 %5, 2
  %7 = and i64 %6, 858993459
  %8 = and i64 %5, 858993459
  %9 = add nuw nsw i64 %7, %8
  %10 = lshr i64 %9, 4
  %11 = and i64 %10, 117901063
  %12 = and i64 %9, 117901063
  %13 = add nuw nsw i64 %11, %12
  %14 = lshr i64 %13, 8
  %15 = and i64 %14, 983055
  %16 = and i64 %13, 983055
  %17 = add nuw nsw i64 %15, %16
  %18 = lshr i64 %17, 16
  %19 = and i64 %17, 31
  %20 = add nuw nsw i64 %18, %19
  %21 = trunc i64 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @ntbl_bitcount(i64 noundef %0) #1 {
  %2 = and i64 %0, 15
  %3 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i32
  %6 = lshr i64 %0, 4
  %7 = and i64 %6, 15
  %8 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = sext i8 %9 to i32
  %11 = add nsw i32 %10, %5
  %12 = lshr i64 %0, 8
  %13 = and i64 %12, 15
  %14 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %11, %16
  %18 = lshr i64 %0, 12
  %19 = and i64 %18, 15
  %20 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %17, %22
  %24 = lshr i64 %0, 16
  %25 = and i64 %24, 15
  %26 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %23, %28
  %30 = lshr i64 %0, 20
  %31 = and i64 %30, 15
  %32 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %29, %34
  %36 = lshr i64 %0, 24
  %37 = and i64 %36, 15
  %38 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %35, %40
  %42 = lshr i64 %0, 28
  %43 = and i64 %42, 15
  %44 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %41, %46
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @BW_btbl_bitcount(i64 noundef %0) #1 {
  %.sroa.2.0.extract.shift = lshr i64 %0, 8
  %.sroa.3.0.extract.shift = lshr i64 %0, 16
  %.sroa.4.0.extract.shift = lshr i64 %0, 24
  %2 = and i64 %0, 255
  %3 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i32
  %6 = and i64 %.sroa.2.0.extract.shift, 255
  %7 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %9, %5
  %11 = and i64 %.sroa.4.0.extract.shift, 255
  %12 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %10, %14
  %16 = and i64 %.sroa.3.0.extract.shift, 255
  %17 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = add nsw i32 %15, %19
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @AR_btbl_bitcount(i64 noundef %0) #1 {
  %.sroa.2.0.extract.shift = lshr i64 %0, 8
  %.sroa.3.0.extract.shift = lshr i64 %0, 16
  %.sroa.4.0.extract.shift = lshr i64 %0, 24
  %2 = and i64 %0, 255
  %3 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i32
  %6 = and i64 %.sroa.2.0.extract.shift, 255
  %7 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %9, %5
  %11 = and i64 %.sroa.3.0.extract.shift, 255
  %12 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %10, %14
  %16 = and i64 %.sroa.4.0.extract.shift, 255
  %17 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = add nsw i32 %15, %19
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ntbl_bitcnt(i64 noundef %0) #0 {
  %2 = and i64 %0, 15
  %3 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i32
  %.not6 = icmp ult i64 %0, 16
  br i1 %.not6, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %1
  %6 = phi i32 [ %12, %tailrecurse ], [ %5, %1 ]
  %.tr8 = phi i64 [ %7, %tailrecurse ], [ %0, %1 ]
  %accumulator.tr7 = phi i32 [ %8, %tailrecurse ], [ 0, %1 ]
  %7 = ashr i64 %.tr8, 4
  %8 = add nsw i32 %6, %accumulator.tr7
  %9 = and i64 %7, 15
  %10 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %.not = icmp ult i64 %.tr8, 256
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %1
  %accumulator.tr.lcssa = phi i32 [ 0, %1 ], [ %8, %tailrecurse ]
  %.lcssa = phi i32 [ %5, %1 ], [ %12, %tailrecurse ]
  %accumulator.ret.tr = add nsw i32 %.lcssa, %accumulator.tr.lcssa
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @btbl_bitcnt(i64 noundef %0) local_unnamed_addr #0 {
  %2 = and i64 %0, 255
  %3 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i32
  %.not16 = icmp ult i64 %0, 256
  br i1 %.not16, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %1
  %6 = phi i32 [ %12, %tailrecurse ], [ %5, %1 ]
  %.tr18 = phi i64 [ %7, %tailrecurse ], [ %0, %1 ]
  %accumulator.tr17 = phi i32 [ %8, %tailrecurse ], [ 0, %1 ]
  %7 = ashr i64 %.tr18, 8
  %8 = add nsw i32 %6, %accumulator.tr17
  %9 = and i64 %7, 255
  %10 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %.not = icmp ult i64 %.tr18, 65536
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %1
  %accumulator.tr.lcssa = phi i32 [ 0, %1 ], [ %8, %tailrecurse ]
  %.lcssa = phi i32 [ %5, %1 ], [ %12, %tailrecurse ]
  %accumulator.ret.tr = add nsw i32 %.lcssa, %accumulator.tr.lcssa
  ret i32 %accumulator.ret.tr
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8
  %6 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %5) #14
  tail call void @exit(i32 noundef -1) #15
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @atoi(ptr nocapture noundef %9) #16
  %11 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8)
  %12 = sext i32 %10 to i64
  %13 = icmp sgt i32 %10, 0
  br label %14

14:                                               ; preds = %._crit_edge, %7
  %indvars.iv = phi i64 [ 0, %7 ], [ %indvars.iv.next, %._crit_edge ]
  %.044 = phi double [ 0x7FEFFFFFFFFFFFFF, %7 ], [ %.1, %._crit_edge ]
  %.02843 = phi i32 [ undef, %7 ], [ %.129, %._crit_edge ]
  %.03042 = phi i32 [ undef, %7 ], [ %.131, %._crit_edge ]
  %.03340 = phi double [ 0.000000e+00, %7 ], [ %.134, %._crit_edge ]
  %15 = tail call i64 @clock() #17
  %16 = tail call i32 @rand() #17
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %14
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %indvars.iv
  %19 = load ptr, ptr %18, align 8
  br label %20

20:                                               ; preds = %20, %.lr.ph
  %.02539 = phi i64 [ %17, %.lr.ph ], [ %25, %20 ]
  %.02638 = phi i64 [ 0, %.lr.ph ], [ %23, %20 ]
  %.02737 = phi i64 [ 0, %.lr.ph ], [ %24, %20 ]
  %21 = tail call i32 %19(i64 noundef %.02539) #17
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %.02638, %22
  %24 = add nuw nsw i64 %.02737, 1
  %25 = add nsw i64 %.02539, 13
  %exitcond.not = icmp eq i64 %24, %12
  br i1 %exitcond.not, label %._crit_edge, label %20

._crit_edge:                                      ; preds = %20, %14
  %.026.lcssa = phi i64 [ 0, %14 ], [ %23, %20 ]
  %26 = tail call i64 @clock() #17
  %27 = sub nsw i64 %26, %15
  %28 = sitofp i64 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = fcmp olt double %29, %.044
  %31 = trunc i64 %indvars.iv to i32
  %.131 = select i1 %30, i32 %31, i32 %.03042
  %.1 = select i1 %30, double %29, double %.044
  %32 = fcmp ogt double %29, %.03340
  %.134 = select i1 %32, double %29, double %.03340
  %.129 = select i1 %32, i32 %31, i32 %.02843
  %33 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %indvars.iv
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %34, double noundef %29, i64 noundef %.026.lcssa)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond45.not, label %36, label %14

36:                                               ; preds = %._crit_edge
  %37 = sext i32 %.131 to i64
  %38 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %39)
  %41 = sext i32 %.129 to i64
  %42 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %43)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define internal i32 @bit_shifter(i64 noundef %0) #0 {
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %1
  %.011 = phi i32 [ %4, %.lr.ph ], [ 0, %1 ]
  %.0710 = phi i32 [ %5, %.lr.ph ], [ 0, %1 ]
  %.089 = phi i64 [ %6, %.lr.ph ], [ %0, %1 ]
  %2 = trunc i64 %.089 to i32
  %3 = and i32 %2, 1
  %4 = add nuw nsw i32 %.011, %3
  %5 = add nuw nsw i32 %.0710, 1
  %6 = ashr i64 %.089, 1
  %7 = icmp ugt i64 %.089, 1
  %8 = icmp ult i32 %.0710, 63
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %1
  %.0.lcssa = phi i32 [ 0, %1 ], [ %4, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @bfopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  store ptr %6, ptr %3, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @free(ptr noundef nonnull %3) #17
  br label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 2
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 4
  store i8 0, ptr %11, align 1
  br label %12

12:                                               ; preds = %9, %8, %2
  %.0 = phi ptr [ null, %8 ], [ %3, %9 ], [ null, %2 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @bfread(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %1
  %.phi.trans.insert = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  %.pre = load i8, ptr %.phi.trans.insert, align 8
  %5 = add i8 %3, -1
  br label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = tail call i32 @fgetc(ptr noundef %7)
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  store i8 %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %6, %._crit_edge
  %12 = phi i8 [ %9, %6 ], [ %.pre, %._crit_edge ]
  %13 = phi i8 [ 7, %6 ], [ %5, %._crit_edge ]
  store i8 %13, ptr %2, align 1
  %14 = sext i8 %12 to i32
  %15 = zext i8 %13 to i32
  %16 = lshr i32 %14, %15
  %17 = and i32 %16, 1
  ret i32 %17
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @bfwrite(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 4
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = sext i8 %8 to i32
  %10 = load ptr, ptr %1, align 8
  %11 = tail call i32 @fputc(i32 noundef %9, ptr noundef %10)
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i8 [ 0, %6 ], [ %4, %2 ]
  %14 = add i8 %13, 1
  store i8 %14, ptr %3, align 1
  %15 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %16 = load i8, ptr %15, align 2
  %17 = shl i8 %16, 1
  %18 = trunc i32 %0 to i8
  %19 = and i8 %18, 1
  %20 = or i8 %17, %19
  store i8 %20, ptr %15, align 2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @bfclose(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @fclose(ptr noundef %2)
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @bitstring(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = ashr i32 %2, 2
  %6 = and i32 %2, 3
  %.not = icmp eq i32 %6, 0
  %.neg.neg28 = zext i1 %.not to i32
  %7 = add i32 %5, %2
  %.neg22 = sub i32 %3, %7
  %8 = add i32 %.neg22, %.neg.neg28
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %4
  %10 = add i32 %.neg.neg28, %3
  %11 = xor i32 %7, -1
  %12 = add i32 %10, %11
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %13, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 32, i64 %14, i1 false)
  %scevgep = getelementptr i8, ptr %0, i64 %14
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %4
  %.0.lcssa = phi ptr [ %0, %4 ], [ %scevgep, %.lr.ph.preheader ]
  %15 = icmp sgt i32 %2, 0
  br i1 %15, label %.lr.ph26.preheader, label %._crit_edge

.lr.ph26.preheader:                               ; preds = %.preheader
  %16 = zext i32 %2 to i64
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %29, %.lr.ph26.preheader
  %indvars.iv = phi i64 [ %16, %.lr.ph26.preheader ], [ %indvars.iv.next, %29 ]
  %.in = phi i32 [ %2, %.lr.ph26.preheader ], [ %17, %29 ]
  %.125 = phi ptr [ %.0.lcssa, %.lr.ph26.preheader ], [ %.2, %29 ]
  %17 = add nsw i32 %.in, -1
  %18 = zext i32 %17 to i64
  %19 = lshr i64 %1, %18
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = or i8 %21, 48
  %23 = getelementptr inbounds i8, ptr %.125, i64 1
  store i8 %22, ptr %.125, align 1
  %24 = and i32 %17, 3
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne i32 %17, 0
  %or.cond = and i1 %26, %25
  br i1 %or.cond, label %27, label %29

27:                                               ; preds = %.lr.ph26
  %28 = getelementptr inbounds i8, ptr %.125, i64 2
  store i8 32, ptr %23, align 1
  br label %29

29:                                               ; preds = %27, %.lr.ph26
  %.2 = phi ptr [ %28, %27 ], [ %23, %.lr.ph26 ]
  %30 = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %30, label %.lr.ph26, label %._crit_edge

._crit_edge:                                      ; preds = %29, %.preheader
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader ], [ %.2, %29 ]
  store i8 0, ptr %.1.lcssa, align 1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bstr_i(ptr noundef readonly %0) local_unnamed_addr #11 {
  %.not12 = icmp eq ptr %0, null
  br i1 %.not12, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %1
  %2 = load i8, ptr %0, align 1
  %.not919 = icmp eq i8 %2, 0
  br i1 %.not919, label %.critedge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph, %.lr.ph.preheader
  %3 = phi i8 [ %12, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.071321 = phi ptr [ %7, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %.01420 = phi i32 [ %11, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %4 = zext i8 %3 to i64
  %memchr.bounds = icmp ugt i8 %3, 63
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, 844424930131969
  %memchr.bits = icmp eq i64 %6, 0
  %memchr10.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr10.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %7 = getelementptr inbounds i8, ptr %.071321, i64 1
  %8 = shl i32 %.01420, 1
  %9 = and i8 %3, 1
  %10 = zext i8 %9 to i32
  %11 = or i32 %8, %10
  %12 = load i8, ptr %7, align 1
  %.not9 = icmp eq i8 %12, 0
  br i1 %.not9, label %.critedge, label %.lr.ph22

.critedge:                                        ; preds = %.lr.ph, %.lr.ph22, %.lr.ph.preheader, %1
  %.0.lcssa = phi i32 [ 0, %1 ], [ 0, %.lr.ph.preheader ], [ %.01420, %.lr.ph22 ], [ %11, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

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

attributes #0 = { nofree noinline norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nosync nounwind memory(write, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
