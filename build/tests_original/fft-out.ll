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
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %puts71 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %puts72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  %puts73 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  tail call void @exit(i32 noundef -1) #15
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, 4
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.4, i64 noundef 2) #16
  %.not70 = icmp eq i32 %11, 0
  %12 = zext i1 %.not70 to i32
  br label %13

13:                                               ; preds = %8, %6
  %.0 = phi i32 [ %12, %8 ], [ 0, %6 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @atoi(ptr nocapture noundef %15) #16
  %17 = getelementptr inbounds ptr, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @atoi(ptr nocapture noundef %18) #16
  tail call void @srand(i32 noundef 1) #17
  %20 = zext i32 %16 to i64
  %21 = shl nuw nsw i64 %20, 2
  %22 = tail call noalias ptr @malloc(i64 noundef %21) #18
  %23 = tail call noalias ptr @malloc(i64 noundef %21) #18
  %24 = tail call noalias ptr @malloc(i64 noundef %21) #18
  %25 = tail call noalias ptr @malloc(i64 noundef %21) #18
  %26 = zext i32 %19 to i64
  %27 = shl nuw nsw i64 %26, 2
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #18
  %29 = tail call noalias ptr @malloc(i64 noundef %27) #18
  %.not88 = icmp eq i32 %19, 0
  br i1 %.not88, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %13
  %.not89 = icmp eq i32 %16, 0
  br i1 %.not89, label %._crit_edge83.critedge, label %.lr.ph78

.lr.ph:                                           ; preds = %.lr.ph, %13
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %13 ]
  %30 = tail call i32 @rand() #17
  %31 = srem i32 %30, 1000
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds float, ptr %28, i64 %indvars.iv
  store float %32, ptr %33, align 4
  %34 = tail call i32 @rand() #17
  %35 = srem i32 %34, 1000
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds float, ptr %29, i64 %indvars.iv
  store float %36, ptr %37, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %26
  br i1 %exitcond.not, label %.preheader, label %.lr.ph

.lr.ph78:                                         ; preds = %._crit_edge, %.preheader
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %._crit_edge ], [ 0, %.preheader ]
  %38 = getelementptr inbounds float, ptr %22, i64 %indvars.iv97
  store float 0.000000e+00, ptr %38, align 4
  br i1 %.not88, label %._crit_edge, label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph78
  %39 = trunc i64 %indvars.iv97 to i32
  %40 = uitofp i32 %39 to float
  %41 = getelementptr inbounds float, ptr %23, i64 %indvars.iv97
  br label %42

42:                                               ; preds = %56, %.lr.ph76
  %indvars.iv93 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next94, %56 ]
  %43 = tail call i32 @rand() #17
  %44 = and i32 %43, 1
  %.not = icmp eq i32 %44, 0
  %45 = getelementptr inbounds float, ptr %28, i64 %indvars.iv93
  %46 = load float, ptr %45, align 4
  %47 = fpext float %46 to double
  %48 = getelementptr inbounds float, ptr %29, i64 %indvars.iv93
  %49 = load float, ptr %48, align 4
  %50 = fmul float %49, %40
  %51 = fpext float %50 to double
  br i1 %.not, label %54, label %52

52:                                               ; preds = %42
  %53 = tail call double @cos(double noundef %51) #17
  br label %56

54:                                               ; preds = %42
  %55 = tail call double @sin(double noundef %51) #17
  br label %56

56:                                               ; preds = %54, %52
  %.sink = phi double [ %55, %54 ], [ %53, %52 ]
  %57 = load float, ptr %38, align 4
  %58 = fpext float %57 to double
  %59 = tail call double @llvm.fmuladd.f64(double %47, double %.sink, double %58)
  %storemerge = fptrunc double %59 to float
  store float %storemerge, ptr %38, align 4
  store float 0.000000e+00, ptr %41, align 4
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, %26
  br i1 %exitcond96.not, label %._crit_edge, label %42

