; ModuleID = 'susan-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\00", align 1
@str.1 = private unnamed_addr constant [30 x i8] c"-s : Smoothing mode (default)\00", align 1
@str.2 = private unnamed_addr constant [16 x i8] c"-e : Edges mode\00", align 1
@str.3 = private unnamed_addr constant [19 x i8] c"-c : Corners mode\0A\00", align 1
@str.4 = private unnamed_addr constant [66 x i8] c"See source code for more information about setting the thresholds\00", align 1
@str.5 = private unnamed_addr constant [59 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\00", align 1
@str.6 = private unnamed_addr constant [106 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\00", align 1
@str.7 = private unnamed_addr constant [48 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\00", align 1
@str.8 = private unnamed_addr constant [78 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\00", align 1
@str.9 = private unnamed_addr constant [110 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\00", align 1
@str.10 = private unnamed_addr constant [107 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\00", align 1
@str.11 = private unnamed_addr constant [90 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\00", align 1
@str.12 = private unnamed_addr constant [76 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\00", align 1
@str.13 = private unnamed_addr constant [60 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\00", align 1
@str.14 = private unnamed_addr constant [39 x i8] c"as a float: see top \22defines\22 section.\00", align 1
@str.15 = private unnamed_addr constant [25 x i8] c"No argument following -t\00", align 1
@str.16 = private unnamed_addr constant [25 x i8] c"No argument following -d\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @usage() local_unnamed_addr #0 {
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  %puts10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %puts12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  tail call void @exit(i32 noundef 0) #19
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getint(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = alloca [10000 x i8], align 16
  %3 = tail call i32 @getc(ptr noundef %0)
  br label %4

4:                                                ; preds = %11, %1
  %.018 = phi i32 [ %3, %1 ], [ %12, %11 ]
  switch i32 %.018, label %9 [
    i32 35, label %.thread
    i32 -1, label %6
  ]

.thread:                                          ; preds = %4
  %5 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 9000, ptr noundef %0)
  br label %11

6:                                                ; preds = %4
  %7 = load ptr, ptr @stderr, align 8
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20
  call void @exit(i32 noundef 0) #19
  unreachable

9:                                                ; preds = %4
  %10 = add i32 %.018, -48
  %or.cond = icmp ult i32 %10, 10
  br i1 %or.cond, label %.preheader, label %11

11:                                               ; preds = %9, %.thread
  %12 = call i32 @getc(ptr noundef %0)
  br label %4

.preheader:                                       ; preds = %.preheader, %9
  %.1 = phi i32 [ %16, %.preheader ], [ %.018, %9 ]
  %.0 = phi i32 [ %15, %.preheader ], [ 0, %9 ]
  %13 = mul nsw i32 %.0, 10
  %14 = add nsw i32 %.1, -48
  %15 = add nsw i32 %14, %13
  %16 = call i32 @getc(ptr noundef %0)
  %17 = add i32 %16, -58
  %or.cond21 = icmp ult i32 %17, -10
  br i1 %or.cond21, label %18, label %.preheader

18:                                               ; preds = %.preheader
  ret i32 %15
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_image(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #3 {
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.15)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef %0) #20
  tail call void @exit(i32 noundef 0) #19
  unreachable

10:                                               ; preds = %4
  %11 = tail call i32 @fgetc(ptr noundef nonnull %5)
  %12 = tail call i32 @fgetc(ptr noundef nonnull %5)
  %sext.mask = and i32 %11, 255
  %13 = icmp eq i32 %sext.mask, 80
  %sext.mask19 = and i32 %12, 255
  %14 = icmp eq i32 %sext.mask19, 53
  %or.cond = and i1 %13, %14
  br i1 %or.cond, label %18, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @stderr, align 8
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.17, ptr noundef %0) #20
  tail call void @exit(i32 noundef 0) #19
  unreachable

18:                                               ; preds = %10
  %19 = tail call i32 @getint(ptr noundef nonnull %5)
  store i32 %19, ptr %2, align 4
  %20 = tail call i32 @getint(ptr noundef nonnull %5)
  store i32 %20, ptr %3, align 4
  %21 = tail call i32 @getint(ptr noundef nonnull %5)
  %22 = load i32, ptr %2, align 4
  %23 = load i32, ptr %3, align 4
  %24 = mul nsw i32 %23, %22
  %25 = sext i32 %24 to i64
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #21
  store ptr %26, ptr %1, align 8
  %27 = load i32, ptr %2, align 4
  %28 = load i32, ptr %3, align 4
  %29 = mul nsw i32 %28, %27
  %30 = sext i32 %29 to i64
  %31 = tail call i64 @fread(ptr noundef %26, i64 noundef 1, i64 noundef %30, ptr noundef nonnull %5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load ptr, ptr @stderr, align 8
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.18, ptr noundef %0) #20
  tail call void @exit(i32 noundef 0) #19
  unreachable

36:                                               ; preds = %18
  %37 = tail call i32 @fclose(ptr noundef nonnull %5)
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @put_image(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.19)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef %0) #20
  tail call void @exit(i32 noundef 0) #19
  unreachable

10:                                               ; preds = %4
  %11 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr nonnull %5)
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, i32 noundef %2, i32 noundef %3)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 4, i64 1, ptr nonnull %5)
  %14 = mul nsw i32 %3, %2
  %15 = sext i32 %14 to i64
  %16 = tail call i64 @fwrite(ptr noundef %1, i64 noundef %15, i64 noundef 1, ptr noundef nonnull %5)
  %.not = icmp eq i64 %16, 1
  br i1 %.not, label %20, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr @stderr, align 8
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.24, ptr noundef %0) #20
  tail call void @exit(i32 noundef 0) #19
  unreachable

20:                                               ; preds = %10
  %21 = tail call i32 @fclose(ptr noundef nonnull %5)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @int_to_uchar(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge39

.lr.ph.preheader:                                 ; preds = %3
  %5 = load i32, ptr %0, align 4
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.034 = phi i32 [ %5, %.lr.ph.preheader ], [ %.1, %.lr.ph ]
  %.02533 = phi i32 [ %5, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ]
  %6 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %7, i32 %.02533)
  %.1 = tail call i32 @llvm.smin.i32(i32 %7, i32 %.034)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %8 = sub nsw i32 %spec.select, %.1
  br i1 %4, label %.lr.ph38.preheader, label %._crit_edge39

.lr.ph38.preheader:                               ; preds = %._crit_edge
  %wide.trip.count42 = zext i32 %2 to i64
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38, %.lr.ph38.preheader
  %indvars.iv40 = phi i64 [ 0, %.lr.ph38.preheader ], [ %indvars.iv.next41, %.lr.ph38 ]
  %9 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv40
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %10, %.1
  %12 = mul nsw i32 %11, 255
  %13 = sdiv i32 %12, %8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds i8, ptr %1, i64 %indvars.iv40
  store i8 %14, ptr %15, align 1
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count42
  br i1 %exitcond43.not, label %._crit_edge39, label %.lr.ph38

._crit_edge39:                                    ; preds = %.lr.ph38, %._crit_edge, %3
  ret void
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @setup_brightness_lut(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #21
  %5 = getelementptr inbounds i8, ptr %4, i64 258
  store ptr %5, ptr %0, align 8
  %6 = sitofp i32 %1 to float
  %7 = icmp eq i32 %2, 6
  br label %8

8:                                                ; preds = %8, %3
  %indvars.iv = phi i64 [ -256, %3 ], [ %indvars.iv.next, %8 ]
  %9 = trunc i64 %indvars.iv to i32
  %10 = sitofp i32 %9 to float
  %11 = fdiv float %10, %6
  %12 = fmul float %11, %11
  %13 = fmul float %12, %12
  %14 = select i1 %7, float %13, float 1.000000e+00
  %15 = fneg float %12
  %16 = fmul float %14, %15
  %17 = fpext float %16 to double
  %18 = tail call double @exp(double noundef %17) #22
  %19 = fmul double %18, 1.000000e+02
  %20 = fptrunc double %19 to float
  %21 = fptoui float %20 to i8
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 %indvars.iv
  store i8 %21, ptr %23, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %24, label %8

24:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @susan_principle(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 {
  %7 = mul nsw i32 %5, %4
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %5, 6
  br i1 %10, label %.preheader.lr.ph, label %._crit_edge152

.preheader.lr.ph:                                 ; preds = %6
  %11 = add nsw i32 %5, -3
  %12 = add i32 %4, -3
  %13 = icmp sgt i32 %4, 6
  %14 = sext i32 %12 to i64
  %15 = add nsw i32 %4, -5
  %16 = sext i32 %15 to i64
  %17 = add nsw i32 %4, -6
  %18 = sext i32 %17 to i64
  %19 = sext i32 %4 to i64
  %wide.trip.count155 = zext i32 %11 to i64
  %wide.trip.count = zext i32 %12 to i64
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv153 = phi i64 [ 3, %.preheader.lr.ph ], [ %indvars.iv.next154, %._crit_edge ]
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %20 = add nsw i64 %indvars.iv153, -3
  %21 = mul nsw i64 %20, %19
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = mul nsw i64 %indvars.iv153, %19
  br label %24

24:                                               ; preds = %321, %.lr.ph
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next, %321 ]
  %25 = getelementptr inbounds i8, ptr %22, i64 %indvars.iv
  %26 = getelementptr inbounds i8, ptr %25, i64 -1
  %27 = add nsw i64 %indvars.iv, %23
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i8, ptr %2, i64 %30
  %32 = load i8, ptr %26, align 1
  %33 = zext i8 %32 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %37, 100
  %39 = getelementptr inbounds i8, ptr %25, i64 1
  %40 = load i8, ptr %25, align 1
  %41 = zext i8 %40 to i64
  %42 = sub nsw i64 0, %41
  %43 = getelementptr inbounds i8, ptr %31, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %38, %45
  %47 = load i8, ptr %39, align 1
  %48 = zext i8 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %31, i64 %49
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %46, %52
  %54 = getelementptr inbounds i8, ptr %39, i64 %14
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  %56 = load i8, ptr %54, align 1
  %57 = zext i8 %56 to i64
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i8, ptr %31, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %53, %61
  %63 = getelementptr inbounds i8, ptr %54, i64 2
  %64 = load i8, ptr %55, align 1
  %65 = zext i8 %64 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds i8, ptr %31, i64 %66
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nuw nsw i32 %62, %69
  %71 = getelementptr inbounds i8, ptr %54, i64 3
  %72 = load i8, ptr %63, align 1
  %73 = zext i8 %72 to i64
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i8, ptr %31, i64 %74
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %70, %77
  %79 = getelementptr inbounds i8, ptr %54, i64 4
  %80 = load i8, ptr %71, align 1
  %81 = zext i8 %80 to i64
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds i8, ptr %31, i64 %82
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nuw nsw i32 %78, %85
  %87 = load i8, ptr %79, align 1
  %88 = zext i8 %87 to i64
  %89 = sub nsw i64 0, %88
  %90 = getelementptr inbounds i8, ptr %31, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %86, %92
  %94 = getelementptr inbounds i8, ptr %79, i64 %16
  %95 = getelementptr inbounds i8, ptr %94, i64 1
  %96 = load i8, ptr %94, align 1
  %97 = zext i8 %96 to i64
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i8, ptr %31, i64 %98
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = add nuw nsw i32 %93, %101
  %103 = getelementptr inbounds i8, ptr %94, i64 2
  %104 = load i8, ptr %95, align 1
  %105 = zext i8 %104 to i64
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, ptr %31, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %102, %109
  %111 = getelementptr inbounds i8, ptr %94, i64 3
  %112 = load i8, ptr %103, align 1
  %113 = zext i8 %112 to i64
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds i8, ptr %31, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = add nuw nsw i32 %110, %117
  %119 = getelementptr inbounds i8, ptr %94, i64 4
  %120 = load i8, ptr %111, align 1
  %121 = zext i8 %120 to i64
  %122 = sub nsw i64 0, %121
  %123 = getelementptr inbounds i8, ptr %31, i64 %122
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = add nuw nsw i32 %118, %125
  %127 = getelementptr inbounds i8, ptr %94, i64 5
  %128 = load i8, ptr %119, align 1
  %129 = zext i8 %128 to i64
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i8, ptr %31, i64 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %126, %133
  %135 = getelementptr inbounds i8, ptr %94, i64 6
  %136 = load i8, ptr %127, align 1
  %137 = zext i8 %136 to i64
  %138 = sub nsw i64 0, %137
  %139 = getelementptr inbounds i8, ptr %31, i64 %138
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = add nuw nsw i32 %134, %141
  %143 = load i8, ptr %135, align 1
  %144 = zext i8 %143 to i64
  %145 = sub nsw i64 0, %144
  %146 = getelementptr inbounds i8, ptr %31, i64 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = add nuw nsw i32 %142, %148
  %150 = getelementptr inbounds i8, ptr %135, i64 %18
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  %152 = load i8, ptr %150, align 1
  %153 = zext i8 %152 to i64
  %154 = sub nsw i64 0, %153
  %155 = getelementptr inbounds i8, ptr %31, i64 %154
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add nuw nsw i32 %149, %157
  %159 = getelementptr inbounds i8, ptr %150, i64 2
  %160 = load i8, ptr %151, align 1
  %161 = zext i8 %160 to i64
  %162 = sub nsw i64 0, %161
  %163 = getelementptr inbounds i8, ptr %31, i64 %162
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = add nuw nsw i32 %158, %165
  %167 = load i8, ptr %159, align 1
  %168 = zext i8 %167 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, ptr %31, i64 %169
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = add nuw nsw i32 %166, %172
  %174 = getelementptr inbounds i8, ptr %150, i64 4
  %175 = getelementptr inbounds i8, ptr %150, i64 5
  %176 = load i8, ptr %174, align 1
  %177 = zext i8 %176 to i64
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i8, ptr %31, i64 %178
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i32
  %182 = add nuw nsw i32 %173, %181
  %183 = getelementptr inbounds i8, ptr %150, i64 6
  %184 = load i8, ptr %175, align 1
  %185 = zext i8 %184 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds i8, ptr %31, i64 %186
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = add nuw nsw i32 %182, %189
  %191 = load i8, ptr %183, align 1
  %192 = zext i8 %191 to i64
  %193 = sub nsw i64 0, %192
  %194 = getelementptr inbounds i8, ptr %31, i64 %193
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i32
  %197 = add nuw nsw i32 %190, %196
  %198 = getelementptr inbounds i8, ptr %183, i64 %18
  %199 = getelementptr inbounds i8, ptr %198, i64 1
  %200 = load i8, ptr %198, align 1
  %201 = zext i8 %200 to i64
  %202 = sub nsw i64 0, %201
  %203 = getelementptr inbounds i8, ptr %31, i64 %202
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i32
  %206 = add nuw nsw i32 %197, %205
  %207 = getelementptr inbounds i8, ptr %198, i64 2
  %208 = load i8, ptr %199, align 1
  %209 = zext i8 %208 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr inbounds i8, ptr %31, i64 %210
  %212 = load i8, ptr %211, align 1
  %213 = zext i8 %212 to i32
  %214 = add nuw nsw i32 %206, %213
  %215 = getelementptr inbounds i8, ptr %198, i64 3
  %216 = load i8, ptr %207, align 1
  %217 = zext i8 %216 to i64
  %218 = sub nsw i64 0, %217
  %219 = getelementptr inbounds i8, ptr %31, i64 %218
  %220 = load i8, ptr %219, align 1
  %221 = zext i8 %220 to i32
  %222 = add nuw nsw i32 %214, %221
  %223 = getelementptr inbounds i8, ptr %198, i64 4
  %224 = load i8, ptr %215, align 1
  %225 = zext i8 %224 to i64
  %226 = sub nsw i64 0, %225
  %227 = getelementptr inbounds i8, ptr %31, i64 %226
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i32
  %230 = add nuw nsw i32 %222, %229
  %231 = getelementptr inbounds i8, ptr %198, i64 5
  %232 = load i8, ptr %223, align 1
  %233 = zext i8 %232 to i64
  %234 = sub nsw i64 0, %233
  %235 = getelementptr inbounds i8, ptr %31, i64 %234
  %236 = load i8, ptr %235, align 1
  %237 = zext i8 %236 to i32
  %238 = add nuw nsw i32 %230, %237
  %239 = getelementptr inbounds i8, ptr %198, i64 6
  %240 = load i8, ptr %231, align 1
  %241 = zext i8 %240 to i64
  %242 = sub nsw i64 0, %241
  %243 = getelementptr inbounds i8, ptr %31, i64 %242
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = add nuw nsw i32 %238, %245
  %247 = load i8, ptr %239, align 1
  %248 = zext i8 %247 to i64
  %249 = sub nsw i64 0, %248
  %250 = getelementptr inbounds i8, ptr %31, i64 %249
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i32
  %253 = add nuw nsw i32 %246, %252
  %254 = getelementptr inbounds i8, ptr %239, i64 %16
  %255 = getelementptr inbounds i8, ptr %254, i64 1
  %256 = load i8, ptr %254, align 1
  %257 = zext i8 %256 to i64
  %258 = sub nsw i64 0, %257
  %259 = getelementptr inbounds i8, ptr %31, i64 %258
  %260 = load i8, ptr %259, align 1
  %261 = zext i8 %260 to i32
  %262 = add nuw nsw i32 %253, %261
  %263 = getelementptr inbounds i8, ptr %254, i64 2
  %264 = load i8, ptr %255, align 1
  %265 = zext i8 %264 to i64
  %266 = sub nsw i64 0, %265
  %267 = getelementptr inbounds i8, ptr %31, i64 %266
  %268 = load i8, ptr %267, align 1
  %269 = zext i8 %268 to i32
  %270 = add nuw nsw i32 %262, %269
  %271 = getelementptr inbounds i8, ptr %254, i64 3
  %272 = load i8, ptr %263, align 1
  %273 = zext i8 %272 to i64
  %274 = sub nsw i64 0, %273
  %275 = getelementptr inbounds i8, ptr %31, i64 %274
  %276 = load i8, ptr %275, align 1
  %277 = zext i8 %276 to i32
  %278 = add nuw nsw i32 %270, %277
  %279 = getelementptr inbounds i8, ptr %254, i64 4
  %280 = load i8, ptr %271, align 1
  %281 = zext i8 %280 to i64
  %282 = sub nsw i64 0, %281
  %283 = getelementptr inbounds i8, ptr %31, i64 %282
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i32
  %286 = add nuw nsw i32 %278, %285
  %287 = load i8, ptr %279, align 1
  %288 = zext i8 %287 to i64
  %289 = sub nsw i64 0, %288
  %290 = getelementptr inbounds i8, ptr %31, i64 %289
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  %293 = add nuw nsw i32 %286, %292
  %294 = getelementptr inbounds i8, ptr %279, i64 %14
  %295 = getelementptr inbounds i8, ptr %294, i64 1
  %296 = load i8, ptr %294, align 1
  %297 = zext i8 %296 to i64
  %298 = sub nsw i64 0, %297
  %299 = getelementptr inbounds i8, ptr %31, i64 %298
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i32
  %302 = add nuw nsw i32 %293, %301
  %303 = getelementptr inbounds i8, ptr %294, i64 2
  %304 = load i8, ptr %295, align 1
  %305 = zext i8 %304 to i64
  %306 = sub nsw i64 0, %305
  %307 = getelementptr inbounds i8, ptr %31, i64 %306
  %308 = load i8, ptr %307, align 1
  %309 = zext i8 %308 to i32
  %310 = add nuw nsw i32 %302, %309
  %311 = load i8, ptr %303, align 1
  %312 = zext i8 %311 to i64
  %313 = sub nsw i64 0, %312
  %314 = getelementptr inbounds i8, ptr %31, i64 %313
  %315 = load i8, ptr %314, align 1
  %316 = zext i8 %315 to i32
  %317 = add nuw nsw i32 %310, %316
  %.not = icmp sgt i32 %317, %3
  br i1 %.not, label %321, label %318

318:                                              ; preds = %24
  %319 = sub nsw i32 %3, %317
  %320 = getelementptr inbounds i32, ptr %1, i64 %27
  store i32 %319, ptr %320, align 4
  br label %321

321:                                              ; preds = %318, %24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %24

._crit_edge:                                      ; preds = %321, %.preheader
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %exitcond156.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count155
  br i1 %exitcond156.not, label %._crit_edge152, label %.preheader

._crit_edge152:                                   ; preds = %._crit_edge, %6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @susan_principle_small(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 {
  %7 = mul nsw i32 %5, %4
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %5, 2
  br i1 %10, label %.preheader.lr.ph, label %._crit_edge58

.preheader.lr.ph:                                 ; preds = %6
  %11 = add nsw i32 %5, -1
  %12 = add i32 %4, -1
  %13 = icmp sgt i32 %4, 2
  %14 = add nsw i32 %4, -2
  %15 = sext i32 %14 to i64
  %16 = sext i32 %4 to i64
  %wide.trip.count61 = zext i32 %11 to i64
  %wide.trip.count = zext i32 %12 to i64
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv59 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next60, %._crit_edge ]
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %17 = add nsw i64 %indvars.iv59, -1
  %18 = mul nsw i64 %17, %16
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = mul nsw i64 %indvars.iv59, %16
  br label %21

21:                                               ; preds = %95, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %95 ]
  %22 = getelementptr inbounds i8, ptr %19, i64 %indvars.iv
  %23 = getelementptr inbounds i8, ptr %22, i64 -1
  %24 = add nsw i64 %indvars.iv, %20
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i8, ptr %2, i64 %27
  %29 = load i8, ptr %23, align 1
  %30 = zext i8 %29 to i64
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %34, 100
  %36 = getelementptr inbounds i8, ptr %22, i64 1
  %37 = load i8, ptr %22, align 1
  %38 = zext i8 %37 to i64
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds i8, ptr %28, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %35, %42
  %44 = load i8, ptr %36, align 1
  %45 = zext i8 %44 to i64
  %46 = sub nsw i64 0, %45
  %47 = getelementptr inbounds i8, ptr %28, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %43, %49
  %51 = getelementptr inbounds i8, ptr %36, i64 %15
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i64
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds i8, ptr %28, i64 %54
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %50, %57
  %59 = getelementptr inbounds i8, ptr %51, i64 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i64
  %62 = sub nsw i64 0, %61
  %63 = getelementptr inbounds i8, ptr %28, i64 %62
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %58, %65
  %67 = getelementptr inbounds i8, ptr %59, i64 %15
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %69 to i64
  %71 = sub nsw i64 0, %70
  %72 = getelementptr inbounds i8, ptr %28, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %66, %74
  %76 = getelementptr inbounds i8, ptr %67, i64 2
  %77 = load i8, ptr %68, align 1
  %78 = zext i8 %77 to i64
  %79 = sub nsw i64 0, %78
  %80 = getelementptr inbounds i8, ptr %28, i64 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %75, %82
  %84 = load i8, ptr %76, align 1
  %85 = zext i8 %84 to i64
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, ptr %28, i64 %86
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nuw nsw i32 %83, %89
  %91 = icmp ult i32 %90, 731
  br i1 %91, label %92, label %95

92:                                               ; preds = %21
  %93 = sub nuw nsw i32 730, %90
  %94 = getelementptr inbounds i32, ptr %1, i64 %24
  store i32 %93, ptr %94, align 4
  br label %95

95:                                               ; preds = %92, %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %21

._crit_edge:                                      ; preds = %95, %.preheader
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge58, label %.preheader

._crit_edge58:                                    ; preds = %._crit_edge, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @median(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
.lr.ph.preheader:
  %4 = add nsw i32 %1, -1
  %5 = mul nsw i32 %4, %3
  %6 = add nsw i32 %5, %2
  %7 = add nsw i32 %6, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = add nsw i32 %6, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = mul nsw i32 %3, %1
  %19 = add nsw i32 %18, %2
  %20 = add nsw i32 %19, -1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = load i8, ptr %22, align 1
  %24 = add nsw i32 %19, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = add nsw i32 %1, 1
  %29 = mul nsw i32 %28, %3
  %30 = add nsw i32 %29, %2
  %31 = add nsw i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = sext i32 %30 to i64
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = add nsw i32 %30, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load i8, ptr %40, align 1
  %spec.select110 = tail call i8 @llvm.umax.i8(i8 %10, i8 %13)
  %spec.select109.v = tail call i8 @llvm.umin.i8(i8 %10, i8 %13)
  %.sroa.42.0111 = tail call i8 @llvm.umax.i8(i8 %spec.select110, i8 %17)
  %.sroa.15.1.v = tail call i8 @llvm.umin.i8(i8 %spec.select110, i8 %17)
  %.sroa.65.0112 = tail call i8 @llvm.umax.i8(i8 %.sroa.42.0111, i8 %23)
  %.sroa.42.1.v = tail call i8 @llvm.umin.i8(i8 %.sroa.42.0111, i8 %23)
  %.sroa.85.0113 = tail call i8 @llvm.umax.i8(i8 %.sroa.65.0112, i8 %27)
  %.sroa.65.1.v = tail call i8 @llvm.umin.i8(i8 %.sroa.65.0112, i8 %27)
  %.sroa.101.0114 = tail call i8 @llvm.umax.i8(i8 %.sroa.85.0113, i8 %34)
  %.sroa.85.1.v = tail call i8 @llvm.umin.i8(i8 %.sroa.85.0113, i8 %34)
  %.sroa.112.0115 = tail call i8 @llvm.umax.i8(i8 %.sroa.101.0114, i8 %37)
  %.sroa.101.1.v = tail call i8 @llvm.umin.i8(i8 %.sroa.101.0114, i8 %37)
  %42 = tail call i8 @llvm.umin.i8(i8 %.sroa.112.0115, i8 %41)
  %.sroa.15.3116 = tail call i8 @llvm.umax.i8(i8 %spec.select109.v, i8 %.sroa.15.1.v)
  %.sroa.0.2.v = tail call i8 @llvm.umin.i8(i8 %spec.select109.v, i8 %.sroa.15.1.v)
  %.sroa.42.3117 = tail call i8 @llvm.umax.i8(i8 %.sroa.15.3116, i8 %.sroa.42.1.v)
  %.sroa.15.4.v = tail call i8 @llvm.umin.i8(i8 %.sroa.15.3116, i8 %.sroa.42.1.v)
  %.sroa.65.3118 = tail call i8 @llvm.umax.i8(i8 %.sroa.42.3117, i8 %.sroa.65.1.v)
  %.sroa.42.4.v = tail call i8 @llvm.umin.i8(i8 %.sroa.42.3117, i8 %.sroa.65.1.v)
  %.sroa.85.3119 = tail call i8 @llvm.umax.i8(i8 %.sroa.65.3118, i8 %.sroa.85.1.v)
  %.sroa.65.4.v = tail call i8 @llvm.umin.i8(i8 %.sroa.65.3118, i8 %.sroa.85.1.v)
  %.sroa.101.3120 = tail call i8 @llvm.umax.i8(i8 %.sroa.85.3119, i8 %.sroa.101.1.v)
  %.sroa.85.4.v = tail call i8 @llvm.umin.i8(i8 %.sroa.85.3119, i8 %.sroa.101.1.v)
  %43 = tail call i8 @llvm.umin.i8(i8 %.sroa.101.3120, i8 %42)
  %.sroa.15.6121 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.2.v, i8 %.sroa.15.4.v)
  %.sroa.0.4.v = tail call i8 @llvm.umin.i8(i8 %.sroa.0.2.v, i8 %.sroa.15.4.v)
  %.sroa.42.6122 = tail call i8 @llvm.umax.i8(i8 %.sroa.15.6121, i8 %.sroa.42.4.v)
  %.sroa.15.7.v = tail call i8 @llvm.umin.i8(i8 %.sroa.15.6121, i8 %.sroa.42.4.v)
  %.sroa.65.6123 = tail call i8 @llvm.umax.i8(i8 %.sroa.42.6122, i8 %.sroa.65.4.v)
  %.sroa.42.7.v = tail call i8 @llvm.umin.i8(i8 %.sroa.42.6122, i8 %.sroa.65.4.v)
  %.sroa.85.6124 = tail call i8 @llvm.umax.i8(i8 %.sroa.65.6123, i8 %.sroa.85.4.v)
  %.sroa.65.7.v = tail call i8 @llvm.umin.i8(i8 %.sroa.65.6123, i8 %.sroa.85.4.v)
  %44 = tail call i8 @llvm.umin.i8(i8 %.sroa.85.6124, i8 %43)
  %.sroa.15.9125 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.4.v, i8 %.sroa.15.7.v)
  %.sroa.0.6.v = tail call i8 @llvm.umin.i8(i8 %.sroa.0.4.v, i8 %.sroa.15.7.v)
  %.sroa.42.9126 = tail call i8 @llvm.umax.i8(i8 %.sroa.15.9125, i8 %.sroa.42.7.v)
  %.sroa.15.10.v = tail call i8 @llvm.umin.i8(i8 %.sroa.15.9125, i8 %.sroa.42.7.v)
  %.sroa.65.9127 = tail call i8 @llvm.umax.i8(i8 %.sroa.42.9126, i8 %.sroa.65.7.v)
  %.sroa.42.10.v = tail call i8 @llvm.umin.i8(i8 %.sroa.42.9126, i8 %.sroa.65.7.v)
  %.sroa.85.9128 = tail call i8 @llvm.umax.i8(i8 %.sroa.65.9127, i8 %44)
  %.sroa.85.9 = zext i8 %.sroa.85.9128 to i16
  %.sroa.65.10.v = tail call i8 @llvm.umin.i8(i8 %.sroa.65.9127, i8 %44)
  %45 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.6.v, i8 %.sroa.15.10.v)
  %46 = tail call i8 @llvm.umax.i8(i8 %45, i8 %.sroa.42.10.v)
  %47 = tail call i8 @llvm.umax.i8(i8 %46, i8 %.sroa.65.10.v)
  %.sroa.65.12 = zext i8 %47 to i16
  %48 = add nuw nsw i16 %.sroa.85.9, %.sroa.65.12
  %49 = lshr i16 %48, 1
  %50 = trunc i16 %49 to i8
  ret i8 %50
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @enlarge(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #11 {
  %6 = load i32, ptr %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph, label %.preheader80

.lr.ph:                                           ; preds = %5
  %8 = shl nsw i32 %4, 1
  %9 = sext i32 %4 to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %9
  br label %13

.preheader80:                                     ; preds = %13, %5
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %.lr.ph83, label %.preheader79.._crit_edge91_crit_edge

.lr.ph83:                                         ; preds = %.preheader80
  %11 = shl nuw nsw i32 %4, 1
  %12 = zext i32 %4 to i64
  %invariant.gep84 = getelementptr i8, ptr %1, i64 %12
  br label %28

13:                                               ; preds = %13, %.lr.ph
  %.07681 = phi i32 [ 0, %.lr.ph ], [ %24, %13 ]
  %14 = add nsw i32 %.07681, %4
  %15 = load i32, ptr %2, align 4
  %16 = add nsw i32 %15, %8
  %17 = mul nsw i32 %16, %14
  %18 = sext i32 %17 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %18
  %19 = load ptr, ptr %0, align 8
  %20 = mul nsw i32 %15, %.07681
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = sext i32 %15 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep, ptr align 1 %22, i64 %23, i1 false)
  %24 = add nuw nsw i32 %.07681, 1
  %25 = load i32, ptr %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %13, label %.preheader80

.preheader79:                                     ; preds = %28
  br i1 %10, label %.preheader.lr.ph, label %.preheader79.._crit_edge91_crit_edge

.preheader79.._crit_edge91_crit_edge:             ; preds = %.preheader79, %.preheader80
  %.pre93 = shl nsw i32 %4, 1
  br label %._crit_edge91

.preheader.lr.ph:                                 ; preds = %.preheader79
  %27 = shl nuw nsw i32 %4, 1
  %.pre = load i32, ptr %3, align 4
  %invariant.op = sub nsw i32 0, %27
  br label %.preheader

28:                                               ; preds = %28, %.lr.ph83
  %.182 = phi i32 [ 0, %.lr.ph83 ], [ %53, %28 ]
  %29 = xor i32 %.182, -1
  %30 = add i32 %29, %4
  %31 = load i32, ptr %2, align 4
  %32 = add nsw i32 %31, %11
  %33 = mul nsw i32 %32, %30
  %34 = sext i32 %33 to i64
  %gep85 = getelementptr i8, ptr %invariant.gep84, i64 %34
  %35 = load ptr, ptr %0, align 8
  %36 = mul nsw i32 %31, %.182
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = sext i32 %31 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep85, ptr align 1 %38, i64 %39, i1 false)
  %40 = load i32, ptr %3, align 4
  %41 = add i32 %.182, %4
  %42 = add i32 %41, %40
  %43 = load i32, ptr %2, align 4
  %44 = add nsw i32 %43, %11
  %45 = mul nsw i32 %42, %44
  %46 = sext i32 %45 to i64
  %gep87 = getelementptr i8, ptr %invariant.gep84, i64 %46
  %47 = load ptr, ptr %0, align 8
  %48 = add i32 %40, %29
  %49 = mul nsw i32 %48, %43
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %47, i64 %50
  %52 = sext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep87, ptr align 1 %51, i64 %52, i1 false)
  %53 = add nuw nsw i32 %.182, 1
  %exitcond.not = icmp eq i32 %53, %4
  br i1 %exitcond.not, label %.preheader79, label %28

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %54 = phi i32 [ %.pre, %.preheader.lr.ph ], [ %85, %._crit_edge ]
  %.290 = phi i32 [ 0, %.preheader.lr.ph ], [ %86, %._crit_edge ]
  %55 = icmp sgt i32 %54, %invariant.op
  br i1 %55, label %.lr.ph89, label %._crit_edge

