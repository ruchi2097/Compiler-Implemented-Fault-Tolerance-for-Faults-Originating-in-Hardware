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

3:                                                ; preds = %21, %0
  %Diff_phi = phi i32 [ 6, %21 ], [ 3, %0 ]
  %Dest_phi = phi i32 [ %22, %21 ], [ 1, %0 ]
  %4 = xor i32 %Diff_phi, %Dest_phi
  %5 = icmp eq i32 %4, 2
  %6 = zext i1 %5 to i32
  call void @assert_cfg_ft(i32 %6, i32 %4, i32 0)
  tail call void @ReadTarget(ptr noundef nonnull @target)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @MoveTo_i(ptr noundef nonnull %1)
  %7 = load i32, ptr @nlinks, align 4
  %8 = load i32, ptr @nlinks, align 4
  %9 = icmp eq i32 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = tail call i32 @Solven(i32 noundef %8), !range !6
  %12 = icmp eq i32 %11, 0
  %.not = icmp eq i32 %11, 0
  %13 = icmp eq i1 %.not, %12
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = select i1 %.not, i32 3, i32 4
  %16 = xor i32 2, %15
  br i1 %.not, label %17, label %21

17:                                               ; preds = %3
  %Diff_phi3 = phi i32 [ %16, %3 ]
  %Dest_phi4 = phi i32 [ %4, %3 ]
  %18 = xor i32 %Diff_phi3, %Dest_phi4
  %19 = icmp eq i32 %18, 3
  %20 = zext i1 %19 to i32
  call void @assert_cfg_ft(i32 %20, i32 %18, i32 0)
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %21

21:                                               ; preds = %17, %3
  %Diff_phi5 = phi i32 [ 7, %17 ], [ %16, %3 ]
  %Dest_phi6 = phi i32 [ %18, %17 ], [ %4, %3 ]
  %22 = xor i32 %Diff_phi5, %Dest_phi6
  %23 = icmp eq i32 %22, 4
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  tail call void @LineTo_i(ptr noundef nonnull @target)
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %3
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @ReadLinks() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = tail call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull @nlinks)
  %3 = load i32, ptr @nlinks, align 4
  %4 = load i32, ptr @nlinks, align 4
  %5 = icmp eq i32 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = icmp sgt i32 %3, 0
  %8 = icmp sgt i32 %4, 0
  %9 = icmp eq i1 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = select i1 %8, i32 6, i32 7
  %12 = xor i32 5, %11
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %0
  %Diff_phi = phi i32 [ %12, %0 ], [ %44, %.lr.ph ]
  %Dest_phi = phi i32 [ 5, %0 ], [ %14, %.lr.ph ]
  %13 = phi i64 [ %28, %.lr.ph ], [ 0, %0 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %14 = xor i32 %Diff_phi, %Dest_phi
  %15 = icmp eq i32 %14, 6
  %16 = zext i1 %15 to i32
  call void @assert_cfg_ft(i32 %16, i32 %14, i32 0)
  %17 = icmp eq i64 %indvars.iv, %13
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull %1)
  %20 = load i32, ptr %1, align 4
  %21 = load i32, ptr %1, align 4
  %22 = icmp eq i32 %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %13
  %25 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %26 = icmp eq ptr %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  store i32 %21, ptr %25, align 4
  %28 = add nuw nsw i64 %13, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %29 = icmp eq i64 %indvars.iv.next, %28
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = load i32, ptr @nlinks, align 4
  %32 = load i32, ptr @nlinks, align 4
  %33 = icmp eq i32 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = sext i32 %31 to i64
  %36 = sext i32 %32 to i64
  %37 = icmp eq i64 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = icmp slt i64 %28, %35
  %40 = icmp slt i64 %indvars.iv.next, %36
  %41 = icmp eq i1 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = select i1 %40, i32 6, i32 7
  %44 = xor i32 6, %43
  br i1 %40, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %Diff_phi10 = phi i32 [ %44, %.lr.ph ], [ %12, %0 ]
  %Dest_phi11 = phi i32 [ %14, %.lr.ph ], [ 5, %0 ]
  %45 = phi i32 [ %3, %0 ], [ %31, %.lr.ph ]
  %.lcssa = phi i32 [ %4, %0 ], [ %32, %.lr.ph ]
  %46 = xor i32 %Diff_phi10, %Dest_phi11
  %47 = icmp eq i32 %46, 7
  %48 = zext i1 %47 to i32
  call void @assert_cfg_ft(i32 %48, i32 %46, i32 0)
  %49 = icmp eq i32 %.lcssa, %45
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  ret i32 %.lcssa
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PostscriptOpen() local_unnamed_addr #1 {
  %1 = load i32, ptr @nlinks, align 4
  %2 = load i32, ptr @nlinks, align 4
  %3 = icmp eq i32 %2, %1
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = icmp sgt i32 %1, 0
  %6 = icmp sgt i32 %2, 0
  %7 = icmp eq i1 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = select i1 %6, i32 9, i32 11
  %10 = xor i32 8, %9
  br i1 %6, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  %Diff_phi = phi i32 [ %10, %0 ]
  %Dest_phi = phi i32 [ 8, %0 ]
  %11 = xor i32 %Diff_phi, %Dest_phi
  %12 = icmp eq i32 %11, 9
  %13 = zext i1 %12 to i32
  call void @assert_cfg_ft(i32 %13, i32 %11, i32 0)
  %14 = zext i32 %1 to i64
  %wide.trip.count = zext i32 %2 to i64
  %15 = icmp eq i64 %wide.trip.count, %14
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %Diff_phi15 = phi i32 [ 3, %.lr.ph.preheader ], [ %45, %.lr.ph ]
  %Dest_phi16 = phi i32 [ %11, %.lr.ph.preheader ], [ %19, %.lr.ph ]
  %17 = phi i64 [ 0, %.lr.ph.preheader ], [ %38, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %18 = phi i32 [ 0, %.lr.ph.preheader ], [ %34, %.lr.ph ]
  %.014 = phi i32 [ 0, %.lr.ph.preheader ], [ %35, %.lr.ph ]
  %19 = xor i32 %Diff_phi15, %Dest_phi16
  %20 = icmp eq i32 %19, 10
  %21 = zext i1 %20 to i32
  call void @assert_cfg_ft(i32 %21, i32 %19, i32 0)
  %22 = icmp eq i32 %.014, %18
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = icmp eq i64 %indvars.iv, %17
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %17
  %27 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %28 = icmp eq ptr %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = load i32, ptr %26, align 4
  %31 = load i32, ptr %27, align 4
  %32 = icmp eq i32 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = add nsw i32 %30, %18
  %35 = add nsw i32 %31, %.014
  %36 = icmp eq i32 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = add nuw nsw i64 %17, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %39 = icmp eq i64 %indvars.iv.next, %38
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = icmp eq i64 %38, %14
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %42 = icmp eq i1 %exitcond.not, %41
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = select i1 %exitcond.not, i32 11, i32 10
  %45 = xor i32 10, %44
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  %Diff_phi17 = phi i32 [ %45, %.lr.ph ], [ %10, %0 ]
  %Dest_phi18 = phi i32 [ %19, %.lr.ph ], [ 8, %0 ]
  %46 = phi i32 [ 0, %0 ], [ %34, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %0 ], [ %35, %.lr.ph ]
  %47 = xor i32 %Diff_phi17, %Dest_phi18
  %48 = icmp eq i32 %47, 11
  %49 = zext i1 %48 to i32
  call void @assert_cfg_ft(i32 %49, i32 %47, i32 0)
  %50 = icmp eq i32 %.0.lcssa, %46
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = sub nsw i32 0, %46
  %53 = sub nsw i32 0, %.0.lcssa
  %54 = icmp eq i32 %53, %52
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15)
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16)
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %53, i32 noundef %53, i32 noundef %.0.lcssa, i32 noundef %.0.lcssa)
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %60 = add nsw i32 %46, 100
  %61 = add nsw i32 %.0.lcssa, 100
  %62 = icmp eq i32 %61, %60
  %63 = zext i1 %62 to i32
  call void @assert_ft(i32 %63, i32 1)
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %61, i32 noundef %61)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadTarget(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef %0)
  %3 = icmp eq i32 %2, -1
  %4 = icmp eq i32 %2, -1
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = select i1 %4, i32 15, i32 13
  %8 = xor i32 12, %7
  br i1 %4, label %37, label %9

