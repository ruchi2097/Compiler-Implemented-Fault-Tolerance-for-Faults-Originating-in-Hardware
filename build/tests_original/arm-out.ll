; ModuleID = 'arm-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@nlinks = dso_local global i32 0, align 4
@target = dso_local global [2 x i32] zeroinitializer, align 4
@linklen = dso_local local_unnamed_addr global [20 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"%%==>Solve3: links = %d,%d,%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%%Solve3: link1=%d, link2=%d, joint=\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"%%Solve3: link1=%d, link2=%d, link3=%d, joints=\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"%%<==Solve2: L1=%d, L2=%d; nsoln=%d, target=(%d,%d),J=(%g,%g)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%%TwoCircles00: p=(%g,%g)\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%%Target point = (%d,%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"%5d    %5d    lineto\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%5d    %5d    moveto\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"%8.2lf %8.2lf lineto\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%d:%d\09\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%%!PS\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"%%%%Creator: arm.c (Joseph O'Rourke)\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"%%%%EndComments\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"%d %d translate\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"showpage\0A%%%%EOF\0A\00", align 1
@str = private unnamed_addr constant [8 x i8] c"newpath\00", align 1
@str.1 = private unnamed_addr constant [22 x i8] c"Solven: no solutions!\00", align 1
@str.2 = private unnamed_addr constant [17 x i8] c"closepath stroke\00", align 1
@str.3 = private unnamed_addr constant [21 x i8] c".00 .00 setlinewidth\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [2 x i32], align 8
  store i64 0, ptr %1, align 8
  %2 = tail call i32 @ReadLinks()
  store i32 %2, ptr @nlinks, align 4
  tail call void @PostscriptOpen()
  br label %3

3:                                                ; preds = %7, %0
  tail call void @ReadTarget(ptr noundef nonnull @target)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @MoveTo_i(ptr noundef nonnull %1)
  %4 = load i32, ptr @nlinks, align 4
  %5 = tail call i32 @Solven(i32 noundef %4), !range !6
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %7

6:                                                ; preds = %3
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %7

7:                                                ; preds = %6, %3
  tail call void @LineTo_i(ptr noundef nonnull @target)
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %3
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @ReadLinks() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = tail call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull @nlinks)
  %3 = load i32, ptr @nlinks, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %5 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull %1)
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  store i32 %6, ptr %7, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr @nlinks, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %indvars.iv.next, %9
  br i1 %10, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.lcssa = phi i32 [ %3, %0 ], [ %8, %.lr.ph ]
  ret i32 %.lcssa
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PostscriptOpen() local_unnamed_addr #1 {
  %1 = load i32, ptr @nlinks, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.014 = phi i32 [ 0, %.lr.ph.preheader ], [ %5, %.lr.ph ]
  %3 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %3, align 4
  %5 = add nsw i32 %4, %.014
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.0.lcssa = phi i32 [ 0, %0 ], [ %5, %.lr.ph ]
  %6 = sub nsw i32 0, %.0.lcssa
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15)
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16)
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %6, i32 noundef %6, i32 noundef %.0.lcssa, i32 noundef %.0.lcssa)
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %11 = add nsw i32 %.0.lcssa, 100
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %11, i32 noundef %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadTarget(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef %0)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i32, ptr %0, i64 1
  %6 = tail call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 4
  %10 = load i32, ptr %5, align 4
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %9, i32 noundef %10)
  ret void

12:                                               ; preds = %4, %1
  tail call void @PostscriptClose()
  tail call void @exit(i32 noundef 0) #12
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @MoveTo_i(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds i32, ptr %0, i64 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %2, i32 noundef %4)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Solven(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %.lr.ph.preheader, label %._crit_edge35

.lr.ph.preheader:                                 ; preds = %1
  %wide.trip.count = zext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.02230 = phi i32 [ 0, %.lr.ph.preheader ], [ %5, %.lr.ph ]
  %3 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %3, align 4
  %5 = add nsw i32 %4, %.02230
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %6 = sdiv i32 %5, 2
  br i1 %2, label %.lr.ph34.preheader, label %._crit_edge35

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %wide.trip.count43 = zext i32 %0 to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %11, %.lr.ph34.preheader
  %indvars.iv41 = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next42, %11 ]
  %.02531 = phi i32 [ 0, %.lr.ph34.preheader ], [ %9, %11 ]
  %7 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv41
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 %8, %.02531
  %10 = icmp sgt i32 %9, %6
  br i1 %10, label %._crit_edge35.loopexit.split.loop.exit, label %11

11:                                               ; preds = %.lr.ph34
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge35, label %.lr.ph34