._crit_edge:                                      ; preds = %56, %.lr.ph78
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, %20
  br i1 %exitcond100.not, label %._crit_edge79, label %.lr.ph78

._crit_edge79:                                    ; preds = %._crit_edge
  tail call void @fft_float(i32 noundef %16, i32 noundef %.0, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br i1 %.not89, label %._crit_edge87.critedge, label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %._crit_edge79
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %.lr.ph82 ], [ 0, %._crit_edge79 ]
  %60 = getelementptr inbounds float, ptr %24, i64 %indvars.iv101
  %61 = load float, ptr %60, align 4
  %62 = fpext float %61 to double
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %62)
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond104.not = icmp eq i64 %indvars.iv.next102, %20
  br i1 %exitcond104.not, label %._crit_edge83, label %.lr.ph82

._crit_edge83.critedge:                           ; preds = %.preheader
  tail call void @fft_float(i32 noundef %16, i32 noundef %.0, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25)
  %puts.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.critedge, %.lr.ph82
  %putchar = tail call i32 @putchar(i32 10)
  %puts68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br i1 %.not89, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86, %._crit_edge83
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %.lr.ph86 ], [ 0, %._crit_edge83 ]
  %64 = getelementptr inbounds float, ptr %25, i64 %indvars.iv105
  %65 = load float, ptr %64, align 4
  %66 = fpext float %65 to double
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %66)
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %exitcond108.not = icmp eq i64 %indvars.iv.next106, %20
  br i1 %exitcond108.not, label %._crit_edge87, label %.lr.ph86

._crit_edge87.critedge:                           ; preds = %._crit_edge79
  %putchar.c = tail call i32 @putchar(i32 10)
  %puts68.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.critedge, %.lr.ph86, %._crit_edge83
  %putchar69 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %22) #17
  tail call void @free(ptr noundef %23) #17
  tail call void @free(ptr noundef %24) #17
  tail call void @free(ptr noundef %25) #17
  tail call void @free(ptr noundef %28) #17
  tail call void @free(ptr noundef %29) #17
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
  %3 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !6
  %.not = icmp ult i32 %3, 2
  %narrow = select i1 %2, i1 %.not, i1 false
  %.0 = zext i1 %narrow to i32
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NumberOfBitsNeeded(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %3, label %.preheader

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %0) #19
  tail call void @exit(i32 noundef 1) #15
  unreachable

.preheader:                                       ; preds = %.preheader, %1
  %.0 = phi i32 [ %8, %.preheader ], [ 0, %1 ]
  %6 = shl nuw i32 1, %.0
  %7 = and i32 %6, %0
  %.not = icmp eq i32 %7, 0
  %8 = add i32 %.0, 1
  br i1 %.not, label %.preheader, label %9