9:                                                ; preds = %1
  %Diff_phi = phi i32 [ %8, %1 ]
  %Dest_phi = phi i32 [ 12, %1 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 13
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %13 = getelementptr inbounds i32, ptr %0, i64 1
  %14 = getelementptr inbounds i32, ptr %0, i64 1
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = tail call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull %14)
  %18 = icmp eq i32 %17, -1
  %19 = icmp eq i32 %17, -1
  %20 = icmp eq i1 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = select i1 %19, i32 15, i32 14
  %23 = xor i32 13, %22
  br i1 %19, label %37, label %24

24:                                               ; preds = %9
  %Diff_phi7 = phi i32 [ %23, %9 ]
  %Dest_phi8 = phi i32 [ %10, %9 ]
  %25 = xor i32 %Diff_phi7, %Dest_phi8
  %26 = icmp eq i32 %25, 14
  %27 = zext i1 %26 to i32
  call void @assert_cfg_ft(i32 %27, i32 %25, i32 0)
  %28 = load i32, ptr %0, align 4
  %29 = load i32, ptr %0, align 4
  %30 = icmp eq i32 %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = load i32, ptr %13, align 4
  %33 = load i32, ptr %14, align 4
  %34 = icmp eq i32 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %29, i32 noundef %33)
  ret void