.lr.ph89:                                         ; preds = %.preheader
  %56 = xor i32 %.290, -1
  br label %57

57:                                               ; preds = %57, %.lr.ph89
  %.088 = phi i32 [ 0, %.lr.ph89 ], [ %81, %57 ]
  %58 = load i32, ptr %2, align 4
  %59 = add nsw i32 %58, %27
  %60 = mul nsw i32 %59, %.088
  %61 = add nsw i32 %60, %4
  %62 = add nsw i32 %61, %.290
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %1, i64 %63
  %65 = load i8, ptr %64, align 1
  %66 = add i32 %61, %56
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %1, i64 %67
  store i8 %65, ptr %68, align 1
  %69 = load i32, ptr %2, align 4
  %70 = add nsw i32 %69, %27
  %71 = mul nsw i32 %70, %.088
  %72 = add i32 %69, %4
  %73 = add i32 %72, %71
  %74 = add i32 %73, %56
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %1, i64 %75
  %77 = load i8, ptr %76, align 1
  %78 = add nsw i32 %73, %.290
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %1, i64 %79
  store i8 %77, ptr %80, align 1
  %81 = add nuw nsw i32 %.088, 1
  %82 = load i32, ptr %3, align 4
  %83 = add nsw i32 %82, %27
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %57, label %._crit_edge

._crit_edge:                                      ; preds = %57, %.preheader
  %85 = phi i32 [ %54, %.preheader ], [ %82, %57 ]
  %86 = add nuw nsw i32 %.290, 1
  %exitcond92.not = icmp eq i32 %86, %4
  br i1 %exitcond92.not, label %._crit_edge91, label %.preheader

._crit_edge91:                                    ; preds = %._crit_edge, %.preheader79.._crit_edge91_crit_edge
  %.pre-phi = phi i32 [ %.pre93, %.preheader79.._crit_edge91_crit_edge ], [ %27, %._crit_edge ]
  %87 = load i32, ptr %2, align 4
  %88 = add nsw i32 %87, %.pre-phi
  store i32 %88, ptr %2, align 4
  %89 = load i32, ptr %3, align 4
  %90 = add nsw i32 %89, %.pre-phi
  store i32 %90, ptr %3, align 4
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind uwtable
define dso_local void @susan_smoothing(i32 noundef %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #3 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = fptrunc double %2 to float
  store ptr %1, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  store i32 %4, ptr %9, align 4
  %11 = icmp eq i32 %0, 0
  %12 = fpext float %10 to double
  %13 = fmul double %12, 1.500000e+00
  %14 = fptosi double %13 to i32
  %15 = add nsw i32 %14, 1
  %.0173 = select i1 %11, i32 %15, i32 1
  %16 = fcmp ogt float %10, 1.500000e+01
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %12)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  %puts204 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  tail call void @exit(i32 noundef 0) #19
  unreachable

19:                                               ; preds = %6
  %20 = shl nsw i32 %.0173, 1
  %21 = or i32 %20, 1
  %22 = icmp sgt i32 %21, %3
  %23 = icmp sgt i32 %21, %4
  %or.cond = or i1 %22, %23
  br i1 %or.cond, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %.0173, i32 noundef %3, i32 noundef %4)
  tail call void @exit(i32 noundef 0) #19
  unreachable

26:                                               ; preds = %19
  %27 = add nsw i32 %20, %3
  %28 = add nsw i32 %20, %4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #21
  call void @enlarge(ptr noundef nonnull %7, ptr noundef %31, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %.0173)
  br i1 %11, label %34, label %.preheader209

.preheader209:                                    ; preds = %26
  %32 = load i32, ptr %9, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %.preheader208.preheader, label %.loopexit

.preheader208.preheader:                          ; preds = %.preheader209
  %.pre = load i32, ptr %8, align 4
  br label %.preheader208

34:                                               ; preds = %26
  %35 = load i32, ptr %8, align 4
  %36 = sub nsw i32 %35, %21
  %37 = mul nsw i32 %21, %21
  %38 = zext i32 %37 to i64
  %39 = tail call noalias ptr @malloc(i64 noundef %38) #21
  %40 = fneg float %10
  %41 = fmul float %40, %10
  %42 = xor i32 %14, -1
  %.not221 = icmp slt i32 %15, %42
  br i1 %.not221, label %.preheader206, label %.lr.ph218

.lr.ph218:                                        ; preds = %._crit_edge219, %34
  %.0176223 = phi ptr [ %60, %._crit_edge219 ], [ %39, %34 ]
  %.0180222 = phi i32 [ %62, %._crit_edge219 ], [ %42, %34 ]
  %43 = mul nsw i32 %.0180222, %.0180222
  br label %50

.preheader206:                                    ; preds = %._crit_edge219, %34
  %44 = load i32, ptr %9, align 4
  %45 = sub nsw i32 %44, %.0173
  %46 = icmp slt i32 %.0173, %45
  br i1 %46, label %.preheader205.lr.ph, label %.loopexit

.preheader205.lr.ph:                              ; preds = %.preheader206
  %47 = sext i32 %.0173 to i64
  %48 = sub nsw i64 0, %47
  %49 = sext i32 %36 to i64
  %.pre263 = load i32, ptr %8, align 4
  br label %.preheader205

50:                                               ; preds = %50, %.lr.ph218
  %.1177217 = phi ptr [ %.0176223, %.lr.ph218 ], [ %60, %50 ]
  %.0189216 = phi i32 [ %42, %.lr.ph218 ], [ %61, %50 ]
  %51 = mul nsw i32 %.0189216, %.0189216
  %52 = add nuw nsw i32 %51, %43
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %53, %41
  %55 = fpext float %54 to double
  %56 = tail call double @exp(double noundef %55) #22
  %57 = fmul double %56, 1.000000e+02
  %58 = fptosi double %57 to i32
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %.1177217, i64 1
  store i8 %59, ptr %.1177217, align 1
  %61 = add i32 %.0189216, 1
  %exitcond.not = icmp eq i32 %.0189216, %.0173
  br i1 %exitcond.not, label %._crit_edge219, label %50

._crit_edge219:                                   ; preds = %50
  %62 = add i32 %.0180222, 1
  %exitcond257.not = icmp eq i32 %.0180222, %.0173
  br i1 %exitcond257.not, label %.preheader206, label %.lr.ph218

.preheader205:                                    ; preds = %._crit_edge248, %.preheader205.lr.ph
  %63 = phi i32 [ %44, %.preheader205.lr.ph ], [ %117, %._crit_edge248 ]
  %64 = phi i32 [ %.pre263, %.preheader205.lr.ph ], [ %118, %._crit_edge248 ]
  %.0174251 = phi ptr [ %1, %.preheader205.lr.ph ], [ %.1175.lcssa, %._crit_edge248 ]
  %.1181250 = phi i32 [ %.0173, %.preheader205.lr.ph ], [ %119, %._crit_edge248 ]
  %65 = sub nsw i32 %64, %.0173
  %66 = icmp slt i32 %.0173, %65
  br i1 %66, label %.lr.ph247, label %._crit_edge248

.lr.ph247:                                        ; preds = %.preheader205
  %67 = sub nsw i32 %.1181250, %.0173
  br label %68

68:                                               ; preds = %112, %.lr.ph247
  %indvars.iv260 = phi i64 [ %47, %.lr.ph247 ], [ %indvars.iv.next261, %112 ]
  %69 = phi i32 [ %64, %.lr.ph247 ], [ %113, %112 ]
  %.1175246 = phi ptr [ %.0174251, %.lr.ph247 ], [ %.2, %112 ]
  %70 = load ptr, ptr %7, align 8
  %71 = mul nsw i32 %69, %.1181250
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %indvars.iv260, %72
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = zext i8 %75 to i64
  %78 = getelementptr inbounds i8, ptr %5, i64 %77
  br i1 %.not221, label %._crit_edge242.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %68
  %79 = mul nsw i32 %69, %67
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %70, i64 %80
  %82 = getelementptr inbounds i8, ptr %81, i64 %indvars.iv260
  %83 = getelementptr inbounds i8, ptr %82, i64 %48
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge231, %.preheader.preheader
  %.0241 = phi i32 [ %99, %._crit_edge231 ], [ 0, %.preheader.preheader ]
  %.2178240 = phi ptr [ %88, %._crit_edge231 ], [ %39, %.preheader.preheader ]
  %.0183239 = phi ptr [ %101, %._crit_edge231 ], [ %83, %.preheader.preheader ]
  %.0185238 = phi i32 [ %97, %._crit_edge231 ], [ 0, %.preheader.preheader ]
  %.0187237 = phi i32 [ %102, %._crit_edge231 ], [ %42, %.preheader.preheader ]
  br label %84

84:                                               ; preds = %84, %.preheader
  %.1229 = phi i32 [ %.0241, %.preheader ], [ %99, %84 ]
  %.3179228 = phi ptr [ %.2178240, %.preheader ], [ %88, %84 ]
  %.1184227 = phi ptr [ %.0183239, %.preheader ], [ %85, %84 ]
  %.1186226 = phi i32 [ %.0185238, %.preheader ], [ %97, %84 ]
  %.0188225 = phi i32 [ %42, %.preheader ], [ %100, %84 ]
  %85 = getelementptr inbounds i8, ptr %.1184227, i64 1
  %86 = load i8, ptr %.1184227, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds i8, ptr %.3179228, i64 1
  %89 = load i8, ptr %.3179228, align 1
  %90 = zext i8 %89 to i32
  %91 = zext i8 %86 to i64
  %92 = sub nsw i64 0, %91
  %93 = getelementptr inbounds i8, ptr %78, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = mul nuw nsw i32 %95, %90
  %97 = add nsw i32 %96, %.1186226
  %98 = mul nuw nsw i32 %96, %87
  %99 = add nsw i32 %98, %.1229
  %100 = add i32 %.0188225, 1
  %exitcond258.not = icmp eq i32 %.0188225, %.0173
  br i1 %exitcond258.not, label %._crit_edge231, label %84

._crit_edge231:                                   ; preds = %84
  %101 = getelementptr inbounds i8, ptr %85, i64 %49
  %102 = add i32 %.0187237, 1
  %exitcond259.not = icmp eq i32 %.0187237, %.0173
  br i1 %exitcond259.not, label %._crit_edge242, label %.preheader

._crit_edge242:                                   ; preds = %._crit_edge231
  %103 = add nsw i32 %97, -10000
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %._crit_edge242.thread

105:                                              ; preds = %._crit_edge242
  %106 = trunc i64 %indvars.iv260 to i32
  %107 = tail call zeroext i8 @median(ptr noundef %70, i32 noundef %.1181250, i32 noundef %106, i32 noundef %69)
  br label %112

._crit_edge242.thread:                            ; preds = %._crit_edge242, %68
  %108 = phi i32 [ %103, %._crit_edge242 ], [ -10000, %68 ]
  %.0.lcssa267 = phi i32 [ %99, %._crit_edge242 ], [ 0, %68 ]
  %.neg200 = mul nsw i32 %76, -10000
  %109 = add i32 %.0.lcssa267, %.neg200
  %110 = sdiv i32 %109, %108
  %111 = trunc i32 %110 to i8
  br label %112

112:                                              ; preds = %._crit_edge242.thread, %105
  %storemerge201 = phi i8 [ %111, %._crit_edge242.thread ], [ %107, %105 ]
  %.2 = getelementptr inbounds i8, ptr %.1175246, i64 1
  store i8 %storemerge201, ptr %.1175246, align 1
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, 1
  %113 = load i32, ptr %8, align 4
  %114 = sub nsw i32 %113, %.0173
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %indvars.iv.next261, %115
  br i1 %116, label %68, label %._crit_edge248.loopexit

._crit_edge248.loopexit:                          ; preds = %112
  %.pre264 = load i32, ptr %9, align 4
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %._crit_edge248.loopexit, %.preheader205
  %117 = phi i32 [ %63, %.preheader205 ], [ %.pre264, %._crit_edge248.loopexit ]
  %118 = phi i32 [ %64, %.preheader205 ], [ %113, %._crit_edge248.loopexit ]
  %.1175.lcssa = phi ptr [ %.0174251, %.preheader205 ], [ %.2, %._crit_edge248.loopexit ]
  %119 = add nsw i32 %.1181250, 1
  %120 = sub nsw i32 %117, %.0173
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %.preheader205, label %.loopexit

.preheader208:                                    ; preds = %._crit_edge, %.preheader208.preheader
  %122 = phi i32 [ %253, %._crit_edge ], [ %32, %.preheader208.preheader ]
  %123 = phi i32 [ %254, %._crit_edge ], [ %.pre, %.preheader208.preheader ]
  %.3214 = phi ptr [ %.4.lcssa, %._crit_edge ], [ %1, %.preheader208.preheader ]
  %.2182213 = phi i32 [ %255, %._crit_edge ], [ 1, %.preheader208.preheader ]
  %124 = icmp sgt i32 %123, 2
  br i1 %124, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader208
  %125 = add nsw i32 %.2182213, -1
  br label %126

126:                                              ; preds = %248, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %248 ]
  %127 = phi i32 [ %123, %.lr.ph ], [ %249, %248 ]
  %.4212 = phi ptr [ %.3214, %.lr.ph ], [ %.5, %248 ]
  %128 = load ptr, ptr %7, align 8
  %129 = mul nsw i32 %127, %125
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %128, i64 %130
  %132 = getelementptr inbounds i8, ptr %131, i64 %indvars.iv
  %133 = getelementptr inbounds i8, ptr %132, i64 -1
  %134 = mul nsw i32 %127, %.2182213
  %135 = trunc i64 %indvars.iv to i32
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %128, i64 %137
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds i8, ptr %5, i64 %140
  %142 = load i8, ptr %133, align 1
  %143 = zext i8 %142 to i64
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i8, ptr %141, i64 %144
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds i8, ptr %132, i64 1
  %149 = load i8, ptr %132, align 1
  %150 = zext i8 %149 to i64
  %151 = sub nsw i64 0, %150
  %152 = getelementptr inbounds i8, ptr %141, i64 %151
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8, ptr %148, align 1
  %156 = zext i8 %155 to i64
  %157 = sub nsw i64 0, %156
  %158 = getelementptr inbounds i8, ptr %141, i64 %157
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = add nsw i32 %127, -2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %148, i64 %162
  %164 = getelementptr inbounds i8, ptr %163, i64 1
  %165 = load i8, ptr %163, align 1
  %166 = zext i8 %165 to i64
  %167 = sub nsw i64 0, %166
  %168 = getelementptr inbounds i8, ptr %141, i64 %167
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = getelementptr inbounds i8, ptr %163, i64 2
  %172 = load i8, ptr %164, align 1
  %173 = zext i8 %172 to i64
  %174 = sub nsw i64 0, %173
  %175 = getelementptr inbounds i8, ptr %141, i64 %174
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, ptr %171, align 1
  %179 = zext i8 %178 to i64
  %180 = sub nsw i64 0, %179
  %181 = getelementptr inbounds i8, ptr %141, i64 %180
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = getelementptr inbounds i8, ptr %171, i64 %162
  %185 = getelementptr inbounds i8, ptr %184, i64 1
  %186 = load i8, ptr %184, align 1
  %187 = zext i8 %186 to i64
  %188 = sub nsw i64 0, %187
  %189 = getelementptr inbounds i8, ptr %141, i64 %188
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = getelementptr inbounds i8, ptr %184, i64 2
  %193 = load i8, ptr %185, align 1
  %194 = zext i8 %193 to i64
  %195 = sub nsw i64 0, %194
  %196 = getelementptr inbounds i8, ptr %141, i64 %195
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8, ptr %192, align 1
  %200 = zext i8 %199 to i64
  %201 = sub nsw i64 0, %200
  %202 = getelementptr inbounds i8, ptr %141, i64 %201
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = add nsw i32 %147, -100
  %206 = add nsw i32 %205, %154
  %207 = add nsw i32 %206, %160
  %208 = add nsw i32 %207, %170
  %209 = add nsw i32 %208, %177
  %210 = add nsw i32 %209, %183
  %211 = add nsw i32 %210, %191
  %212 = add nsw i32 %211, %198
  %213 = add nsw i32 %212, %204
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %126
  %216 = tail call zeroext i8 @median(ptr noundef nonnull %128, i32 noundef %.2182213, i32 noundef %135, i32 noundef %127)
  br label %248

217:                                              ; preds = %126
  %218 = zext i8 %142 to i32
  %219 = mul nuw nsw i32 %147, %218
  %220 = zext i8 %149 to i32
  %221 = mul nuw nsw i32 %154, %220
  %222 = zext i8 %155 to i32
  %223 = mul nuw nsw i32 %160, %222
  %224 = zext i8 %165 to i32
  %225 = mul nuw nsw i32 %170, %224
  %226 = zext i8 %172 to i32
  %227 = mul nuw nsw i32 %177, %226
  %228 = zext i8 %178 to i32
  %229 = mul nuw nsw i32 %183, %228
  %230 = zext i8 %186 to i32
  %231 = mul nuw nsw i32 %191, %230
  %232 = zext i8 %193 to i32
  %233 = mul nuw nsw i32 %198, %232
  %234 = zext i8 %199 to i32
  %235 = mul nuw nsw i32 %204, %234
  %236 = zext i8 %139 to i32
  %.neg = mul nsw i32 %236, -100
  %237 = add nsw i32 %219, %.neg
  %238 = add nsw i32 %237, %221
  %239 = add nsw i32 %238, %223
  %240 = add nsw i32 %239, %225
  %241 = add nsw i32 %240, %227
  %242 = add nsw i32 %241, %229
  %243 = add nsw i32 %242, %231
  %244 = add nsw i32 %243, %233
  %245 = add nsw i32 %244, %235
  %246 = sdiv i32 %245, %213
  %247 = trunc i32 %246 to i8
  br label %248

248:                                              ; preds = %217, %215
  %storemerge = phi i8 [ %247, %217 ], [ %216, %215 ]
  %.5 = getelementptr inbounds i8, ptr %.4212, i64 1
  store i8 %storemerge, ptr %.4212, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %249 = load i32, ptr %8, align 4
  %250 = add nsw i32 %249, -1
  %251 = sext i32 %250 to i64
  %252 = icmp slt i64 %indvars.iv.next, %251
  br i1 %252, label %126, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %248
  %.pre262 = load i32, ptr %9, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader208
  %253 = phi i32 [ %122, %.preheader208 ], [ %.pre262, %._crit_edge.loopexit ]
  %254 = phi i32 [ %123, %.preheader208 ], [ %249, %._crit_edge.loopexit ]
  %.4.lcssa = phi ptr [ %.3214, %.preheader208 ], [ %.5, %._crit_edge.loopexit ]
  %255 = add nuw nsw i32 %.2182213, 1
  %256 = add nsw i32 %253, -1
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %.preheader208, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge248, %.preheader206, %.preheader209
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @edge_draw(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 {
  %6 = ptrtoint ptr %0 to i64
  %7 = icmp eq i32 %4, 0
  %8 = mul i32 %3, %2
  br i1 %7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %5
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %10 = ptrtoint ptr %1 to i64
  %11 = sext i32 %2 to i64
  %12 = sub nsw i64 0, %11
  %invariant.gep = getelementptr i8, ptr %0, i64 %12
  %13 = add nsw i32 %2, -2
  %14 = sext i32 %13 to i64
  br label %15

15:                                               ; preds = %28, %.lr.ph
  %.037 = phi ptr [ %1, %.lr.ph ], [ %29, %28 ]
  %.03436 = phi i32 [ 0, %.lr.ph ], [ %30, %28 ]
  %16 = load i8, ptr %.037, align 1
  %17 = icmp ult i8 %16, 8
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = ptrtoint ptr %.037 to i64
  %20 = sub i64 %19, %10
  %gep = getelementptr i8, ptr %invariant.gep, i64 %20
  %21 = getelementptr inbounds i8, ptr %gep, i64 -1
  store i8 -1, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %gep, i64 1
  store i8 -1, ptr %gep, align 1
  store i8 -1, ptr %22, align 1
  %23 = getelementptr inbounds i8, ptr %22, i64 %14
  store i8 -1, ptr %23, align 1
  %24 = getelementptr inbounds i8, ptr %23, i64 2
  store i8 -1, ptr %24, align 1
  %25 = getelementptr inbounds i8, ptr %24, i64 %14
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 -1, ptr %25, align 1
  %27 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 -1, ptr %26, align 1
  store i8 -1, ptr %27, align 1
  br label %28

28:                                               ; preds = %18, %15
  %29 = getelementptr inbounds i8, ptr %.037, i64 1
  %30 = add nuw nsw i32 %.03436, 1
  %exitcond.not = icmp eq i32 %30, %8
  br i1 %exitcond.not, label %.loopexit, label %15

.loopexit:                                        ; preds = %28, %5
  %31 = icmp sgt i32 %8, 0
  br i1 %31, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.loopexit
  %32 = ptrtoint ptr %1 to i64
  %33 = zext i32 %8 to i64
  %min.iters.check = icmp ult i32 %8, 4
  %34 = sub i64 %6, %32
  %diff.check = icmp ult i64 %34, 4
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph40
  %n.vec = and i64 %33, 4294967292
  %ind.end = getelementptr i8, ptr %1, i64 %n.vec
  %ind.end43 = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %32, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue50, %vector.ph
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %pred.store.continue50 ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue50 ]
  %35 = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %36 = extractelement <4 x ptr> %35, i64 0
  %wide.load = load <4 x i8>, ptr %36, align 1
  %37 = icmp ult <4 x i8> %wide.load, <i8 8, i8 8, i8 8, i8 8>
  %38 = ptrtoint <4 x ptr> %35 to <4 x i64>
  %39 = sub <4 x i64> %38, %broadcast.splat
  %40 = extractelement <4 x i1> %37, i64 0
  br i1 %40, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %41 = extractelement <4 x i64> %39, i64 0
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  store i8 0, ptr %42, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %43 = extractelement <4 x i1> %37, i64 1
  br i1 %43, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue
  %44 = extractelement <4 x i64> %39, i64 1
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  store i8 0, ptr %45, align 1
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue
  %46 = extractelement <4 x i1> %37, i64 2
  br i1 %46, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %47 = extractelement <4 x i64> %39, i64 2
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  store i8 0, ptr %48, align 1
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %49 = extractelement <4 x i1> %37, i64 3
  br i1 %49, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %50 = extractelement <4 x i64> %39, i64 3
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  store i8 0, ptr %51, align 1
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %index.next = add nuw i64 %index, 4
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %52 = icmp eq i64 %index.next, %n.vec
  br i1 %52, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %pred.store.continue50
  %cmp.n = icmp eq i64 %n.vec, %33
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %.lr.ph40
  %.139.ph = phi ptr [ %1, %.lr.ph40 ], [ %ind.end, %middle.block ]
  %.13538.ph = phi i32 [ 0, %.lr.ph40 ], [ %ind.end43, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %59, %scalar.ph.preheader
  %.139 = phi ptr [ %60, %59 ], [ %.139.ph, %scalar.ph.preheader ]
  %.13538 = phi i32 [ %61, %59 ], [ %.13538.ph, %scalar.ph.preheader ]
  %53 = load i8, ptr %.139, align 1
  %54 = icmp ult i8 %53, 8
  br i1 %54, label %55, label %59

55:                                               ; preds = %scalar.ph
  %56 = ptrtoint ptr %.139 to i64
  %57 = sub i64 %56, %32
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  store i8 0, ptr %58, align 1
  br label %59

59:                                               ; preds = %55, %scalar.ph
  %60 = getelementptr inbounds i8, ptr %.139, i64 1
  %61 = add nuw nsw i32 %.13538, 1
  %exitcond41.not = icmp eq i32 %61, %8
  br i1 %exitcond41.not, label %._crit_edge, label %scalar.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %59, %middle.block, %.loopexit, %.preheader
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @susan_thin(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = add nsw i32 %3, -4
  %6 = icmp sgt i32 %3, 8
  br i1 %6, label %.preheader423.lr.ph, label %._crit_edge441

.preheader423.lr.ph:                              ; preds = %4
  %7 = add nsw i32 %2, -4
  %8 = icmp sgt i32 %2, 8
  %9 = sext i32 %2 to i64
  br label %.preheader423

.preheader423:                                    ; preds = %._crit_edge, %.preheader423.lr.ph
  %.0367440 = phi i32 [ 4, %.preheader423.lr.ph ], [ %493, %._crit_edge ]
  %.0375439 = phi i32 [ undef, %.preheader423.lr.ph ], [ %.1376.lcssa, %._crit_edge ]
  %.0380438 = phi i32 [ undef, %.preheader423.lr.ph ], [ %.1381.lcssa, %._crit_edge ]
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread409, %.preheader423
  %.0435 = phi i32 [ %491, %.thread409 ], [ 4, %.preheader423 ]
  %.1368434 = phi i32 [ %.4, %.thread409 ], [ %.0367440, %.preheader423 ]
  %.1376433 = phi i32 [ %.6, %.thread409 ], [ %.0375439, %.preheader423 ]
  %.1381432 = phi i32 [ %.6386, %.thread409 ], [ %.0380438, %.preheader423 ]
  %10 = mul nsw i32 %.1368434, %2
  %11 = add nsw i32 %10, %.0435
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1
  %15 = icmp ult i8 %14, 8
  br i1 %15, label %16, label %.thread409

16:                                               ; preds = %.lr.ph
  %17 = getelementptr inbounds i32, ptr %0, i64 %12
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %.1368434, -1
  %20 = mul nsw i32 %19, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = sext i32 %.0435 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = icmp ult i8 %26, 8
  %28 = zext i1 %27 to i32
  %29 = load i8, ptr %24, align 1
  %30 = icmp ult i8 %29, 8
  %31 = zext i1 %30 to i32
  %32 = add nuw nsw i32 %31, %28
  %33 = getelementptr inbounds i8, ptr %24, i64 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp ult i8 %34, 8
  %36 = zext i1 %35 to i32
  %37 = add nuw nsw i32 %32, %36
  %38 = getelementptr inbounds i8, ptr %25, i64 %9
  %39 = load i8, ptr %38, align 1
  %40 = icmp ult i8 %39, 8
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %37, %41
  %43 = getelementptr inbounds i8, ptr %38, i64 2
  %44 = load i8, ptr %43, align 1
  %45 = icmp ult i8 %44, 8
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %42, %46
  %48 = getelementptr inbounds i8, ptr %38, i64 %9
  %49 = load i8, ptr %48, align 1
  %50 = icmp ult i8 %49, 8
  %51 = zext i1 %50 to i32
  %52 = add nuw nsw i32 %47, %51
  %53 = getelementptr inbounds i8, ptr %48, i64 1
  %54 = load i8, ptr %53, align 1
  %55 = icmp ult i8 %54, 8
  %56 = zext i1 %55 to i32
  %57 = add nuw nsw i32 %52, %56
  %58 = getelementptr inbounds i8, ptr %48, i64 2
  %59 = load i8, ptr %58, align 1
  %60 = icmp ult i8 %59, 8
  %61 = zext i1 %60 to i32
  %62 = add nuw nsw i32 %57, %61
  switch i32 %62, label %411 [
    i32 0, label %63
    i32 1, label %64
    i32 2, label %210
  ]

63:                                               ; preds = %16
  store i8 100, ptr %13, align 1
  br label %.thread409

64:                                               ; preds = %16
  %65 = icmp ult i8 %14, 6
  br i1 %65, label %66, label %.thread409

66:                                               ; preds = %64
  %67 = add nsw i32 %20, %.0435
  %68 = add nsw i32 %67, -1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %0, i64 %69
  %71 = load i32, ptr %70, align 4
  %72 = sext i32 %67 to i64
  %73 = getelementptr inbounds i32, ptr %0, i64 %72
  %74 = load i32, ptr %73, align 4
  %75 = add nsw i32 %67, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %0, i64 %76
  %78 = load i32, ptr %77, align 4
  %79 = add nsw i32 %11, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %0, i64 %80
  %82 = load i32, ptr %81, align 4
  %83 = add nsw i32 %11, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %0, i64 %84
  %86 = load i32, ptr %85, align 4
  %87 = add nsw i32 %.1368434, 1
  %88 = mul nsw i32 %87, %2
  %89 = add nsw i32 %88, %.0435
  %90 = add nsw i32 %89, -1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %0, i64 %91
  %93 = load i32, ptr %92, align 4
  %94 = sext i32 %89 to i64
  %95 = getelementptr inbounds i32, ptr %0, i64 %94
  %96 = load i32, ptr %95, align 4
  %97 = add nsw i32 %89, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %0, i64 %98
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds i8, ptr %1, i64 %69
  %102 = load i8, ptr %101, align 1
  %103 = icmp ult i8 %102, 8
  br i1 %103, label %104, label %110

104:                                              ; preds = %66
  %105 = shl nsw i32 %78, 1
  %106 = shl nsw i32 %93, 1
  %107 = mul nsw i32 %86, 3
  %108 = mul nsw i32 %96, 3
  %109 = shl nsw i32 %100, 2
  br label %.preheader

110:                                              ; preds = %66
  %111 = getelementptr inbounds i8, ptr %1, i64 %72
  %112 = load i8, ptr %111, align 1
  %113 = icmp ult i8 %112, 8
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = shl nsw i32 %82, 1
  %116 = shl nsw i32 %86, 1
  %117 = mul nsw i32 %93, 3
  %118 = mul nsw i32 %100, 3
  %119 = shl nsw i32 %96, 2
  br label %.preheader

120:                                              ; preds = %110
  %121 = getelementptr inbounds i8, ptr %1, i64 %76
  %122 = load i8, ptr %121, align 1
  %123 = icmp ult i8 %122, 8
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = shl nsw i32 %71, 1
  %126 = shl nsw i32 %100, 1
  %127 = mul nsw i32 %82, 3
  %128 = mul nsw i32 %96, 3
  %129 = shl nsw i32 %93, 2
  br label %.preheader

130:                                              ; preds = %120
  %131 = getelementptr inbounds i8, ptr %1, i64 %80
  %132 = load i8, ptr %131, align 1
  %133 = icmp ult i8 %132, 8
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = shl nsw i32 %74, 1
  %136 = shl nsw i32 %96, 1
  %137 = mul nsw i32 %78, 3
  %138 = mul nsw i32 %100, 3
  %139 = shl nsw i32 %86, 2
  br label %.preheader

140:                                              ; preds = %130
  %141 = getelementptr inbounds i8, ptr %1, i64 %84
  %142 = load i8, ptr %141, align 1
  %143 = icmp ult i8 %142, 8
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = shl nsw i32 %74, 1
  %146 = shl nsw i32 %96, 1
  %147 = mul nsw i32 %71, 3
  %148 = mul nsw i32 %93, 3
  %149 = shl nsw i32 %82, 2
  br label %.preheader

150:                                              ; preds = %140
  %151 = getelementptr inbounds i8, ptr %1, i64 %91
  %152 = load i8, ptr %151, align 1
  %153 = icmp ult i8 %152, 8
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = shl nsw i32 %71, 1
  %156 = shl nsw i32 %100, 1
  %157 = mul nsw i32 %74, 3
  %158 = mul nsw i32 %86, 3
  %159 = shl nsw i32 %78, 2
  br label %.preheader

160:                                              ; preds = %150
  %161 = getelementptr inbounds i8, ptr %1, i64 %94
  %162 = load i8, ptr %161, align 1
  %163 = icmp ult i8 %162, 8
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = shl nsw i32 %82, 1
  %166 = shl nsw i32 %86, 1
  %167 = mul nsw i32 %71, 3
  %168 = mul nsw i32 %78, 3
  %169 = shl nsw i32 %74, 2
  br label %.preheader

170:                                              ; preds = %160
  %171 = getelementptr inbounds i8, ptr %1, i64 %98
  %172 = load i8, ptr %171, align 1
  %173 = icmp ult i8 %172, 8
  br i1 %173, label %174, label %.preheader

174:                                              ; preds = %170
  %175 = shl nsw i32 %93, 1
  %176 = shl nsw i32 %78, 1
  %177 = mul nsw i32 %74, 3
  %178 = mul nsw i32 %82, 3
  %179 = shl nsw i32 %71, 2
  br label %.preheader

.preheader:                                       ; preds = %174, %170, %164, %154, %144, %134, %124, %114, %104
  %.sroa.62.0 = phi i32 [ %108, %104 ], [ %119, %114 ], [ %128, %124 ], [ %136, %134 ], [ %146, %144 ], [ 0, %154 ], [ 0, %164 ], [ 0, %174 ], [ %96, %170 ]
  %.sroa.52.0 = phi i32 [ %106, %104 ], [ %117, %114 ], [ %129, %124 ], [ 0, %134 ], [ %148, %144 ], [ 0, %154 ], [ 0, %164 ], [ %175, %174 ], [ %93, %170 ]
  %.sroa.42.0 = phi i32 [ %107, %104 ], [ %116, %114 ], [ 0, %124 ], [ %139, %134 ], [ 0, %144 ], [ %158, %154 ], [ %166, %164 ], [ 0, %174 ], [ %86, %170 ]
  %.sroa.72.0 = phi i32 [ %109, %104 ], [ %118, %114 ], [ %126, %124 ], [ %138, %134 ], [ 0, %144 ], [ %156, %154 ], [ 0, %164 ], [ 0, %174 ], [ %100, %170 ]
  %.sroa.30.0 = phi i32 [ 0, %104 ], [ %115, %114 ], [ %127, %124 ], [ 0, %134 ], [ %149, %144 ], [ 0, %154 ], [ %165, %164 ], [ %178, %174 ], [ %82, %170 ]
  %.sroa.20.0 = phi i32 [ %105, %104 ], [ 0, %114 ], [ 0, %124 ], [ %137, %134 ], [ 0, %144 ], [ %159, %154 ], [ %168, %164 ], [ %176, %174 ], [ %78, %170 ]
  %.sroa.10.0 = phi i32 [ 0, %104 ], [ 0, %114 ], [ 0, %124 ], [ %135, %134 ], [ %145, %144 ], [ %157, %154 ], [ %169, %164 ], [ %177, %174 ], [ %74, %170 ]
  %.sroa.0.0 = phi i32 [ 0, %104 ], [ 0, %114 ], [ %125, %124 ], [ 0, %134 ], [ %147, %144 ], [ %155, %154 ], [ %167, %164 ], [ %179, %174 ], [ %71, %170 ]
  %180 = icmp sgt i32 %.sroa.0.0, 0
  %.2389 = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0, i32 0)
  %.4379 = select i1 %180, i32 0, i32 %.1376433
  %181 = icmp sgt i32 %.sroa.10.0, %.2389
  %.2389.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.10.0, i32 %.2389)
  %.4379.1 = select i1 %181, i32 1, i32 %.4379
  %182 = icmp sgt i32 %.sroa.20.0, %.2389.1
  %.2389.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.20.0, i32 %.2389.1)
  %183 = select i1 %182, i1 true, i1 %181
  %184 = select i1 %183, i1 true, i1 %180
  %.4384.2 = select i1 %184, i32 0, i32 %.1381432
  %.4379.2 = select i1 %182, i32 2, i32 %.4379.1
  %185 = icmp sgt i32 %.sroa.30.0, %.2389.2
  %.2389.1442 = tail call i32 @llvm.smax.i32(i32 %.sroa.30.0, i32 %.2389.2)
  %.4379.1444 = select i1 %185, i32 0, i32 %.4379.2
  %186 = icmp sgt i32 %.sroa.42.0, %.2389.1442
  %.2389.2.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.42.0, i32 %.2389.1442)
  %187 = select i1 %186, i1 true, i1 %185
  %.4384.2.1 = select i1 %187, i32 1, i32 %.4384.2
  %.4379.2.1 = select i1 %186, i32 2, i32 %.4379.1444
  %188 = icmp sgt i32 %.sroa.52.0, %.2389.2.1
  %.2389.2445 = tail call i32 @llvm.smax.i32(i32 %.sroa.52.0, i32 %.2389.2.1)
  %.4379.2447 = select i1 %188, i32 0, i32 %.4379.2.1
  %189 = icmp sgt i32 %.sroa.62.0, %.2389.2445
  %.2389.1.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.62.0, i32 %.2389.2445)
  %.4379.1.2 = select i1 %189, i32 1, i32 %.4379.2447
  %190 = icmp sgt i32 %.sroa.72.0, %.2389.1.2
  %.2389.2.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.72.0, i32 %.2389.1.2)
  %191 = select i1 %190, i1 true, i1 %189
  %192 = select i1 %191, i1 true, i1 %188
  %.4384.2.2 = select i1 %192, i32 2, i32 %.4384.2.1
  %.4379.2.2 = select i1 %190, i32 2, i32 %.4379.1.2
  %.not475 = icmp eq i32 %.2389.2.2, 0
  br i1 %.not475, label %.thread409, label %193