9:                                                ; preds = %.preheader
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ReverseBits(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %2
  %.011 = phi i32 [ %5, %.lr.ph ], [ 0, %2 ]
  %.0710 = phi i32 [ %7, %.lr.ph ], [ 0, %2 ]
  %.089 = phi i32 [ %6, %.lr.ph ], [ %0, %2 ]
  %3 = shl i32 %.011, 1
  %4 = and i32 %.089, 1
  %5 = or i32 %3, %4
  %6 = lshr i32 %.089, 1
  %7 = add nuw i32 %.0710, 1
  %exitcond.not = icmp eq i32 %7, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  %.0.lcssa = phi i32 [ 0, %2 ], [ %5, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @Index_to_frequency(i32 noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %.not = icmp ult i32 %1, %0
  br i1 %.not, label %3, label %15

3:                                                ; preds = %2
  %4 = lshr i32 %0, 1
  %.not11 = icmp ult i32 %4, %1
  br i1 %.not11, label %9, label %5

5:                                                ; preds = %3
  %6 = uitofp i32 %1 to double
  %7 = uitofp i32 %0 to double
  %8 = fdiv double %6, %7
  br label %15

9:                                                ; preds = %3
  %10 = sub i32 %0, %1
  %11 = uitofp i32 %10 to double
  %12 = fneg double %11
  %13 = uitofp i32 %0 to double
  %14 = fdiv double %12, %13
  br label %15

15:                                               ; preds = %9, %5, %2
  %.0 = phi double [ %8, %5 ], [ %14, %9 ], [ 0.000000e+00, %2 ]
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fft_float(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #11 {
  %7 = tail call i32 @IsPowerOfTwo(i32 noundef %0), !range !7
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %11

8:                                                ; preds = %6
  %9 = load ptr, ptr @stderr, align 8
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef %0) #19
  tail call void @exit(i32 noundef 1) #15
  unreachable

11:                                               ; preds = %6
  %.not100 = icmp eq i32 %1, 0
  %spec.select = select i1 %.not100, double 0x401921FB54442D18, double 0xC01921FB54442D18
  tail call fastcc void @CheckPointer(ptr noundef %2, ptr noundef nonnull @.str.1.13)
  tail call fastcc void @CheckPointer(ptr noundef %4, ptr noundef nonnull @.str.2.14)
  tail call fastcc void @CheckPointer(ptr noundef %5, ptr noundef nonnull @.str.3.15)
  %12 = tail call i32 @NumberOfBitsNeeded(i32 noundef %0)
  %.not121 = icmp eq i32 %0, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %11
  %13 = icmp eq ptr %3, null
  %wide.trip.count = zext i32 %0 to i64
  br label %14

.preheader102:                                    ; preds = %24
  %.not101113 = icmp ult i32 %0, 2
  br i1 %.not101113, label %._crit_edge117, label %.preheader.lr.ph

14:                                               ; preds = %24, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  %15 = trunc i64 %indvars.iv to i32
  %16 = tail call i32 @ReverseBits(i32 noundef %15, i32 noundef %12)
  %17 = getelementptr inbounds float, ptr %2, i64 %indvars.iv
  %18 = load float, ptr %17, align 4
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds float, ptr %4, i64 %19
  store float %18, ptr %20, align 4
  br i1 %13, label %24, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds float, ptr %3, i64 %indvars.iv
  %23 = load float, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = phi float [ %23, %21 ], [ 0.000000e+00, %14 ]
  %26 = getelementptr inbounds float, ptr %5, i64 %19
  store float %25, ptr %26, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader102, label %14

.preheader.lr.ph:                                 ; preds = %._crit_edge112, %.preheader102
  %.095115 = phi i32 [ %74, %._crit_edge112 ], [ 2, %.preheader102 ]
  %.096114 = phi i32 [ %.095115, %._crit_edge112 ], [ 1, %.preheader102 ]
  %27 = uitofp i32 %.095115 to double
  %28 = fdiv double %spec.select, %27
  %29 = fmul double %28, -2.000000e+00
  %30 = tail call double @sin(double noundef %29) #17
  %31 = tail call double @sin(double %28)
  %32 = fneg double %31
  %33 = tail call double @cos(double noundef %29) #17
  %cos = tail call double @cos(double %28)
  %34 = fmul double %cos, 2.000000e+00
  %.not123 = icmp eq i32 %.096114, 0
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv124 = phi i32 [ %.096114, %.preheader.lr.ph ], [ %indvars.iv.next125, %._crit_edge ]
  %.1111 = phi i32 [ 0, %.preheader.lr.ph ], [ %72, %._crit_edge ]
  br i1 %.not123, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110, %.preheader
  %.093109 = phi i32 [ %71, %.lr.ph110 ], [ %.1111, %.preheader ]
  %.sroa.4.0108 = phi double [ %38, %.lr.ph110 ], [ %32, %.preheader ]
  %.sroa.8.0107 = phi double [ %.sroa.4.0108, %.lr.ph110 ], [ %30, %.preheader ]
  %.sroa.48.0105 = phi double [ %36, %.lr.ph110 ], [ %cos, %.preheader ]
  %.sroa.810.0104 = phi double [ %.sroa.48.0105, %.lr.ph110 ], [ %33, %.preheader ]
  %35 = fneg double %.sroa.810.0104
  %36 = tail call double @llvm.fmuladd.f64(double %34, double %.sroa.48.0105, double %35)
  %37 = fneg double %.sroa.8.0107
  %38 = tail call double @llvm.fmuladd.f64(double %34, double %.sroa.4.0108, double %37)
  %39 = add i32 %.093109, %.096114
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr %4, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds float, ptr %5, i64 %40
  %45 = load float, ptr %44, align 4
  %46 = fpext float %45 to double
  %47 = fneg double %38
  %48 = fmul double %47, %46
  %49 = tail call double @llvm.fmuladd.f64(double %36, double %43, double %48)
  %50 = fmul double %38, %43
  %51 = tail call double @llvm.fmuladd.f64(double %36, double %46, double %50)
  %52 = zext i32 %.093109 to i64
  %53 = getelementptr inbounds float, ptr %4, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = fpext float %54 to double
  %56 = fsub double %55, %49
  %57 = fptrunc double %56 to float
  store float %57, ptr %41, align 4
  %58 = getelementptr inbounds float, ptr %5, i64 %52
  %59 = load float, ptr %58, align 4
  %60 = fpext float %59 to double
  %61 = fsub double %60, %51
  %62 = fptrunc double %61 to float
  store float %62, ptr %44, align 4
  %63 = load float, ptr %53, align 4
  %64 = fpext float %63 to double
  %65 = fadd double %49, %64
  %66 = fptrunc double %65 to float
  store float %66, ptr %53, align 4
  %67 = load float, ptr %58, align 4
  %68 = fpext float %67 to double
  %69 = fadd double %51, %68
  %70 = fptrunc double %69 to float
  store float %70, ptr %58, align 4
  %71 = add i32 %.093109, 1
  %exitcond126.not = icmp eq i32 %71, %indvars.iv124
  br i1 %exitcond126.not, label %._crit_edge, label %.lr.ph110

._crit_edge:                                      ; preds = %.lr.ph110, %.preheader
  %72 = add i32 %.1111, %.095115
  %73 = icmp ult i32 %72, %0
  %indvars.iv.next125 = add i32 %indvars.iv124, %.095115
  br i1 %73, label %.preheader, label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge
  %74 = shl i32 %.095115, 1
  %.not101 = icmp ugt i32 %74, %0
  br i1 %.not101, label %._crit_edge117, label %.preheader.lr.ph

._crit_edge117:                                   ; preds = %._crit_edge112, %.preheader102
  br i1 %.not100, label %.loopexit, label %75

75:                                               ; preds = %._crit_edge117
  %76 = uitofp i32 %0 to double
  br i1 %.not121, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %75
  %wide.trip.count129 = zext i32 %0 to i64
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120, %.lr.ph120.preheader
  %indvars.iv127 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next128, %.lr.ph120 ]
  %77 = getelementptr inbounds float, ptr %4, i64 %indvars.iv127
  %78 = load float, ptr %77, align 4
  %79 = fpext float %78 to double
  %80 = fdiv double %79, %76
  %81 = fptrunc double %80 to float
  store float %81, ptr %77, align 4
  %82 = getelementptr inbounds float, ptr %5, i64 %indvars.iv127
  %83 = load float, ptr %82, align 4
  %84 = fpext float %83 to double
  %85 = fdiv double %84, %76
  %86 = fptrunc double %85 to float
  store float %86, ptr %82, align 4
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %.lr.ph120

.loopexit:                                        ; preds = %.lr.ph120, %75, %._crit_edge117, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @CheckPointer(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.4.16, ptr noundef %1) #19
  tail call void @exit(i32 noundef 1) #15
  unreachable

7:                                                ; preds = %2
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