37:                                               ; preds = %9, %1
  %Diff_phi9 = phi i32 [ %23, %9 ], [ %8, %1 ]
  %Dest_phi10 = phi i32 [ %10, %9 ], [ 12, %1 ]
  %38 = xor i32 %Diff_phi9, %Dest_phi10
  %39 = icmp eq i32 %38, 15
  %40 = zext i1 %39 to i32
  call void @assert_cfg_ft(i32 %40, i32 %38, i32 0)
  tail call void @PostscriptClose()
  tail call void @exit(i32 noundef 0) #12
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @MoveTo_i(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  %7 = getelementptr inbounds i32, ptr %0, i64 1
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = load i32, ptr %6, align 4
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %3, i32 noundef %11)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Solven(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp sgt i32 %0, 0
  %3 = icmp sgt i32 %0, 0
  %4 = icmp eq i1 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %3, i32 18, i32 25
  %7 = xor i32 17, %6
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge35

.lr.ph.preheader:                                 ; preds = %1
  %Diff_phi = phi i32 [ %7, %1 ]
  %Dest_phi = phi i32 [ 17, %1 ]
  %8 = xor i32 %Diff_phi, %Dest_phi
  %9 = icmp eq i32 %8, 18
  %10 = zext i1 %9 to i32
  call void @assert_cfg_ft(i32 %10, i32 %8, i32 0)
  %11 = zext i32 %0 to i64
  %wide.trip.count = zext i32 %0 to i64
  %12 = icmp eq i64 %wide.trip.count, %11
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %Diff_phi59 = phi i32 [ 1, %.lr.ph.preheader ], [ %42, %.lr.ph ]
  %Dest_phi60 = phi i32 [ %8, %.lr.ph.preheader ], [ %16, %.lr.ph ]
  %14 = phi i64 [ 0, %.lr.ph.preheader ], [ %35, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %15 = phi i32 [ 0, %.lr.ph.preheader ], [ %31, %.lr.ph ]
  %.02230 = phi i32 [ 0, %.lr.ph.preheader ], [ %32, %.lr.ph ]
  %16 = xor i32 %Diff_phi59, %Dest_phi60
  %17 = icmp eq i32 %16, 19
  %18 = zext i1 %17 to i32
  call void @assert_cfg_ft(i32 %18, i32 %16, i32 0)
  %19 = icmp eq i64 %indvars.iv, %14
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = icmp eq i32 %.02230, %15
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %14
  %24 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %25 = icmp eq ptr %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = load i32, ptr %23, align 4
  %28 = load i32, ptr %24, align 4
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = add nsw i32 %27, %15
  %32 = add nsw i32 %28, %.02230
  %33 = icmp eq i32 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = add nuw nsw i64 %14, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %36 = icmp eq i64 %indvars.iv.next, %35
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = icmp eq i64 %35, %11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %39 = icmp eq i1 %exitcond.not, %38
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = select i1 %exitcond.not, i32 20, i32 19
  %42 = xor i32 19, %41
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %Diff_phi61 = phi i32 [ %42, %.lr.ph ]
  %Dest_phi62 = phi i32 [ %16, %.lr.ph ]
  %43 = xor i32 %Diff_phi61, %Dest_phi62
  %44 = icmp eq i32 %43, 20
  %45 = zext i1 %44 to i32
  call void @assert_cfg_ft(i32 %45, i32 %43, i32 0)
  %46 = sdiv i32 %31, 2
  %47 = sdiv i32 %32, 2
  %48 = icmp eq i32 %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = select i1 %3, i32 21, i32 25
  %51 = xor i32 20, %50
  br i1 %3, label %.lr.ph34.preheader, label %._crit_edge35

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %Diff_phi63 = phi i32 [ %51, %._crit_edge ]
  %Dest_phi64 = phi i32 [ %43, %._crit_edge ]
  %52 = xor i32 %Diff_phi63, %Dest_phi64
  %53 = icmp eq i32 %52, 21
  %54 = zext i1 %53 to i32
  call void @assert_cfg_ft(i32 %54, i32 %52, i32 0)
  %55 = zext i32 %0 to i64
  %wide.trip.count43 = zext i32 %0 to i64
  %56 = icmp eq i64 %wide.trip.count43, %55
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %85, %.lr.ph34.preheader
  %Diff_phi65 = phi i32 [ 3, %.lr.ph34.preheader ], [ %96, %85 ]
  %Dest_phi66 = phi i32 [ %52, %.lr.ph34.preheader ], [ %86, %85 ]
  %58 = phi i64 [ 0, %.lr.ph34.preheader ], [ %89, %85 ]
  %indvars.iv41 = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next42, %85 ]
  %59 = phi i32 [ 0, %.lr.ph34.preheader ], [ %75, %85 ]
  %.02531 = phi i32 [ 0, %.lr.ph34.preheader ], [ %76, %85 ]
  %60 = xor i32 %Diff_phi65, %Dest_phi66
  %61 = icmp eq i32 %60, 22
  %62 = zext i1 %61 to i32
  call void @assert_cfg_ft(i32 %62, i32 %60, i32 0)
  %63 = icmp eq i64 %indvars.iv41, %58
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = icmp eq i32 %.02531, %59
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %58
  %68 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv41
  %69 = icmp eq ptr %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = load i32, ptr %67, align 4
  %72 = load i32, ptr %68, align 4
  %73 = icmp eq i32 %72, %71
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = add nsw i32 %71, %59
  %76 = add nsw i32 %72, %.02531
  %77 = icmp eq i32 %76, %75
  %78 = zext i1 %77 to i32
  call void @assert_ft(i32 %78, i32 1)
  %79 = icmp sgt i32 %75, %46
  %80 = icmp sgt i32 %76, %47
  %81 = icmp eq i1 %80, %79
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  %83 = select i1 %80, i32 24, i32 23
  %84 = xor i32 22, %83
  br i1 %80, label %._crit_edge35.loopexit.split.loop.exit, label %85

85:                                               ; preds = %.lr.ph34
  %Diff_phi67 = phi i32 [ %84, %.lr.ph34 ]
  %Dest_phi68 = phi i32 [ %60, %.lr.ph34 ]
  %86 = xor i32 %Diff_phi67, %Dest_phi68
  %87 = icmp eq i32 %86, 23
  %88 = zext i1 %87 to i32
  call void @assert_cfg_ft(i32 %88, i32 %86, i32 0)
  %89 = add nuw nsw i64 %58, 1
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %90 = icmp eq i64 %indvars.iv.next42, %89
  %91 = zext i1 %90 to i32
  call void @assert_ft(i32 %91, i32 1)
  %92 = icmp eq i64 %89, %55
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count43
  %93 = icmp eq i1 %exitcond44.not, %92
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  %95 = select i1 %exitcond44.not, i32 25, i32 22
  %96 = xor i32 23, %95
  br i1 %exitcond44.not, label %._crit_edge35, label %.lr.ph34

._crit_edge35.loopexit.split.loop.exit:           ; preds = %.lr.ph34
  %Diff_phi69 = phi i32 [ %84, %.lr.ph34 ]
  %Dest_phi70 = phi i32 [ %60, %.lr.ph34 ]
  %97 = xor i32 %Diff_phi69, %Dest_phi70
  %98 = icmp eq i32 %97, 24
  %99 = zext i1 %98 to i32
  call void @assert_cfg_ft(i32 %99, i32 %97, i32 0)
  %100 = trunc i64 %58 to i32
  %101 = trunc i64 %indvars.iv41 to i32
  %102 = icmp eq i32 %101, %100
  %103 = zext i1 %102 to i32
  call void @assert_ft(i32 %103, i32 1)
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %._crit_edge35.loopexit.split.loop.exit, %85, %._crit_edge, %1
  %Diff_phi71 = phi i32 [ %96, %85 ], [ 1, %._crit_edge35.loopexit.split.loop.exit ], [ %7, %1 ], [ %51, %._crit_edge ]
  %Dest_phi72 = phi i32 [ %86, %85 ], [ %97, %._crit_edge35.loopexit.split.loop.exit ], [ 17, %1 ], [ %43, %._crit_edge ]
  %104 = phi i32 [ %31, %._crit_edge ], [ 0, %1 ], [ %31, %._crit_edge35.loopexit.split.loop.exit ], [ %31, %85 ]
  %.022.lcssa46 = phi i32 [ %32, %._crit_edge ], [ 0, %1 ], [ %32, %._crit_edge35.loopexit.split.loop.exit ], [ %32, %85 ]
  %105 = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %59, %._crit_edge35.loopexit.split.loop.exit ], [ %75, %85 ]
  %.025.lcssa = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %.02531, %._crit_edge35.loopexit.split.loop.exit ], [ %76, %85 ]
  %106 = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %100, %._crit_edge35.loopexit.split.loop.exit ], [ %0, %85 ]
  %.024.lcssa = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %101, %._crit_edge35.loopexit.split.loop.exit ], [ %0, %85 ]
  %107 = xor i32 %Diff_phi71, %Dest_phi72
  %108 = icmp eq i32 %107, 25
  %109 = zext i1 %108 to i32
  call void @assert_cfg_ft(i32 %109, i32 %107, i32 0)
  %110 = icmp eq i32 %.024.lcssa, %106
  %111 = zext i1 %110 to i32
  call void @assert_ft(i32 %111, i32 1)
  %112 = icmp eq i32 %.022.lcssa46, %104
  %113 = zext i1 %112 to i32
  call void @assert_ft(i32 %113, i32 1)
  %114 = icmp eq i32 %.025.lcssa, %105
  %115 = zext i1 %114 to i32
  call void @assert_ft(i32 %115, i32 1)
  %116 = zext i32 %106 to i64
  %117 = zext i32 %.024.lcssa to i64
  %118 = icmp eq i64 %117, %116
  %119 = zext i1 %118 to i32
  call void @assert_ft(i32 %119, i32 1)
  %120 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %116
  %121 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %117
  %122 = icmp eq ptr %121, %120
  %123 = zext i1 %122 to i32
  call void @assert_ft(i32 %123, i32 1)
  %124 = load i32, ptr %120, align 4
  %125 = load i32, ptr %121, align 4
  %126 = icmp eq i32 %125, %124
  %127 = zext i1 %126 to i32
  call void @assert_ft(i32 %127, i32 1)
  %128 = add i32 %105, %124
  %129 = add i32 %.025.lcssa, %125
  %130 = icmp eq i32 %129, %128
  %131 = zext i1 %130 to i32
  call void @assert_ft(i32 %131, i32 1)
  %132 = sub i32 %104, %128
  %133 = sub i32 %.022.lcssa46, %129
  %134 = icmp eq i32 %133, %132
  %135 = zext i1 %134 to i32
  call void @assert_ft(i32 %135, i32 1)
  %136 = tail call i32 @Solve3(i32 noundef %.025.lcssa, i32 noundef %125, i32 noundef %133, ptr noundef nonnull @target), !range !6
  ret i32 %136
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @LineTo_i(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  %7 = getelementptr inbounds i32, ptr %0, i64 1
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = load i32, ptr %6, align 4
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %3, i32 noundef %11)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Solve3(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca [2 x double], align 16
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  %9 = add nsw i32 %1, %0
  %10 = add nsw i32 %1, %0
  %11 = icmp eq i32 %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = call i32 @Solve2(i32 noundef %10, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5), !range !6
  %14 = icmp eq i32 %13, 0
  %.not = icmp eq i32 %13, 0
  %15 = icmp eq i1 %.not, %14
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = select i1 %.not, i32 29, i32 28
  %18 = xor i32 27, %17
  br i1 %.not, label %24, label %19

19:                                               ; preds = %4
  %Diff_phi = phi i32 [ %18, %4 ]
  %Dest_phi = phi i32 [ 27, %4 ]
  %20 = xor i32 %Diff_phi, %Dest_phi
  %21 = icmp eq i32 %20, 28
  %22 = zext i1 %21 to i32
  call void @assert_cfg_ft(i32 %22, i32 %20, i32 0)
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %10, i32 noundef %2)
  br label %.sink.split