193:                                              ; preds = %.preheader
  %194 = icmp ult i8 %14, 4
  %195 = add nuw nsw i8 %14, 1
  %.sink = select i1 %194, i8 4, i8 %195
  %196 = add i32 %19, %.4384.2.2
  %197 = mul nsw i32 %196, %2
  %198 = add nsw i32 %.0435, -1
  %199 = add i32 %198, %.4379.2.2
  %200 = add i32 %199, %197
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %1, i64 %201
  store i8 %.sink, ptr %202, align 1
  %203 = shl nsw i32 %.4384.2.2, 1
  %204 = add nsw i32 %203, %.4379.2.2
  %205 = icmp slt i32 %204, 3
  br i1 %205, label %206, label %.thread409

206:                                              ; preds = %193
  %207 = add i32 %19, %.4384.2.2
  %208 = add i32 %.0435, -2
  %209 = add i32 %208, %.4379.2.2
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %207, i32 4)
  %spec.store.select3 = tail call i32 @llvm.smax.i32(i32 %209, i32 4)
  br label %.thread409

210:                                              ; preds = %16
  %211 = add nsw i32 %.1368434, -1
  %212 = mul nsw i32 %211, %2
  %213 = add nsw i32 %212, %.0435
  %214 = add nsw i32 %213, -1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, ptr %1, i64 %215
  %217 = load i8, ptr %216, align 1
  %218 = icmp ult i8 %217, 8
  %219 = zext i1 %218 to i32
  %220 = add nsw i32 %213, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, ptr %1, i64 %221
  %223 = load i8, ptr %222, align 1
  %224 = icmp ult i8 %223, 8
  %225 = zext i1 %224 to i32
  %226 = add nsw i32 %.1368434, 1
  %227 = mul nsw i32 %226, %2
  %228 = add nsw i32 %227, %.0435
  %229 = add nsw i32 %228, -1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, ptr %1, i64 %230
  %232 = load i8, ptr %231, align 1
  %233 = icmp ult i8 %232, 8
  %234 = zext i1 %233 to i32
  %235 = add nsw i32 %228, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %1, i64 %236
  %238 = load i8, ptr %237, align 1
  %239 = icmp ult i8 %238, 8
  %240 = zext i1 %239 to i32
  %241 = add nuw nsw i32 %225, %219
  %242 = add nuw nsw i32 %241, %234
  %243 = add nuw nsw i32 %242, %240
  %244 = icmp eq i32 %243, 2
  br i1 %244, label %245, label %315

245:                                              ; preds = %210
  %246 = or i32 %240, %219
  %247 = or i32 %234, %225
  %248 = and i32 %246, %247
  %.not392 = icmp eq i32 %248, 0
  br i1 %.not392, label %315, label %249

249:                                              ; preds = %245
  %not.415 = xor i1 %224, true
  br i1 %218, label %250, label %251

250:                                              ; preds = %249
  %.393 = sext i1 %not.415 to i32
  %.395 = sext i1 %224 to i32
  br label %252

251:                                              ; preds = %249
  %.399 = zext i1 %not.415 to i32
  br label %252

252:                                              ; preds = %251, %250
  %253 = phi i1 [ %224, %250 ], [ %not.415, %251 ]
  %.1374 = phi i32 [ %.393, %250 ], [ %225, %251 ]
  %254 = phi i1 [ %not.415, %250 ], [ %224, %251 ]
  %.1372 = phi i32 [ %.395, %250 ], [ %.399, %251 ]
  %255 = add nsw i32 %.1372, %.1368434
  %256 = mul nsw i32 %255, %2
  %257 = add i32 %.1374, %.0435
  %258 = add i32 %257, %256
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, ptr %0, i64 %259
  %261 = load i32, ptr %260, align 4
  %262 = sitofp i32 %261 to float
  %263 = sitofp i32 %18 to float
  %264 = fdiv float %262, %263
  %265 = fpext float %264 to double
  %266 = fcmp ogt double %265, 0x3FE6666666666666
  br i1 %266, label %267, label %.thread409

267:                                              ; preds = %252
  br i1 %253, label %268, label %289

268:                                              ; preds = %267
  %269 = shl nsw i32 %.1372, 1
  %270 = add nsw i32 %269, %.1368434
  %271 = mul nsw i32 %270, %2
  %272 = add nsw i32 %271, %.0435
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, ptr %1, i64 %273
  %275 = load i8, ptr %274, align 1
  %276 = icmp ugt i8 %275, 7
  br i1 %276, label %277, label %289

277:                                              ; preds = %268
  %278 = add nsw i32 %272, -1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, ptr %1, i64 %279
  %281 = load i8, ptr %280, align 1
  %282 = icmp ugt i8 %281, 7
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = add nsw i32 %272, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, ptr %1, i64 %285
  %287 = load i8, ptr %286, align 1
  %288 = icmp ugt i8 %287, 7
  br i1 %288, label %._crit_edge448, label %289

._crit_edge448:                                   ; preds = %283
  %.pre = mul nsw i32 %.1368434, %2
  %.pre449 = add nsw i32 %.pre, %.0435
  br label %311

289:                                              ; preds = %283, %277, %268, %267
  br i1 %254, label %290, label %.thread409

290:                                              ; preds = %289
  %291 = mul nsw i32 %.1368434, %2
  %292 = add nsw i32 %291, %.0435
  %293 = shl nsw i32 %.1374, 1
  %294 = add nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, ptr %1, i64 %295
  %297 = load i8, ptr %296, align 1
  %298 = icmp ugt i8 %297, 7
  br i1 %298, label %299, label %.thread409

299:                                              ; preds = %290
  %300 = add nsw i32 %293, %228
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, ptr %1, i64 %301
  %303 = load i8, ptr %302, align 1
  %304 = icmp ugt i8 %303, 7
  br i1 %304, label %305, label %.thread409

305:                                              ; preds = %299
  %306 = add nsw i32 %293, %213
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, ptr %1, i64 %307
  %309 = load i8, ptr %308, align 1
  %310 = icmp ugt i8 %309, 7
  br i1 %310, label %311, label %.thread409

311:                                              ; preds = %305, %._crit_edge448
  %.pre-phi450 = phi i32 [ %.pre449, %._crit_edge448 ], [ %292, %305 ]
  %312 = sext i32 %.pre-phi450 to i64
  %313 = getelementptr inbounds i8, ptr %1, i64 %312
  store i8 100, ptr %313, align 1
  %314 = getelementptr inbounds i8, ptr %1, i64 %259
  store i8 3, ptr %314, align 1
  br label %.thread409

315:                                              ; preds = %245, %210
  %316 = sext i32 %213 to i64
  %317 = getelementptr inbounds i8, ptr %1, i64 %316
  %318 = load i8, ptr %317, align 1
  %319 = icmp ult i8 %318, 8
  %320 = zext i1 %319 to i32
  %321 = mul nsw i32 %.1368434, %2
  %322 = add nsw i32 %321, %.0435
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %1, i64 %324
  %326 = load i8, ptr %325, align 1
  %327 = icmp ult i8 %326, 8
  %328 = zext i1 %327 to i32
  %329 = sext i32 %228 to i64
  %330 = getelementptr inbounds i8, ptr %1, i64 %329
  %331 = load i8, ptr %330, align 1
  %332 = icmp ult i8 %331, 8
  %333 = zext i1 %332 to i32
  %334 = add nsw i32 %322, -1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, ptr %1, i64 %335
  %337 = load i8, ptr %336, align 1
  %338 = icmp ult i8 %337, 8
  %339 = zext i1 %338 to i32
  %340 = add nuw nsw i32 %328, %320
  %341 = add nuw nsw i32 %340, %333
  %342 = add nuw nsw i32 %341, %339
  %343 = icmp eq i32 %342, 2
  br i1 %343, label %344, label %.thread409

344:                                              ; preds = %315
  %345 = or i32 %339, %328
  %346 = or i32 %333, %320
  %347 = and i32 %345, %346
  %.not = icmp eq i32 %347, 0
  br i1 %.not, label %.thread409, label %348

348:                                              ; preds = %344
  %349 = add nsw i32 %.1368434, -2
  %350 = mul nsw i32 %349, %2
  %351 = add nsw i32 %350, %.0435
  %352 = add nsw i32 %351, -1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, ptr %1, i64 %353
  %355 = load i8, ptr %354, align 1
  %356 = icmp ult i8 %355, 8
  %357 = add nsw i32 %351, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, ptr %1, i64 %358
  %360 = load i8, ptr %359, align 1
  %361 = icmp ult i8 %360, 8
  %362 = or i1 %356, %361
  %363 = and i1 %319, %362
  %364 = add nsw i32 %213, -2
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, ptr %1, i64 %365
  %367 = load i8, ptr %366, align 1
  %368 = icmp ult i8 %367, 8
  %369 = add nsw i32 %228, -2
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, ptr %1, i64 %370
  %372 = load i8, ptr %371, align 1
  %373 = icmp ult i8 %372, 8
  %374 = or i1 %368, %373
  %375 = and i1 %338, %374
  %376 = or i1 %363, %375
  %377 = add nsw i32 %213, 2
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, ptr %1, i64 %378
  %380 = load i8, ptr %379, align 1
  %381 = icmp ult i8 %380, 8
  %382 = add nsw i32 %228, 2
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, ptr %1, i64 %383
  %385 = load i8, ptr %384, align 1
  %386 = icmp ult i8 %385, 8
  %387 = or i1 %381, %386
  %388 = and i1 %327, %387
  %389 = or i1 %376, %388
  %390 = add nsw i32 %.1368434, 2
  %391 = mul nsw i32 %390, %2
  %392 = add nsw i32 %391, %.0435
  %393 = add nsw i32 %392, -1
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, ptr %1, i64 %394
  %396 = load i8, ptr %395, align 1
  %397 = icmp ult i8 %396, 8
  %398 = add nsw i32 %392, 1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, ptr %1, i64 %399
  %401 = load i8, ptr %400, align 1
  %402 = icmp ult i8 %401, 8
  %403 = or i1 %397, %402
  %404 = and i1 %332, %403
  %405 = or i1 %389, %404
  br i1 %405, label %406, label %.thread409

406:                                              ; preds = %348
  %407 = sext i32 %322 to i64
  %408 = getelementptr inbounds i8, ptr %1, i64 %407
  store i8 100, ptr %408, align 1
  %409 = tail call i32 @llvm.smax.i32(i32 %.1368434, i32 5)
  %spec.store.select1 = add nsw i32 %409, -1
  %410 = tail call i32 @llvm.smax.i32(i32 %.0435, i32 6)
  %spec.store.select4 = add nsw i32 %410, -2
  br label %.thread409

411:                                              ; preds = %16
  %412 = add nsw i32 %.1368434, -1
  %413 = mul nsw i32 %412, %2
  %414 = add nsw i32 %413, %.0435
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, ptr %1, i64 %415
  %417 = load i8, ptr %416, align 1
  %418 = icmp ult i8 %417, 8
  %419 = zext i1 %418 to i32
  %420 = mul nsw i32 %.1368434, %2
  %421 = add nsw i32 %420, %.0435
  %422 = add nsw i32 %421, 1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8, ptr %1, i64 %423
  %425 = load i8, ptr %424, align 1
  %426 = icmp ult i8 %425, 8
  %427 = zext i1 %426 to i32
  %428 = add nsw i32 %.1368434, 1
  %429 = mul nsw i32 %428, %2
  %430 = add nsw i32 %429, %.0435
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, ptr %1, i64 %431
  %433 = load i8, ptr %432, align 1
  %434 = icmp ult i8 %433, 8
  %435 = zext i1 %434 to i32
  %436 = add nsw i32 %421, -1
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, ptr %1, i64 %437
  %439 = load i8, ptr %438, align 1
  %440 = icmp ult i8 %439, 8
  %441 = zext i1 %440 to i32
  %442 = add nuw nsw i32 %427, %419
  %443 = add nuw nsw i32 %442, %435
  %444 = add nuw nsw i32 %443, %441
  %445 = icmp ugt i32 %444, 1
  br i1 %445, label %446, label %.thread409

446:                                              ; preds = %411
  %447 = add nsw i32 %414, -1
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8, ptr %1, i64 %448
  %450 = load i8, ptr %449, align 1
  %451 = icmp ult i8 %450, 8
  %452 = add nsw i32 %414, 1
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, ptr %1, i64 %453
  %455 = load i8, ptr %454, align 1
  %456 = icmp ult i8 %455, 8
  %457 = add nsw i32 %430, -1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, ptr %1, i64 %458
  %460 = load i8, ptr %459, align 1
  %461 = icmp ult i8 %460, 8
  %462 = add nsw i32 %430, 1
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, ptr %1, i64 %463
  %465 = load i8, ptr %464, align 1
  %466 = icmp ult i8 %465, 8
  %467 = or i1 %418, %451
  %468 = zext i1 %467 to i32
  %469 = or i1 %426, %456
  %470 = zext i1 %469 to i32
  %471 = or i1 %434, %466
  %472 = zext i1 %471 to i32
  %473 = or i1 %440, %461
  %474 = zext i1 %473 to i32
  %475 = and i32 %470, %419
  %476 = and i32 %472, %427
  %477 = and i32 %474, %435
  %478 = and i32 %468, %441
  %.neg420 = add nuw nsw i32 %470, %468
  %479 = add nuw nsw i32 %.neg420, %474
  %480 = add nuw nsw i32 %478, %475
  %481 = add nuw nsw i32 %479, %472
  %482 = add nuw nsw i32 %480, %477
  %483 = add nuw nsw i32 %482, %476
  %484 = sub nsw i32 %481, %483
  %485 = icmp slt i32 %484, 2
  br i1 %485, label %486, label %.thread409

486:                                              ; preds = %446
  %487 = sext i32 %421 to i64
  %488 = getelementptr inbounds i8, ptr %1, i64 %487
  store i8 100, ptr %488, align 1
  %489 = tail call i32 @llvm.smax.i32(i32 %.1368434, i32 5)
  %spec.store.select2 = add nsw i32 %489, -1
  %490 = tail call i32 @llvm.smax.i32(i32 %.0435, i32 6)
  %spec.store.select5 = add nsw i32 %490, -2
  br label %.thread409

.thread409:                                       ; preds = %486, %446, %411, %406, %348, %344, %315, %311, %305, %299, %290, %289, %252, %206, %193, %.preheader, %64, %63, %.lr.ph
  %.6386 = phi i32 [ %.1381432, %486 ], [ %.1381432, %446 ], [ %.1381432, %411 ], [ %.1381432, %.lr.ph ], [ %.1381432, %315 ], [ %.1381432, %344 ], [ %.1381432, %348 ], [ %.1381432, %406 ], [ %.1381432, %252 ], [ %.1381432, %289 ], [ %.1381432, %290 ], [ %.1381432, %299 ], [ %.1381432, %305 ], [ %.1381432, %311 ], [ %.1381432, %63 ], [ %.1381432, %64 ], [ %.4384.2.2, %206 ], [ %.4384.2.2, %.preheader ], [ %.4384.2.2, %193 ]
  %.6 = phi i32 [ %.1376433, %486 ], [ %.1376433, %446 ], [ %.1376433, %411 ], [ %.1376433, %.lr.ph ], [ %.1376433, %315 ], [ %.1376433, %344 ], [ %.1376433, %348 ], [ %.1376433, %406 ], [ %.1376433, %252 ], [ %.1376433, %289 ], [ %.1376433, %290 ], [ %.1376433, %299 ], [ %.1376433, %305 ], [ %.1376433, %311 ], [ %.1376433, %63 ], [ %.1376433, %64 ], [ %.4379.2.2, %206 ], [ %.4379.2.2, %.preheader ], [ %.4379.2.2, %193 ]
  %.4 = phi i32 [ %spec.store.select2, %486 ], [ %.1368434, %446 ], [ %.1368434, %411 ], [ %.1368434, %.lr.ph ], [ %.1368434, %315 ], [ %.1368434, %344 ], [ %.1368434, %348 ], [ %spec.store.select1, %406 ], [ %.1368434, %252 ], [ %.1368434, %289 ], [ %.1368434, %290 ], [ %.1368434, %299 ], [ %.1368434, %305 ], [ %.1368434, %311 ], [ %.1368434, %63 ], [ %.1368434, %64 ], [ %spec.store.select, %206 ], [ %.1368434, %.preheader ], [ %.1368434, %193 ]
  %.3 = phi i32 [ %spec.store.select5, %486 ], [ %.0435, %446 ], [ %.0435, %411 ], [ %.0435, %.lr.ph ], [ %.0435, %315 ], [ %.0435, %344 ], [ %.0435, %348 ], [ %spec.store.select4, %406 ], [ %.0435, %252 ], [ %.0435, %289 ], [ %.0435, %290 ], [ %.0435, %299 ], [ %.0435, %305 ], [ %.0435, %311 ], [ %.0435, %63 ], [ %.0435, %64 ], [ %spec.store.select3, %206 ], [ %.0435, %.preheader ], [ %.0435, %193 ]
  %491 = add nsw i32 %.3, 1
  %492 = icmp slt i32 %491, %7
  br i1 %492, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.thread409, %.preheader423
  %.1381.lcssa = phi i32 [ %.0380438, %.preheader423 ], [ %.6386, %.thread409 ]
  %.1376.lcssa = phi i32 [ %.0375439, %.preheader423 ], [ %.6, %.thread409 ]
  %.1368.lcssa = phi i32 [ %.0367440, %.preheader423 ], [ %.4, %.thread409 ]
  %493 = add nsw i32 %.1368.lcssa, 1
  %494 = icmp slt i32 %493, %5
  br i1 %494, label %.preheader423, label %._crit_edge441

._crit_edge441:                                   ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @susan_edges(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #14 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %6, 6
  br i1 %11, label %.preheader881.lr.ph, label %._crit_edge888

.preheader881.lr.ph:                              ; preds = %7
  %12 = add nsw i32 %6, -3
  %13 = add i32 %5, -3
  %14 = icmp sgt i32 %5, 6
  %15 = sext i32 %13 to i64
  %16 = add nsw i32 %5, -5
  %17 = sext i32 %16 to i64
  %18 = add nsw i32 %5, -6
  %19 = sext i32 %18 to i64
  %20 = sext i32 %5 to i64
  %wide.trip.count891 = zext i32 %12 to i64
  %wide.trip.count = zext i32 %13 to i64
  br label %.preheader881

.preheader881:                                    ; preds = %._crit_edge, %.preheader881.lr.ph
  %indvars.iv889 = phi i64 [ 3, %.preheader881.lr.ph ], [ %indvars.iv.next890, %._crit_edge ]
  br i1 %14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader881
  %21 = add nsw i64 %indvars.iv889, -3
  %22 = mul nsw i64 %21, %20
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = mul nsw i64 %indvars.iv889, %20
  br label %36

.preheader880:                                    ; preds = %._crit_edge
  %25 = icmp sgt i32 %6, 8
  br i1 %25, label %.preheader.lr.ph, label %._crit_edge888

.preheader.lr.ph:                                 ; preds = %.preheader880
  %26 = add nsw i32 %6, -4
  %27 = add i32 %5, -4
  %28 = icmp sgt i32 %5, 8
  %29 = add nsw i32 %5, -3
  %30 = sext i32 %29 to i64
  %31 = add nsw i32 %5, -5
  %32 = sext i32 %31 to i64
  %33 = add nsw i32 %5, -6
  %34 = sext i32 %33 to i64
  %35 = sext i32 %5 to i64
  %wide.trip.count899 = zext i32 %26 to i64
  %wide.trip.count895 = zext i32 %27 to i64
  br label %.preheader

36:                                               ; preds = %333, %.lr.ph
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next, %333 ]
  %37 = getelementptr inbounds i8, ptr %23, i64 %indvars.iv
  %38 = getelementptr inbounds i8, ptr %37, i64 -1
  %39 = add nsw i64 %indvars.iv, %24
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i8, ptr %3, i64 %42
  %44 = load i8, ptr %38, align 1
  %45 = zext i8 %44 to i64
  %46 = sub nsw i64 0, %45
  %47 = getelementptr inbounds i8, ptr %43, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %49, 100
  %51 = getelementptr inbounds i8, ptr %37, i64 1
  %52 = load i8, ptr %37, align 1
  %53 = zext i8 %52 to i64
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds i8, ptr %43, i64 %54
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %50, %57
  %59 = load i8, ptr %51, align 1
  %60 = zext i8 %59 to i64
  %61 = sub nsw i64 0, %60
  %62 = getelementptr inbounds i8, ptr %43, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %58, %64
  %66 = getelementptr inbounds i8, ptr %51, i64 %15
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  %68 = load i8, ptr %66, align 1
  %69 = zext i8 %68 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %43, i64 %70
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %65, %73
  %75 = getelementptr inbounds i8, ptr %66, i64 2
  %76 = load i8, ptr %67, align 1
  %77 = zext i8 %76 to i64
  %78 = sub nsw i64 0, %77
  %79 = getelementptr inbounds i8, ptr %43, i64 %78
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = add nuw nsw i32 %74, %81
  %83 = getelementptr inbounds i8, ptr %66, i64 3
  %84 = load i8, ptr %75, align 1
  %85 = zext i8 %84 to i64
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, ptr %43, i64 %86
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nuw nsw i32 %82, %89
  %91 = getelementptr inbounds i8, ptr %66, i64 4
  %92 = load i8, ptr %83, align 1
  %93 = zext i8 %92 to i64
  %94 = sub nsw i64 0, %93
  %95 = getelementptr inbounds i8, ptr %43, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nuw nsw i32 %90, %97
  %99 = load i8, ptr %91, align 1
  %100 = zext i8 %99 to i64
  %101 = sub nsw i64 0, %100
  %102 = getelementptr inbounds i8, ptr %43, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add nuw nsw i32 %98, %104
  %106 = getelementptr inbounds i8, ptr %91, i64 %17
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = load i8, ptr %106, align 1
  %109 = zext i8 %108 to i64
  %110 = sub nsw i64 0, %109
  %111 = getelementptr inbounds i8, ptr %43, i64 %110
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = add nuw nsw i32 %105, %113
  %115 = getelementptr inbounds i8, ptr %106, i64 2
  %116 = load i8, ptr %107, align 1
  %117 = zext i8 %116 to i64
  %118 = sub nsw i64 0, %117
  %119 = getelementptr inbounds i8, ptr %43, i64 %118
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add nuw nsw i32 %114, %121
  %123 = getelementptr inbounds i8, ptr %106, i64 3
  %124 = load i8, ptr %115, align 1
  %125 = zext i8 %124 to i64
  %126 = sub nsw i64 0, %125
  %127 = getelementptr inbounds i8, ptr %43, i64 %126
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = add nuw nsw i32 %122, %129
  %131 = getelementptr inbounds i8, ptr %106, i64 4
  %132 = load i8, ptr %123, align 1
  %133 = zext i8 %132 to i64
  %134 = sub nsw i64 0, %133
  %135 = getelementptr inbounds i8, ptr %43, i64 %134
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = add nuw nsw i32 %130, %137
  %139 = getelementptr inbounds i8, ptr %106, i64 5
  %140 = load i8, ptr %131, align 1
  %141 = zext i8 %140 to i64
  %142 = sub nsw i64 0, %141
  %143 = getelementptr inbounds i8, ptr %43, i64 %142
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = add nuw nsw i32 %138, %145
  %147 = getelementptr inbounds i8, ptr %106, i64 6
  %148 = load i8, ptr %139, align 1
  %149 = zext i8 %148 to i64
  %150 = sub nsw i64 0, %149
  %151 = getelementptr inbounds i8, ptr %43, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = add nuw nsw i32 %146, %153
  %155 = load i8, ptr %147, align 1
  %156 = zext i8 %155 to i64
  %157 = sub nsw i64 0, %156
  %158 = getelementptr inbounds i8, ptr %43, i64 %157
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = add nuw nsw i32 %154, %160
  %162 = getelementptr inbounds i8, ptr %147, i64 %19
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  %164 = load i8, ptr %162, align 1
  %165 = zext i8 %164 to i64
  %166 = sub nsw i64 0, %165
  %167 = getelementptr inbounds i8, ptr %43, i64 %166
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = add nuw nsw i32 %161, %169
  %171 = getelementptr inbounds i8, ptr %162, i64 2
  %172 = load i8, ptr %163, align 1
  %173 = zext i8 %172 to i64
  %174 = sub nsw i64 0, %173
  %175 = getelementptr inbounds i8, ptr %43, i64 %174
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = add nuw nsw i32 %170, %177
  %179 = load i8, ptr %171, align 1
  %180 = zext i8 %179 to i64
  %181 = sub nsw i64 0, %180
  %182 = getelementptr inbounds i8, ptr %43, i64 %181
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = add nuw nsw i32 %178, %184
  %186 = getelementptr inbounds i8, ptr %162, i64 4
  %187 = getelementptr inbounds i8, ptr %162, i64 5
  %188 = load i8, ptr %186, align 1
  %189 = zext i8 %188 to i64
  %190 = sub nsw i64 0, %189
  %191 = getelementptr inbounds i8, ptr %43, i64 %190
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = add nuw nsw i32 %185, %193
  %195 = getelementptr inbounds i8, ptr %162, i64 6
  %196 = load i8, ptr %187, align 1
  %197 = zext i8 %196 to i64
  %198 = sub nsw i64 0, %197
  %199 = getelementptr inbounds i8, ptr %43, i64 %198
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = add nuw nsw i32 %194, %201
  %203 = load i8, ptr %195, align 1
  %204 = zext i8 %203 to i64
  %205 = sub nsw i64 0, %204
  %206 = getelementptr inbounds i8, ptr %43, i64 %205
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = add nuw nsw i32 %202, %208
  %210 = getelementptr inbounds i8, ptr %195, i64 %19
  %211 = getelementptr inbounds i8, ptr %210, i64 1
  %212 = load i8, ptr %210, align 1
  %213 = zext i8 %212 to i64
  %214 = sub nsw i64 0, %213
  %215 = getelementptr inbounds i8, ptr %43, i64 %214
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = add nuw nsw i32 %209, %217
  %219 = getelementptr inbounds i8, ptr %210, i64 2
  %220 = load i8, ptr %211, align 1
  %221 = zext i8 %220 to i64
  %222 = sub nsw i64 0, %221
  %223 = getelementptr inbounds i8, ptr %43, i64 %222
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = add nuw nsw i32 %218, %225
  %227 = getelementptr inbounds i8, ptr %210, i64 3
  %228 = load i8, ptr %219, align 1
  %229 = zext i8 %228 to i64
  %230 = sub nsw i64 0, %229
  %231 = getelementptr inbounds i8, ptr %43, i64 %230
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i32
  %234 = add nuw nsw i32 %226, %233
  %235 = getelementptr inbounds i8, ptr %210, i64 4
  %236 = load i8, ptr %227, align 1
  %237 = zext i8 %236 to i64
  %238 = sub nsw i64 0, %237
  %239 = getelementptr inbounds i8, ptr %43, i64 %238
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = add nuw nsw i32 %234, %241
  %243 = getelementptr inbounds i8, ptr %210, i64 5
  %244 = load i8, ptr %235, align 1
  %245 = zext i8 %244 to i64
  %246 = sub nsw i64 0, %245
  %247 = getelementptr inbounds i8, ptr %43, i64 %246
  %248 = load i8, ptr %247, align 1
  %249 = zext i8 %248 to i32
  %250 = add nuw nsw i32 %242, %249
  %251 = getelementptr inbounds i8, ptr %210, i64 6
  %252 = load i8, ptr %243, align 1
  %253 = zext i8 %252 to i64
  %254 = sub nsw i64 0, %253
  %255 = getelementptr inbounds i8, ptr %43, i64 %254
  %256 = load i8, ptr %255, align 1
  %257 = zext i8 %256 to i32
  %258 = add nuw nsw i32 %250, %257
  %259 = load i8, ptr %251, align 1
  %260 = zext i8 %259 to i64
  %261 = sub nsw i64 0, %260
  %262 = getelementptr inbounds i8, ptr %43, i64 %261
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = add nuw nsw i32 %258, %264
  %266 = getelementptr inbounds i8, ptr %251, i64 %17
  %267 = getelementptr inbounds i8, ptr %266, i64 1
  %268 = load i8, ptr %266, align 1
  %269 = zext i8 %268 to i64
  %270 = sub nsw i64 0, %269
  %271 = getelementptr inbounds i8, ptr %43, i64 %270
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = add nuw nsw i32 %265, %273
  %275 = getelementptr inbounds i8, ptr %266, i64 2
  %276 = load i8, ptr %267, align 1
  %277 = zext i8 %276 to i64
  %278 = sub nsw i64 0, %277
  %279 = getelementptr inbounds i8, ptr %43, i64 %278
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = add nuw nsw i32 %274, %281
  %283 = getelementptr inbounds i8, ptr %266, i64 3
  %284 = load i8, ptr %275, align 1
  %285 = zext i8 %284 to i64
  %286 = sub nsw i64 0, %285
  %287 = getelementptr inbounds i8, ptr %43, i64 %286
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %288 to i32
  %290 = add nuw nsw i32 %282, %289
  %291 = getelementptr inbounds i8, ptr %266, i64 4
  %292 = load i8, ptr %283, align 1
  %293 = zext i8 %292 to i64
  %294 = sub nsw i64 0, %293
  %295 = getelementptr inbounds i8, ptr %43, i64 %294
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i32
  %298 = add nuw nsw i32 %290, %297
  %299 = load i8, ptr %291, align 1
  %300 = zext i8 %299 to i64
  %301 = sub nsw i64 0, %300
  %302 = getelementptr inbounds i8, ptr %43, i64 %301
  %303 = load i8, ptr %302, align 1
  %304 = zext i8 %303 to i32
  %305 = add nuw nsw i32 %298, %304
  %306 = getelementptr inbounds i8, ptr %291, i64 %15
  %307 = getelementptr inbounds i8, ptr %306, i64 1
  %308 = load i8, ptr %306, align 1
  %309 = zext i8 %308 to i64
  %310 = sub nsw i64 0, %309
  %311 = getelementptr inbounds i8, ptr %43, i64 %310
  %312 = load i8, ptr %311, align 1
  %313 = zext i8 %312 to i32
  %314 = add nuw nsw i32 %305, %313
  %315 = getelementptr inbounds i8, ptr %306, i64 2
  %316 = load i8, ptr %307, align 1
  %317 = zext i8 %316 to i64
  %318 = sub nsw i64 0, %317
  %319 = getelementptr inbounds i8, ptr %43, i64 %318
  %320 = load i8, ptr %319, align 1
  %321 = zext i8 %320 to i32
  %322 = add nuw nsw i32 %314, %321
  %323 = load i8, ptr %315, align 1
  %324 = zext i8 %323 to i64
  %325 = sub nsw i64 0, %324
  %326 = getelementptr inbounds i8, ptr %43, i64 %325
  %327 = load i8, ptr %326, align 1
  %328 = zext i8 %327 to i32
  %329 = add nuw nsw i32 %322, %328
  %.not752 = icmp sgt i32 %329, %4
  br i1 %.not752, label %333, label %330

