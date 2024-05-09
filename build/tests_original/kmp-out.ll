; ModuleID = 'kmp-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rndmill = type { i64, i64, i64 }

@next = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Usage:\0A\09%s <ref|train|test>\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@buffer = dso_local local_unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"Not enough memory\0A\00", align 1
@pat = dso_local local_unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"Benchmark begin...\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%2d Pattern:\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c": found %d times\0A\00", align 1
@str = private unnamed_addr constant [42 x i8] c"Invalid data set use ref or train or test\00", align 1
@str.2 = private unnamed_addr constant [20 x i8] c"Benchmark finish...\00", align 1
@str.3 = private unnamed_addr constant [24 x i8] c"KMP with test input set\00", align 1
@str.4 = private unnamed_addr constant [29 x i8] c"KMP with reference input set\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @preprocpat(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  store i32 -1, ptr %1, align 4
  br label %3

3:                                                ; preds = %32, %2
  %.020 = phi i32 [ 0, %2 ], [ %.121, %32 ]
  %.0 = phi i32 [ -1, %2 ], [ %.1, %32 ]
  %4 = icmp eq i32 %.0, -1
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = sext i32 %.020 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i32 %.0 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %5, %3
  %14 = add nsw i32 %.020, 1
  %15 = add nsw i32 %.0, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i32 %14 to i64
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = getelementptr inbounds i32, ptr %1, i64 %16
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %13
  %27 = phi i32 [ %25, %23 ], [ %15, %13 ]
  %28 = getelementptr inbounds i32, ptr %1, i64 %19
  store i32 %27, ptr %28, align 4
  %.pre = load i8, ptr %20, align 1
  br label %32

29:                                               ; preds = %5
  %30 = getelementptr inbounds i32, ptr %1, i64 %9
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i8 [ %.pre, %26 ], [ %8, %29 ]
  %.121 = phi i32 [ %14, %26 ], [ %.020, %29 ]
  %.1 = phi i32 [ %15, %26 ], [ %31, %29 ]
  %.not = icmp eq i8 %33, 0
  br i1 %.not, label %34, label %3

34:                                               ; preds = %32
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @search(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %.loopexit, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @next, align 8
  tail call void @preprocpat(ptr noundef nonnull %0, ptr noundef %6)
  %7 = load i8, ptr %1, align 1
  %.not20 = icmp eq i8 %7, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %5
  %8 = load ptr, ptr @next, align 8
  br label %9

9:                                                ; preds = %30, %.lr.ph
  %10 = phi i8 [ %7, %.lr.ph ], [ %31, %30 ]
  %.022 = phi i32 [ 0, %.lr.ph ], [ %.1, %30 ]
  %.01521 = phi ptr [ %1, %.lr.ph ], [ %.116, %30 ]
  %11 = icmp eq i32 %.022, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = sext i32 %.022 to i64
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, %10
  br i1 %16, label %17, label %27

17:                                               ; preds = %12, %9
  %18 = getelementptr inbounds i8, ptr %.01521, i64 1
  %19 = add nsw i32 %.022, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = sub nsw i64 0, %20
  %26 = getelementptr inbounds i8, ptr %18, i64 %25
  br label %.loopexit

27:                                               ; preds = %12
  %28 = getelementptr inbounds i32, ptr %8, i64 %13
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %17
  %.116 = phi ptr [ %18, %17 ], [ %.01521, %27 ]
  %.1 = phi i32 [ %19, %17 ], [ %29, %27 ]
  %31 = load i8, ptr %.116, align 1
  %.not = icmp eq i8 %31, 0
  br i1 %.not, label %.loopexit, label %9

.loopexit:                                        ; preds = %30, %24, %5, %2
  %.017 = phi ptr [ %26, %24 ], [ %1, %2 ], [ null, %5 ], [ null, %30 ]
  ret ptr %.017
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %5)
  tail call void @exit(i32 noundef 0) #13
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.1) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.3) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.5) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef -1) #13
  unreachable