24:                                               ; preds = %4
  %Diff_phi27 = phi i32 [ %18, %4 ]
  %Dest_phi28 = phi i32 [ 27, %4 ]
  %25 = xor i32 %Diff_phi27, %Dest_phi28
  %26 = icmp eq i32 %25, 29
  %27 = zext i1 %26 to i32
  call void @assert_cfg_ft(i32 %27, i32 %25, i32 0)
  %28 = add nsw i32 %2, %1
  %29 = add nsw i32 %2, %1
  %30 = icmp eq i32 %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = call i32 @Solve2(i32 noundef %0, i32 noundef %29, ptr noundef %3, ptr noundef nonnull %5), !range !6
  %33 = icmp eq i32 %32, 0
  %.not25 = icmp eq i32 %32, 0
  %34 = icmp eq i1 %.not25, %33
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = select i1 %.not25, i32 31, i32 30
  %37 = xor i32 29, %36
  br i1 %.not25, label %43, label %38

38:                                               ; preds = %24
  %Diff_phi29 = phi i32 [ %37, %24 ]
  %Dest_phi30 = phi i32 [ %25, %24 ]
  %39 = xor i32 %Diff_phi29, %Dest_phi30
  %40 = icmp eq i32 %39, 30
  %41 = zext i1 %40 to i32
  call void @assert_cfg_ft(i32 %41, i32 %39, i32 0)
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %0, i32 noundef %29)
  br label %.sink.split