330:                                              ; preds = %36
  %331 = sub nsw i32 %4, %329
  %332 = getelementptr inbounds i32, ptr %1, i64 %39
  store i32 %331, ptr %332, align 4
  br label %333

333:                                              ; preds = %330, %36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %36

._crit_edge:                                      ; preds = %333, %.preheader881
  %indvars.iv.next890 = add nuw nsw i64 %indvars.iv889, 1
  %exitcond892.not = icmp eq i64 %indvars.iv.next890, %wide.trip.count891
  br i1 %exitcond892.not, label %.preheader880, label %.preheader881

.preheader:                                       ; preds = %._crit_edge886, %.preheader.lr.ph
  %indvars.iv897 = phi i64 [ 4, %.preheader.lr.ph ], [ %indvars.iv.next898, %._crit_edge886 ]
  br i1 %28, label %.lr.ph885, label %._crit_edge886

.lr.ph885:                                        ; preds = %.preheader
  %334 = mul nsw i64 %indvars.iv897, %35
  %335 = add nsw i64 %indvars.iv897, -3
  %336 = mul nsw i64 %335, %35
  %337 = getelementptr inbounds i8, ptr %0, i64 %336
  %338 = trunc i64 %indvars.iv897 to i32
  %339 = trunc i64 %indvars.iv897 to i32
  br label %340

340:                                              ; preds = %.critedge, %.lr.ph885
  %indvars.iv893 = phi i64 [ 4, %.lr.ph885 ], [ %indvars.iv.next894, %.critedge ]
  %341 = add nsw i64 %indvars.iv893, %334
  %342 = getelementptr inbounds i32, ptr %1, i64 %341
  %343 = load i32, ptr %342, align 4
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %.critedge

345:                                              ; preds = %340
  %346 = sub nsw i32 %4, %343
  %347 = getelementptr inbounds i8, ptr %0, i64 %341
  %348 = load i8, ptr %347, align 1
  %349 = zext i8 %348 to i64
  %350 = getelementptr inbounds i8, ptr %3, i64 %349
  %351 = icmp sgt i32 %346, 600
  br i1 %351, label %352, label %712

352:                                              ; preds = %345
  %353 = getelementptr inbounds i8, ptr %337, i64 %indvars.iv893
  %354 = getelementptr inbounds i8, ptr %353, i64 -1
  %355 = load i8, ptr %354, align 1
  %356 = zext i8 %355 to i64
  %357 = sub nsw i64 0, %356
  %358 = getelementptr inbounds i8, ptr %350, i64 %357
  %359 = load i8, ptr %358, align 1
  %360 = zext i8 %359 to i32
  %361 = getelementptr inbounds i8, ptr %353, i64 1
  %362 = load i8, ptr %353, align 1
  %363 = zext i8 %362 to i64
  %364 = sub nsw i64 0, %363
  %365 = getelementptr inbounds i8, ptr %350, i64 %364
  %366 = load i8, ptr %365, align 1
  %367 = zext i8 %366 to i32
  %.neg743744 = add nuw nsw i32 %367, %360
  %368 = load i8, ptr %361, align 1
  %369 = zext i8 %368 to i64
  %370 = sub nsw i64 0, %369
  %371 = getelementptr inbounds i8, ptr %350, i64 %370
  %372 = load i8, ptr %371, align 1
  %373 = zext i8 %372 to i32
  %.neg745746 = add nuw nsw i32 %.neg743744, %373
  %374 = getelementptr inbounds i8, ptr %361, i64 %30
  %375 = getelementptr inbounds i8, ptr %374, i64 1
  %376 = load i8, ptr %374, align 1
  %377 = zext i8 %376 to i64
  %378 = sub nsw i64 0, %377
  %379 = getelementptr inbounds i8, ptr %350, i64 %378
  %380 = load i8, ptr %379, align 1
  %381 = zext i8 %380 to i32
  %382 = getelementptr inbounds i8, ptr %374, i64 2
  %383 = load i8, ptr %375, align 1
  %384 = zext i8 %383 to i64
  %385 = sub nsw i64 0, %384
  %386 = getelementptr inbounds i8, ptr %350, i64 %385
  %387 = load i8, ptr %386, align 1
  %388 = zext i8 %387 to i32
  %389 = add nuw nsw i32 %388, %381
  %390 = getelementptr inbounds i8, ptr %374, i64 3
  %391 = load i8, ptr %382, align 1
  %392 = zext i8 %391 to i64
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds i8, ptr %350, i64 %393
  %395 = load i8, ptr %394, align 1
  %396 = zext i8 %395 to i32
  %397 = add nuw nsw i32 %389, %396
  %398 = getelementptr inbounds i8, ptr %374, i64 4
  %399 = load i8, ptr %390, align 1
  %400 = zext i8 %399 to i64
  %401 = sub nsw i64 0, %400
  %402 = getelementptr inbounds i8, ptr %350, i64 %401
  %403 = load i8, ptr %402, align 1
  %404 = zext i8 %403 to i32
  %405 = add nuw nsw i32 %397, %404
  %406 = load i8, ptr %398, align 1
  %407 = zext i8 %406 to i64
  %408 = sub nsw i64 0, %407
  %409 = getelementptr inbounds i8, ptr %350, i64 %408
  %410 = load i8, ptr %409, align 1
  %411 = zext i8 %410 to i32
  %412 = add nuw nsw i32 %405, %411
  %413 = getelementptr inbounds i8, ptr %398, i64 %32
  %414 = getelementptr inbounds i8, ptr %413, i64 1
  %415 = load i8, ptr %413, align 1
  %416 = zext i8 %415 to i64
  %417 = sub nsw i64 0, %416
  %418 = getelementptr inbounds i8, ptr %350, i64 %417
  %419 = load i8, ptr %418, align 1
  %420 = zext i8 %419 to i32
  %421 = getelementptr inbounds i8, ptr %413, i64 2
  %422 = load i8, ptr %414, align 1
  %423 = zext i8 %422 to i64
  %424 = sub nsw i64 0, %423
  %425 = getelementptr inbounds i8, ptr %350, i64 %424
  %426 = load i8, ptr %425, align 1
  %427 = zext i8 %426 to i32
  %428 = getelementptr inbounds i8, ptr %413, i64 3
  %429 = load i8, ptr %421, align 1
  %430 = zext i8 %429 to i64
  %431 = sub nsw i64 0, %430
  %432 = getelementptr inbounds i8, ptr %350, i64 %431
  %433 = load i8, ptr %432, align 1
  %434 = zext i8 %433 to i32
  %435 = getelementptr inbounds i8, ptr %413, i64 4
  %436 = load i8, ptr %428, align 1
  %437 = zext i8 %436 to i64
  %438 = sub nsw i64 0, %437
  %439 = getelementptr inbounds i8, ptr %350, i64 %438
  %440 = load i8, ptr %439, align 1
  %441 = zext i8 %440 to i32
  %442 = getelementptr inbounds i8, ptr %413, i64 5
  %443 = load i8, ptr %435, align 1
  %444 = zext i8 %443 to i64
  %445 = sub nsw i64 0, %444
  %446 = getelementptr inbounds i8, ptr %350, i64 %445
  %447 = load i8, ptr %446, align 1
  %448 = zext i8 %447 to i32
  %449 = getelementptr inbounds i8, ptr %413, i64 6
  %450 = load i8, ptr %442, align 1
  %451 = zext i8 %450 to i64
  %452 = sub nsw i64 0, %451
  %453 = getelementptr inbounds i8, ptr %350, i64 %452
  %454 = load i8, ptr %453, align 1
  %455 = zext i8 %454 to i32
  %456 = load i8, ptr %449, align 1
  %457 = zext i8 %456 to i64
  %458 = sub nsw i64 0, %457
  %459 = getelementptr inbounds i8, ptr %350, i64 %458
  %460 = load i8, ptr %459, align 1
  %461 = zext i8 %460 to i32
  %462 = getelementptr inbounds i8, ptr %449, i64 %34
  %463 = getelementptr inbounds i8, ptr %462, i64 1
  %464 = load i8, ptr %462, align 1
  %465 = zext i8 %464 to i64
  %466 = sub nsw i64 0, %465
  %467 = getelementptr inbounds i8, ptr %350, i64 %466
  %468 = load i8, ptr %467, align 1
  %469 = zext i8 %468 to i32
  %470 = getelementptr inbounds i8, ptr %462, i64 2
  %471 = load i8, ptr %463, align 1
  %472 = zext i8 %471 to i64
  %473 = sub nsw i64 0, %472
  %474 = getelementptr inbounds i8, ptr %350, i64 %473
  %475 = load i8, ptr %474, align 1
  %476 = zext i8 %475 to i32
  %477 = load i8, ptr %470, align 1
  %478 = zext i8 %477 to i64
  %479 = sub nsw i64 0, %478
  %480 = getelementptr inbounds i8, ptr %350, i64 %479
  %481 = load i8, ptr %480, align 1
  %482 = zext i8 %481 to i32
  %483 = getelementptr inbounds i8, ptr %462, i64 4
  %484 = getelementptr inbounds i8, ptr %462, i64 5
  %485 = load i8, ptr %483, align 1
  %486 = zext i8 %485 to i64
  %487 = sub nsw i64 0, %486
  %488 = getelementptr inbounds i8, ptr %350, i64 %487
  %489 = load i8, ptr %488, align 1
  %490 = zext i8 %489 to i32
  %491 = getelementptr inbounds i8, ptr %462, i64 6
  %492 = load i8, ptr %484, align 1
  %493 = zext i8 %492 to i64
  %494 = sub nsw i64 0, %493
  %495 = getelementptr inbounds i8, ptr %350, i64 %494
  %496 = load i8, ptr %495, align 1
  %497 = zext i8 %496 to i32
  %498 = load i8, ptr %491, align 1
  %499 = zext i8 %498 to i64
  %500 = sub nsw i64 0, %499
  %501 = getelementptr inbounds i8, ptr %350, i64 %500
  %502 = load i8, ptr %501, align 1
  %503 = zext i8 %502 to i32
  %504 = getelementptr inbounds i8, ptr %491, i64 %34
  %505 = getelementptr inbounds i8, ptr %504, i64 1
  %506 = load i8, ptr %504, align 1
  %507 = zext i8 %506 to i64
  %508 = sub nsw i64 0, %507
  %509 = getelementptr inbounds i8, ptr %350, i64 %508
  %510 = load i8, ptr %509, align 1
  %511 = zext i8 %510 to i32
  %512 = getelementptr inbounds i8, ptr %504, i64 2
  %513 = load i8, ptr %505, align 1
  %514 = zext i8 %513 to i64
  %515 = sub nsw i64 0, %514
  %516 = getelementptr inbounds i8, ptr %350, i64 %515
  %517 = load i8, ptr %516, align 1
  %518 = zext i8 %517 to i32
  %519 = getelementptr inbounds i8, ptr %504, i64 3
  %520 = load i8, ptr %512, align 1
  %521 = zext i8 %520 to i64
  %522 = sub nsw i64 0, %521
  %523 = getelementptr inbounds i8, ptr %350, i64 %522
  %524 = load i8, ptr %523, align 1
  %525 = zext i8 %524 to i32
  %526 = getelementptr inbounds i8, ptr %504, i64 4
  %527 = load i8, ptr %519, align 1
  %528 = zext i8 %527 to i64
  %529 = sub nsw i64 0, %528
  %530 = getelementptr inbounds i8, ptr %350, i64 %529
  %531 = load i8, ptr %530, align 1
  %532 = zext i8 %531 to i32
  %533 = getelementptr inbounds i8, ptr %504, i64 5
  %534 = load i8, ptr %526, align 1
  %535 = zext i8 %534 to i64
  %536 = sub nsw i64 0, %535
  %537 = getelementptr inbounds i8, ptr %350, i64 %536
  %538 = load i8, ptr %537, align 1
  %539 = zext i8 %538 to i32
  %540 = getelementptr inbounds i8, ptr %504, i64 6
  %541 = load i8, ptr %533, align 1
  %542 = zext i8 %541 to i64
  %543 = sub nsw i64 0, %542
  %544 = getelementptr inbounds i8, ptr %350, i64 %543
  %545 = load i8, ptr %544, align 1
  %546 = zext i8 %545 to i32
  %547 = load i8, ptr %540, align 1
  %548 = zext i8 %547 to i64
  %549 = sub nsw i64 0, %548
  %550 = getelementptr inbounds i8, ptr %350, i64 %549
  %551 = load i8, ptr %550, align 1
  %552 = zext i8 %551 to i32
  %553 = getelementptr inbounds i8, ptr %540, i64 %32
  %554 = getelementptr inbounds i8, ptr %553, i64 1
  %555 = load i8, ptr %553, align 1
  %556 = zext i8 %555 to i64
  %557 = sub nsw i64 0, %556
  %558 = getelementptr inbounds i8, ptr %350, i64 %557
  %559 = load i8, ptr %558, align 1
  %560 = zext i8 %559 to i32
  %561 = shl nuw nsw i32 %560, 1
  %562 = getelementptr inbounds i8, ptr %553, i64 2
  %563 = load i8, ptr %554, align 1
  %564 = zext i8 %563 to i64
  %565 = sub nsw i64 0, %564
  %566 = getelementptr inbounds i8, ptr %350, i64 %565
  %567 = load i8, ptr %566, align 1
  %568 = zext i8 %567 to i32
  %569 = getelementptr inbounds i8, ptr %553, i64 3
  %570 = load i8, ptr %562, align 1
  %571 = zext i8 %570 to i64
  %572 = sub nsw i64 0, %571
  %573 = getelementptr inbounds i8, ptr %350, i64 %572
  %574 = load i8, ptr %573, align 1
  %575 = zext i8 %574 to i32
  %576 = getelementptr inbounds i8, ptr %553, i64 4
  %577 = load i8, ptr %569, align 1
  %578 = zext i8 %577 to i64
  %579 = sub nsw i64 0, %578
  %580 = getelementptr inbounds i8, ptr %350, i64 %579
  %581 = load i8, ptr %580, align 1
  %582 = zext i8 %581 to i32
  %583 = load i8, ptr %576, align 1
  %584 = zext i8 %583 to i64
  %585 = sub nsw i64 0, %584
  %586 = getelementptr inbounds i8, ptr %350, i64 %585
  %587 = load i8, ptr %586, align 1
  %588 = zext i8 %587 to i32
  %589 = shl nuw nsw i32 %588, 1
  %590 = getelementptr inbounds i8, ptr %576, i64 %30
  %591 = getelementptr inbounds i8, ptr %590, i64 1
  %592 = load i8, ptr %590, align 1
  %593 = zext i8 %592 to i64
  %594 = sub nsw i64 0, %593
  %595 = getelementptr inbounds i8, ptr %350, i64 %594
  %596 = load i8, ptr %595, align 1
  %597 = zext i8 %596 to i32
  %598 = getelementptr inbounds i8, ptr %590, i64 2
  %599 = load i8, ptr %591, align 1
  %600 = zext i8 %599 to i64
  %601 = sub nsw i64 0, %600
  %602 = getelementptr inbounds i8, ptr %350, i64 %601
  %603 = load i8, ptr %602, align 1
  %604 = zext i8 %603 to i32
  %605 = load i8, ptr %598, align 1
  %606 = zext i8 %605 to i64
  %607 = sub nsw i64 0, %606
  %608 = getelementptr inbounds i8, ptr %350, i64 %607
  %609 = load i8, ptr %608, align 1
  %610 = zext i8 %609 to i32
  %611 = add nuw nsw i32 %420, %469
  %612 = add nuw nsw i32 %461, %503
  %613 = add nuw nsw i32 %611, %511
  %reass.add794 = sub nsw i32 %612, %613
  %reass.add795 = add nsw i32 %reass.add794, %552
  %reass.mul = mul nsw i32 %reass.add795, 3
  %614 = add nuw nsw i32 %381, %427
  %615 = add nuw nsw i32 %411, %455
  %616 = add nuw nsw i32 %614, %476
  %617 = add nuw nsw i32 %615, %497
  %618 = add nuw nsw i32 %616, %518
  %reass.add814 = sub nsw i32 %617, %618
  %reass.add815 = add nsw i32 %reass.add814, %546
  %reass.mul816 = shl nsw i32 %reass.add815, 1
  %619 = add nuw nsw i32 %360, %388
  %620 = add nuw nsw i32 %373, %404
  %621 = add nuw nsw i32 %619, %434
  %622 = add nuw nsw i32 %620, %448
  %623 = add nuw nsw i32 %621, %482
  %624 = add nuw nsw i32 %622, %490
  %625 = add nuw nsw i32 %623, %525
  %626 = add nuw nsw i32 %624, %539
  %627 = add nuw nsw i32 %625, %561
  %628 = add nuw nsw i32 %627, %568
  %629 = sub nsw i32 %626, %628
  %630 = add nsw i32 %629, %reass.mul
  %631 = add i32 %630, %reass.mul816
  %632 = add i32 %631, %582
  %633 = add i32 %632, %589
  %634 = sub i32 %633, %597
  %635 = add i32 %634, %610
  %reass.add801 = sub nsw i32 %597, %.neg745746
  %reass.add802 = add nsw i32 %reass.add801, %604
  %reass.add803 = add nsw i32 %reass.add802, %610
  %reass.mul804 = mul nsw i32 %reass.add803, 3
  %reass.add805 = sub nsw i32 %568, %412
  %reass.add806 = add nsw i32 %reass.add805, %575
  %reass.add818 = add nsw i32 %reass.add806, %582
  %reass.mul819 = shl nsw i32 %reass.add818, 1
  %636 = add nuw nsw i32 %427, %420
  %637 = add nuw nsw i32 %636, %434
  %638 = add nuw nsw i32 %637, %441
  %639 = add nuw nsw i32 %638, %448
  %640 = add nuw nsw i32 %639, %455
  %641 = add nuw nsw i32 %640, %461
  %642 = sub nsw i32 %511, %641
  %643 = add nsw i32 %642, %518
  %644 = add nsw i32 %643, %525
  %645 = add nsw i32 %644, %532
  %646 = add nsw i32 %645, %539
  %647 = add nsw i32 %646, %546
  %648 = add nsw i32 %647, %552
  %649 = add nsw i32 %648, %561
  %650 = add nsw i32 %649, %589
  %651 = add i32 %650, %reass.mul819
  %652 = add i32 %651, %reass.mul804
  %653 = mul nsw i32 %635, %635
  %654 = mul nsw i32 %652, %652
  %655 = add nuw nsw i32 %654, %653
  %656 = sitofp i32 %655 to float
  %sqrtf = tail call float @sqrtf(float noundef %656) #7
  %657 = fpext float %sqrtf to double
  %658 = sitofp i32 %346 to float
  %659 = fpext float %658 to double
  %660 = fmul double %659, 9.000000e-01
  %661 = fcmp olt double %660, %657
  br i1 %661, label %662, label %712

662:                                              ; preds = %352
  %663 = icmp eq i32 %635, 0
  br i1 %663, label %668, label %664

664:                                              ; preds = %662
  %665 = sitofp i32 %652 to float
  %666 = sitofp i32 %635 to float
  %667 = fdiv float %665, %666
  br label %668

668:                                              ; preds = %664, %662
  %.0722 = phi float [ %667, %664 ], [ 1.000000e+06, %662 ]
  %669 = fcmp uge float %.0722, 0.000000e+00
  %670 = fneg float %.0722
  %.1723 = select i1 %669, float %.0722, float %670
  %671 = fcmp olt float %.1723, 5.000000e-01
  br i1 %671, label %675, label %672

672:                                              ; preds = %668
  %673 = fcmp ogt float %.1723, 2.000000e+00
  br i1 %673, label %675, label %674

674:                                              ; preds = %672
  %. = select i1 %669, i32 1, i32 -1
  br label %675

675:                                              ; preds = %674, %672, %668
  %.0720 = phi i32 [ 0, %668 ], [ 1, %672 ], [ %., %674 ]
  %.0719 = phi i32 [ 1, %668 ], [ 0, %672 ], [ 1, %674 ]
  %676 = add nsw i32 %.0720, %339
  %677 = mul nsw i32 %676, %5
  %678 = trunc i64 %indvars.iv893 to i32
  %679 = add nuw nsw i32 %.0719, %678
  %680 = add i32 %679, %677
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i32, ptr %1, i64 %681
  %683 = load i32, ptr %682, align 4
  %684 = icmp sgt i32 %343, %683
  br i1 %684, label %685, label %.critedge

685:                                              ; preds = %675
  %686 = sub nsw i32 %339, %.0720
  %687 = mul nsw i32 %686, %5
  %688 = sub nsw i32 %678, %.0719
  %689 = add i32 %688, %687
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i32, ptr %1, i64 %690
  %692 = load i32, ptr %691, align 4
  %.not750 = icmp slt i32 %343, %692
  br i1 %.not750, label %.critedge, label %693

693:                                              ; preds = %685
  %694 = shl nsw i32 %.0720, 1
  %695 = add nsw i32 %694, %339
  %696 = mul nsw i32 %695, %5
  %697 = shl nuw nsw i32 %.0719, 1
  %698 = add nuw i32 %697, %678
  %699 = add i32 %698, %696
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i32, ptr %1, i64 %700
  %702 = load i32, ptr %701, align 4
  %703 = icmp sgt i32 %343, %702
  br i1 %703, label %704, label %.critedge

704:                                              ; preds = %693
  %705 = sub nsw i32 %339, %694
  %706 = mul nsw i32 %705, %5
  %707 = sub nsw i32 %678, %697
  %708 = add i32 %707, %706
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i32, ptr %1, i64 %709
  %711 = load i32, ptr %710, align 4
  %.not751 = icmp slt i32 %343, %711
  br i1 %.not751, label %.critedge, label %.critedge.sink.split

712:                                              ; preds = %352, %345
  %713 = getelementptr inbounds i8, ptr %337, i64 %indvars.iv893
  %714 = getelementptr inbounds i8, ptr %713, i64 -1
  %715 = load i8, ptr %714, align 1
  %716 = zext i8 %715 to i64
  %717 = sub nsw i64 0, %716
  %718 = getelementptr inbounds i8, ptr %350, i64 %717
  %719 = load i8, ptr %718, align 1
  %720 = zext i8 %719 to i32
  %721 = getelementptr inbounds i8, ptr %713, i64 1
  %722 = load i8, ptr %713, align 1
  %723 = zext i8 %722 to i64
  %724 = sub nsw i64 0, %723
  %725 = getelementptr inbounds i8, ptr %350, i64 %724
  %726 = load i8, ptr %725, align 1
  %727 = zext i8 %726 to i32
  %728 = load i8, ptr %721, align 1
  %729 = zext i8 %728 to i64
  %730 = sub nsw i64 0, %729
  %731 = getelementptr inbounds i8, ptr %350, i64 %730
  %732 = load i8, ptr %731, align 1
  %733 = zext i8 %732 to i32
  %734 = getelementptr inbounds i8, ptr %721, i64 %30
  %735 = getelementptr inbounds i8, ptr %734, i64 1
  %736 = load i8, ptr %734, align 1
  %737 = zext i8 %736 to i64
  %738 = sub nsw i64 0, %737
  %739 = getelementptr inbounds i8, ptr %350, i64 %738
  %740 = load i8, ptr %739, align 1
  %741 = zext i8 %740 to i32
  %742 = shl nuw nsw i32 %741, 2
  %743 = getelementptr inbounds i8, ptr %734, i64 2
  %744 = load i8, ptr %735, align 1
  %745 = zext i8 %744 to i64
  %746 = sub nsw i64 0, %745
  %747 = getelementptr inbounds i8, ptr %350, i64 %746
  %748 = load i8, ptr %747, align 1
  %749 = zext i8 %748 to i32
  %750 = getelementptr inbounds i8, ptr %734, i64 3
  %751 = load i8, ptr %743, align 1
  %752 = zext i8 %751 to i64
  %753 = sub nsw i64 0, %752
  %754 = getelementptr inbounds i8, ptr %350, i64 %753
  %755 = load i8, ptr %754, align 1
  %756 = zext i8 %755 to i32
  %757 = getelementptr inbounds i8, ptr %734, i64 4
  %758 = load i8, ptr %750, align 1
  %759 = zext i8 %758 to i64
  %760 = sub nsw i64 0, %759
  %761 = getelementptr inbounds i8, ptr %350, i64 %760
  %762 = load i8, ptr %761, align 1
  %763 = zext i8 %762 to i32
  %764 = load i8, ptr %757, align 1
  %765 = zext i8 %764 to i64
  %766 = sub nsw i64 0, %765
  %767 = getelementptr inbounds i8, ptr %350, i64 %766
  %768 = load i8, ptr %767, align 1
  %769 = zext i8 %768 to i32
  %770 = shl nuw nsw i32 %769, 2
  %771 = getelementptr inbounds i8, ptr %757, i64 %32
  %772 = getelementptr inbounds i8, ptr %771, i64 1
  %773 = load i8, ptr %771, align 1
  %774 = zext i8 %773 to i64
  %775 = sub nsw i64 0, %774
  %776 = getelementptr inbounds i8, ptr %350, i64 %775
  %777 = load i8, ptr %776, align 1
  %778 = zext i8 %777 to i32
  %779 = getelementptr inbounds i8, ptr %771, i64 2
  %780 = load i8, ptr %772, align 1
  %781 = zext i8 %780 to i64
  %782 = sub nsw i64 0, %781
  %783 = getelementptr inbounds i8, ptr %350, i64 %782
  %784 = load i8, ptr %783, align 1
  %785 = zext i8 %784 to i32
  %786 = getelementptr inbounds i8, ptr %771, i64 3
  %787 = load i8, ptr %779, align 1
  %788 = zext i8 %787 to i64
  %789 = sub nsw i64 0, %788
  %790 = getelementptr inbounds i8, ptr %350, i64 %789
  %791 = load i8, ptr %790, align 1
  %792 = zext i8 %791 to i32
  %793 = getelementptr inbounds i8, ptr %771, i64 4
  %794 = load i8, ptr %786, align 1
  %795 = zext i8 %794 to i64
  %796 = sub nsw i64 0, %795
  %797 = getelementptr inbounds i8, ptr %350, i64 %796
  %798 = load i8, ptr %797, align 1
  %799 = zext i8 %798 to i32
  %800 = getelementptr inbounds i8, ptr %771, i64 5
  %801 = load i8, ptr %793, align 1
  %802 = zext i8 %801 to i64
  %803 = sub nsw i64 0, %802
  %804 = getelementptr inbounds i8, ptr %350, i64 %803
  %805 = load i8, ptr %804, align 1
  %806 = zext i8 %805 to i32
  %807 = getelementptr inbounds i8, ptr %771, i64 6
  %808 = load i8, ptr %800, align 1
  %809 = zext i8 %808 to i64
  %810 = sub nsw i64 0, %809
  %811 = getelementptr inbounds i8, ptr %350, i64 %810
  %812 = load i8, ptr %811, align 1
  %813 = zext i8 %812 to i32
  %814 = load i8, ptr %807, align 1
  %815 = zext i8 %814 to i64
  %816 = sub nsw i64 0, %815
  %817 = getelementptr inbounds i8, ptr %350, i64 %816
  %818 = load i8, ptr %817, align 1
  %819 = zext i8 %818 to i32
  %820 = getelementptr inbounds i8, ptr %807, i64 %34
  %821 = getelementptr inbounds i8, ptr %820, i64 6
  %822 = getelementptr inbounds i8, ptr %821, i64 %34
  %823 = getelementptr inbounds i8, ptr %822, i64 1
  %824 = load i8, ptr %822, align 1
  %825 = zext i8 %824 to i64
  %826 = sub nsw i64 0, %825
  %827 = getelementptr inbounds i8, ptr %350, i64 %826
  %828 = load i8, ptr %827, align 1
  %829 = zext i8 %828 to i32
  %830 = getelementptr inbounds i8, ptr %822, i64 2
  %831 = load i8, ptr %823, align 1
  %832 = zext i8 %831 to i64
  %833 = sub nsw i64 0, %832
  %834 = getelementptr inbounds i8, ptr %350, i64 %833
  %835 = load i8, ptr %834, align 1
  %836 = zext i8 %835 to i32
  %837 = getelementptr inbounds i8, ptr %822, i64 3
  %838 = load i8, ptr %830, align 1
  %839 = zext i8 %838 to i64
  %840 = sub nsw i64 0, %839
  %841 = getelementptr inbounds i8, ptr %350, i64 %840
  %842 = load i8, ptr %841, align 1
  %843 = zext i8 %842 to i32
  %844 = getelementptr inbounds i8, ptr %822, i64 4
  %845 = load i8, ptr %837, align 1
  %846 = zext i8 %845 to i64
  %847 = sub nsw i64 0, %846
  %848 = getelementptr inbounds i8, ptr %350, i64 %847
  %849 = load i8, ptr %848, align 1
  %850 = zext i8 %849 to i32
  %851 = getelementptr inbounds i8, ptr %822, i64 5
  %852 = load i8, ptr %844, align 1
  %853 = zext i8 %852 to i64
  %854 = sub nsw i64 0, %853
  %855 = getelementptr inbounds i8, ptr %350, i64 %854
  %856 = load i8, ptr %855, align 1
  %857 = zext i8 %856 to i32
  %858 = getelementptr inbounds i8, ptr %822, i64 6
  %859 = load i8, ptr %851, align 1
  %860 = zext i8 %859 to i64
  %861 = sub nsw i64 0, %860
  %862 = getelementptr inbounds i8, ptr %350, i64 %861
  %863 = load i8, ptr %862, align 1
  %864 = zext i8 %863 to i32
  %865 = load i8, ptr %858, align 1
  %866 = zext i8 %865 to i64
  %867 = sub nsw i64 0, %866
  %868 = getelementptr inbounds i8, ptr %350, i64 %867
  %869 = load i8, ptr %868, align 1
  %870 = zext i8 %869 to i32
  %871 = getelementptr inbounds i8, ptr %858, i64 %32
  %872 = getelementptr inbounds i8, ptr %871, i64 1
  %873 = load i8, ptr %871, align 1
  %874 = zext i8 %873 to i64
  %875 = sub nsw i64 0, %874
  %876 = getelementptr inbounds i8, ptr %350, i64 %875
  %877 = load i8, ptr %876, align 1
  %878 = zext i8 %877 to i32
  %879 = shl nuw nsw i32 %878, 2
  %880 = getelementptr inbounds i8, ptr %871, i64 2
  %881 = load i8, ptr %872, align 1
  %882 = zext i8 %881 to i64
  %883 = sub nsw i64 0, %882
  %884 = getelementptr inbounds i8, ptr %350, i64 %883
  %885 = load i8, ptr %884, align 1
  %886 = zext i8 %885 to i32
  %887 = getelementptr inbounds i8, ptr %871, i64 3
  %888 = load i8, ptr %880, align 1
  %889 = zext i8 %888 to i64
  %890 = sub nsw i64 0, %889
  %891 = getelementptr inbounds i8, ptr %350, i64 %890
  %892 = load i8, ptr %891, align 1
  %893 = zext i8 %892 to i32
  %894 = getelementptr inbounds i8, ptr %871, i64 4
  %895 = load i8, ptr %887, align 1
  %896 = zext i8 %895 to i64
  %897 = sub nsw i64 0, %896
  %898 = getelementptr inbounds i8, ptr %350, i64 %897
  %899 = load i8, ptr %898, align 1
  %900 = zext i8 %899 to i32
  %901 = load i8, ptr %894, align 1
  %902 = zext i8 %901 to i64
  %903 = sub nsw i64 0, %902
  %904 = getelementptr inbounds i8, ptr %350, i64 %903
  %905 = load i8, ptr %904, align 1
  %906 = zext i8 %905 to i32
  %907 = shl nuw nsw i32 %906, 2
  %908 = getelementptr inbounds i8, ptr %894, i64 %30
  %909 = getelementptr inbounds i8, ptr %908, i64 1
  %910 = load i8, ptr %908, align 1
  %911 = zext i8 %910 to i64
  %912 = sub nsw i64 0, %911
  %913 = getelementptr inbounds i8, ptr %350, i64 %912
  %914 = load i8, ptr %913, align 1
  %915 = zext i8 %914 to i32
  %916 = getelementptr inbounds i8, ptr %908, i64 2
  %917 = load i8, ptr %909, align 1
  %918 = zext i8 %917 to i64
  %919 = sub nsw i64 0, %918
  %920 = getelementptr inbounds i8, ptr %350, i64 %919
  %921 = load i8, ptr %920, align 1
  %922 = zext i8 %921 to i32
  %923 = load i8, ptr %916, align 1
  %924 = zext i8 %923 to i64
  %925 = sub nsw i64 0, %924
  %926 = getelementptr inbounds i8, ptr %350, i64 %925
  %927 = load i8, ptr %926, align 1
  %928 = zext i8 %927 to i32
  %reass.add832 = add nuw nsw i32 %756, %749
  %reass.add833 = add nuw nsw i32 %reass.add832, %763
  %reass.add834 = add nuw nsw i32 %reass.add833, %886
  %reass.add835 = add nuw nsw i32 %reass.add834, %893
  %reass.add836 = add nuw nsw i32 %reass.add835, %900
  %reass.mul837 = shl nuw nsw i32 %reass.add836, 2
  %reass.add838 = add nuw nsw i32 %727, %720
  %reass.add839 = add nuw nsw i32 %reass.add838, %733
  %929 = add nuw nsw i32 %reass.add839, %915
  %930 = add nuw nsw i32 %929, %922
  %reass.add840 = add nuw nsw i32 %930, %928
  %reass.mul841 = mul nuw nsw i32 %reass.add840, 9
  %931 = add nuw nsw i32 %770, %742
  %932 = add nuw nsw i32 %931, %778
  %933 = add nuw nsw i32 %932, %785
  %934 = add nuw nsw i32 %933, %792
  %935 = add nuw nsw i32 %934, %799
  %936 = add nuw nsw i32 %935, %806
  %937 = add nuw nsw i32 %936, %813
  %938 = add nuw nsw i32 %937, %819
  %939 = add nuw nsw i32 %938, %829
  %940 = add nuw nsw i32 %939, %836
  %941 = add nuw nsw i32 %940, %843
  %942 = add nuw nsw i32 %941, %850
  %943 = add nuw nsw i32 %942, %857
  %944 = add nuw nsw i32 %943, %864
  %945 = add nuw nsw i32 %944, %870
  %946 = add nuw nsw i32 %945, %879
  %947 = add nuw nsw i32 %946, %907
  %948 = add nuw nsw i32 %947, %reass.mul837
  %949 = add nuw nsw i32 %948, %reass.mul841
  %950 = add nuw nsw i32 %720, %778
  %951 = add nuw nsw i32 %733, %819
  %952 = add nuw nsw i32 %951, %829
  %953 = add nuw nsw i32 %950, %870
  %954 = add nuw nsw i32 %952, %915
  %reass.add851 = sub nsw i32 %953, %954
  %reass.add852 = add nsw i32 %reass.add851, %928
  %reass.mul853 = mul nsw i32 %reass.add852, 3
  %955 = add nuw nsw i32 %749, %785
  %956 = add nuw nsw i32 %763, %813
  %957 = add nuw nsw i32 %956, %836
  %958 = add nuw nsw i32 %955, %864
  %959 = add nuw nsw i32 %957, %886
  %reass.add864 = sub nsw i32 %958, %959
  %reass.add865 = add nsw i32 %reass.add864, %900
  %reass.mul866 = shl nsw i32 %reass.add865, 1
  %960 = add nuw nsw i32 %742, %792
  %961 = add nuw nsw i32 %770, %806
  %962 = add nuw nsw i32 %961, %843
  %963 = add nuw nsw i32 %960, %857
  %964 = add nuw nsw i32 %962, %879
  %965 = sub nsw i32 %963, %964
  %966 = add nsw i32 %965, %907
  %967 = add i32 %966, %reass.mul866
  %968 = add i32 %967, %reass.mul853
  %969 = icmp eq i32 %949, 0
  br i1 %969, label %.thread756, label %970