19:                                               ; preds = %15, %12, %7
  %str.3.sink = phi ptr [ @str.4, %7 ], [ @str.3, %12 ], [ @str.3, %15 ]
  %.039 = phi i32 [ 6, %7 ], [ 5, %12 ], [ 4, %15 ]
  %.038 = phi i32 [ 524305, %7 ], [ 98321, %12 ], [ 32785, %15 ]
  %puts44 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.3.sink)
  %20 = zext i32 %.038 to i64
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #15
  store ptr %21, ptr @buffer, align 8
  %.not = icmp eq ptr %21, null
  br i1 %.not, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8
  %24 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr %23) #16
  tail call void @exit(i32 noundef 0) #13
  unreachable

25:                                               ; preds = %19
  %26 = tail call ptr @init_mill(i64 noundef 63009, i64 noundef 12584, i64 noundef 33363)
  %27 = add nuw nsw i32 %.039, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #15
  store ptr %29, ptr @pat, align 8
  %30 = zext i32 %.039 to i64
  %31 = shl nuw nsw i64 %30, 2
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #15
  store ptr %32, ptr @next, align 8
  %33 = icmp ne ptr %29, null
  %34 = icmp ne ptr %32, null
  %or.cond = and i1 %33, %34
  %35 = load ptr, ptr @stderr, align 8
  br i1 %or.cond, label %38, label %36

36:                                               ; preds = %25
  %37 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr %35) #16
  tail call void @exit(i32 noundef 0) #13
  unreachable

38:                                               ; preds = %25
  %39 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 19, i64 1, ptr %35) #16
  br label %40

40:                                               ; preds = %40, %38
  %indvars.iv = phi i64 [ 0, %38 ], [ %indvars.iv.next, %40 ]
  %41 = tail call i64 @rndnum(ptr noundef %26)
  %42 = urem i64 %41, 7
  %43 = trunc i64 %42 to i8
  %44 = add nuw nsw i8 %43, 97
  %45 = load ptr, ptr @buffer, align 8
  %46 = getelementptr inbounds i8, ptr %45, i64 %indvars.iv
  store i8 %44, ptr %46, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %20
  br i1 %exitcond.not, label %47, label %40

47:                                               ; preds = %40
  %48 = load ptr, ptr @buffer, align 8
  %49 = add nsw i32 %.038, -1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %48, i64 %50
  store i8 0, ptr %51, align 1
  %52 = mul nuw nsw i32 %.038, 3
  br label %53

53:                                               ; preds = %._crit_edge, %47
  %.04049 = phi i32 [ 0, %47 ], [ %54, %._crit_edge ]
  %54 = add nuw nsw i32 %.04049, 1
  %55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %54)
  br label %56

56:                                               ; preds = %56, %53
  %indvars.iv50 = phi i64 [ 0, %53 ], [ %indvars.iv.next51, %56 ]
  %57 = tail call i64 @rndnum(ptr noundef %26)
  %58 = urem i64 %57, 7
  %59 = trunc i64 %58 to i8
  %60 = add nuw nsw i8 %59, 97
  %61 = load ptr, ptr @pat, align 8
  %62 = getelementptr inbounds i8, ptr %61, i64 %indvars.iv50
  store i8 %60, ptr %62, align 1
  %63 = load ptr, ptr @pat, align 8
  %64 = getelementptr inbounds i8, ptr %63, i64 %indvars.iv50
  %65 = load i8, ptr %64, align 1
  %66 = sext i8 %65 to i32
  %putchar = tail call i32 @putchar(i32 %66)
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, %30
  br i1 %exitcond53.not, label %67, label %56