43:                                               ; preds = %24
  %Diff_phi31 = phi i32 [ %37, %24 ]
  %Dest_phi32 = phi i32 [ %25, %24 ]
  %44 = xor i32 %Diff_phi31, %Dest_phi32
  %45 = icmp eq i32 %44, 31
  %46 = zext i1 %45 to i32
  call void @assert_cfg_ft(i32 %46, i32 %44, i32 0)
  store i32 %0, ptr %6, align 4
  %47 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %48 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %49 = icmp eq ptr %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  store i32 0, ptr %48, align 4
  call void @SubVec(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %51 = call i32 @Solve2(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %5), !range !6
  %52 = icmp eq i32 %51, 0
  %.not26 = icmp eq i32 %51, 0
  %53 = icmp eq i1 %.not26, %52
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = select i1 %.not26, i32 34, i32 32
  %56 = xor i32 31, %55
  br i1 %.not26, label %71, label %57

57:                                               ; preds = %43
  %Diff_phi33 = phi i32 [ %56, %43 ]
  %Dest_phi34 = phi i32 [ %44, %43 ]
  %58 = xor i32 %Diff_phi33, %Dest_phi34
  %59 = icmp eq i32 %58, 32
  %60 = zext i1 %59 to i32
  call void @assert_cfg_ft(i32 %60, i32 %58, i32 0)
  %61 = sitofp i32 %0 to double
  %62 = sitofp i32 %0 to double
  %63 = load double, ptr %5, align 16
  %64 = load double, ptr %5, align 16
  %65 = fadd double %63, %61
  %66 = fadd double %64, %62
  store double %66, ptr %5, align 16
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  call void @LineTo_i(ptr noundef nonnull %6)
  br label %.sink.split

.sink.split:                                      ; preds = %57, %38, %19
  %Diff_phi35 = phi i32 [ 61, %19 ], [ 63, %38 ], [ 1, %57 ]
  %Dest_phi36 = phi i32 [ %20, %19 ], [ %39, %38 ], [ %58, %57 ]
  %68 = xor i32 %Diff_phi35, %Dest_phi36
  %69 = icmp eq i32 %68, 33
  %70 = zext i1 %69 to i32
  call void @assert_cfg_ft(i32 %70, i32 %68, i32 0)
  call void @LineTo_d(ptr noundef nonnull %5)
  br label %71

71:                                               ; preds = %.sink.split, %43
  %Diff_phi37 = phi i32 [ 3, %.sink.split ], [ %56, %43 ]
  %Dest_phi38 = phi i32 [ %68, %.sink.split ], [ %44, %43 ]
  %72 = phi i32 [ 0, %43 ], [ 1, %.sink.split ]
  %.0 = phi i32 [ 0, %43 ], [ 1, %.sink.split ]
  %73 = xor i32 %Diff_phi37, %Dest_phi38
  %74 = icmp eq i32 %73, 34
  %75 = zext i1 %74 to i32
  call void @assert_cfg_ft(i32 %75, i32 %73, i32 0)
  %76 = icmp eq i32 %.0, %72
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  ret i32 %.0
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Solve2(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = alloca [2 x i32], align 8
  store i64 0, ptr %5, align 8
  %6 = call i32 @TwoCircles(ptr noundef nonnull %5, i32 noundef %0, ptr noundef %2, i32 noundef %1, ptr noundef %3), !range !7
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = getelementptr inbounds i32, ptr %2, i64 1
  %12 = getelementptr inbounds i32, ptr %2, i64 1
  %13 = icmp eq ptr %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = load i32, ptr %11, align 4
  %16 = load i32, ptr %12, align 4
  %17 = icmp eq i32 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = load double, ptr %3, align 8
  %20 = load double, ptr %3, align 8
  %21 = getelementptr inbounds double, ptr %3, i64 1
  %22 = getelementptr inbounds double, ptr %3, i64 1
  %23 = icmp eq ptr %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = load double, ptr %21, align 8
  %26 = load double, ptr %22, align 8
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef %16, double noundef %20, double noundef %26)
  %28 = icmp ne i32 %6, 0
  %29 = icmp ne i32 %6, 0
  %30 = icmp eq i1 %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = zext i1 %28 to i32
  %33 = zext i1 %29 to i32
  %34 = icmp eq i32 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  ret i32 %33
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @LineTo_d(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load double, ptr %0, align 8
  %3 = load double, ptr %0, align 8
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = icmp eq ptr %5, %4
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = load double, ptr %4, align 8
  %9 = load double, ptr %5, align 8
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %3, double noundef %9)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @SubVec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i32, ptr %0, align 4
  %5 = load i32, ptr %0, align 4
  %6 = icmp eq i32 %5, %4
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = load i32, ptr %1, align 4
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, %8
  %11 = zext i1 %10 to i32
  call void @assert_ft(i32 %11, i32 1)
  %12 = sub nsw i32 %4, %8
  %13 = sub nsw i32 %5, %9
  %14 = icmp eq i32 %13, %12
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  store i32 %13, ptr %2, align 4
  %16 = getelementptr inbounds i32, ptr %0, i64 1
  %17 = getelementptr inbounds i32, ptr %0, i64 1
  %18 = icmp eq ptr %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = load i32, ptr %16, align 4
  %21 = load i32, ptr %17, align 4
  %22 = icmp eq i32 %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = getelementptr inbounds i32, ptr %1, i64 1
  %25 = getelementptr inbounds i32, ptr %1, i64 1
  %26 = icmp eq ptr %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = load i32, ptr %24, align 4
  %29 = load i32, ptr %25, align 4
  %30 = icmp eq i32 %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = sub nsw i32 %20, %28
  %33 = sub nsw i32 %21, %29
  %34 = icmp eq i32 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = getelementptr inbounds i32, ptr %2, i64 1
  %37 = getelementptr inbounds i32, ptr %2, i64 1
  %38 = icmp eq ptr %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  store i32 %33, ptr %37, align 4
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @TwoCircles(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x double], align 16
  call void @SubVec(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %6)
  %8 = call i32 @TwoCircles0a(i32 noundef %1, ptr noundef nonnull %6, i32 noundef %3, ptr noundef nonnull %7), !range !7
  %9 = load double, ptr %7, align 16
  %10 = load double, ptr %7, align 16
  %11 = load i32, ptr %0, align 4
  %12 = load i32, ptr %0, align 4
  %13 = icmp eq i32 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = sitofp i32 %11 to double
  %16 = sitofp i32 %12 to double
  %17 = fadd double %9, %15
  %18 = fadd double %10, %16
  store double %18, ptr %4, align 8
  %19 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  %20 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  %21 = icmp eq ptr %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = load double, ptr %19, align 8
  %24 = load double, ptr %20, align 8
  %25 = getelementptr inbounds i32, ptr %0, i64 1
  %26 = getelementptr inbounds i32, ptr %0, i64 1
  %27 = icmp eq ptr %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = load i32, ptr %25, align 4
  %30 = load i32, ptr %26, align 4
  %31 = icmp eq i32 %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = sitofp i32 %29 to double
  %34 = sitofp i32 %30 to double
  %35 = fadd double %23, %33
  %36 = fadd double %24, %34
  %37 = getelementptr inbounds double, ptr %4, i64 1
  %38 = getelementptr inbounds double, ptr %4, i64 1
  %39 = icmp eq ptr %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  store double %36, ptr %38, align 8
  ret i32 %8
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @TwoCircles0a(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = tail call double @Length2(ptr noundef %1)
  %6 = add nsw i32 %2, %0
  %7 = add nsw i32 %2, %0
  %8 = icmp eq i32 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = mul nsw i32 %6, %6
  %11 = mul nsw i32 %7, %7
  %12 = icmp eq i32 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = sitofp i32 %10 to double
  %15 = sitofp i32 %11 to double
  %16 = sub nsw i32 %0, %2
  %17 = sub nsw i32 %0, %2
  %18 = icmp eq i32 %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = mul nsw i32 %16, %16
  %21 = mul nsw i32 %17, %17
  %22 = icmp eq i32 %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = sitofp i32 %20 to double
  %25 = sitofp i32 %21 to double
  %26 = fcmp ogt double %5, %14
  %27 = fcmp ogt double %5, %15
  %28 = icmp eq i1 %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = fcmp olt double %5, %24
  %31 = fcmp olt double %5, %25
  %32 = icmp eq i1 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = select i1 %26, i1 true, i1 %30
  %or.cond = select i1 %27, i1 true, i1 %31
  %35 = icmp eq i1 %or.cond, %34
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = select i1 %or.cond, i32 47, i32 40
  %38 = xor i32 39, %37
  br i1 %or.cond, label %152, label %39

39:                                               ; preds = %4
  %Diff_phi = phi i32 [ %38, %4 ]
  %Dest_phi = phi i32 [ 39, %4 ]
  %40 = xor i32 %Diff_phi, %Dest_phi
  %41 = icmp eq i32 %40, 40
  %42 = zext i1 %41 to i32
  call void @assert_cfg_ft(i32 %42, i32 %40, i32 0)
  %43 = fcmp oeq double %5, %14
  %44 = fcmp oeq double %5, %15
  %45 = icmp eq i1 %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = select i1 %44, i32 41, i32 42
  %48 = xor i32 40, %47
  br i1 %44, label %49, label %83

49:                                               ; preds = %39
  %Diff_phi46 = phi i32 [ %48, %39 ]
  %Dest_phi47 = phi i32 [ %40, %39 ]
  %50 = xor i32 %Diff_phi46, %Dest_phi47
  %51 = icmp eq i32 %50, 41
  %52 = zext i1 %51 to i32
  call void @assert_cfg_ft(i32 %52, i32 %50, i32 0)
  %53 = sitofp i32 %0 to double
  %54 = sitofp i32 %0 to double
  %55 = sitofp i32 %6 to double
  %56 = sitofp i32 %7 to double
  %57 = fdiv double %53, %55
  %58 = fdiv double %54, %56
  %59 = load i32, ptr %1, align 4
  %60 = load i32, ptr %1, align 4
  %61 = icmp eq i32 %60, %59
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = sitofp i32 %59 to double
  %64 = sitofp i32 %60 to double
  %65 = fmul double %57, %63
  %66 = fmul double %58, %64
  store double %66, ptr %3, align 8
  %67 = getelementptr inbounds i32, ptr %1, i64 1
  %68 = getelementptr inbounds i32, ptr %1, i64 1
  %69 = icmp eq ptr %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = load i32, ptr %67, align 4
  %72 = load i32, ptr %68, align 4
  %73 = icmp eq i32 %72, %71
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = sitofp i32 %71 to double
  %76 = sitofp i32 %72 to double
  %77 = fmul double %57, %75
  %78 = fmul double %58, %76
  %79 = getelementptr inbounds double, ptr %3, i64 1
  %80 = getelementptr inbounds double, ptr %3, i64 1
  %81 = icmp eq ptr %80, %79
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  store double %78, ptr %80, align 8
  br label %152

83:                                               ; preds = %39
  %Diff_phi48 = phi i32 [ %48, %39 ]
  %Dest_phi49 = phi i32 [ %40, %39 ]
  %84 = xor i32 %Diff_phi48, %Dest_phi49
  %85 = icmp eq i32 %84, 42
  %86 = zext i1 %85 to i32
  call void @assert_cfg_ft(i32 %86, i32 %84, i32 0)
  %87 = fcmp oeq double %5, %24
  %88 = fcmp oeq double %5, %25
  %89 = icmp eq i1 %88, %87
  %90 = zext i1 %89 to i32
  call void @assert_ft(i32 %90, i32 1)
  %91 = select i1 %88, i32 43, i32 46
  %92 = xor i32 42, %91
  br i1 %88, label %93, label %147

93:                                               ; preds = %83
  %Diff_phi50 = phi i32 [ %92, %83 ]
  %Dest_phi51 = phi i32 [ %84, %83 ]
  %94 = xor i32 %Diff_phi50, %Dest_phi51
  %95 = icmp eq i32 %94, 43
  %96 = zext i1 %95 to i32
  call void @assert_cfg_ft(i32 %96, i32 %94, i32 0)
  %97 = icmp eq i32 %0, %2
  %98 = icmp eq i32 %0, %2
  %99 = icmp eq i1 %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = select i1 %98, i32 44, i32 45
  %102 = xor i32 43, %101
  br i1 %98, label %103, label %113

103:                                              ; preds = %93
  %Diff_phi52 = phi i32 [ %102, %93 ]
  %Dest_phi53 = phi i32 [ %94, %93 ]
  %104 = xor i32 %Diff_phi52, %Dest_phi53
  %105 = icmp eq i32 %104, 44
  %106 = zext i1 %105 to i32
  call void @assert_cfg_ft(i32 %106, i32 %104, i32 0)
  %107 = sitofp i32 %2 to double
  %108 = sitofp i32 %2 to double
  store double %108, ptr %3, align 8
  %109 = getelementptr inbounds double, ptr %3, i64 1
  %110 = getelementptr inbounds double, ptr %3, i64 1
  %111 = icmp eq ptr %110, %109
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  store double 0.000000e+00, ptr %110, align 8
  br label %152

113:                                              ; preds = %93
  %Diff_phi54 = phi i32 [ %102, %93 ]
  %Dest_phi55 = phi i32 [ %94, %93 ]
  %114 = xor i32 %Diff_phi54, %Dest_phi55
  %115 = icmp eq i32 %114, 45
  %116 = zext i1 %115 to i32
  call void @assert_cfg_ft(i32 %116, i32 %114, i32 0)
  %117 = sitofp i32 %0 to double
  %118 = sitofp i32 %0 to double
  %119 = sitofp i32 %16 to double
  %120 = sitofp i32 %17 to double
  %121 = fdiv double %117, %119
  %122 = fdiv double %118, %120
  %123 = load i32, ptr %1, align 4
  %124 = load i32, ptr %1, align 4
  %125 = icmp eq i32 %124, %123
  %126 = zext i1 %125 to i32
  call void @assert_ft(i32 %126, i32 1)
  %127 = sitofp i32 %123 to double
  %128 = sitofp i32 %124 to double
  %129 = fmul double %121, %127
  %130 = fmul double %122, %128
  store double %130, ptr %3, align 8
  %131 = getelementptr inbounds i32, ptr %1, i64 1
  %132 = getelementptr inbounds i32, ptr %1, i64 1
  %133 = icmp eq ptr %132, %131
  %134 = zext i1 %133 to i32
  call void @assert_ft(i32 %134, i32 1)
  %135 = load i32, ptr %131, align 4
  %136 = load i32, ptr %132, align 4
  %137 = icmp eq i32 %136, %135
  %138 = zext i1 %137 to i32
  call void @assert_ft(i32 %138, i32 1)
  %139 = sitofp i32 %135 to double
  %140 = sitofp i32 %136 to double
  %141 = fmul double %121, %139
  %142 = fmul double %122, %140
  %143 = getelementptr inbounds double, ptr %3, i64 1
  %144 = getelementptr inbounds double, ptr %3, i64 1
  %145 = icmp eq ptr %144, %143
  %146 = zext i1 %145 to i32
  call void @assert_ft(i32 %146, i32 1)
  store double %142, ptr %144, align 8
  br label %152

147:                                              ; preds = %83
  %Diff_phi56 = phi i32 [ %92, %83 ]
  %Dest_phi57 = phi i32 [ %84, %83 ]
  %148 = xor i32 %Diff_phi56, %Dest_phi57
  %149 = icmp eq i32 %148, 46
  %150 = zext i1 %149 to i32
  call void @assert_cfg_ft(i32 %150, i32 %148, i32 0)
  %151 = tail call i32 @TwoCircles0b(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %152

152:                                              ; preds = %147, %113, %103, %49, %4
  %Diff_phi58 = phi i32 [ %38, %4 ], [ 1, %147 ], [ 2, %113 ], [ 3, %103 ], [ 6, %49 ]
  %Dest_phi59 = phi i32 [ 39, %4 ], [ %148, %147 ], [ %114, %113 ], [ %104, %103 ], [ %50, %49 ]
  %153 = phi i32 [ 1, %49 ], [ 3, %103 ], [ 1, %113 ], [ 2, %147 ], [ 0, %4 ]
  %.0 = phi i32 [ 1, %49 ], [ 3, %103 ], [ 1, %113 ], [ 2, %147 ], [ 0, %4 ]
  %154 = xor i32 %Diff_phi58, %Dest_phi59
  %155 = icmp eq i32 %154, 47
  %156 = zext i1 %155 to i32
  call void @assert_cfg_ft(i32 %156, i32 %154, i32 0)
  %157 = icmp eq i32 %.0, %153
  %158 = zext i1 %157 to i32
  call void @assert_ft(i32 %158, i32 1)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local double @Length2(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = sitofp i32 %2 to double
  %7 = sitofp i32 %3 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %7, double 0.000000e+00)
  %9 = getelementptr inbounds i32, ptr %0, i64 1
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = load i32, ptr %9, align 4
  %14 = load i32, ptr %10, align 4
  %15 = icmp eq i32 %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = sitofp i32 %13 to double
  %18 = sitofp i32 %14 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %8)
  ret double %19
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @TwoCircles0b(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca [2 x double], align 16
  %6 = tail call double @Length2(ptr noundef %1)
  %7 = tail call double @sqrt(double noundef %6) #13
  %8 = load i32, ptr %1, align 4
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, %8
  %11 = zext i1 %10 to i32
  call void @assert_ft(i32 %11, i32 1)
  %12 = sitofp i32 %8 to double
  %13 = sitofp i32 %9 to double
  %14 = fdiv double %12, %7
  %15 = fdiv double %13, %7
  %16 = getelementptr inbounds i32, ptr %1, i64 1
  %17 = getelementptr inbounds i32, ptr %1, i64 1
  %18 = icmp eq ptr %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = load i32, ptr %16, align 4
  %21 = load i32, ptr %17, align 4
  %22 = icmp eq i32 %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = sitofp i32 %20 to double
  %25 = sitofp i32 %21 to double
  %26 = fdiv double %24, %7
  %27 = fdiv double %25, %7
  call void @TwoCircles00(i32 noundef %0, double noundef %7, i32 noundef %2, ptr noundef nonnull %5)
  %28 = load double, ptr %5, align 16
  %29 = load double, ptr %5, align 16
  %30 = fneg double %26
  %31 = fneg double %27
  %32 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  %33 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  %34 = icmp eq ptr %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = load double, ptr %32, align 8
  %37 = load double, ptr %33, align 8
  %38 = fmul double %36, %30
  %39 = fmul double %37, %31
  %40 = tail call double @llvm.fmuladd.f64(double %15, double %29, double %39)
  store double %40, ptr %3, align 8
  %41 = fmul double %14, %36
  %42 = fmul double %15, %37
  %43 = tail call double @llvm.fmuladd.f64(double %27, double %29, double %42)
  %44 = getelementptr inbounds double, ptr %3, i64 1
  %45 = getelementptr inbounds double, ptr %3, i64 1
  %46 = icmp eq ptr %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  store double %43, ptr %45, align 8
  ret i32 2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @TwoCircles00(i32 noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = mul nsw i32 %0, %0
  %6 = mul nsw i32 %0, %0
  %7 = icmp eq i32 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = sitofp i32 %5 to double
  %10 = sitofp i32 %6 to double
  %11 = mul nsw i32 %2, %2
  %12 = mul nsw i32 %2, %2
  %13 = icmp eq i32 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = sitofp i32 %11 to double
  %16 = sitofp i32 %12 to double
  %17 = fsub double %9, %15
  %18 = fsub double %10, %16
  %19 = fdiv double %17, %1
  %20 = fdiv double %18, %1
  %21 = fadd double %19, %1
  %22 = fadd double %20, %1
  %23 = fmul double %21, 5.000000e-01
  %24 = fmul double %22, 5.000000e-01
  store double %24, ptr %3, align 8
  %25 = fneg double %23
  %26 = fneg double %24
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %24, double %10)
  %28 = tail call double @sqrt(double noundef %27) #13
  %29 = getelementptr inbounds double, ptr %3, i64 1
  %30 = getelementptr inbounds double, ptr %3, i64 1
  %31 = icmp eq ptr %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  store double %28, ptr %30, align 8
  %33 = load double, ptr %3, align 8
  %34 = load double, ptr %3, align 8
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %34, double noundef %28)
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
  %2 = load i32, ptr @nlinks, align 4
  %3 = icmp eq i32 %2, %1
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = icmp sgt i32 %1, 0
  %6 = icmp sgt i32 %2, 0
  %7 = icmp eq i1 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = select i1 %6, i32 53, i32 54
  %10 = xor i32 52, %9
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %0
  %Diff_phi = phi i32 [ %10, %0 ], [ %46, %.lr.ph ]
  %Dest_phi = phi i32 [ 52, %0 ], [ %12, %.lr.ph ]
  %11 = phi i64 [ %30, %.lr.ph ], [ 0, %0 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %12 = xor i32 %Diff_phi, %Dest_phi
  %13 = icmp eq i32 %12, 53
  %14 = zext i1 %13 to i32
  call void @assert_cfg_ft(i32 %14, i32 %12, i32 0)
  %15 = icmp eq i64 %indvars.iv, %11
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %11
  %18 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %19 = icmp eq ptr %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = load i32, ptr %17, align 4
  %22 = load i32, ptr %18, align 4
  %23 = icmp eq i32 %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = trunc i64 %11 to i32
  %26 = trunc i64 %indvars.iv to i32
  %27 = icmp eq i32 %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %26, i32 noundef %22)
  %30 = add nuw nsw i64 %11, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %31 = icmp eq i64 %indvars.iv.next, %30
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = load i32, ptr @nlinks, align 4
  %34 = load i32, ptr @nlinks, align 4
  %35 = icmp eq i32 %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = sext i32 %33 to i64
  %38 = sext i32 %34 to i64
  %39 = icmp eq i64 %38, %37
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = icmp slt i64 %30, %37
  %42 = icmp slt i64 %indvars.iv.next, %38
  %43 = icmp eq i1 %42, %41
  %44 = zext i1 %43 to i32
  call void @assert_ft(i32 %44, i32 1)
  %45 = select i1 %42, i32 53, i32 54
  %46 = xor i32 53, %45
  br i1 %42, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %Diff_phi5 = phi i32 [ %46, %.lr.ph ], [ %10, %0 ]
  %Dest_phi6 = phi i32 [ %12, %.lr.ph ], [ 52, %0 ]
  %47 = xor i32 %Diff_phi5, %Dest_phi6
  %48 = icmp eq i32 %47, 54
  %49 = zext i1 %48 to i32
  call void @assert_cfg_ft(i32 %49, i32 %47, i32 0)
  %50 = tail call i32 @putchar(i32 noundef 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @EqPointi(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load i32, ptr %1, align 4
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = icmp eq i32 %3, %7
  %.not = icmp eq i32 %4, %8
  %12 = icmp eq i1 %.not, %11
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = select i1 %.not, i32 56, i32 57
  %15 = xor i32 55, %14
  br i1 %.not, label %16, label %42

16:                                               ; preds = %2
  %Diff_phi = phi i32 [ %15, %2 ]
  %Dest_phi = phi i32 [ 55, %2 ]
  %17 = xor i32 %Diff_phi, %Dest_phi
  %18 = icmp eq i32 %17, 56
  %19 = zext i1 %18 to i32
  call void @assert_cfg_ft(i32 %19, i32 %17, i32 0)
  %20 = getelementptr inbounds i32, ptr %0, i64 1
  %21 = getelementptr inbounds i32, ptr %0, i64 1
  %22 = icmp eq ptr %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = load i32, ptr %20, align 4
  %25 = load i32, ptr %21, align 4
  %26 = icmp eq i32 %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = getelementptr inbounds i32, ptr %1, i64 1
  %29 = getelementptr inbounds i32, ptr %1, i64 1
  %30 = icmp eq ptr %29, %28
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = load i32, ptr %28, align 4
  %33 = load i32, ptr %29, align 4
  %34 = icmp eq i32 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = icmp eq i32 %24, %32
  %.not.1 = icmp eq i32 %25, %33
  %37 = icmp eq i1 %.not.1, %36
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = zext i1 %36 to i32
  %spec.select = zext i1 %.not.1 to i32
  %40 = icmp eq i32 %spec.select, %39
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  br label %42

42:                                               ; preds = %16, %2
  %Diff_phi8 = phi i32 [ 1, %16 ], [ %15, %2 ]
  %Dest_phi9 = phi i32 [ %17, %16 ], [ 55, %2 ]
  %43 = phi i32 [ 0, %2 ], [ %39, %16 ]
  %.06 = phi i32 [ 0, %2 ], [ %spec.select, %16 ]
  %44 = xor i32 %Diff_phi8, %Dest_phi9
  %45 = icmp eq i32 %44, 57
  %46 = zext i1 %45 to i32
  call void @assert_cfg_ft(i32 %46, i32 %44, i32 0)
  %47 = icmp eq i32 %.06, %43
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  ret i32 %.06
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @RadDeg(double noundef %0) local_unnamed_addr #10 {
  %2 = fmul double %0, 1.800000e+02
  %3 = fmul double %0, 1.800000e+02
  %4 = fdiv double %2, 0x400921FB54442D18
  %5 = fdiv double %3, 0x400921FB54442D18
  ret double %5
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