970:                                              ; preds = %712
  %971 = load i8, ptr %820, align 1
  %972 = zext i8 %971 to i64
  %973 = sub nsw i64 0, %972
  %974 = getelementptr inbounds i8, ptr %350, i64 %973
  %975 = load i8, ptr %974, align 1
  %976 = zext i8 %975 to i32
  %977 = getelementptr inbounds i8, ptr %820, i64 1
  %978 = load i8, ptr %977, align 1
  %979 = zext i8 %978 to i64
  %980 = sub nsw i64 0, %979
  %981 = getelementptr inbounds i8, ptr %350, i64 %980
  %982 = load i8, ptr %981, align 1
  %983 = zext i8 %982 to i32
  %984 = getelementptr inbounds i8, ptr %820, i64 2
  %985 = load i8, ptr %984, align 1
  %986 = zext i8 %985 to i64
  %987 = sub nsw i64 0, %986
  %988 = getelementptr inbounds i8, ptr %350, i64 %987
  %989 = load i8, ptr %988, align 1
  %990 = zext i8 %989 to i32
  %991 = getelementptr inbounds i8, ptr %820, i64 4
  %992 = load i8, ptr %991, align 1
  %993 = zext i8 %992 to i64
  %994 = sub nsw i64 0, %993
  %995 = getelementptr inbounds i8, ptr %350, i64 %994
  %996 = load i8, ptr %995, align 1
  %997 = zext i8 %996 to i32
  %998 = getelementptr inbounds i8, ptr %820, i64 5
  %999 = load i8, ptr %998, align 1
  %1000 = zext i8 %999 to i64
  %1001 = sub nsw i64 0, %1000
  %1002 = getelementptr inbounds i8, ptr %350, i64 %1001
  %1003 = load i8, ptr %1002, align 1
  %1004 = zext i8 %1003 to i32
  %1005 = load i8, ptr %821, align 1
  %1006 = zext i8 %1005 to i64
  %1007 = sub nsw i64 0, %1006
  %1008 = getelementptr inbounds i8, ptr %350, i64 %1007
  %1009 = load i8, ptr %1008, align 1
  %1010 = zext i8 %1009 to i32
  %reass.add867 = add nuw nsw i32 %813, %785
  %reass.add868 = add nuw nsw i32 %reass.add867, %836
  %reass.add869 = add nuw nsw i32 %reass.add868, %864
  %reass.add870 = add nuw nsw i32 %reass.add869, %983
  %reass.add871 = add nuw nsw i32 %reass.add870, %1004
  %reass.mul872 = shl nuw nsw i32 %reass.add871, 2
  %reass.add873 = add nuw nsw i32 %819, %778
  %reass.add874 = add nuw nsw i32 %reass.add873, %829
  %reass.add875 = add nuw nsw i32 %reass.add874, %870
  %reass.add876 = add nuw nsw i32 %reass.add875, %976
  %reass.add877 = add nuw nsw i32 %reass.add876, %1010
  %reass.mul878 = mul nuw nsw i32 %reass.add877, 9
  %1011 = add nuw nsw i32 %733, %720
  %1012 = add nuw nsw i32 %1011, %742
  %1013 = add nuw nsw i32 %1012, %749
  %1014 = add nuw nsw i32 %1013, %763
  %1015 = add nuw nsw i32 %1014, %770
  %1016 = add nuw nsw i32 %1015, %792
  %1017 = add nuw nsw i32 %1016, %806
  %1018 = add nuw nsw i32 %1017, %843
  %1019 = add nuw nsw i32 %1018, %857
  %1020 = add nuw nsw i32 %1019, %879
  %1021 = add nuw nsw i32 %1020, %886
  %1022 = add nuw nsw i32 %1021, %900
  %1023 = add nuw nsw i32 %1022, %907
  %1024 = add nuw nsw i32 %1023, %915
  %1025 = add nuw nsw i32 %1024, %928
  %1026 = add nuw nsw i32 %1025, %990
  %1027 = add nuw nsw i32 %1026, %997
  %1028 = add nuw nsw i32 %1027, %reass.mul872
  %1029 = add nuw nsw i32 %1028, %reass.mul878
  %1030 = sitofp i32 %1029 to float
  %1031 = sitofp i32 %949 to float
  %1032 = fdiv float %1030, %1031
  %1033 = fcmp olt float %1032, 5.000000e-01
  br i1 %1033, label %.thread756, label %1034

1034:                                             ; preds = %970
  %1035 = fcmp ogt float %1032, 2.000000e+00
  br i1 %1035, label %.thread756, label %1036

1036:                                             ; preds = %1034
  %.inv = icmp slt i32 %968, 1
  %.753 = select i1 %.inv, i32 1, i32 -1
  br label %.thread756

.thread756:                                       ; preds = %1036, %1034, %970, %712
  %.1721 = phi i32 [ 0, %970 ], [ 1, %1034 ], [ %.753, %1036 ], [ 1, %712 ]
  %.1 = phi i32 [ 1, %970 ], [ 0, %1034 ], [ 1, %1036 ], [ 0, %712 ]
  %1037 = add nsw i32 %.1721, %338
  %1038 = mul nsw i32 %1037, %5
  %1039 = trunc i64 %indvars.iv893 to i32
  %1040 = add nuw nsw i32 %.1, %1039
  %1041 = add i32 %1040, %1038
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds i32, ptr %1, i64 %1042
  %1044 = load i32, ptr %1043, align 4
  %1045 = icmp sgt i32 %343, %1044
  br i1 %1045, label %1046, label %.critedge

1046:                                             ; preds = %.thread756
  %1047 = sub nsw i32 %338, %.1721
  %1048 = mul nsw i32 %1047, %5
  %1049 = sub nsw i32 %1039, %.1
  %1050 = add i32 %1049, %1048
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds i32, ptr %1, i64 %1051
  %1053 = load i32, ptr %1052, align 4
  %.not = icmp slt i32 %343, %1053
  br i1 %.not, label %.critedge, label %1054

1054:                                             ; preds = %1046
  %1055 = shl nsw i32 %.1721, 1
  %1056 = add nsw i32 %1055, %338
  %1057 = mul nsw i32 %1056, %5
  %1058 = shl nuw nsw i32 %.1, 1
  %1059 = add nuw i32 %1058, %1039
  %1060 = add i32 %1059, %1057
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds i32, ptr %1, i64 %1061
  %1063 = load i32, ptr %1062, align 4
  %1064 = icmp sgt i32 %343, %1063
  br i1 %1064, label %1065, label %.critedge

1065:                                             ; preds = %1054
  %1066 = sub nsw i32 %338, %1055
  %1067 = mul nsw i32 %1066, %5
  %1068 = sub nsw i32 %1039, %1058
  %1069 = add i32 %1068, %1067
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds i32, ptr %1, i64 %1070
  %1072 = load i32, ptr %1071, align 4
  %.not741 = icmp slt i32 %343, %1072
  br i1 %.not741, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %1065, %704
  %.sink = phi i8 [ 1, %704 ], [ 2, %1065 ]
  %1073 = getelementptr inbounds i8, ptr %2, i64 %341
  store i8 %.sink, ptr %1073, align 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %1065, %1054, %1046, %.thread756, %704, %693, %685, %675, %340
  %indvars.iv.next894 = add nuw nsw i64 %indvars.iv893, 1
  %exitcond896.not = icmp eq i64 %indvars.iv.next894, %wide.trip.count895
  br i1 %exitcond896.not, label %._crit_edge886, label %340

._crit_edge886:                                   ; preds = %.critedge, %.preheader
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 1
  %exitcond900.not = icmp eq i64 %indvars.iv.next898, %wide.trip.count899
  br i1 %exitcond900.not, label %._crit_edge888, label %.preheader

._crit_edge888:                                   ; preds = %._crit_edge886, %.preheader880, %7
  ret void
}

; Function Attrs: nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @susan_edges_small(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #14 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %6, 2
  br i1 %11, label %.preheader275.lr.ph, label %._crit_edge282

.preheader275.lr.ph:                              ; preds = %7
  %12 = add nsw i32 %6, -1
  %13 = add i32 %5, -1
  %14 = icmp sgt i32 %5, 2
  %15 = add nsw i32 %5, -2
  %16 = sext i32 %15 to i64
  %17 = sext i32 %5 to i64
  %wide.trip.count285 = zext i32 %12 to i64
  %wide.trip.count = zext i32 %13 to i64
  br label %.preheader275

.preheader275:                                    ; preds = %._crit_edge, %.preheader275.lr.ph
  %indvars.iv283 = phi i64 [ 1, %.preheader275.lr.ph ], [ %indvars.iv.next284, %._crit_edge ]
  br i1 %14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader275
  %18 = add nsw i64 %indvars.iv283, -1
  %19 = mul nsw i64 %18, %17
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = mul nsw i64 %indvars.iv283, %17
  br label %28

.preheader274:                                    ; preds = %._crit_edge
  %22 = icmp sgt i32 %6, 4
  br i1 %22, label %.preheader.lr.ph, label %._crit_edge282

.preheader.lr.ph:                                 ; preds = %.preheader274
  %23 = add nsw i32 %6, -2
  %24 = add i32 %5, -2
  %25 = icmp sgt i32 %5, 4
  %26 = sext i32 %24 to i64
  %27 = sext i32 %5 to i64
  %wide.trip.count293 = zext i32 %23 to i64
  %wide.trip.count289 = zext i32 %24 to i64
  br label %.preheader

28:                                               ; preds = %102, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %102 ]
  %29 = getelementptr inbounds i8, ptr %20, i64 %indvars.iv
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = add nsw i64 %indvars.iv, %21
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i8, ptr %3, i64 %34
  %36 = load i8, ptr %30, align 1
  %37 = zext i8 %36 to i64
  %38 = sub nsw i64 0, %37
  %39 = getelementptr inbounds i8, ptr %35, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, 100
  %43 = getelementptr inbounds i8, ptr %29, i64 1
  %44 = load i8, ptr %29, align 1
  %45 = zext i8 %44 to i64
  %46 = sub nsw i64 0, %45
  %47 = getelementptr inbounds i8, ptr %35, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %42, %49
  %51 = load i8, ptr %43, align 1
  %52 = zext i8 %51 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds i8, ptr %35, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %50, %56
  %58 = getelementptr inbounds i8, ptr %43, i64 %16
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i64
  %61 = sub nsw i64 0, %60
  %62 = getelementptr inbounds i8, ptr %35, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %57, %64
  %66 = getelementptr inbounds i8, ptr %58, i64 2
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i64
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds i8, ptr %35, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %65, %72
  %74 = getelementptr inbounds i8, ptr %66, i64 %16
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  %76 = load i8, ptr %74, align 1
  %77 = zext i8 %76 to i64
  %78 = sub nsw i64 0, %77
  %79 = getelementptr inbounds i8, ptr %35, i64 %78
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = add nuw nsw i32 %73, %81
  %83 = getelementptr inbounds i8, ptr %74, i64 2
  %84 = load i8, ptr %75, align 1
  %85 = zext i8 %84 to i64
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, ptr %35, i64 %86
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nuw nsw i32 %82, %89
  %91 = load i8, ptr %83, align 1
  %92 = zext i8 %91 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, ptr %35, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nuw nsw i32 %90, %96
  %98 = icmp ult i32 %97, 731
  br i1 %98, label %99, label %102

99:                                               ; preds = %28
  %100 = sub nuw nsw i32 730, %97
  %101 = getelementptr inbounds i32, ptr %1, i64 %31
  store i32 %100, ptr %101, align 4
  br label %102

102:                                              ; preds = %99, %28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %28

._crit_edge:                                      ; preds = %102, %.preheader275
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1
  %exitcond286.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count285
  br i1 %exitcond286.not, label %.preheader274, label %.preheader275

.preheader:                                       ; preds = %._crit_edge280, %.preheader.lr.ph
  %indvars.iv291 = phi i64 [ 2, %.preheader.lr.ph ], [ %indvars.iv.next292, %._crit_edge280 ]
  br i1 %25, label %.lr.ph279, label %._crit_edge280

.lr.ph279:                                        ; preds = %.preheader
  %103 = mul nsw i64 %indvars.iv291, %27
  %104 = add nsw i64 %indvars.iv291, -1
  %105 = mul nsw i64 %104, %27
  %106 = getelementptr inbounds i8, ptr %0, i64 %105
  %107 = trunc i64 %indvars.iv291 to i32
  %108 = trunc i64 %indvars.iv291 to i32
  br label %109

109:                                              ; preds = %.critedge, %.lr.ph279
  %indvars.iv287 = phi i64 [ 2, %.lr.ph279 ], [ %indvars.iv.next288, %.critedge ]
  %110 = add nsw i64 %indvars.iv287, %103
  %111 = getelementptr inbounds i32, ptr %1, i64 %110
  %112 = load i32, ptr %111, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %.critedge

114:                                              ; preds = %109
  %115 = getelementptr inbounds i8, ptr %0, i64 %110
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds i8, ptr %3, i64 %117
  %119 = icmp ult i32 %112, 480
  br i1 %119, label %120, label %228

120:                                              ; preds = %114
  %121 = sub nuw nsw i32 730, %112
  %122 = getelementptr inbounds i8, ptr %106, i64 %indvars.iv287
  %123 = getelementptr inbounds i8, ptr %122, i64 -1
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i64
  %126 = sub nsw i64 0, %125
  %127 = getelementptr inbounds i8, ptr %118, i64 %126
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = getelementptr inbounds i8, ptr %122, i64 1
  %131 = load i8, ptr %122, align 1
  %132 = zext i8 %131 to i64
  %133 = sub nsw i64 0, %132
  %134 = getelementptr inbounds i8, ptr %118, i64 %133
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, ptr %130, align 1
  %138 = zext i8 %137 to i64
  %139 = sub nsw i64 0, %138
  %140 = getelementptr inbounds i8, ptr %118, i64 %139
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds i8, ptr %130, i64 %26
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %118, i64 %146
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds i8, ptr %143, i64 2
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i64
  %153 = sub nsw i64 0, %152
  %154 = getelementptr inbounds i8, ptr %118, i64 %153
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = getelementptr inbounds i8, ptr %150, i64 %26
  %158 = getelementptr inbounds i8, ptr %157, i64 1
  %159 = load i8, ptr %157, align 1
  %160 = zext i8 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr %118, i64 %161
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %136, %129
  %166 = add nuw nsw i32 %165, %142
  %167 = sub nsw i32 %164, %166
  %168 = getelementptr inbounds i8, ptr %157, i64 2
  %169 = load i8, ptr %158, align 1
  %170 = zext i8 %169 to i64
  %171 = sub nsw i64 0, %170
  %172 = getelementptr inbounds i8, ptr %118, i64 %171
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = add nsw i32 %167, %174
  %176 = load i8, ptr %168, align 1
  %177 = zext i8 %176 to i64
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i8, ptr %118, i64 %178
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i32
  %182 = add nuw nsw i32 %129, %149
  %183 = add nuw nsw i32 %142, %156
  %184 = add nuw nsw i32 %182, %164
  %185 = sub nsw i32 %183, %184
  %186 = add nsw i32 %185, %181
  %187 = add nsw i32 %175, %181
  %188 = mul nsw i32 %186, %186
  %189 = mul nsw i32 %187, %187
  %190 = add nuw nsw i32 %188, %189
  %191 = sitofp i32 %190 to float
  %sqrtf = tail call float @sqrtf(float noundef %191) #7
  %192 = fpext float %sqrtf to double
  %193 = sitofp i32 %121 to float
  %194 = fpext float %193 to double
  %195 = fmul double %194, 4.000000e-01
  %196 = fcmp olt double %195, %192
  br i1 %196, label %197, label %228

197:                                              ; preds = %120
  %198 = icmp eq i32 %186, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %197
  %200 = sitofp i32 %187 to float
  %201 = sitofp i32 %186 to float
  %202 = fdiv float %200, %201
  br label %203

203:                                              ; preds = %199, %197
  %.0247 = phi float [ %202, %199 ], [ 1.000000e+06, %197 ]
  %204 = fcmp uge float %.0247, 0.000000e+00
  %205 = fneg float %.0247
  %.1248 = select i1 %204, float %.0247, float %205
  %206 = fcmp olt float %.1248, 5.000000e-01
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = fcmp ogt float %.1248, 2.000000e+00
  br i1 %208, label %210, label %209

209:                                              ; preds = %207
  %. = select i1 %204, i32 1, i32 -1
  br label %210

210:                                              ; preds = %209, %207, %203
  %.0240 = phi i32 [ 0, %203 ], [ 1, %207 ], [ %., %209 ]
  %.0239 = phi i32 [ 1, %203 ], [ 0, %207 ], [ 1, %209 ]
  %211 = add nsw i32 %.0240, %108
  %212 = mul nsw i32 %211, %5
  %213 = trunc i64 %indvars.iv287 to i32
  %214 = add nuw nsw i32 %.0239, %213
  %215 = add i32 %214, %212
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, ptr %1, i64 %216
  %218 = load i32, ptr %217, align 4
  %219 = icmp sgt i32 %112, %218
  br i1 %219, label %220, label %.critedge

220:                                              ; preds = %210
  %221 = sub nsw i32 %108, %.0240
  %222 = mul nsw i32 %221, %5
  %223 = sub nsw i32 %213, %.0239
  %224 = add i32 %223, %222
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, ptr %1, i64 %225
  %227 = load i32, ptr %226, align 4
  %.not257 = icmp slt i32 %112, %227
  br i1 %.not257, label %.critedge, label %.critedge.sink.split

228:                                              ; preds = %120, %114
  %229 = getelementptr inbounds i8, ptr %106, i64 %indvars.iv287
  %230 = getelementptr inbounds i8, ptr %229, i64 -1
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i64
  %233 = sub nsw i64 0, %232
  %234 = getelementptr inbounds i8, ptr %118, i64 %233
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i32
  %237 = getelementptr inbounds i8, ptr %229, i64 1
  %238 = load i8, ptr %229, align 1
  %239 = zext i8 %238 to i64
  %240 = sub nsw i64 0, %239
  %241 = getelementptr inbounds i8, ptr %118, i64 %240
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i32
  %244 = load i8, ptr %237, align 1
  %245 = zext i8 %244 to i64
  %246 = sub nsw i64 0, %245
  %247 = getelementptr inbounds i8, ptr %118, i64 %246
  %248 = load i8, ptr %247, align 1
  %249 = zext i8 %248 to i32
  %250 = getelementptr inbounds i8, ptr %237, i64 %26
  %251 = getelementptr inbounds i8, ptr %250, i64 2
  %252 = getelementptr inbounds i8, ptr %251, i64 %26
  %253 = getelementptr inbounds i8, ptr %252, i64 1
  %254 = load i8, ptr %252, align 1
  %255 = zext i8 %254 to i64
  %256 = sub nsw i64 0, %255
  %257 = getelementptr inbounds i8, ptr %118, i64 %256
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  %260 = getelementptr inbounds i8, ptr %252, i64 2
  %261 = load i8, ptr %253, align 1
  %262 = zext i8 %261 to i64
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, ptr %118, i64 %263
  %265 = load i8, ptr %264, align 1
  %266 = zext i8 %265 to i32
  %267 = load i8, ptr %260, align 1
  %268 = zext i8 %267 to i64
  %269 = sub nsw i64 0, %268
  %270 = getelementptr inbounds i8, ptr %118, i64 %269
  %271 = load i8, ptr %270, align 1
  %272 = zext i8 %271 to i32
  %273 = add nuw nsw i32 %259, %249
  %274 = add nuw nsw i32 %273, %236
  %275 = add nuw nsw i32 %274, %243
  %276 = add nuw nsw i32 %275, %266
  %277 = add nuw nsw i32 %276, %272
  %.neg273 = add nuw nsw i32 %272, %236
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %.thread261, label %279

279:                                              ; preds = %228
  %280 = load i8, ptr %250, align 1
  %281 = zext i8 %280 to i64
  %282 = sub nsw i64 0, %281
  %283 = getelementptr inbounds i8, ptr %118, i64 %282
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i32
  %286 = load i8, ptr %251, align 1
  %287 = zext i8 %286 to i64
  %288 = sub nsw i64 0, %287
  %289 = getelementptr inbounds i8, ptr %118, i64 %288
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i32
  %292 = add nuw nsw i32 %274, %272
  %293 = add nuw nsw i32 %292, %285
  %294 = add nuw nsw i32 %293, %291
  %295 = sitofp i32 %294 to float
  %296 = sitofp i32 %277 to float
  %297 = fdiv float %295, %296
  %298 = fcmp olt float %297, 5.000000e-01
  br i1 %298, label %.thread261, label %299

299:                                              ; preds = %279
  %300 = fcmp ogt float %297, 2.000000e+00
  br i1 %300, label %.thread261, label %301

301:                                              ; preds = %299
  %.inv.not = icmp ugt i32 %.neg273, %273
  %.258 = select i1 %.inv.not, i32 -1, i32 1
  br label %.thread261

.thread261:                                       ; preds = %301, %299, %279, %228
  %.1241 = phi i32 [ 0, %279 ], [ 1, %299 ], [ %.258, %301 ], [ 1, %228 ]
  %.1 = phi i32 [ 1, %279 ], [ 0, %299 ], [ 1, %301 ], [ 0, %228 ]
  %302 = add nsw i32 %.1241, %107
  %303 = mul nsw i32 %302, %5
  %304 = trunc i64 %indvars.iv287 to i32
  %305 = add nuw nsw i32 %.1, %304
  %306 = add i32 %305, %303
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, ptr %1, i64 %307
  %309 = load i32, ptr %308, align 4
  %310 = icmp sgt i32 %112, %309
  br i1 %310, label %311, label %.critedge

311:                                              ; preds = %.thread261
  %312 = sub nsw i32 %107, %.1241
  %313 = mul nsw i32 %312, %5
  %314 = sub nsw i32 %304, %.1
  %315 = add i32 %314, %313
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, ptr %1, i64 %316
  %318 = load i32, ptr %317, align 4
  %.not = icmp slt i32 %112, %318
  br i1 %.not, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %311, %220
  %.sink = phi i8 [ 1, %220 ], [ 2, %311 ]
  %319 = getelementptr inbounds i8, ptr %2, i64 %110
  store i8 %.sink, ptr %319, align 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %311, %.thread261, %220, %210, %109
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1
  %exitcond290.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count289
  br i1 %exitcond290.not, label %._crit_edge280, label %109

._crit_edge280:                                   ; preds = %.critedge, %.preheader
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1
  %exitcond294.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge282, label %.preheader

._crit_edge282:                                   ; preds = %._crit_edge280, %.preheader274, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @corner_draw(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
  %5 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4
  %.not30 = icmp eq i32 %6, 7
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  %7 = icmp eq i32 %3, 0
  %8 = add nsw i32 %2, -2
  %9 = sext i32 %8 to i64
  br label %10

10:                                               ; preds = %37, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %37 ]
  %11 = phi ptr [ %1, %.lr.ph ], [ %38, %37 ]
  %12 = getelementptr inbounds %struct.anon, ptr %1, i64 %indvars.iv, i32 1
  %13 = load i32, ptr %12, align 4
  br i1 %7, label %14, label %30

14:                                               ; preds = %10
  %15 = add nsw i32 %13, -1
  %16 = mul nsw i32 %15, %2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i32, ptr %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = getelementptr inbounds i8, ptr %21, i64 -1
  store i8 -1, ptr %22, align 1
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 -1, ptr %21, align 1
  store i8 -1, ptr %23, align 1
  %24 = getelementptr inbounds i8, ptr %23, i64 %9
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 -1, ptr %24, align 1
  %26 = getelementptr inbounds i8, ptr %24, i64 2
  store i8 0, ptr %25, align 1
  store i8 -1, ptr %26, align 1
  %27 = getelementptr inbounds i8, ptr %26, i64 %9
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 -1, ptr %27, align 1
  %29 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 -1, ptr %28, align 1
  store i8 -1, ptr %29, align 1
  br label %37

30:                                               ; preds = %10
  %31 = mul nsw i32 %13, %2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load i32, ptr %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  store i8 0, ptr %36, align 1
  br label %37

37:                                               ; preds = %30, %14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %38 = getelementptr inbounds %struct.anon, ptr %1, i64 %indvars.iv.next
  %39 = getelementptr inbounds %struct.anon, ptr %1, i64 %indvars.iv.next, i32 2
  %40 = load i32, ptr %39, align 4
  %.not = icmp eq i32 %40, 7
  br i1 %.not, label %._crit_edge, label %10