67:                                               ; preds = %56
  %68 = load ptr, ptr @pat, align 8
  %69 = getelementptr inbounds i8, ptr %68, i64 %30
  store i8 0, ptr %69, align 1
  %70 = load ptr, ptr @buffer, align 8
  %71 = urem i32 %.04049, 3
  %72 = add nuw nsw i32 %71, 3
  %73 = udiv i32 %52, %72
  %74 = add nsw i32 %73, -1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %70, i64 %75
  store i8 0, ptr %76, align 1
  %77 = load ptr, ptr @buffer, align 8
  %78 = lshr i32 %74, 2
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  %81 = load ptr, ptr @pat, align 8
  %82 = tail call ptr @search(ptr noundef %81, ptr noundef %80)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %67
  %84 = phi ptr [ %88, %.lr.ph ], [ %82, %67 ]
  %.048 = phi i32 [ %86, %.lr.ph ], [ 0, %67 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  %86 = add nuw nsw i32 %.048, 1
  %87 = load ptr, ptr @pat, align 8
  %88 = tail call ptr @search(ptr noundef %87, ptr noundef nonnull %85)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %67
  %.0.lcssa = phi i32 [ 0, %67 ], [ %86, %.lr.ph ]
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.0.lcssa)
  %91 = load ptr, ptr @buffer, align 8
  %92 = getelementptr inbounds i8, ptr %91, i64 %75
  store i8 97, ptr %92, align 1
  %exitcond54.not = icmp eq i32 %54, 23
  br i1 %exitcond54.not, label %93, label %53

93:                                               ; preds = %._crit_edge
  %puts43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  tail call void @nuke_mill(ptr noundef %26)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @init_mill(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15
  store i64 %0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.rndmill, ptr %4, i64 0, i32 1
  store i64 %1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.rndmill, ptr %4, i64 0, i32 2
  store i64 %2, ptr %6, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @nuke_mill(ptr nocapture noundef %0) local_unnamed_addr #8 {
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @rndnum(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %.promoted = load i64, ptr %0, align 8
  %.promoted25 = load i64, ptr %2, align 8
  %.promoted27 = load i64, ptr %3, align 8
  br label %4

4:                                                ; preds = %4, %1
  %.030 = phi i32 [ 0, %1 ], [ %37, %4 ]
  %.02429 = phi i64 [ 0, %1 ], [ %36, %4 ]
  %5 = phi i64 [ %.promoted, %1 ], [ %19, %4 ]
  %6 = phi i64 [ %.promoted25, %1 ], [ %24, %4 ]
  %7 = phi i64 [ %.promoted27, %1 ], [ %29, %4 ]
  %8 = lshr i64 %5, 31
  %9 = lshr i64 %5, 6
  %10 = lshr i64 %5, 4
  %11 = lshr i64 %5, 2
  %12 = xor i64 %9, %8
  %13 = xor i64 %12, %10
  %14 = xor i64 %13, %11
  %15 = xor i64 %14, %5
  %16 = shl i64 %15, 31
  %17 = and i64 %16, 2147483648
  %18 = lshr i64 %5, 1
  %19 = or i64 %17, %18
  %20 = shl i64 %6, 28
  %21 = xor i64 %20, %6
  %22 = and i64 %21, 1073741824
  %23 = lshr i64 %6, 1
  %24 = or i64 %22, %23
  %25 = lshr i64 %7, 1
  %26 = shl i64 %25, 28
  %27 = xor i64 %26, %7
  %28 = and i64 %27, 268435456
  %29 = or i64 %28, %25
  %30 = and i64 %23, %18
  %31 = xor i64 %18, -1
  %32 = and i64 %25, %31
  %33 = or i64 %32, %30
  %34 = and i64 %33, 1
  %35 = shl i64 %.02429, 1
  %36 = or i64 %34, %35
  %37 = add nuw nsw i32 %.030, 1
  %exitcond.not = icmp eq i32 %37, 32
  br i1 %exitcond.not, label %38, label %4

38:                                               ; preds = %4
  store i64 %19, ptr %0, align 8
  store i64 %24, ptr %2, align 8
  store i64 %29, ptr %3, align 8
  ret i64 %36
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @checkpoint_mill(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = tail call ptr @init_mill(i64 noundef %2, i64 noundef %4, i64 noundef %6)
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @reset_mill(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = load i64, ptr %1, align 8
  store i64 %3, ptr %0, align 8
  %4 = getelementptr inbounds %struct.rndmill, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  store i64 %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.rndmill, ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  store i64 %8, ptr %9, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

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

attributes #0 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold }
attributes #17 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