._crit_edge35.loopexit.split.loop.exit:           ; preds = %.lr.ph34
  %12 = trunc i64 %indvars.iv41 to i32
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %._crit_edge35.loopexit.split.loop.exit, %11, %._crit_edge, %1
  %.022.lcssa46 = phi i32 [ %5, %._crit_edge ], [ 0, %1 ], [ %5, %._crit_edge35.loopexit.split.loop.exit ], [ %5, %11 ]
  %.025.lcssa = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %.02531, %._crit_edge35.loopexit.split.loop.exit ], [ %9, %11 ]
  %.024.lcssa = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %12, %._crit_edge35.loopexit.split.loop.exit ], [ %0, %11 ]
  %13 = zext i32 %.024.lcssa to i64
  %14 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %.025.lcssa, %15
  %17 = sub i32 %.022.lcssa46, %16
  %18 = tail call i32 @Solve3(i32 noundef %.025.lcssa, i32 noundef %15, i32 noundef %17, ptr noundef nonnull @target), !range !6
  ret i32 %18
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @LineTo_i(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds i32, ptr %0, i64 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %2, i32 noundef %4)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Solve3(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca [2 x double], align 16
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  %9 = add nsw i32 %1, %0
  %10 = call i32 @Solve2(i32 noundef %9, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5), !range !6
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %9, i32 noundef %2)
  br label %.sink.split

13:                                               ; preds = %4
  %14 = add nsw i32 %2, %1
  %15 = call i32 @Solve2(i32 noundef %0, i32 noundef %14, ptr noundef %3, ptr noundef nonnull %5), !range !6
  %.not25 = icmp eq i32 %15, 0
  br i1 %.not25, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %0, i32 noundef %14)
  br label %.sink.split