._crit_edge:                                      ; preds = %37, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @susan_corners(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #21
  %12 = tail call noalias ptr @malloc(i64 noundef %10) #21
  %13 = add i32 %6, -5
  %14 = icmp sgt i32 %6, 10
  br i1 %14, label %.preheader904.lr.ph, label %._crit_edge917

.preheader904.lr.ph:                              ; preds = %7
  %15 = add i32 %5, -5
  %16 = icmp sgt i32 %5, 10
  %17 = add nsw i32 %5, -3
  %18 = sext i32 %17 to i64
  %19 = sext i32 %15 to i64
  %20 = add nsw i32 %5, -6
  %21 = sext i32 %20 to i64
  %22 = sext i32 %5 to i64
  %wide.trip.count921 = zext i32 %13 to i64
  %wide.trip.count = zext i32 %15 to i64
  br label %.preheader904

.preheader904:                                    ; preds = %._crit_edge, %.preheader904.lr.ph
  %indvars.iv919 = phi i64 [ 5, %.preheader904.lr.ph ], [ %indvars.iv.next920, %._crit_edge ]
  br i1 %16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader904
  %23 = add nsw i64 %indvars.iv919, -3
  %24 = mul nsw i64 %23, %22
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = mul nsw i64 %indvars.iv919, %22
  %27 = trunc i64 %indvars.iv919 to i32
  %28 = trunc i64 %indvars.iv919 to i32
  br label %32

.preheader903:                                    ; preds = %._crit_edge
  br i1 %14, label %.preheader.lr.ph, label %._crit_edge917

.preheader.lr.ph:                                 ; preds = %.preheader903
  %29 = add i32 %5, -5
  %30 = icmp sgt i32 %5, 10
  %31 = sext i32 %5 to i64
  %wide.trip.count929 = zext i32 %13 to i64
  %wide.trip.count925 = zext i32 %29 to i64
  br label %.preheader

32:                                               ; preds = %537, %.lr.ph
  %indvars.iv = phi i64 [ 5, %.lr.ph ], [ %indvars.iv.next, %537 ]
  %33 = getelementptr inbounds i8, ptr %25, i64 %indvars.iv
  %34 = getelementptr inbounds i8, ptr %33, i64 -1
  %35 = add nsw i64 %indvars.iv, %26
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i8, ptr %2, i64 %38
  %40 = load i8, ptr %34, align 1
  %41 = zext i8 %40 to i64
  %42 = sub nsw i64 0, %41
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %45, 100
  %47 = getelementptr inbounds i8, ptr %33, i64 1
  %48 = load i8, ptr %33, align 1
  %49 = zext i8 %48 to i64
  %50 = sub nsw i64 0, %49
  %51 = getelementptr inbounds i8, ptr %39, i64 %50
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add nuw nsw i32 %46, %53
  %55 = load i8, ptr %47, align 1
  %56 = zext i8 %55 to i64
  %57 = sub nsw i64 0, %56
  %58 = getelementptr inbounds i8, ptr %39, i64 %57
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %54, %60
  %62 = getelementptr inbounds i8, ptr %47, i64 %18
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  %64 = load i8, ptr %62, align 1
  %65 = zext i8 %64 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds i8, ptr %39, i64 %66
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nuw nsw i32 %61, %69
  %71 = getelementptr inbounds i8, ptr %62, i64 2
  %72 = load i8, ptr %63, align 1
  %73 = zext i8 %72 to i64
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i8, ptr %39, i64 %74
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %70, %77
  %79 = getelementptr inbounds i8, ptr %62, i64 3
  %80 = load i8, ptr %71, align 1
  %81 = zext i8 %80 to i64
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds i8, ptr %39, i64 %82
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nuw nsw i32 %78, %85
  %87 = getelementptr inbounds i8, ptr %62, i64 4
  %88 = load i8, ptr %79, align 1
  %89 = zext i8 %88 to i64
  %90 = sub nsw i64 0, %89
  %91 = getelementptr inbounds i8, ptr %39, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %86, %93
  %95 = load i8, ptr %87, align 1
  %96 = zext i8 %95 to i64
  %97 = sub nsw i64 0, %96
  %98 = getelementptr inbounds i8, ptr %39, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nuw nsw i32 %94, %100
  %102 = getelementptr inbounds i8, ptr %87, i64 %19
  %103 = getelementptr inbounds i8, ptr %102, i64 1
  %104 = load i8, ptr %102, align 1
  %105 = zext i8 %104 to i64
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, ptr %39, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %101, %109
  %111 = getelementptr inbounds i8, ptr %102, i64 2
  %112 = load i8, ptr %103, align 1
  %113 = zext i8 %112 to i64
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds i8, ptr %39, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = add nuw nsw i32 %110, %117
  %119 = getelementptr inbounds i8, ptr %102, i64 3
  %120 = load i8, ptr %111, align 1
  %121 = zext i8 %120 to i64
  %122 = sub nsw i64 0, %121
  %123 = getelementptr inbounds i8, ptr %39, i64 %122
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = add nuw nsw i32 %118, %125
  %127 = getelementptr inbounds i8, ptr %102, i64 4
  %128 = load i8, ptr %119, align 1
  %129 = zext i8 %128 to i64
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i8, ptr %39, i64 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %126, %133
  %135 = getelementptr inbounds i8, ptr %102, i64 5
  %136 = load i8, ptr %127, align 1
  %137 = zext i8 %136 to i64
  %138 = sub nsw i64 0, %137
  %139 = getelementptr inbounds i8, ptr %39, i64 %138
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = add nuw nsw i32 %134, %141
  %143 = getelementptr inbounds i8, ptr %102, i64 6
  %144 = load i8, ptr %135, align 1
  %145 = zext i8 %144 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %39, i64 %146
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %142, %149
  %151 = load i8, ptr %143, align 1
  %152 = zext i8 %151 to i64
  %153 = sub nsw i64 0, %152
  %154 = getelementptr inbounds i8, ptr %39, i64 %153
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = add nuw nsw i32 %150, %156
  %158 = getelementptr inbounds i8, ptr %143, i64 %21
  %159 = getelementptr inbounds i8, ptr %158, i64 1
  %160 = load i8, ptr %158, align 1
  %161 = zext i8 %160 to i64
  %162 = sub nsw i64 0, %161
  %163 = getelementptr inbounds i8, ptr %39, i64 %162
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = add nuw nsw i32 %157, %165
  %167 = getelementptr inbounds i8, ptr %158, i64 2
  %168 = load i8, ptr %159, align 1
  %169 = zext i8 %168 to i64
  %170 = sub nsw i64 0, %169
  %171 = getelementptr inbounds i8, ptr %39, i64 %170
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i32
  %174 = add nuw nsw i32 %166, %173
  %175 = load i8, ptr %167, align 1
  %176 = zext i8 %175 to i64
  %177 = sub nsw i64 0, %176
  %178 = getelementptr inbounds i8, ptr %39, i64 %177
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = add nuw nsw i32 %174, %180
  %182 = icmp slt i32 %181, %3
  br i1 %182, label %183, label %537

183:                                              ; preds = %32
  %184 = getelementptr inbounds i8, ptr %158, i64 4
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i64
  %187 = sub nsw i64 0, %186
  %188 = getelementptr inbounds i8, ptr %39, i64 %187
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i32
  %191 = add nuw nsw i32 %181, %190
  %192 = icmp slt i32 %191, %3
  br i1 %192, label %193, label %537

193:                                              ; preds = %183
  %194 = getelementptr inbounds i8, ptr %158, i64 5
  %195 = getelementptr inbounds i8, ptr %158, i64 6
  %196 = load i8, ptr %194, align 1
  %197 = zext i8 %196 to i64
  %198 = sub nsw i64 0, %197
  %199 = getelementptr inbounds i8, ptr %39, i64 %198
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = add nuw nsw i32 %191, %201
  %203 = icmp slt i32 %202, %3
  br i1 %203, label %204, label %537

204:                                              ; preds = %193
  %205 = load i8, ptr %195, align 1
  %206 = zext i8 %205 to i64
  %207 = sub nsw i64 0, %206
  %208 = getelementptr inbounds i8, ptr %39, i64 %207
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i32
  %211 = add nuw nsw i32 %202, %210
  %212 = icmp slt i32 %211, %3
  br i1 %212, label %213, label %537

213:                                              ; preds = %204
  %214 = getelementptr inbounds i8, ptr %195, i64 %21
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i64
  %217 = sub nsw i64 0, %216
  %218 = getelementptr inbounds i8, ptr %39, i64 %217
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i32
  %221 = add nuw nsw i32 %211, %220
  %222 = icmp slt i32 %221, %3
  br i1 %222, label %223, label %537

223:                                              ; preds = %213
  %224 = getelementptr inbounds i8, ptr %214, i64 1
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i64
  %227 = sub nsw i64 0, %226
  %228 = getelementptr inbounds i8, ptr %39, i64 %227
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = add nuw nsw i32 %221, %230
  %232 = icmp slt i32 %231, %3
  br i1 %232, label %233, label %537

233:                                              ; preds = %223
  %234 = getelementptr inbounds i8, ptr %214, i64 2
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i64
  %237 = sub nsw i64 0, %236
  %238 = getelementptr inbounds i8, ptr %39, i64 %237
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i32
  %241 = add nuw nsw i32 %231, %240
  %242 = icmp slt i32 %241, %3
  br i1 %242, label %243, label %537

243:                                              ; preds = %233
  %244 = getelementptr inbounds i8, ptr %214, i64 3
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i64
  %247 = sub nsw i64 0, %246
  %248 = getelementptr inbounds i8, ptr %39, i64 %247
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  %251 = add nuw nsw i32 %241, %250
  %252 = icmp slt i32 %251, %3
  br i1 %252, label %253, label %537

253:                                              ; preds = %243
  %254 = getelementptr inbounds i8, ptr %214, i64 4
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i64
  %257 = sub nsw i64 0, %256
  %258 = getelementptr inbounds i8, ptr %39, i64 %257
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i32
  %261 = add nuw nsw i32 %251, %260
  %262 = icmp slt i32 %261, %3
  br i1 %262, label %263, label %537

263:                                              ; preds = %253
  %264 = getelementptr inbounds i8, ptr %214, i64 5
  %265 = getelementptr inbounds i8, ptr %214, i64 6
  %266 = load i8, ptr %264, align 1
  %267 = zext i8 %266 to i64
  %268 = sub nsw i64 0, %267
  %269 = getelementptr inbounds i8, ptr %39, i64 %268
  %270 = load i8, ptr %269, align 1
  %271 = zext i8 %270 to i32
  %272 = add nuw nsw i32 %261, %271
  %273 = icmp slt i32 %272, %3
  br i1 %273, label %274, label %537

274:                                              ; preds = %263
  %275 = load i8, ptr %265, align 1
  %276 = zext i8 %275 to i64
  %277 = sub nsw i64 0, %276
  %278 = getelementptr inbounds i8, ptr %39, i64 %277
  %279 = load i8, ptr %278, align 1
  %280 = zext i8 %279 to i32
  %281 = add nuw nsw i32 %272, %280
  %282 = icmp slt i32 %281, %3
  br i1 %282, label %283, label %537

283:                                              ; preds = %274
  %284 = getelementptr inbounds i8, ptr %265, i64 %19
  %285 = load i8, ptr %284, align 1
  %286 = zext i8 %285 to i64
  %287 = sub nsw i64 0, %286
  %288 = getelementptr inbounds i8, ptr %39, i64 %287
  %289 = load i8, ptr %288, align 1
  %290 = zext i8 %289 to i32
  %291 = add nuw nsw i32 %281, %290
  %292 = icmp slt i32 %291, %3
  br i1 %292, label %293, label %537

293:                                              ; preds = %283
  %294 = getelementptr inbounds i8, ptr %284, i64 1
  %295 = load i8, ptr %294, align 1
  %296 = zext i8 %295 to i64
  %297 = sub nsw i64 0, %296
  %298 = getelementptr inbounds i8, ptr %39, i64 %297
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  %301 = add nuw nsw i32 %291, %300
  %302 = icmp slt i32 %301, %3
  br i1 %302, label %303, label %537

303:                                              ; preds = %293
  %304 = getelementptr inbounds i8, ptr %284, i64 2
  %305 = load i8, ptr %304, align 1
  %306 = zext i8 %305 to i64
  %307 = sub nsw i64 0, %306
  %308 = getelementptr inbounds i8, ptr %39, i64 %307
  %309 = load i8, ptr %308, align 1
  %310 = zext i8 %309 to i32
  %311 = add nuw nsw i32 %301, %310
  %312 = icmp slt i32 %311, %3
  br i1 %312, label %313, label %537

313:                                              ; preds = %303
  %314 = getelementptr inbounds i8, ptr %284, i64 3
  %315 = getelementptr inbounds i8, ptr %284, i64 4
  %316 = load i8, ptr %314, align 1
  %317 = zext i8 %316 to i64
  %318 = sub nsw i64 0, %317
  %319 = getelementptr inbounds i8, ptr %39, i64 %318
  %320 = load i8, ptr %319, align 1
  %321 = zext i8 %320 to i32
  %322 = add nuw nsw i32 %311, %321
  %323 = icmp slt i32 %322, %3
  br i1 %323, label %324, label %537

324:                                              ; preds = %313
  %325 = load i8, ptr %315, align 1
  %326 = zext i8 %325 to i64
  %327 = sub nsw i64 0, %326
  %328 = getelementptr inbounds i8, ptr %39, i64 %327
  %329 = load i8, ptr %328, align 1
  %330 = zext i8 %329 to i32
  %331 = add nuw nsw i32 %322, %330
  %332 = icmp slt i32 %331, %3
  br i1 %332, label %333, label %537

333:                                              ; preds = %324
  %334 = getelementptr inbounds i8, ptr %315, i64 %18
  %335 = load i8, ptr %334, align 1
  %336 = zext i8 %335 to i64
  %337 = sub nsw i64 0, %336
  %338 = getelementptr inbounds i8, ptr %39, i64 %337
  %339 = load i8, ptr %338, align 1
  %340 = zext i8 %339 to i32
  %341 = add nuw nsw i32 %331, %340
  %342 = icmp slt i32 %341, %3
  br i1 %342, label %343, label %537

343:                                              ; preds = %333
  %344 = getelementptr inbounds i8, ptr %334, i64 1
  %345 = load i8, ptr %344, align 1
  %346 = zext i8 %345 to i64
  %347 = sub nsw i64 0, %346
  %348 = getelementptr inbounds i8, ptr %39, i64 %347
  %349 = load i8, ptr %348, align 1
  %350 = zext i8 %349 to i32
  %351 = add nuw nsw i32 %341, %350
  %352 = icmp slt i32 %351, %3
  br i1 %352, label %353, label %537

353:                                              ; preds = %343
  %354 = getelementptr inbounds i8, ptr %334, i64 2
  %355 = load i8, ptr %354, align 1
  %356 = zext i8 %355 to i64
  %357 = sub nsw i64 0, %356
  %358 = getelementptr inbounds i8, ptr %39, i64 %357
  %359 = load i8, ptr %358, align 1
  %360 = zext i8 %359 to i32
  %361 = add nuw nsw i32 %351, %360
  %362 = icmp slt i32 %361, %3
  br i1 %362, label %363, label %537

363:                                              ; preds = %353
  %.neg828829 = add nuw nsw i32 %53, %45
  %.neg830 = add nuw nsw i32 %.neg828829, %60
  %364 = add nuw nsw i32 %77, %69
  %365 = add nuw nsw i32 %364, %85
  %366 = add nuw nsw i32 %365, %93
  %367 = add nuw nsw i32 %366, %100
  %368 = shl nuw nsw i32 %290, 1
  %369 = shl nuw nsw i32 %330, 1
  %370 = add nuw nsw i32 %109, %165
  %371 = add nuw nsw i32 %156, %210
  %372 = add nuw nsw i32 %370, %220
  %reass.add877 = sub nsw i32 %371, %372
  %reass.add878 = add nsw i32 %reass.add877, %280
  %reass.mul = mul nsw i32 %reass.add878, 3
  %373 = add nuw nsw i32 %69, %117
  %374 = add nuw nsw i32 %100, %149
  %375 = add nuw nsw i32 %373, %173
  %376 = add nuw nsw i32 %374, %201
  %377 = add nuw nsw i32 %375, %230
  %reass.add897 = sub nsw i32 %376, %377
  %reass.add898 = add nsw i32 %reass.add897, %271
  %reass.mul899 = shl nsw i32 %reass.add898, 1
  %378 = add nuw nsw i32 %45, %77
  %379 = add nuw nsw i32 %60, %93
  %380 = add nuw nsw i32 %378, %125
  %381 = add nuw nsw i32 %379, %141
  %382 = add nuw nsw i32 %380, %180
  %383 = add nuw nsw i32 %381, %190
  %384 = add nuw nsw i32 %382, %240
  %385 = sub nsw i32 %383, %384
  %386 = add nsw i32 %385, %260
  %387 = add i32 %386, %reass.mul899
  %388 = add i32 %387, %reass.mul
  %389 = add nuw nsw i32 %368, %300
  %390 = sub i32 %388, %389
  %391 = add i32 %390, %321
  %392 = add i32 %391, %369
  %393 = sub i32 %392, %340
  %394 = add i32 %393, %360
  %reass.add884 = sub nsw i32 %340, %.neg830
  %reass.add885 = add nsw i32 %reass.add884, %350
  %reass.add886 = add nsw i32 %reass.add885, %360
  %reass.mul887 = mul nsw i32 %reass.add886, 3
  %reass.add888 = sub nsw i32 %300, %367
  %reass.add889 = add nsw i32 %reass.add888, %310
  %reass.add901 = add nsw i32 %reass.add889, %321
  %reass.mul902 = shl nsw i32 %reass.add901, 1
  %395 = add nuw nsw i32 %117, %109
  %396 = add nuw nsw i32 %395, %125
  %397 = add nuw nsw i32 %396, %133
  %398 = add nuw nsw i32 %397, %141
  %399 = add nuw nsw i32 %398, %149
  %400 = add nuw nsw i32 %399, %156
  %401 = sub nsw i32 %220, %400
  %402 = add nsw i32 %401, %230
  %403 = add nsw i32 %402, %240
  %404 = add nsw i32 %403, %250
  %405 = add nsw i32 %404, %260
  %406 = add nsw i32 %405, %271
  %407 = add nsw i32 %406, %280
  %408 = add nsw i32 %407, %368
  %409 = add i32 %408, %reass.mul902
  %410 = add i32 %409, %369
  %411 = add i32 %410, %reass.mul887
  %412 = mul nsw i32 %394, %394
  %413 = mul nsw i32 %411, %411
  %414 = add nuw nsw i32 %413, %412
  %415 = mul nuw nsw i32 %361, %361
  %416 = lshr i32 %415, 1
  %417 = icmp ugt i32 %414, %416
  br i1 %417, label %418, label %537

418:                                              ; preds = %363
  %419 = icmp ult i32 %413, %412
  %420 = trunc i64 %indvars.iv to i32
  br i1 %419, label %421, label %469

421:                                              ; preds = %418
  %422 = sitofp i32 %411 to float
  %423 = tail call i32 @llvm.abs.i32(i32 %394, i1 true)
  %424 = sitofp i32 %423 to float
  %425 = fdiv float %422, %424
  %.lhs.trunc = trunc i32 %423 to i16
  %.rhs.trunc = trunc i32 %394 to i16
  %426 = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %426 to i32
  %427 = fcmp olt float %425, 0.000000e+00
  %428 = fpext float %425 to double
  %.in835.v = select i1 %427, double -5.000000e-01, double 5.000000e-01
  %.in835 = fadd double %.in835.v, %428
  %429 = fptosi double %.in835 to i32
  %430 = add nsw i32 %28, %429
  %431 = mul nsw i32 %430, %5
  %432 = add nsw i32 %431, %420
  %433 = add nsw i32 %432, %.sext
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8, ptr %0, i64 %434
  %436 = load i8, ptr %435, align 1
  %437 = zext i8 %436 to i64
  %438 = sub nsw i64 0, %437
  %439 = getelementptr inbounds i8, ptr %39, i64 %438
  %440 = load i8, ptr %439, align 1
  %441 = zext i8 %440 to i32
  %442 = fmul float %425, 2.000000e+00
  %443 = fcmp olt float %442, 0.000000e+00
  %444 = fpext float %442 to double
  %.in836.v = select i1 %443, double -5.000000e-01, double 5.000000e-01
  %.in836 = fadd double %.in836.v, %444
  %445 = fptosi double %.in836 to i32
  %446 = add nsw i32 %28, %445
  %447 = mul nsw i32 %446, %5
  %448 = add nsw i32 %447, %420
  %449 = shl nsw i32 %.sext, 1
  %450 = add nsw i32 %448, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, ptr %0, i64 %451
  %453 = load i8, ptr %452, align 1
  %454 = zext i8 %453 to i64
  %455 = sub nsw i64 0, %454
  %456 = getelementptr inbounds i8, ptr %39, i64 %455
  %457 = load i8, ptr %456, align 1
  %458 = zext i8 %457 to i32
  %459 = add nuw nsw i32 %458, %441
  %460 = fmul float %425, 3.000000e+00
  %461 = fcmp olt float %460, 0.000000e+00
  %462 = fpext float %460 to double
  %.in837.v = select i1 %461, double -5.000000e-01, double 5.000000e-01
  %.in837 = fadd double %.in837.v, %462
  %463 = fptosi double %.in837 to i32
  %464 = add nsw i32 %28, %463
  %465 = mul nsw i32 %464, %5
  %466 = add nsw i32 %465, %420
  %467 = mul nsw i32 %.sext, 3
  %468 = add nsw i32 %466, %467
  br label %517

469:                                              ; preds = %418
  %470 = sitofp i32 %394 to float
  %471 = tail call i32 @llvm.abs.i32(i32 %411, i1 true)
  %472 = sitofp i32 %471 to float
  %473 = fdiv float %470, %472
  %.lhs.trunc838 = trunc i32 %471 to i16
  %.rhs.trunc839 = trunc i32 %411 to i16
  %474 = sdiv i16 %.lhs.trunc838, %.rhs.trunc839
  %.sext840 = sext i16 %474 to i32
  %475 = add nsw i32 %27, %.sext840
  %476 = mul nsw i32 %475, %5
  %477 = fcmp olt float %473, 0.000000e+00
  %478 = fpext float %473 to double
  %.in.v = select i1 %477, double -5.000000e-01, double 5.000000e-01
  %.in = fadd double %.in.v, %478
  %479 = fptosi double %.in to i32
  %480 = add i32 %420, %479
  %481 = add i32 %480, %476
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8, ptr %0, i64 %482
  %484 = load i8, ptr %483, align 1
  %485 = zext i8 %484 to i64
  %486 = sub nsw i64 0, %485
  %487 = getelementptr inbounds i8, ptr %39, i64 %486
  %488 = load i8, ptr %487, align 1
  %489 = zext i8 %488 to i32
  %490 = shl nsw i32 %.sext840, 1
  %491 = add nsw i32 %490, %27
  %492 = mul nsw i32 %491, %5
  %493 = fmul float %473, 2.000000e+00
  %494 = fcmp olt float %493, 0.000000e+00
  %495 = fpext float %493 to double
  %.in833.v = select i1 %494, double -5.000000e-01, double 5.000000e-01
  %.in833 = fadd double %.in833.v, %495
  %496 = fptosi double %.in833 to i32
  %497 = add i32 %420, %496
  %498 = add i32 %497, %492
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8, ptr %0, i64 %499
  %501 = load i8, ptr %500, align 1
  %502 = zext i8 %501 to i64
  %503 = sub nsw i64 0, %502
  %504 = getelementptr inbounds i8, ptr %39, i64 %503
  %505 = load i8, ptr %504, align 1
  %506 = zext i8 %505 to i32
  %507 = add nuw nsw i32 %506, %489
  %508 = mul nsw i32 %.sext840, 3
  %509 = add nsw i32 %508, %27
  %510 = mul nsw i32 %509, %5
  %511 = fmul float %473, 3.000000e+00
  %512 = fcmp olt float %511, 0.000000e+00
  %513 = fpext float %511 to double
  %.in834.v = select i1 %512, double -5.000000e-01, double 5.000000e-01
  %.in834 = fadd double %.in834.v, %513
  %514 = fptosi double %.in834 to i32
  %515 = add i32 %420, %514
  %516 = add i32 %515, %510
  br label %517

517:                                              ; preds = %469, %421
  %.sink939 = phi i32 [ %516, %469 ], [ %468, %421 ]
  %.sink = phi i32 [ %507, %469 ], [ %459, %421 ]
  %518 = sext i32 %.sink939 to i64
  %519 = getelementptr inbounds i8, ptr %0, i64 %518
  %520 = load i8, ptr %519, align 1
  %521 = zext i8 %520 to i64
  %522 = sub nsw i64 0, %521
  %523 = getelementptr inbounds i8, ptr %39, i64 %522
  %524 = load i8, ptr %523, align 1
  %525 = zext i8 %524 to i32
  %526 = add nuw nsw i32 %.sink, %525
  %527 = icmp ugt i32 %526, 290
  br i1 %527, label %528, label %537

528:                                              ; preds = %517
  %529 = sub nsw i32 %3, %361
  %530 = getelementptr inbounds i32, ptr %1, i64 %35
  store i32 %529, ptr %530, align 4
  %531 = mul nsw i32 %394, 51
  %532 = sdiv i32 %531, %361
  %533 = getelementptr inbounds i32, ptr %11, i64 %35
  store i32 %532, ptr %533, align 4
  %534 = mul nsw i32 %411, 51
  %535 = sdiv i32 %534, %361
  %536 = getelementptr inbounds i32, ptr %12, i64 %35
  store i32 %535, ptr %536, align 4
  br label %537

537:                                              ; preds = %528, %517, %363, %353, %343, %333, %324, %313, %303, %293, %283, %274, %263, %253, %243, %233, %223, %213, %204, %193, %183, %32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %32

._crit_edge:                                      ; preds = %537, %.preheader904
  %indvars.iv.next920 = add nuw nsw i64 %indvars.iv919, 1
  %exitcond922.not = icmp eq i64 %indvars.iv.next920, %wide.trip.count921
  br i1 %exitcond922.not, label %.preheader903, label %.preheader904

.preheader:                                       ; preds = %._crit_edge913, %.preheader.lr.ph
  %indvars.iv927 = phi i64 [ 5, %.preheader.lr.ph ], [ %indvars.iv.next928.pre-phi, %._crit_edge913 ]
  %.0916 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge913 ]
  br i1 %30, label %.lr.ph912, label %.preheader.._crit_edge913_crit_edge

.preheader.._crit_edge913_crit_edge:              ; preds = %.preheader
  %.pre = add nuw nsw i64 %indvars.iv927, 1
  br label %._crit_edge913

.lr.ph912:                                        ; preds = %.preheader
  %538 = mul nsw i64 %indvars.iv927, %31
  %539 = add nsw i64 %indvars.iv927, -3
  %540 = mul nsw i64 %539, %31
  %541 = add nsw i64 %indvars.iv927, -2
  %542 = mul nsw i64 %541, %31
  %543 = add nsw i64 %indvars.iv927, -1
  %544 = mul nsw i64 %543, %31
  %545 = add nuw nsw i64 %indvars.iv927, 1
  %546 = mul nsw i64 %545, %31
  %547 = add nuw nsw i64 %indvars.iv927, 2
  %548 = mul nsw i64 %547, %31
  %549 = add nuw nsw i64 %indvars.iv927, 3
  %550 = mul nsw i64 %549, %31
  %551 = trunc i64 %indvars.iv927 to i32
  br label %552

552:                                              ; preds = %794, %.lr.ph912
  %indvars.iv923 = phi i64 [ 5, %.lr.ph912 ], [ %indvars.iv.next924, %794 ]
  %.1911 = phi i32 [ %.0916, %.lr.ph912 ], [ %.2, %794 ]
  %553 = add nsw i64 %indvars.iv923, %538
  %554 = getelementptr inbounds i32, ptr %1, i64 %553
  %555 = load i32, ptr %554, align 4
  %556 = icmp sgt i32 %555, 0
  br i1 %556, label %557, label %794

557:                                              ; preds = %552
  %558 = add nsw i64 %indvars.iv923, %540
  %559 = add nsw i64 %558, -3
  %560 = getelementptr inbounds i32, ptr %1, i64 %559
  %561 = load i32, ptr %560, align 4
  %562 = icmp sgt i32 %555, %561
  br i1 %562, label %563, label %794

563:                                              ; preds = %557
  %564 = add nsw i64 %558, -2
  %565 = getelementptr inbounds i32, ptr %1, i64 %564
  %566 = load i32, ptr %565, align 4
  %567 = icmp sgt i32 %555, %566
  br i1 %567, label %568, label %794

568:                                              ; preds = %563
  %569 = add nsw i64 %558, -1
  %570 = getelementptr inbounds i32, ptr %1, i64 %569
  %571 = load i32, ptr %570, align 4
  %572 = icmp sgt i32 %555, %571
  br i1 %572, label %573, label %794

573:                                              ; preds = %568
  %574 = getelementptr inbounds i32, ptr %1, i64 %558
  %575 = load i32, ptr %574, align 4
  %576 = icmp sgt i32 %555, %575
  br i1 %576, label %577, label %794

577:                                              ; preds = %573
  %578 = add nsw i64 %558, 1
  %579 = getelementptr inbounds i32, ptr %1, i64 %578
  %580 = load i32, ptr %579, align 4
  %581 = icmp sgt i32 %555, %580
  br i1 %581, label %582, label %794

582:                                              ; preds = %577
  %583 = add nsw i64 %558, 2
  %584 = getelementptr inbounds i32, ptr %1, i64 %583
  %585 = load i32, ptr %584, align 4
  %586 = icmp sgt i32 %555, %585
  br i1 %586, label %587, label %794

587:                                              ; preds = %582
  %588 = add nsw i64 %558, 3
  %589 = getelementptr inbounds i32, ptr %1, i64 %588
  %590 = load i32, ptr %589, align 4
  %591 = icmp sgt i32 %555, %590
  br i1 %591, label %592, label %794

592:                                              ; preds = %587
  %593 = add nsw i64 %indvars.iv923, %542
  %594 = add nsw i64 %593, -3
  %595 = getelementptr inbounds i32, ptr %1, i64 %594
  %596 = load i32, ptr %595, align 4
  %597 = icmp sgt i32 %555, %596
  br i1 %597, label %598, label %794

598:                                              ; preds = %592
  %599 = add nsw i64 %593, -2
  %600 = getelementptr inbounds i32, ptr %1, i64 %599
  %601 = load i32, ptr %600, align 4
  %602 = icmp sgt i32 %555, %601
  br i1 %602, label %603, label %794

603:                                              ; preds = %598
  %604 = add nsw i64 %593, -1
  %605 = getelementptr inbounds i32, ptr %1, i64 %604
  %606 = load i32, ptr %605, align 4
  %607 = icmp sgt i32 %555, %606
  br i1 %607, label %608, label %794

608:                                              ; preds = %603
  %609 = getelementptr inbounds i32, ptr %1, i64 %593
  %610 = load i32, ptr %609, align 4
  %611 = icmp sgt i32 %555, %610
  br i1 %611, label %612, label %794

612:                                              ; preds = %608
  %613 = add nsw i64 %593, 1
  %614 = getelementptr inbounds i32, ptr %1, i64 %613
  %615 = load i32, ptr %614, align 4
  %616 = icmp sgt i32 %555, %615
  br i1 %616, label %617, label %794

617:                                              ; preds = %612
  %618 = add nsw i64 %593, 2
  %619 = getelementptr inbounds i32, ptr %1, i64 %618
  %620 = load i32, ptr %619, align 4
  %621 = icmp sgt i32 %555, %620
  br i1 %621, label %622, label %794

622:                                              ; preds = %617
  %623 = add nsw i64 %593, 3
  %624 = getelementptr inbounds i32, ptr %1, i64 %623
  %625 = load i32, ptr %624, align 4
  %626 = icmp sgt i32 %555, %625
  br i1 %626, label %627, label %794

627:                                              ; preds = %622
  %628 = add nsw i64 %indvars.iv923, %544
  %629 = add nsw i64 %628, -3
  %630 = getelementptr inbounds i32, ptr %1, i64 %629
  %631 = load i32, ptr %630, align 4
  %632 = icmp sgt i32 %555, %631
  br i1 %632, label %633, label %794

633:                                              ; preds = %627
  %634 = add nsw i64 %628, -2
  %635 = getelementptr inbounds i32, ptr %1, i64 %634
  %636 = load i32, ptr %635, align 4
  %637 = icmp sgt i32 %555, %636
  br i1 %637, label %638, label %794

638:                                              ; preds = %633
  %639 = add nsw i64 %628, -1
  %640 = getelementptr inbounds i32, ptr %1, i64 %639
  %641 = load i32, ptr %640, align 4
  %642 = icmp sgt i32 %555, %641
  br i1 %642, label %643, label %794

643:                                              ; preds = %638
  %644 = getelementptr inbounds i32, ptr %1, i64 %628
  %645 = load i32, ptr %644, align 4
  %646 = icmp sgt i32 %555, %645
  br i1 %646, label %647, label %794

647:                                              ; preds = %643
  %648 = add nsw i64 %628, 1
  %649 = getelementptr inbounds i32, ptr %1, i64 %648
  %650 = load i32, ptr %649, align 4
  %651 = icmp sgt i32 %555, %650
  br i1 %651, label %652, label %794

652:                                              ; preds = %647
  %653 = add nsw i64 %628, 2
  %654 = getelementptr inbounds i32, ptr %1, i64 %653
  %655 = load i32, ptr %654, align 4
  %656 = icmp sgt i32 %555, %655
  br i1 %656, label %657, label %794

657:                                              ; preds = %652
  %658 = add nsw i64 %628, 3
  %659 = getelementptr inbounds i32, ptr %1, i64 %658
  %660 = load i32, ptr %659, align 4
  %661 = icmp sgt i32 %555, %660
  br i1 %661, label %662, label %794

662:                                              ; preds = %657
  %663 = add nsw i64 %553, -3
  %664 = getelementptr inbounds i32, ptr %1, i64 %663
  %665 = load i32, ptr %664, align 4
  %666 = icmp sgt i32 %555, %665
  br i1 %666, label %667, label %794

667:                                              ; preds = %662
  %668 = add nsw i64 %553, -2
  %669 = getelementptr inbounds i32, ptr %1, i64 %668
  %670 = load i32, ptr %669, align 4
  %671 = icmp sgt i32 %555, %670
  br i1 %671, label %672, label %794

672:                                              ; preds = %667
  %673 = add nsw i64 %553, -1
  %674 = getelementptr inbounds i32, ptr %1, i64 %673
  %675 = load i32, ptr %674, align 4
  %676 = icmp sgt i32 %555, %675
  br i1 %676, label %677, label %794

677:                                              ; preds = %672
  %678 = add nsw i64 %553, 1
  %679 = getelementptr inbounds i32, ptr %1, i64 %678
  %680 = load i32, ptr %679, align 4
  %.not = icmp slt i32 %555, %680
  br i1 %.not, label %794, label %681

681:                                              ; preds = %677
  %682 = add nsw i64 %553, 2
  %683 = getelementptr inbounds i32, ptr %1, i64 %682
  %684 = load i32, ptr %683, align 4
  %.not805 = icmp slt i32 %555, %684
  br i1 %.not805, label %794, label %685

685:                                              ; preds = %681
  %686 = add nsw i64 %553, 3
  %687 = getelementptr inbounds i32, ptr %1, i64 %686
  %688 = load i32, ptr %687, align 4
  %.not806 = icmp slt i32 %555, %688
  br i1 %.not806, label %794, label %689

689:                                              ; preds = %685
  %690 = add nsw i64 %indvars.iv923, %546
  %691 = add nsw i64 %690, -3
  %692 = getelementptr inbounds i32, ptr %1, i64 %691
  %693 = load i32, ptr %692, align 4
  %.not807 = icmp slt i32 %555, %693
  br i1 %.not807, label %794, label %694

694:                                              ; preds = %689
  %695 = add nsw i64 %690, -2
  %696 = getelementptr inbounds i32, ptr %1, i64 %695
  %697 = load i32, ptr %696, align 4
  %.not808 = icmp slt i32 %555, %697
  br i1 %.not808, label %794, label %698

698:                                              ; preds = %694
  %699 = add nsw i64 %690, -1
  %700 = getelementptr inbounds i32, ptr %1, i64 %699
  %701 = load i32, ptr %700, align 4
  %.not809 = icmp slt i32 %555, %701
  br i1 %.not809, label %794, label %702

702:                                              ; preds = %698
  %703 = getelementptr inbounds i32, ptr %1, i64 %690
  %704 = load i32, ptr %703, align 4
  %.not810 = icmp slt i32 %555, %704
  br i1 %.not810, label %794, label %705

705:                                              ; preds = %702
  %706 = add nsw i64 %690, 1
  %707 = getelementptr inbounds i32, ptr %1, i64 %706
  %708 = load i32, ptr %707, align 4
  %.not811 = icmp slt i32 %555, %708
  br i1 %.not811, label %794, label %709

709:                                              ; preds = %705
  %710 = add nsw i64 %690, 2
  %711 = getelementptr inbounds i32, ptr %1, i64 %710
  %712 = load i32, ptr %711, align 4
  %.not812 = icmp slt i32 %555, %712
  br i1 %.not812, label %794, label %713

713:                                              ; preds = %709
  %714 = add nsw i64 %690, 3
  %715 = getelementptr inbounds i32, ptr %1, i64 %714
  %716 = load i32, ptr %715, align 4
  %.not813 = icmp slt i32 %555, %716
  br i1 %.not813, label %794, label %717

717:                                              ; preds = %713
  %718 = add nsw i64 %indvars.iv923, %548
  %719 = add nsw i64 %718, -3
  %720 = getelementptr inbounds i32, ptr %1, i64 %719
  %721 = load i32, ptr %720, align 4
  %.not814 = icmp slt i32 %555, %721
  br i1 %.not814, label %794, label %722

722:                                              ; preds = %717
  %723 = add nsw i64 %718, -2
  %724 = getelementptr inbounds i32, ptr %1, i64 %723
  %725 = load i32, ptr %724, align 4
  %.not815 = icmp slt i32 %555, %725
  br i1 %.not815, label %794, label %726

726:                                              ; preds = %722
  %727 = add nsw i64 %718, -1
  %728 = getelementptr inbounds i32, ptr %1, i64 %727
  %729 = load i32, ptr %728, align 4
  %.not816 = icmp slt i32 %555, %729
  br i1 %.not816, label %794, label %730

730:                                              ; preds = %726
  %731 = getelementptr inbounds i32, ptr %1, i64 %718
  %732 = load i32, ptr %731, align 4
  %.not817 = icmp slt i32 %555, %732
  br i1 %.not817, label %794, label %733

733:                                              ; preds = %730
  %734 = add nsw i64 %718, 1
  %735 = getelementptr inbounds i32, ptr %1, i64 %734
  %736 = load i32, ptr %735, align 4
  %.not818 = icmp slt i32 %555, %736
  br i1 %.not818, label %794, label %737

737:                                              ; preds = %733
  %738 = add nsw i64 %718, 2
  %739 = getelementptr inbounds i32, ptr %1, i64 %738
  %740 = load i32, ptr %739, align 4
  %.not819 = icmp slt i32 %555, %740
  br i1 %.not819, label %794, label %741

741:                                              ; preds = %737
  %742 = add nsw i64 %718, 3
  %743 = getelementptr inbounds i32, ptr %1, i64 %742
  %744 = load i32, ptr %743, align 4
  %.not820 = icmp slt i32 %555, %744
  br i1 %.not820, label %794, label %745

745:                                              ; preds = %741
  %746 = add nsw i64 %indvars.iv923, %550
  %747 = add nsw i64 %746, -3
  %748 = getelementptr inbounds i32, ptr %1, i64 %747
  %749 = load i32, ptr %748, align 4
  %.not821 = icmp slt i32 %555, %749
  br i1 %.not821, label %794, label %750

750:                                              ; preds = %745
  %751 = add nsw i64 %746, -2
  %752 = getelementptr inbounds i32, ptr %1, i64 %751
  %753 = load i32, ptr %752, align 4
  %.not822 = icmp slt i32 %555, %753
  br i1 %.not822, label %794, label %754

754:                                              ; preds = %750
  %755 = add nsw i64 %746, -1
  %756 = getelementptr inbounds i32, ptr %1, i64 %755
  %757 = load i32, ptr %756, align 4
  %.not823 = icmp slt i32 %555, %757
  br i1 %.not823, label %794, label %758

758:                                              ; preds = %754
  %759 = getelementptr inbounds i32, ptr %1, i64 %746
  %760 = load i32, ptr %759, align 4
  %.not824 = icmp slt i32 %555, %760
  br i1 %.not824, label %794, label %761

761:                                              ; preds = %758
  %762 = add nsw i64 %746, 1
  %763 = getelementptr inbounds i32, ptr %1, i64 %762
  %764 = load i32, ptr %763, align 4
  %.not825 = icmp slt i32 %555, %764
  br i1 %.not825, label %794, label %765

765:                                              ; preds = %761
  %766 = add nsw i64 %746, 2
  %767 = getelementptr inbounds i32, ptr %1, i64 %766
  %768 = load i32, ptr %767, align 4
  %.not826 = icmp slt i32 %555, %768
  br i1 %.not826, label %794, label %769

769:                                              ; preds = %765
  %770 = add nsw i64 %746, 3
  %771 = getelementptr inbounds i32, ptr %1, i64 %770
  %772 = load i32, ptr %771, align 4
  %.not827 = icmp slt i32 %555, %772
  br i1 %.not827, label %794, label %773

773:                                              ; preds = %769
  %774 = sext i32 %.1911 to i64
  %775 = getelementptr inbounds %struct.anon, ptr %4, i64 %774
  %776 = getelementptr inbounds %struct.anon, ptr %4, i64 %774, i32 2
  store i32 0, ptr %776, align 4
  %777 = trunc i64 %indvars.iv923 to i32
  store i32 %777, ptr %775, align 4
  %778 = getelementptr inbounds %struct.anon, ptr %4, i64 %774, i32 1
  store i32 %551, ptr %778, align 4
  %779 = getelementptr inbounds i32, ptr %11, i64 %553
  %780 = load i32, ptr %779, align 4
  %781 = getelementptr inbounds %struct.anon, ptr %4, i64 %774, i32 3
  store i32 %780, ptr %781, align 4
  %782 = getelementptr inbounds i32, ptr %12, i64 %553
  %783 = load i32, ptr %782, align 4
  %784 = getelementptr inbounds %struct.anon, ptr %4, i64 %774, i32 4
  store i32 %783, ptr %784, align 4
  %785 = getelementptr inbounds i8, ptr %0, i64 %553
  %786 = load i8, ptr %785, align 1
  %787 = zext i8 %786 to i32
  %788 = getelementptr inbounds %struct.anon, ptr %4, i64 %774, i32 5
  store i32 %787, ptr %788, align 4
  %789 = add nsw i32 %.1911, 1
  %790 = icmp eq i32 %789, 15000
  br i1 %790, label %791, label %794

791:                                              ; preds = %773
  %792 = load ptr, ptr @stderr, align 8
  %793 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %792) #20
  tail call void @exit(i32 noundef 1) #19
  unreachable

794:                                              ; preds = %773, %769, %765, %761, %758, %754, %750, %745, %741, %737, %733, %730, %726, %722, %717, %713, %709, %705, %702, %698, %694, %689, %685, %681, %677, %672, %667, %662, %657, %652, %647, %643, %638, %633, %627, %622, %617, %612, %608, %603, %598, %592, %587, %582, %577, %573, %568, %563, %557, %552
  %.2 = phi i32 [ %789, %773 ], [ %.1911, %769 ], [ %.1911, %765 ], [ %.1911, %761 ], [ %.1911, %758 ], [ %.1911, %754 ], [ %.1911, %750 ], [ %.1911, %745 ], [ %.1911, %741 ], [ %.1911, %737 ], [ %.1911, %733 ], [ %.1911, %730 ], [ %.1911, %726 ], [ %.1911, %722 ], [ %.1911, %717 ], [ %.1911, %713 ], [ %.1911, %709 ], [ %.1911, %705 ], [ %.1911, %702 ], [ %.1911, %698 ], [ %.1911, %694 ], [ %.1911, %689 ], [ %.1911, %685 ], [ %.1911, %681 ], [ %.1911, %677 ], [ %.1911, %672 ], [ %.1911, %667 ], [ %.1911, %662 ], [ %.1911, %657 ], [ %.1911, %652 ], [ %.1911, %647 ], [ %.1911, %643 ], [ %.1911, %638 ], [ %.1911, %633 ], [ %.1911, %627 ], [ %.1911, %622 ], [ %.1911, %617 ], [ %.1911, %612 ], [ %.1911, %608 ], [ %.1911, %603 ], [ %.1911, %598 ], [ %.1911, %592 ], [ %.1911, %587 ], [ %.1911, %582 ], [ %.1911, %577 ], [ %.1911, %573 ], [ %.1911, %568 ], [ %.1911, %563 ], [ %.1911, %557 ], [ %.1911, %552 ]
  %indvars.iv.next924 = add nuw nsw i64 %indvars.iv923, 1
  %exitcond926.not = icmp eq i64 %indvars.iv.next924, %wide.trip.count925
  br i1 %exitcond926.not, label %._crit_edge913, label %552

._crit_edge913:                                   ; preds = %794, %.preheader.._crit_edge913_crit_edge
  %indvars.iv.next928.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge913_crit_edge ], [ %545, %794 ]
  %.1.lcssa = phi i32 [ %.0916, %.preheader.._crit_edge913_crit_edge ], [ %.2, %794 ]
  %exitcond930.not = icmp eq i64 %indvars.iv.next928.pre-phi, %wide.trip.count929
  br i1 %exitcond930.not, label %._crit_edge917, label %.preheader

._crit_edge917:                                   ; preds = %._crit_edge913, %.preheader903, %7
  %.0.lcssa = phi i32 [ 0, %.preheader903 ], [ 0, %7 ], [ %.1.lcssa, %._crit_edge913 ]
  %795 = sext i32 %.0.lcssa to i64
  %796 = getelementptr inbounds %struct.anon, ptr %4, i64 %795, i32 2
  store i32 7, ptr %796, align 4
  tail call void @free(ptr noundef %11) #22
  tail call void @free(ptr noundef %12) #22
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind uwtable
define dso_local void @susan_corners_quick(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = add i32 %6, -7
  %12 = icmp sgt i32 %6, 14
  br i1 %12, label %.preheader804.lr.ph, label %._crit_edge816

.preheader804.lr.ph:                              ; preds = %7
  %13 = add i32 %5, -7
  %14 = icmp sgt i32 %5, 14
  %15 = add nsw i32 %5, -3
  %16 = sext i32 %15 to i64
  %17 = add nsw i32 %5, -5
  %18 = sext i32 %17 to i64
  %19 = add nsw i32 %5, -6
  %20 = sext i32 %19 to i64
  %21 = sext i32 %5 to i64
  %wide.trip.count820 = zext i32 %11 to i64
  %wide.trip.count = zext i32 %13 to i64
  br label %.preheader804

.preheader804:                                    ; preds = %._crit_edge, %.preheader804.lr.ph
  %indvars.iv818 = phi i64 [ 7, %.preheader804.lr.ph ], [ %indvars.iv.next819, %._crit_edge ]
  br i1 %14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader804
  %22 = add nsw i64 %indvars.iv818, -3
  %23 = mul nsw i64 %22, %21
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = mul nsw i64 %indvars.iv818, %21
  br label %29

.preheader803:                                    ; preds = %._crit_edge
  br i1 %12, label %.preheader.lr.ph, label %._crit_edge816

.preheader.lr.ph:                                 ; preds = %.preheader803
  %26 = add i32 %5, -7
  %27 = icmp sgt i32 %5, 14
  %28 = sext i32 %5 to i64
  %wide.trip.count828 = zext i32 %11 to i64
  %wide.trip.count824 = zext i32 %26 to i64
  br label %.preheader

29:                                               ; preds = %363, %.lr.ph
  %indvars.iv = phi i64 [ 7, %.lr.ph ], [ %indvars.iv.next, %363 ]
  %30 = getelementptr inbounds i8, ptr %24, i64 %indvars.iv
  %31 = getelementptr inbounds i8, ptr %30, i64 -1
  %32 = add nsw i64 %indvars.iv, %25
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i8, ptr %2, i64 %35
  %37 = load i8, ptr %31, align 1
  %38 = zext i8 %37 to i64
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, 100
  %44 = getelementptr inbounds i8, ptr %30, i64 1
  %45 = load i8, ptr %30, align 1
  %46 = zext i8 %45 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %36, i64 %47
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %43, %50
  %52 = load i8, ptr %44, align 1
  %53 = zext i8 %52 to i64
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds i8, ptr %36, i64 %54
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %51, %57
  %59 = getelementptr inbounds i8, ptr %44, i64 %16
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  %61 = load i8, ptr %59, align 1
  %62 = zext i8 %61 to i64
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i8, ptr %36, i64 %63
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %58, %66
  %68 = getelementptr inbounds i8, ptr %59, i64 2
  %69 = load i8, ptr %60, align 1
  %70 = zext i8 %69 to i64
  %71 = sub nsw i64 0, %70
  %72 = getelementptr inbounds i8, ptr %36, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %67, %74
  %76 = getelementptr inbounds i8, ptr %59, i64 3
  %77 = load i8, ptr %68, align 1
  %78 = zext i8 %77 to i64
  %79 = sub nsw i64 0, %78
  %80 = getelementptr inbounds i8, ptr %36, i64 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %75, %82
  %84 = getelementptr inbounds i8, ptr %59, i64 4
  %85 = load i8, ptr %76, align 1
  %86 = zext i8 %85 to i64
  %87 = sub nsw i64 0, %86
  %88 = getelementptr inbounds i8, ptr %36, i64 %87
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %83, %90
  %92 = load i8, ptr %84, align 1
  %93 = zext i8 %92 to i64
  %94 = sub nsw i64 0, %93
  %95 = getelementptr inbounds i8, ptr %36, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nuw nsw i32 %91, %97
  %99 = getelementptr inbounds i8, ptr %84, i64 %18
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i64
  %103 = sub nsw i64 0, %102
  %104 = getelementptr inbounds i8, ptr %36, i64 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %98, %106
  %108 = getelementptr inbounds i8, ptr %99, i64 2
  %109 = load i8, ptr %100, align 1
  %110 = zext i8 %109 to i64
  %111 = sub nsw i64 0, %110
  %112 = getelementptr inbounds i8, ptr %36, i64 %111
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = add nuw nsw i32 %107, %114
  %116 = getelementptr inbounds i8, ptr %99, i64 3
  %117 = load i8, ptr %108, align 1
  %118 = zext i8 %117 to i64
  %119 = sub nsw i64 0, %118
  %120 = getelementptr inbounds i8, ptr %36, i64 %119
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = add nuw nsw i32 %115, %122
  %124 = getelementptr inbounds i8, ptr %99, i64 4
  %125 = load i8, ptr %116, align 1
  %126 = zext i8 %125 to i64
  %127 = sub nsw i64 0, %126
  %128 = getelementptr inbounds i8, ptr %36, i64 %127
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = add nuw nsw i32 %123, %130
  %132 = getelementptr inbounds i8, ptr %99, i64 5
  %133 = load i8, ptr %124, align 1
  %134 = zext i8 %133 to i64
  %135 = sub nsw i64 0, %134
  %136 = getelementptr inbounds i8, ptr %36, i64 %135
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %131, %138
  %140 = getelementptr inbounds i8, ptr %99, i64 6
  %141 = load i8, ptr %132, align 1
  %142 = zext i8 %141 to i64
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i8, ptr %36, i64 %143
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = add nuw nsw i32 %139, %146
  %148 = load i8, ptr %140, align 1
  %149 = zext i8 %148 to i64
  %150 = sub nsw i64 0, %149
  %151 = getelementptr inbounds i8, ptr %36, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = add nuw nsw i32 %147, %153
  %155 = getelementptr inbounds i8, ptr %140, i64 %20
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  %157 = load i8, ptr %155, align 1
  %158 = zext i8 %157 to i64
  %159 = sub nsw i64 0, %158
  %160 = getelementptr inbounds i8, ptr %36, i64 %159
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %154, %162
  %164 = getelementptr inbounds i8, ptr %155, i64 2
  %165 = load i8, ptr %156, align 1
  %166 = zext i8 %165 to i64
  %167 = sub nsw i64 0, %166
  %168 = getelementptr inbounds i8, ptr %36, i64 %167
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = add nuw nsw i32 %163, %170
  %172 = load i8, ptr %164, align 1
  %173 = zext i8 %172 to i64
  %174 = sub nsw i64 0, %173
  %175 = getelementptr inbounds i8, ptr %36, i64 %174
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = add nuw nsw i32 %171, %177
  %179 = icmp slt i32 %178, %3
  br i1 %179, label %180, label %363

180:                                              ; preds = %29
  %181 = getelementptr inbounds i8, ptr %155, i64 4
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i64
  %184 = sub nsw i64 0, %183
  %185 = getelementptr inbounds i8, ptr %36, i64 %184
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = add nuw nsw i32 %178, %187
  %189 = icmp slt i32 %188, %3
  br i1 %189, label %190, label %363

190:                                              ; preds = %180
  %191 = getelementptr inbounds i8, ptr %155, i64 5
  %192 = getelementptr inbounds i8, ptr %155, i64 6
  %193 = load i8, ptr %191, align 1
  %194 = zext i8 %193 to i64
  %195 = sub nsw i64 0, %194
  %196 = getelementptr inbounds i8, ptr %36, i64 %195
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = add nuw nsw i32 %188, %198
  %200 = icmp slt i32 %199, %3
  br i1 %200, label %201, label %363

201:                                              ; preds = %190
  %202 = load i8, ptr %192, align 1
  %203 = zext i8 %202 to i64
  %204 = sub nsw i64 0, %203
  %205 = getelementptr inbounds i8, ptr %36, i64 %204
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = add nuw nsw i32 %199, %207
  %209 = icmp slt i32 %208, %3
  br i1 %209, label %210, label %363

210:                                              ; preds = %201
  %211 = getelementptr inbounds i8, ptr %192, i64 %20
  %212 = load i8, ptr %211, align 1
  %213 = zext i8 %212 to i64
  %214 = sub nsw i64 0, %213
  %215 = getelementptr inbounds i8, ptr %36, i64 %214
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = add nuw nsw i32 %208, %217
  %219 = icmp slt i32 %218, %3
  br i1 %219, label %220, label %363

220:                                              ; preds = %210
  %221 = getelementptr inbounds i8, ptr %211, i64 1
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i64
  %224 = sub nsw i64 0, %223
  %225 = getelementptr inbounds i8, ptr %36, i64 %224
  %226 = load i8, ptr %225, align 1
  %227 = zext i8 %226 to i32
  %228 = add nuw nsw i32 %218, %227
  %229 = icmp slt i32 %228, %3
  br i1 %229, label %230, label %363

230:                                              ; preds = %220
  %231 = getelementptr inbounds i8, ptr %211, i64 2
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i64
  %234 = sub nsw i64 0, %233
  %235 = getelementptr inbounds i8, ptr %36, i64 %234
  %236 = load i8, ptr %235, align 1
  %237 = zext i8 %236 to i32
  %238 = add nuw nsw i32 %228, %237
  %239 = icmp slt i32 %238, %3
  br i1 %239, label %240, label %363

240:                                              ; preds = %230
  %241 = getelementptr inbounds i8, ptr %211, i64 3
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i64
  %244 = sub nsw i64 0, %243
  %245 = getelementptr inbounds i8, ptr %36, i64 %244
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i32
  %248 = add nuw nsw i32 %238, %247
  %249 = icmp slt i32 %248, %3
  br i1 %249, label %250, label %363

250:                                              ; preds = %240
  %251 = getelementptr inbounds i8, ptr %211, i64 4
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i64
  %254 = sub nsw i64 0, %253
  %255 = getelementptr inbounds i8, ptr %36, i64 %254
  %256 = load i8, ptr %255, align 1
  %257 = zext i8 %256 to i32
  %258 = add nuw nsw i32 %248, %257
  %259 = icmp slt i32 %258, %3
  br i1 %259, label %260, label %363

260:                                              ; preds = %250
  %261 = getelementptr inbounds i8, ptr %211, i64 5
  %262 = getelementptr inbounds i8, ptr %211, i64 6
  %263 = load i8, ptr %261, align 1
  %264 = zext i8 %263 to i64
  %265 = sub nsw i64 0, %264
  %266 = getelementptr inbounds i8, ptr %36, i64 %265
  %267 = load i8, ptr %266, align 1
  %268 = zext i8 %267 to i32
  %269 = add nuw nsw i32 %258, %268
  %270 = icmp slt i32 %269, %3
  br i1 %270, label %271, label %363

271:                                              ; preds = %260
  %272 = load i8, ptr %262, align 1
  %273 = zext i8 %272 to i64
  %274 = sub nsw i64 0, %273
  %275 = getelementptr inbounds i8, ptr %36, i64 %274
  %276 = load i8, ptr %275, align 1
  %277 = zext i8 %276 to i32
  %278 = add nuw nsw i32 %269, %277
  %279 = icmp slt i32 %278, %3
  br i1 %279, label %280, label %363

280:                                              ; preds = %271
  %281 = getelementptr inbounds i8, ptr %262, i64 %18
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i64
  %284 = sub nsw i64 0, %283
  %285 = getelementptr inbounds i8, ptr %36, i64 %284
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i32
  %288 = add nuw nsw i32 %278, %287
  %289 = icmp slt i32 %288, %3
  br i1 %289, label %290, label %363

290:                                              ; preds = %280
  %291 = getelementptr inbounds i8, ptr %281, i64 1
  %292 = load i8, ptr %291, align 1
  %293 = zext i8 %292 to i64
  %294 = sub nsw i64 0, %293
  %295 = getelementptr inbounds i8, ptr %36, i64 %294
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i32
  %298 = add nuw nsw i32 %288, %297
  %299 = icmp slt i32 %298, %3
  br i1 %299, label %300, label %363

300:                                              ; preds = %290
  %301 = getelementptr inbounds i8, ptr %281, i64 2
  %302 = load i8, ptr %301, align 1
  %303 = zext i8 %302 to i64
  %304 = sub nsw i64 0, %303
  %305 = getelementptr inbounds i8, ptr %36, i64 %304
  %306 = load i8, ptr %305, align 1
  %307 = zext i8 %306 to i32
  %308 = add nuw nsw i32 %298, %307
  %309 = icmp slt i32 %308, %3
  br i1 %309, label %310, label %363

310:                                              ; preds = %300
  %311 = getelementptr inbounds i8, ptr %281, i64 3
  %312 = getelementptr inbounds i8, ptr %281, i64 4
  %313 = load i8, ptr %311, align 1
  %314 = zext i8 %313 to i64
  %315 = sub nsw i64 0, %314
  %316 = getelementptr inbounds i8, ptr %36, i64 %315
  %317 = load i8, ptr %316, align 1
  %318 = zext i8 %317 to i32
  %319 = add nuw nsw i32 %308, %318
  %320 = icmp slt i32 %319, %3
  br i1 %320, label %321, label %363

321:                                              ; preds = %310
  %322 = load i8, ptr %312, align 1
  %323 = zext i8 %322 to i64
  %324 = sub nsw i64 0, %323
  %325 = getelementptr inbounds i8, ptr %36, i64 %324
  %326 = load i8, ptr %325, align 1
  %327 = zext i8 %326 to i32
  %328 = add nuw nsw i32 %319, %327
  %329 = icmp slt i32 %328, %3
  br i1 %329, label %330, label %363

330:                                              ; preds = %321
  %331 = getelementptr inbounds i8, ptr %312, i64 %16
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i64
  %334 = sub nsw i64 0, %333
  %335 = getelementptr inbounds i8, ptr %36, i64 %334
  %336 = load i8, ptr %335, align 1
  %337 = zext i8 %336 to i32
  %338 = add nuw nsw i32 %328, %337
  %339 = icmp slt i32 %338, %3
  br i1 %339, label %340, label %363

340:                                              ; preds = %330
  %341 = getelementptr inbounds i8, ptr %331, i64 1
  %342 = load i8, ptr %341, align 1
  %343 = zext i8 %342 to i64
  %344 = sub nsw i64 0, %343
  %345 = getelementptr inbounds i8, ptr %36, i64 %344
  %346 = load i8, ptr %345, align 1
  %347 = zext i8 %346 to i32
  %348 = add nuw nsw i32 %338, %347
  %349 = icmp slt i32 %348, %3
  br i1 %349, label %350, label %363

350:                                              ; preds = %340
  %351 = getelementptr inbounds i8, ptr %331, i64 2
  %352 = load i8, ptr %351, align 1
  %353 = zext i8 %352 to i64
  %354 = sub nsw i64 0, %353
  %355 = getelementptr inbounds i8, ptr %36, i64 %354
  %356 = load i8, ptr %355, align 1
  %357 = zext i8 %356 to i32
  %358 = add nuw nsw i32 %348, %357
  %359 = icmp slt i32 %358, %3
  br i1 %359, label %360, label %363

360:                                              ; preds = %350
  %361 = sub nsw i32 %3, %358
  %362 = getelementptr inbounds i32, ptr %1, i64 %32
  store i32 %361, ptr %362, align 4
  br label %363

363:                                              ; preds = %360, %350, %340, %330, %321, %310, %300, %290, %280, %271, %260, %250, %240, %230, %220, %210, %201, %190, %180, %29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %29

._crit_edge:                                      ; preds = %363, %.preheader804
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1
  %exitcond821.not = icmp eq i64 %indvars.iv.next819, %wide.trip.count820
  br i1 %exitcond821.not, label %.preheader803, label %.preheader804

.preheader:                                       ; preds = %._crit_edge812, %.preheader.lr.ph
  %indvars.iv826 = phi i64 [ 7, %.preheader.lr.ph ], [ %indvars.iv.next827.pre-phi, %._crit_edge812 ]
  %.0815 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge812 ]
  br i1 %27, label %.lr.ph811, label %.preheader.._crit_edge812_crit_edge

.preheader.._crit_edge812_crit_edge:              ; preds = %.preheader
  %.pre = add nuw nsw i64 %indvars.iv826, 1
  br label %._crit_edge812

.lr.ph811:                                        ; preds = %.preheader
  %364 = mul nsw i64 %indvars.iv826, %28
  %365 = add nsw i64 %indvars.iv826, -3
  %366 = mul nsw i64 %365, %28
  %367 = add nsw i64 %indvars.iv826, -2
  %368 = mul nsw i64 %367, %28
  %369 = add nsw i64 %indvars.iv826, -1
  %370 = mul nsw i64 %369, %28
  %371 = add nuw nsw i64 %indvars.iv826, 1
  %372 = mul nsw i64 %371, %28
  %373 = add nuw nsw i64 %indvars.iv826, 2
  %374 = mul nsw i64 %373, %28
  %375 = add nuw nsw i64 %indvars.iv826, 3
  %376 = mul nsw i64 %375, %28
  %377 = trunc i64 %indvars.iv826 to i32
  br label %378

378:                                              ; preds = %793, %.lr.ph811
  %indvars.iv822 = phi i64 [ 7, %.lr.ph811 ], [ %indvars.iv.next823, %793 ]
  %.1810 = phi i32 [ %.0815, %.lr.ph811 ], [ %.2, %793 ]
  %379 = add nsw i64 %indvars.iv822, %364
  %380 = getelementptr inbounds i32, ptr %1, i64 %379
  %381 = load i32, ptr %380, align 4
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %793

383:                                              ; preds = %378
  %384 = add nsw i64 %indvars.iv822, %366
  %385 = add nsw i64 %384, -3
  %386 = getelementptr inbounds i32, ptr %1, i64 %385
  %387 = load i32, ptr %386, align 4
  %388 = icmp sgt i32 %381, %387
  br i1 %388, label %389, label %793

389:                                              ; preds = %383
  %390 = add nsw i64 %384, -2
  %391 = getelementptr inbounds i32, ptr %1, i64 %390
  %392 = load i32, ptr %391, align 4
  %393 = icmp sgt i32 %381, %392
  br i1 %393, label %394, label %793

394:                                              ; preds = %389
  %395 = add nsw i64 %384, -1
  %396 = getelementptr inbounds i32, ptr %1, i64 %395
  %397 = load i32, ptr %396, align 4
  %398 = icmp sgt i32 %381, %397
  br i1 %398, label %399, label %793

399:                                              ; preds = %394
  %400 = getelementptr inbounds i32, ptr %1, i64 %384
  %401 = load i32, ptr %400, align 4
  %402 = icmp sgt i32 %381, %401
  br i1 %402, label %403, label %793

403:                                              ; preds = %399
  %404 = add nsw i64 %384, 1
  %405 = getelementptr inbounds i32, ptr %1, i64 %404
  %406 = load i32, ptr %405, align 4
  %407 = icmp sgt i32 %381, %406
  br i1 %407, label %408, label %793

408:                                              ; preds = %403
  %409 = add nsw i64 %384, 2
  %410 = getelementptr inbounds i32, ptr %1, i64 %409
  %411 = load i32, ptr %410, align 4
  %412 = icmp sgt i32 %381, %411
  br i1 %412, label %413, label %793

413:                                              ; preds = %408
  %414 = add nsw i64 %384, 3
  %415 = getelementptr inbounds i32, ptr %1, i64 %414
  %416 = load i32, ptr %415, align 4
  %417 = icmp sgt i32 %381, %416
  br i1 %417, label %418, label %793

418:                                              ; preds = %413
  %419 = add nsw i64 %indvars.iv822, %368
  %420 = add nsw i64 %419, -3
  %421 = getelementptr inbounds i32, ptr %1, i64 %420
  %422 = load i32, ptr %421, align 4
  %423 = icmp sgt i32 %381, %422
  br i1 %423, label %424, label %793

424:                                              ; preds = %418
  %425 = add nsw i64 %419, -2
  %426 = getelementptr inbounds i32, ptr %1, i64 %425
  %427 = load i32, ptr %426, align 4
  %428 = icmp sgt i32 %381, %427
  br i1 %428, label %429, label %793

429:                                              ; preds = %424
  %430 = add nsw i64 %419, -1
  %431 = getelementptr inbounds i32, ptr %1, i64 %430
  %432 = load i32, ptr %431, align 4
  %433 = icmp sgt i32 %381, %432
  br i1 %433, label %434, label %793

434:                                              ; preds = %429
  %435 = getelementptr inbounds i32, ptr %1, i64 %419
  %436 = load i32, ptr %435, align 4
  %437 = icmp sgt i32 %381, %436
  br i1 %437, label %438, label %793

438:                                              ; preds = %434
  %439 = add nsw i64 %419, 1
  %440 = getelementptr inbounds i32, ptr %1, i64 %439
  %441 = load i32, ptr %440, align 4
  %442 = icmp sgt i32 %381, %441
  br i1 %442, label %443, label %793

443:                                              ; preds = %438
  %444 = add nsw i64 %419, 2
  %445 = getelementptr inbounds i32, ptr %1, i64 %444
  %446 = load i32, ptr %445, align 4
  %447 = icmp sgt i32 %381, %446
  br i1 %447, label %448, label %793

448:                                              ; preds = %443
  %449 = add nsw i64 %419, 3
  %450 = getelementptr inbounds i32, ptr %1, i64 %449
  %451 = load i32, ptr %450, align 4
  %452 = icmp sgt i32 %381, %451
  br i1 %452, label %453, label %793

453:                                              ; preds = %448
  %454 = add nsw i64 %indvars.iv822, %370
  %455 = add nsw i64 %454, -3
  %456 = getelementptr inbounds i32, ptr %1, i64 %455
  %457 = load i32, ptr %456, align 4
  %458 = icmp sgt i32 %381, %457
  br i1 %458, label %459, label %793

459:                                              ; preds = %453
  %460 = add nsw i64 %454, -2
  %461 = getelementptr inbounds i32, ptr %1, i64 %460
  %462 = load i32, ptr %461, align 4
  %463 = icmp sgt i32 %381, %462
  br i1 %463, label %464, label %793

464:                                              ; preds = %459
  %465 = add nsw i64 %454, -1
  %466 = getelementptr inbounds i32, ptr %1, i64 %465
  %467 = load i32, ptr %466, align 4
  %468 = icmp sgt i32 %381, %467
  br i1 %468, label %469, label %793

469:                                              ; preds = %464
  %470 = getelementptr inbounds i32, ptr %1, i64 %454
  %471 = load i32, ptr %470, align 4
  %472 = icmp sgt i32 %381, %471
  br i1 %472, label %473, label %793

473:                                              ; preds = %469
  %474 = add nsw i64 %454, 1
  %475 = getelementptr inbounds i32, ptr %1, i64 %474
  %476 = load i32, ptr %475, align 4
  %477 = icmp sgt i32 %381, %476
  br i1 %477, label %478, label %793

478:                                              ; preds = %473
  %479 = add nsw i64 %454, 2
  %480 = getelementptr inbounds i32, ptr %1, i64 %479
  %481 = load i32, ptr %480, align 4
  %482 = icmp sgt i32 %381, %481
  br i1 %482, label %483, label %793

483:                                              ; preds = %478
  %484 = add nsw i64 %454, 3
  %485 = getelementptr inbounds i32, ptr %1, i64 %484
  %486 = load i32, ptr %485, align 4
  %487 = icmp sgt i32 %381, %486
  br i1 %487, label %488, label %793

488:                                              ; preds = %483
  %489 = add nsw i64 %379, -3
  %490 = getelementptr inbounds i32, ptr %1, i64 %489
  %491 = load i32, ptr %490, align 4
  %492 = icmp sgt i32 %381, %491
  br i1 %492, label %493, label %793

493:                                              ; preds = %488
  %494 = add nsw i64 %379, -2
  %495 = getelementptr inbounds i32, ptr %1, i64 %494
  %496 = load i32, ptr %495, align 4
  %497 = icmp sgt i32 %381, %496
  br i1 %497, label %498, label %793

498:                                              ; preds = %493
  %499 = add nsw i64 %379, -1
  %500 = getelementptr inbounds i32, ptr %1, i64 %499
  %501 = load i32, ptr %500, align 4
  %502 = icmp sgt i32 %381, %501
  br i1 %502, label %503, label %793

503:                                              ; preds = %498
  %504 = add nsw i64 %379, 1
  %505 = getelementptr inbounds i32, ptr %1, i64 %504
  %506 = load i32, ptr %505, align 4
  %.not = icmp slt i32 %381, %506
  br i1 %.not, label %793, label %507

507:                                              ; preds = %503
  %508 = add nsw i64 %379, 2
  %509 = getelementptr inbounds i32, ptr %1, i64 %508
  %510 = load i32, ptr %509, align 4
  %.not745 = icmp slt i32 %381, %510
  br i1 %.not745, label %793, label %511

511:                                              ; preds = %507
  %512 = add nsw i64 %379, 3
  %513 = getelementptr inbounds i32, ptr %1, i64 %512
  %514 = load i32, ptr %513, align 4
  %.not746 = icmp slt i32 %381, %514
  br i1 %.not746, label %793, label %515

515:                                              ; preds = %511
  %516 = add nsw i64 %indvars.iv822, %372
  %517 = add nsw i64 %516, -3
  %518 = getelementptr inbounds i32, ptr %1, i64 %517
  %519 = load i32, ptr %518, align 4
  %.not747 = icmp slt i32 %381, %519
  br i1 %.not747, label %793, label %520

520:                                              ; preds = %515
  %521 = add nsw i64 %516, -2
  %522 = getelementptr inbounds i32, ptr %1, i64 %521
  %523 = load i32, ptr %522, align 4
  %.not748 = icmp slt i32 %381, %523
  br i1 %.not748, label %793, label %524