18:                                               ; preds = %13
  store i32 %0, ptr %6, align 4
  %19 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 0, ptr %19, align 4
  call void @SubVec(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %20 = call i32 @Solve2(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %5), !range !6
  %.not26 = icmp eq i32 %20, 0
  br i1 %.not26, label %26, label %21

21:                                               ; preds = %18
  %22 = sitofp i32 %0 to double
  %23 = load double, ptr %5, align 16
  %24 = fadd double %23, %22
  store double %24, ptr %5, align 16
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  call void @LineTo_i(ptr noundef nonnull %6)
  br label %.sink.split

.sink.split:                                      ; preds = %21, %16, %11
  call void @LineTo_d(ptr noundef nonnull %5)
  br label %26

26:                                               ; preds = %.sink.split, %18
  %.0 = phi i32 [ 0, %18 ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Solve2(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = alloca [2 x i32], align 8
  store i64 0, ptr %5, align 8
  %6 = call i32 @TwoCircles(ptr noundef nonnull %5, i32 noundef %0, ptr noundef %2, i32 noundef %1, ptr noundef %3), !range !7
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds i32, ptr %2, i64 1
  %9 = load i32, ptr %8, align 4
  %10 = load double, ptr %3, align 8
  %11 = getelementptr inbounds double, ptr %3, i64 1
  %12 = load double, ptr %11, align 8
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %9, double noundef %10, double noundef %12)
  %14 = icmp ne i32 %6, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @LineTo_d(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load double, ptr %0, align 8
  %3 = getelementptr inbounds double, ptr %0, i64 1
  %4 = load double, ptr %3, align 8
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %2, double noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @SubVec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i32, ptr %0, align 4
  %5 = load i32, ptr %1, align 4
  %6 = sub nsw i32 %4, %5
  store i32 %6, ptr %2, align 4
  %7 = getelementptr inbounds i32, ptr %0, i64 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds i32, ptr %1, i64 1
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %8, %10
  %12 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @TwoCircles(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x double], align 16
  call void @SubVec(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %6)
  %8 = call i32 @TwoCircles0a(i32 noundef %1, ptr noundef nonnull %6, i32 noundef %3, ptr noundef nonnull %7), !range !7
  %9 = load double, ptr %7, align 16
  %10 = load i32, ptr %0, align 4
  %11 = sitofp i32 %10 to double
  %12 = fadd double %9, %11
  store double %12, ptr %4, align 8
  %13 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  %14 = load double, ptr %13, align 8
  %15 = getelementptr inbounds i32, ptr %0, i64 1
  %16 = load i32, ptr %15, align 4
  %17 = sitofp i32 %16 to double
  %18 = fadd double %14, %17
  %19 = getelementptr inbounds double, ptr %4, i64 1
  store double %18, ptr %19, align 8
  ret i32 %8
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @TwoCircles0a(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = tail call double @Length2(ptr noundef %1)
  %6 = add nsw i32 %2, %0
  %7 = mul nsw i32 %6, %6
  %8 = sitofp i32 %7 to double
  %9 = sub nsw i32 %0, %2
  %10 = mul nsw i32 %9, %9
  %11 = sitofp i32 %10 to double
  %12 = fcmp ogt double %5, %8
  %13 = fcmp olt double %5, %11
  %or.cond = select i1 %12, i1 true, i1 %13
  br i1 %or.cond, label %49, label %14

14:                                               ; preds = %4
  %15 = fcmp oeq double %5, %8
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = sitofp i32 %0 to double
  %18 = sitofp i32 %6 to double
  %19 = fdiv double %17, %18
  %20 = load i32, ptr %1, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double %19, %21
  store double %22, ptr %3, align 8
  %23 = getelementptr inbounds i32, ptr %1, i64 1
  %24 = load i32, ptr %23, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double %19, %25
  %27 = getelementptr inbounds double, ptr %3, i64 1
  store double %26, ptr %27, align 8
  br label %49

28:                                               ; preds = %14
  %29 = fcmp oeq double %5, %11
  br i1 %29, label %30, label %47

30:                                               ; preds = %28
  %31 = icmp eq i32 %0, %2
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = sitofp i32 %2 to double
  store double %33, ptr %3, align 8
  %34 = getelementptr inbounds double, ptr %3, i64 1
  store double 0.000000e+00, ptr %34, align 8
  br label %49

35:                                               ; preds = %30
  %36 = sitofp i32 %0 to double
  %37 = sitofp i32 %9 to double
  %38 = fdiv double %36, %37
  %39 = load i32, ptr %1, align 4
  %40 = sitofp i32 %39 to double
  %41 = fmul double %38, %40
  store double %41, ptr %3, align 8
  %42 = getelementptr inbounds i32, ptr %1, i64 1
  %43 = load i32, ptr %42, align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double %38, %44
  %46 = getelementptr inbounds double, ptr %3, i64 1
  store double %45, ptr %46, align 8
  br label %49

47:                                               ; preds = %28
  %48 = tail call i32 @TwoCircles0b(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %49

49:                                               ; preds = %47, %35, %32, %16, %4
  %.0 = phi i32 [ 1, %16 ], [ 3, %32 ], [ 1, %35 ], [ 2, %47 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local double @Length2(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, ptr %0, align 4
  %3 = sitofp i32 %2 to double
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %3, double 0.000000e+00)
  %5 = getelementptr inbounds i32, ptr %0, i64 1
  %6 = load i32, ptr %5, align 4
  %7 = sitofp i32 %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %4)
  ret double %8
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @TwoCircles0b(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca [2 x double], align 16
  %6 = tail call double @Length2(ptr noundef %1)
  %7 = tail call double @sqrt(double noundef %6) #13
  %8 = load i32, ptr %1, align 4
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, %7
  %11 = getelementptr inbounds i32, ptr %1, i64 1
  %12 = load i32, ptr %11, align 4
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %13, %7
  call void @TwoCircles00(i32 noundef %0, double noundef %7, i32 noundef %2, ptr noundef nonnull %5)
  %15 = load double, ptr %5, align 16
  %16 = fneg double %14
  %17 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  %18 = load double, ptr %17, align 8
  %19 = fmul double %18, %16
  %20 = tail call double @llvm.fmuladd.f64(double %10, double %15, double %19)
  store double %20, ptr %3, align 8
  %21 = fmul double %10, %18
  %22 = tail call double @llvm.fmuladd.f64(double %14, double %15, double %21)
  %23 = getelementptr inbounds double, ptr %3, i64 1
  store double %22, ptr %23, align 8
  ret i32 2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @TwoCircles00(i32 noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = mul nsw i32 %0, %0
  %6 = sitofp i32 %5 to double
  %7 = mul nsw i32 %2, %2
  %8 = sitofp i32 %7 to double
  %9 = fsub double %6, %8
  %10 = fdiv double %9, %1
  %11 = fadd double %10, %1
  %12 = fmul double %11, 5.000000e-01
  store double %12, ptr %3, align 8
  %13 = fneg double %12
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %12, double %6)
  %15 = tail call double @sqrt(double noundef %14) #13
  %16 = getelementptr inbounds double, ptr %3, i64 1
  store double %15, ptr %16, align 8
  %17 = load double, ptr %3, align 8
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %17, double noundef %15)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PostscriptClose() local_unnamed_addr #1 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PrintLinks() local_unnamed_addr #1 {
  %putchar = tail call i32 @putchar(i32 37)
  %1 = load i32, ptr @nlinks, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %3 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %3, align 4
  %5 = trunc i64 %indvars.iv to i32
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %5, i32 noundef %4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = load i32, ptr @nlinks, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp slt i64 %indvars.iv.next, %8
  br i1 %9, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %10 = tail call i32 @putchar(i32 noundef 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @EqPointi(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %.not = icmp eq i32 %3, %4
  br i1 %.not, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i32, ptr %1, i64 1
  %9 = load i32, ptr %8, align 4
  %.not.1 = icmp eq i32 %7, %9
  %spec.select = zext i1 %.not.1 to i32
  br label %10

10:                                               ; preds = %5, %2
  %.06 = phi i32 [ 0, %2 ], [ %spec.select, %5 ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @RadDeg(double noundef %0) local_unnamed_addr #10 {
  %2 = fmul double %0, 1.800000e+02
  %3 = fdiv double %2, 0x400921FB54442D18
  ret double %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

declare void @exit.4(i32, ...)

declare i32 @printf.5(ptr, i32, ...)

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
attributes #1 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 0, i32 2}
!7 = !{i32 0, i32 4}