524:                                              ; preds = %520
  %525 = add nsw i64 %516, -1
  %526 = getelementptr inbounds i32, ptr %1, i64 %525
  %527 = load i32, ptr %526, align 4
  %.not749 = icmp slt i32 %381, %527
  br i1 %.not749, label %793, label %528

528:                                              ; preds = %524
  %529 = getelementptr inbounds i32, ptr %1, i64 %516
  %530 = load i32, ptr %529, align 4
  %.not750 = icmp slt i32 %381, %530
  br i1 %.not750, label %793, label %531

531:                                              ; preds = %528
  %532 = add nsw i64 %516, 1
  %533 = getelementptr inbounds i32, ptr %1, i64 %532
  %534 = load i32, ptr %533, align 4
  %.not751 = icmp slt i32 %381, %534
  br i1 %.not751, label %793, label %535

535:                                              ; preds = %531
  %536 = add nsw i64 %516, 2
  %537 = getelementptr inbounds i32, ptr %1, i64 %536
  %538 = load i32, ptr %537, align 4
  %.not752 = icmp slt i32 %381, %538
  br i1 %.not752, label %793, label %539

539:                                              ; preds = %535
  %540 = add nsw i64 %516, 3
  %541 = getelementptr inbounds i32, ptr %1, i64 %540
  %542 = load i32, ptr %541, align 4
  %.not753 = icmp slt i32 %381, %542
  br i1 %.not753, label %793, label %543

543:                                              ; preds = %539
  %544 = add nsw i64 %indvars.iv822, %374
  %545 = add nsw i64 %544, -3
  %546 = getelementptr inbounds i32, ptr %1, i64 %545
  %547 = load i32, ptr %546, align 4
  %.not754 = icmp slt i32 %381, %547
  br i1 %.not754, label %793, label %548

548:                                              ; preds = %543
  %549 = add nsw i64 %544, -2
  %550 = getelementptr inbounds i32, ptr %1, i64 %549
  %551 = load i32, ptr %550, align 4
  %.not755 = icmp slt i32 %381, %551
  br i1 %.not755, label %793, label %552

552:                                              ; preds = %548
  %553 = add nsw i64 %544, -1
  %554 = getelementptr inbounds i32, ptr %1, i64 %553
  %555 = load i32, ptr %554, align 4
  %.not756 = icmp slt i32 %381, %555
  br i1 %.not756, label %793, label %556

556:                                              ; preds = %552
  %557 = getelementptr inbounds i32, ptr %1, i64 %544
  %558 = load i32, ptr %557, align 4
  %.not757 = icmp slt i32 %381, %558
  br i1 %.not757, label %793, label %559

559:                                              ; preds = %556
  %560 = add nsw i64 %544, 1
  %561 = getelementptr inbounds i32, ptr %1, i64 %560
  %562 = load i32, ptr %561, align 4
  %.not758 = icmp slt i32 %381, %562
  br i1 %.not758, label %793, label %563

563:                                              ; preds = %559
  %564 = add nsw i64 %544, 2
  %565 = getelementptr inbounds i32, ptr %1, i64 %564
  %566 = load i32, ptr %565, align 4
  %.not759 = icmp slt i32 %381, %566
  br i1 %.not759, label %793, label %567

567:                                              ; preds = %563
  %568 = add nsw i64 %544, 3
  %569 = getelementptr inbounds i32, ptr %1, i64 %568
  %570 = load i32, ptr %569, align 4
  %.not760 = icmp slt i32 %381, %570
  br i1 %.not760, label %793, label %571

571:                                              ; preds = %567
  %572 = add nsw i64 %indvars.iv822, %376
  %573 = add nsw i64 %572, -3
  %574 = getelementptr inbounds i32, ptr %1, i64 %573
  %575 = load i32, ptr %574, align 4
  %.not761 = icmp slt i32 %381, %575
  br i1 %.not761, label %793, label %576

576:                                              ; preds = %571
  %577 = add nsw i64 %572, -2
  %578 = getelementptr inbounds i32, ptr %1, i64 %577
  %579 = load i32, ptr %578, align 4
  %.not762 = icmp slt i32 %381, %579
  br i1 %.not762, label %793, label %580

580:                                              ; preds = %576
  %581 = add nsw i64 %572, -1
  %582 = getelementptr inbounds i32, ptr %1, i64 %581
  %583 = load i32, ptr %582, align 4
  %.not763 = icmp slt i32 %381, %583
  br i1 %.not763, label %793, label %584

584:                                              ; preds = %580
  %585 = getelementptr inbounds i32, ptr %1, i64 %572
  %586 = load i32, ptr %585, align 4
  %.not764 = icmp slt i32 %381, %586
  br i1 %.not764, label %793, label %587

587:                                              ; preds = %584
  %588 = add nsw i64 %572, 1
  %589 = getelementptr inbounds i32, ptr %1, i64 %588
  %590 = load i32, ptr %589, align 4
  %.not765 = icmp slt i32 %381, %590
  br i1 %.not765, label %793, label %591

591:                                              ; preds = %587
  %592 = add nsw i64 %572, 2
  %593 = getelementptr inbounds i32, ptr %1, i64 %592
  %594 = load i32, ptr %593, align 4
  %.not766 = icmp slt i32 %381, %594
  br i1 %.not766, label %793, label %595

595:                                              ; preds = %591
  %596 = add nsw i64 %572, 3
  %597 = getelementptr inbounds i32, ptr %1, i64 %596
  %598 = load i32, ptr %597, align 4
  %.not767 = icmp slt i32 %381, %598
  br i1 %.not767, label %793, label %599

599:                                              ; preds = %595
  %600 = sext i32 %.1810 to i64
  %601 = getelementptr inbounds %struct.anon, ptr %4, i64 %600
  %602 = getelementptr inbounds %struct.anon, ptr %4, i64 %600, i32 2
  store i32 0, ptr %602, align 4
  %603 = trunc i64 %indvars.iv822 to i32
  store i32 %603, ptr %601, align 4
  %604 = getelementptr inbounds %struct.anon, ptr %4, i64 %600, i32 1
  store i32 %377, ptr %604, align 4
  %605 = getelementptr inbounds i8, ptr %0, i64 %425
  %606 = load i8, ptr %605, align 1
  %607 = zext i8 %606 to i16
  %608 = getelementptr inbounds i8, ptr %0, i64 %430
  %609 = load i8, ptr %608, align 1
  %610 = zext i8 %609 to i16
  %611 = add nuw nsw i16 %610, %607
  %612 = getelementptr inbounds i8, ptr %0, i64 %419
  %613 = load i8, ptr %612, align 1
  %614 = zext i8 %613 to i16
  %615 = add nuw nsw i16 %611, %614
  %616 = getelementptr inbounds i8, ptr %0, i64 %439
  %617 = load i8, ptr %616, align 1
  %618 = zext i8 %617 to i16
  %619 = add nuw nsw i16 %615, %618
  %620 = getelementptr inbounds i8, ptr %0, i64 %444
  %621 = load i8, ptr %620, align 1
  %622 = zext i8 %621 to i16
  %623 = add nuw nsw i16 %619, %622
  %624 = getelementptr inbounds i8, ptr %0, i64 %460
  %625 = load i8, ptr %624, align 1
  %626 = zext i8 %625 to i16
  %627 = add nuw nsw i16 %623, %626
  %628 = getelementptr inbounds i8, ptr %0, i64 %465
  %629 = load i8, ptr %628, align 1
  %630 = zext i8 %629 to i16
  %631 = add nuw nsw i16 %627, %630
  %632 = getelementptr inbounds i8, ptr %0, i64 %454
  %633 = load i8, ptr %632, align 1
  %634 = zext i8 %633 to i16
  %635 = add nuw nsw i16 %631, %634
  %636 = getelementptr inbounds i8, ptr %0, i64 %474
  %637 = load i8, ptr %636, align 1
  %638 = zext i8 %637 to i16
  %639 = add nuw nsw i16 %635, %638
  %640 = getelementptr inbounds i8, ptr %0, i64 %479
  %641 = load i8, ptr %640, align 1
  %642 = zext i8 %641 to i16
  %643 = add nuw nsw i16 %639, %642
  %644 = getelementptr inbounds i8, ptr %0, i64 %494
  %645 = load i8, ptr %644, align 1
  %646 = zext i8 %645 to i16
  %647 = add nuw nsw i16 %643, %646
  %648 = getelementptr inbounds i8, ptr %0, i64 %499
  %649 = load i8, ptr %648, align 1
  %650 = zext i8 %649 to i16
  %651 = add nuw nsw i16 %647, %650
  %652 = getelementptr inbounds i8, ptr %0, i64 %379
  %653 = load i8, ptr %652, align 1
  %654 = zext i8 %653 to i16
  %655 = add nuw nsw i16 %651, %654
  %656 = getelementptr inbounds i8, ptr %0, i64 %504
  %657 = load i8, ptr %656, align 1
  %658 = zext i8 %657 to i16
  %659 = add nuw nsw i16 %655, %658
  %660 = getelementptr inbounds i8, ptr %0, i64 %508
  %661 = load i8, ptr %660, align 1
  %662 = zext i8 %661 to i16
  %663 = add nuw nsw i16 %659, %662
  %664 = getelementptr inbounds i8, ptr %0, i64 %521
  %665 = load i8, ptr %664, align 1
  %666 = zext i8 %665 to i16
  %667 = add nuw nsw i16 %663, %666
  %668 = getelementptr inbounds i8, ptr %0, i64 %525
  %669 = load i8, ptr %668, align 1
  %670 = zext i8 %669 to i16
  %671 = add nuw nsw i16 %667, %670
  %672 = getelementptr inbounds i8, ptr %0, i64 %516
  %673 = load i8, ptr %672, align 1
  %674 = zext i8 %673 to i16
  %675 = add nuw nsw i16 %671, %674
  %676 = getelementptr inbounds i8, ptr %0, i64 %532
  %677 = load i8, ptr %676, align 1
  %678 = zext i8 %677 to i16
  %679 = add nuw nsw i16 %675, %678
  %680 = getelementptr inbounds i8, ptr %0, i64 %536
  %681 = load i8, ptr %680, align 1
  %682 = zext i8 %681 to i16
  %683 = add nuw nsw i16 %679, %682
  %684 = getelementptr inbounds i8, ptr %0, i64 %549
  %685 = load i8, ptr %684, align 1
  %686 = zext i8 %685 to i16
  %687 = add nuw nsw i16 %683, %686
  %688 = getelementptr inbounds i8, ptr %0, i64 %553
  %689 = load i8, ptr %688, align 1
  %690 = zext i8 %689 to i16
  %691 = add nuw nsw i16 %687, %690
  %692 = getelementptr inbounds i8, ptr %0, i64 %544
  %693 = load i8, ptr %692, align 1
  %694 = zext i8 %693 to i16
  %695 = add nuw nsw i16 %691, %694
  %696 = getelementptr inbounds i8, ptr %0, i64 %560
  %697 = load i8, ptr %696, align 1
  %698 = zext i8 %697 to i16
  %699 = add nuw nsw i16 %695, %698
  %700 = getelementptr inbounds i8, ptr %0, i64 %564
  %701 = load i8, ptr %700, align 1
  %702 = zext i8 %701 to i16
  %.lhs.trunc = add nuw nsw i16 %699, %702
  %703 = udiv i16 %.lhs.trunc, 25
  %.zext = zext i16 %703 to i32
  %704 = getelementptr inbounds %struct.anon, ptr %4, i64 %600, i32 5
  store i32 %.zext, ptr %704, align 4
  %705 = load i8, ptr %620, align 1
  %706 = zext i8 %705 to i32
  %707 = load i8, ptr %640, align 1
  %708 = zext i8 %707 to i32
  %709 = load i8, ptr %660, align 1
  %710 = zext i8 %709 to i32
  %711 = load i8, ptr %680, align 1
  %712 = zext i8 %711 to i32
  %713 = load i8, ptr %700, align 1
  %714 = zext i8 %713 to i32
  %715 = load i8, ptr %605, align 1
  %716 = zext i8 %715 to i32
  %717 = load i8, ptr %624, align 1
  %718 = zext i8 %717 to i32
  %719 = load i8, ptr %644, align 1
  %720 = zext i8 %719 to i32
  %721 = load i8, ptr %664, align 1
  %722 = zext i8 %721 to i32
  %723 = load i8, ptr %684, align 1
  %724 = zext i8 %723 to i32
  %.neg772 = add nuw nsw i32 %708, %706
  %.neg774 = add nuw nsw i32 %.neg772, %710
  %.neg776 = add nuw nsw i32 %.neg774, %712
  %.neg778 = add nuw nsw i32 %.neg776, %714
  %725 = add nuw nsw i32 %716, %718
  %726 = add nuw nsw i32 %725, %720
  %727 = add nuw nsw i32 %726, %722
  %728 = add nuw nsw i32 %727, %724
  %729 = sub nsw i32 %.neg778, %728
  %730 = load i8, ptr %616, align 1
  %731 = zext i8 %730 to i32
  %732 = load i8, ptr %636, align 1
  %733 = zext i8 %732 to i32
  %734 = load i8, ptr %656, align 1
  %735 = zext i8 %734 to i32
  %736 = load i8, ptr %676, align 1
  %737 = zext i8 %736 to i32
  %738 = load i8, ptr %696, align 1
  %739 = zext i8 %738 to i32
  %740 = load i8, ptr %608, align 1
  %741 = zext i8 %740 to i32
  %742 = load i8, ptr %628, align 1
  %743 = zext i8 %742 to i32
  %744 = load i8, ptr %648, align 1
  %745 = zext i8 %744 to i32
  %746 = load i8, ptr %668, align 1
  %747 = zext i8 %746 to i32
  %748 = load i8, ptr %688, align 1
  %749 = zext i8 %748 to i32
  %factor = shl nsw i32 %729, 1
  %.neg783 = add nuw nsw i32 %733, %731
  %.neg785 = add i32 %.neg783, %factor
  %.neg787 = add i32 %.neg785, %735
  %750 = add i32 %.neg787, %737
  %751 = add i32 %750, %739
  %752 = add nuw nsw i32 %741, %743
  %753 = add nuw nsw i32 %752, %745
  %754 = add nuw nsw i32 %753, %747
  %755 = add nuw nsw i32 %754, %749
  %756 = sub i32 %751, %755
  %757 = load i8, ptr %692, align 1
  %758 = zext i8 %757 to i32
  %759 = load i8, ptr %612, align 1
  %760 = zext i8 %759 to i32
  %761 = add nuw nsw i32 %706, %716
  %762 = add nuw nsw i32 %714, %724
  %763 = add nuw nsw i32 %761, %731
  %764 = add nuw nsw i32 %762, %739
  %765 = add nuw nsw i32 %763, %741
  %766 = sub nsw i32 %764, %765
  %767 = add nsw i32 %766, %749
  %768 = add nsw i32 %767, %758
  %769 = sub nsw i32 %768, %760
  %770 = load i8, ptr %672, align 1
  %771 = zext i8 %770 to i32
  %772 = load i8, ptr %632, align 1
  %773 = zext i8 %772 to i32
  %factor802 = shl nsw i32 %769, 1
  %774 = add nuw nsw i32 %708, %718
  %775 = add nuw nsw i32 %712, %722
  %776 = add nuw nsw i32 %774, %733
  %777 = add nuw nsw i32 %775, %737
  %778 = add nuw nsw i32 %776, %743
  %779 = sub nsw i32 %777, %778
  %780 = add nsw i32 %779, %747
  %781 = add nsw i32 %780, %771
  %782 = sub nsw i32 %781, %773
  %783 = add i32 %782, %factor802
  %.lhs.trunc768 = trunc i32 %756 to i16
  %784 = sdiv i16 %.lhs.trunc768, 15
  %.sext = sext i16 %784 to i32
  %785 = getelementptr inbounds %struct.anon, ptr %4, i64 %600, i32 3
  store i32 %.sext, ptr %785, align 4
  %.lhs.trunc769 = trunc i32 %783 to i16
  %786 = sdiv i16 %.lhs.trunc769, 15
  %.sext770 = sext i16 %786 to i32
  %787 = getelementptr inbounds %struct.anon, ptr %4, i64 %600, i32 4
  store i32 %.sext770, ptr %787, align 4
  %788 = add nsw i32 %.1810, 1
  %789 = icmp eq i32 %788, 15000
  br i1 %789, label %790, label %793

790:                                              ; preds = %599
  %791 = load ptr, ptr @stderr, align 8
  %792 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %791) #20
  tail call void @exit(i32 noundef 1) #19
  unreachable

793:                                              ; preds = %599, %595, %591, %587, %584, %580, %576, %571, %567, %563, %559, %556, %552, %548, %543, %539, %535, %531, %528, %524, %520, %515, %511, %507, %503, %498, %493, %488, %483, %478, %473, %469, %464, %459, %453, %448, %443, %438, %434, %429, %424, %418, %413, %408, %403, %399, %394, %389, %383, %378
  %.2 = phi i32 [ %788, %599 ], [ %.1810, %595 ], [ %.1810, %591 ], [ %.1810, %587 ], [ %.1810, %584 ], [ %.1810, %580 ], [ %.1810, %576 ], [ %.1810, %571 ], [ %.1810, %567 ], [ %.1810, %563 ], [ %.1810, %559 ], [ %.1810, %556 ], [ %.1810, %552 ], [ %.1810, %548 ], [ %.1810, %543 ], [ %.1810, %539 ], [ %.1810, %535 ], [ %.1810, %531 ], [ %.1810, %528 ], [ %.1810, %524 ], [ %.1810, %520 ], [ %.1810, %515 ], [ %.1810, %511 ], [ %.1810, %507 ], [ %.1810, %503 ], [ %.1810, %498 ], [ %.1810, %493 ], [ %.1810, %488 ], [ %.1810, %483 ], [ %.1810, %478 ], [ %.1810, %473 ], [ %.1810, %469 ], [ %.1810, %464 ], [ %.1810, %459 ], [ %.1810, %453 ], [ %.1810, %448 ], [ %.1810, %443 ], [ %.1810, %438 ], [ %.1810, %434 ], [ %.1810, %429 ], [ %.1810, %424 ], [ %.1810, %418 ], [ %.1810, %413 ], [ %.1810, %408 ], [ %.1810, %403 ], [ %.1810, %399 ], [ %.1810, %394 ], [ %.1810, %389 ], [ %.1810, %383 ], [ %.1810, %378 ]
  %indvars.iv.next823 = add nuw nsw i64 %indvars.iv822, 1
  %exitcond825.not = icmp eq i64 %indvars.iv.next823, %wide.trip.count824
  br i1 %exitcond825.not, label %._crit_edge812, label %378

._crit_edge812:                                   ; preds = %793, %.preheader.._crit_edge812_crit_edge
  %indvars.iv.next827.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge812_crit_edge ], [ %371, %793 ]
  %.1.lcssa = phi i32 [ %.0815, %.preheader.._crit_edge812_crit_edge ], [ %.2, %793 ]
  %exitcond829.not = icmp eq i64 %indvars.iv.next827.pre-phi, %wide.trip.count828
  br i1 %exitcond829.not, label %._crit_edge816, label %.preheader

._crit_edge816:                                   ; preds = %._crit_edge812, %.preheader803, %7
  %.0.lcssa = phi i32 [ 0, %.preheader803 ], [ 0, %7 ], [ %.1.lcssa, %._crit_edge812 ]
  %794 = sext i32 %.0.lcssa to i64
  %795 = getelementptr inbounds %struct.anon, ptr %4, i64 %794, i32 2
  store i32 7, ptr %795, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [15000 x %struct.anon], align 16
  %8 = icmp slt i32 %0, 3
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 @usage()
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8
  call void @get_image(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.not127 = icmp eq i32 %0, 3
  br i1 %.not127, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %52, %11
  %.0119 = phi i32 [ %.1, %52 ], [ 0, %11 ]
  %.058118 = phi float [ %.159, %52 ], [ 4.000000e+00, %11 ]
  %.060117 = phi i32 [ %.161, %52 ], [ 0, %11 ]
  %.062116 = phi i32 [ %.163, %52 ], [ 0, %11 ]
  %.064115 = phi i32 [ %.165, %52 ], [ 0, %11 ]
  %.066114 = phi i32 [ %.167, %52 ], [ 1, %11 ]
  %.068113 = phi i32 [ %.169, %52 ], [ 0, %11 ]
  %.070112 = phi i32 [ %.171, %52 ], [ 20, %11 ]
  %.072111 = phi i32 [ %53, %52 ], [ 3, %11 ]
  %14 = sext i32 %.072111 to i64
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 45
  br i1 %18, label %19, label %50

19:                                               ; preds = %.lr.ph
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %52 [
    i32 115, label %23
    i32 101, label %24
    i32 99, label %25
    i32 112, label %26
    i32 110, label %27
    i32 98, label %28
    i32 51, label %29
    i32 113, label %30
    i32 100, label %31
    i32 116, label %42
  ]

23:                                               ; preds = %19
  br label %52

24:                                               ; preds = %19
  br label %52

25:                                               ; preds = %19
  br label %52

26:                                               ; preds = %19
  br label %52

27:                                               ; preds = %19
  br label %52

28:                                               ; preds = %19
  br label %52

29:                                               ; preds = %19
  br label %52

30:                                               ; preds = %19
  br label %52

31:                                               ; preds = %19
  %32 = add nsw i32 %.072111, 1
  %.not85 = icmp slt i32 %32, %0
  br i1 %.not85, label %34, label %33

33:                                               ; preds = %31
  %puts86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  tail call void @exit(i32 noundef 0) #19
  unreachable

34:                                               ; preds = %31
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8
  %38 = tail call double @atof(ptr noundef %37) #23
  %39 = fptrunc double %38 to float
  %40 = fcmp olt float %39, 0.000000e+00
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  br label %52

42:                                               ; preds = %19
  %43 = add nsw i32 %.072111, 1
  %.not84 = icmp slt i32 %43, %0
  br i1 %.not84, label %45, label %44

44:                                               ; preds = %42
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  tail call void @exit(i32 noundef 0) #19
  unreachable

45:                                               ; preds = %42
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds ptr, ptr %1, i64 %46
  %48 = load ptr, ptr %47, align 8
  %49 = tail call i32 @atoi(ptr nocapture noundef %48) #23
  br label %52

50:                                               ; preds = %.lr.ph
  %51 = tail call i32 @usage()
  unreachable

52:                                               ; preds = %45, %41, %34, %30, %29, %28, %27, %26, %25, %24, %23, %19
  %.173 = phi i32 [ %.072111, %19 ], [ %43, %45 ], [ %32, %41 ], [ %32, %34 ], [ %.072111, %30 ], [ %.072111, %29 ], [ %.072111, %28 ], [ %.072111, %27 ], [ %.072111, %26 ], [ %.072111, %25 ], [ %.072111, %24 ], [ %.072111, %23 ]
  %.171 = phi i32 [ %.070112, %19 ], [ %49, %45 ], [ %.070112, %41 ], [ %.070112, %34 ], [ %.070112, %30 ], [ %.070112, %29 ], [ %.070112, %28 ], [ %.070112, %27 ], [ %.070112, %26 ], [ %.070112, %25 ], [ %.070112, %24 ], [ %.070112, %23 ]
  %.169 = phi i32 [ %.068113, %19 ], [ %.068113, %45 ], [ %.068113, %41 ], [ %.068113, %34 ], [ %.068113, %30 ], [ %.068113, %29 ], [ %.068113, %28 ], [ %.068113, %27 ], [ 1, %26 ], [ %.068113, %25 ], [ %.068113, %24 ], [ %.068113, %23 ]
  %.167 = phi i32 [ %.066114, %19 ], [ %.066114, %45 ], [ %.066114, %41 ], [ %.066114, %34 ], [ %.066114, %30 ], [ %.066114, %29 ], [ %.066114, %28 ], [ 0, %27 ], [ %.066114, %26 ], [ %.066114, %25 ], [ %.066114, %24 ], [ %.066114, %23 ]
  %.165 = phi i32 [ %.064115, %19 ], [ %.064115, %45 ], [ 1, %41 ], [ %.064115, %34 ], [ %.064115, %30 ], [ 1, %29 ], [ %.064115, %28 ], [ %.064115, %27 ], [ %.064115, %26 ], [ %.064115, %25 ], [ %.064115, %24 ], [ %.064115, %23 ]
  %.163 = phi i32 [ %.062116, %19 ], [ %.062116, %45 ], [ %.062116, %41 ], [ %.062116, %34 ], [ %.062116, %30 ], [ %.062116, %29 ], [ 1, %28 ], [ %.062116, %27 ], [ %.062116, %26 ], [ %.062116, %25 ], [ %.062116, %24 ], [ %.062116, %23 ]
  %.161 = phi i32 [ %.060117, %19 ], [ %.060117, %45 ], [ %.060117, %41 ], [ %.060117, %34 ], [ 1, %30 ], [ %.060117, %29 ], [ %.060117, %28 ], [ %.060117, %27 ], [ %.060117, %26 ], [ %.060117, %25 ], [ %.060117, %24 ], [ %.060117, %23 ]
  %.159 = phi float [ %.058118, %19 ], [ %.058118, %45 ], [ %39, %41 ], [ %39, %34 ], [ %.058118, %30 ], [ %.058118, %29 ], [ %.058118, %28 ], [ %.058118, %27 ], [ %.058118, %26 ], [ %.058118, %25 ], [ %.058118, %24 ], [ %.058118, %23 ]
  %.1 = phi i32 [ %.0119, %19 ], [ %.0119, %45 ], [ %.0119, %41 ], [ %.0119, %34 ], [ %.0119, %30 ], [ %.0119, %29 ], [ %.0119, %28 ], [ %.0119, %27 ], [ %.0119, %26 ], [ 2, %25 ], [ 1, %24 ], [ 0, %23 ]
  %53 = add nsw i32 %.173, 1
  %54 = icmp slt i32 %53, %0
  br i1 %54, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %52, %11
  %.070.lcssa = phi i32 [ 20, %11 ], [ %.171, %52 ]
  %.068.lcssa = phi i32 [ 0, %11 ], [ %.169, %52 ]
  %.066.lcssa = phi i32 [ 1, %11 ], [ %.167, %52 ]
  %.064.lcssa = phi i32 [ 0, %11 ], [ %.165, %52 ]
  %.062.lcssa = phi i32 [ 0, %11 ], [ %.163, %52 ]
  %.060.lcssa = phi i32 [ 0, %11 ], [ %.161, %52 ]
  %.058.lcssa = phi float [ 4.000000e+00, %11 ], [ %.159, %52 ]
  %.0.lcssa = phi i32 [ 0, %11 ], [ %.1, %52 ]
  %55 = icmp eq i32 %.068.lcssa, 1
  %56 = icmp eq i32 %.0.lcssa, 0
  %or.cond = select i1 %55, i1 %56, i1 false
  %spec.store.select = select i1 %or.cond, i32 1, i32 %.0.lcssa
  switch i32 %spec.store.select, label %._crit_edge._crit_edge [
    i32 0, label %57
    i32 1, label %63
    i32 2, label %85
  ]

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %3, align 8
  %.pre128 = load i32, ptr %5, align 4
  %.pre129 = load i32, ptr %6, align 4
  br label %101

57:                                               ; preds = %._crit_edge
  call void @setup_brightness_lut(ptr noundef nonnull %4, i32 noundef %.070.lcssa, i32 noundef 2)
  %58 = load ptr, ptr %3, align 8
  %59 = fpext float %.058.lcssa to double
  %60 = load i32, ptr %5, align 4
  %61 = load i32, ptr %6, align 4
  %62 = load ptr, ptr %4, align 8
  tail call void @susan_smoothing(i32 noundef %.064.lcssa, ptr noundef %58, double noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62)
  br label %101

63:                                               ; preds = %._crit_edge
  %64 = load i32, ptr %5, align 4
  %65 = load i32, ptr %6, align 4
  %66 = mul nsw i32 %65, %64
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 2
  %69 = tail call noalias ptr @malloc(i64 noundef %68) #21
  call void @setup_brightness_lut(ptr noundef nonnull %4, i32 noundef %.070.lcssa, i32 noundef 6)
  %.not80 = icmp eq i32 %.068.lcssa, 0
  br i1 %.not80, label %76, label %70

70:                                               ; preds = %63
  %.not83 = icmp eq i32 %.064.lcssa, 0
  %71 = load ptr, ptr %3, align 8
  %72 = load ptr, ptr %4, align 8
  br i1 %.not83, label %74, label %73

73:                                               ; preds = %70
  tail call void @susan_principle_small(ptr noundef %71, ptr noundef %69, ptr noundef %72, i32 poison, i32 noundef %64, i32 noundef %65)
  br label %75

74:                                               ; preds = %70
  tail call void @susan_principle(ptr noundef %71, ptr noundef %69, ptr noundef %72, i32 noundef 2650, i32 noundef %64, i32 noundef %65)
  br label %75

75:                                               ; preds = %74, %73
  tail call void @int_to_uchar(ptr noundef %69, ptr noundef %71, i32 noundef %66)
  br label %101

76:                                               ; preds = %63
  %77 = tail call noalias ptr @malloc(i64 noundef %67) #21
  tail call void @llvm.memset.p0.i64(ptr align 1 %77, i8 100, i64 %67, i1 false)
  %.not81 = icmp eq i32 %.064.lcssa, 0
  %78 = load ptr, ptr %3, align 8
  %79 = load ptr, ptr %4, align 8
  br i1 %.not81, label %81, label %80

80:                                               ; preds = %76
  tail call void @susan_edges_small(ptr noundef %78, ptr noundef %69, ptr noundef %77, ptr noundef %79, i32 poison, i32 noundef %64, i32 noundef %65)
  br label %82

81:                                               ; preds = %76
  tail call void @susan_edges(ptr noundef %78, ptr noundef %69, ptr noundef %77, ptr noundef %79, i32 noundef 2650, i32 noundef %64, i32 noundef %65)
  br label %82

82:                                               ; preds = %81, %80
  %.not82 = icmp eq i32 %.066.lcssa, 0
  br i1 %.not82, label %84, label %83

83:                                               ; preds = %82
  tail call void @susan_thin(ptr noundef %69, ptr noundef %77, i32 noundef %64, i32 noundef %65)
  br label %84

84:                                               ; preds = %83, %82
  tail call void @edge_draw(ptr noundef %78, ptr noundef %77, i32 noundef %64, i32 noundef %65, i32 noundef %.062.lcssa)
  br label %101

85:                                               ; preds = %._crit_edge
  %86 = load i32, ptr %5, align 4
  %87 = load i32, ptr %6, align 4
  %88 = mul nsw i32 %87, %86
  %89 = sext i32 %88 to i64
  %90 = shl nsw i64 %89, 2
  %91 = tail call noalias ptr @malloc(i64 noundef %90) #21
  call void @setup_brightness_lut(ptr noundef nonnull %4, i32 noundef %.070.lcssa, i32 noundef 6)
  %.not = icmp eq i32 %.068.lcssa, 0
  br i1 %.not, label %95, label %92

92:                                               ; preds = %85
  %93 = load ptr, ptr %3, align 8
  %94 = load ptr, ptr %4, align 8
  tail call void @susan_principle(ptr noundef %93, ptr noundef %91, ptr noundef %94, i32 noundef 1850, i32 noundef %86, i32 noundef %87)
  tail call void @int_to_uchar(ptr noundef %91, ptr noundef %93, i32 noundef %88)
  br label %101

95:                                               ; preds = %85
  %.not79 = icmp eq i32 %.060.lcssa, 0
  %96 = load ptr, ptr %3, align 8
  %97 = load ptr, ptr %4, align 8
  br i1 %.not79, label %99, label %98

98:                                               ; preds = %95
  call void @susan_corners_quick(ptr noundef %96, ptr noundef %91, ptr noundef %97, i32 noundef 1850, ptr noundef nonnull %7, i32 noundef %86, i32 noundef %87)
  br label %100

99:                                               ; preds = %95
  call void @susan_corners(ptr noundef %96, ptr noundef %91, ptr noundef %97, i32 noundef 1850, ptr noundef nonnull %7, i32 noundef %86, i32 noundef %87)
  br label %100

100:                                              ; preds = %99, %98
  call void @corner_draw(ptr noundef %96, ptr noundef nonnull %7, i32 noundef %86, i32 noundef %.062.lcssa)
  br label %101

101:                                              ; preds = %100, %92, %84, %75, %57, %._crit_edge._crit_edge
  %102 = phi i32 [ %.pre129, %._crit_edge._crit_edge ], [ %87, %92 ], [ %87, %100 ], [ %65, %75 ], [ %65, %84 ], [ %61, %57 ]
  %103 = phi i32 [ %.pre128, %._crit_edge._crit_edge ], [ %86, %92 ], [ %86, %100 ], [ %64, %75 ], [ %64, %84 ], [ %60, %57 ]
  %104 = phi ptr [ %.pre, %._crit_edge._crit_edge ], [ %93, %92 ], [ %96, %100 ], [ %71, %75 ], [ %78, %84 ], [ %58, %57 ]
  %105 = getelementptr inbounds ptr, ptr %1, i64 2
  %106 = load ptr, ptr %105, align 8
  tail call void @put_image(ptr noundef %106, ptr noundef %104, i32 noundef %103, i32 noundef %102)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #18

declare void @exit.17(i32, ...)

declare i32 @printf.18(ptr, i32, ...)

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
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noreturn nounwind }
attributes #20 = { cold }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !7}
