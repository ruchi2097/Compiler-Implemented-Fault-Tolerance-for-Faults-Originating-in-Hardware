; ModuleID = 'em3d-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node_t = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.graph_t = type { [64 x ptr], [64 x ptr] }

@.str = private unnamed_addr constant [47 x i8] c"Hello world--Doing em3d with args %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"nonlocals = %d\0A\00", align 1
@nonlocals = dso_local local_unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.1.8 = private unnamed_addr constant [56 x i8] c"/ece566/wtest/../wolfbench/Benchmarks/em3d/make_graph.c\00", align 1
@__MyNodeId = dso_local local_unnamed_addr global i32 0, align 4
@IDMASK = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Error! on dest %d @ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"pre other_node = 0x%x,number = %d,dest = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Error! no to_nodes filed on 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"post other_node = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"node 0x%x list 0x%x count %d\0A\00", align 1
@percentcheck = internal unnamed_addr global i32 0, align 4
@numlocal = internal unnamed_addr global i32 0, align 4
@.str.24 = private unnamed_addr constant [29 x i8] c"percentcheck=%d,numlocal=%d\0A\00", align 1
@DebugFlag = dso_local local_unnamed_addr global i32 0, align 4
@__NumNodes = dso_local local_unnamed_addr global i32 0, align 4
@n_nodes = dso_local local_unnamed_addr global i32 0, align 4
@d_nodes = dso_local local_unnamed_addr global i32 0, align 4
@local_p = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [22 x i8] c"Uncaught malloc error\00", align 1
@str.1 = private unnamed_addr constant [20 x i8] c"Help! no from count\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"Help!!\00", align 1
@str.3 = private unnamed_addr constant [15 x i8] c"making tables \00", align 1
@str.4 = private unnamed_addr constant [17 x i8] c"making neighbors\00", align 1
@str.5 = private unnamed_addr constant [25 x i8] c"updating from and coeffs\00", align 1
@str.6 = private unnamed_addr constant [20 x i8] c"filling from fields\00", align 1
@str.7 = private unnamed_addr constant [30 x i8] c"localizing coeffs, from_nodes\00", align 1
@str.8 = private unnamed_addr constant [23 x i8] c"cleanup for return now\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_nodes(ptr noundef readonly %0) local_unnamed_addr #0 {
  %.not55 = icmp eq ptr %0, null
  br i1 %.not55, label %._crit_edge60, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %1
  %nonlocals.promoted47 = load i32, ptr @nonlocals, align 4
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %52, %.lr.ph59.preheader
  %.057 = phi ptr [ %54, %52 ], [ %0, %.lr.ph59.preheader ]
  %nonlocals.promoted5456 = phi i32 [ %nonlocals.promoted48, %52 ], [ %nonlocals.promoted47, %.lr.ph59.preheader ]
  %2 = load ptr, ptr %.057, align 8
  %3 = load double, ptr %2, align 8
  %4 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add nsw i32 %5, -1
  %7 = icmp sgt i32 %5, 1
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph59
  %8 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 3
  %9 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 4
  %10 = zext i32 %6 to i64
  %.pre = load ptr, ptr %8, align 8
  %.pre62 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %29, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %29 ]
  %nonlocals.promoted53 = phi i32 [ %nonlocals.promoted5456, %.lr.ph ], [ %nonlocals.promoted51, %29 ]
  %.03845 = phi double [ %3, %.lr.ph ], [ %32, %29 ]
  %12 = phi i32 [ %nonlocals.promoted5456, %.lr.ph ], [ %30, %29 ]
  %13 = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds double, ptr %.pre62, i64 %indvars.iv
  %16 = load double, ptr %15, align 8
  %.not42 = icmp eq ptr %14, null
  br i1 %.not42, label %17, label %19

17:                                               ; preds = %11
  %18 = add nsw i32 %12, 1
  store i32 %18, ptr @nonlocals, align 4
  br label %19

19:                                               ; preds = %17, %11
  %nonlocals.promoted52 = phi i32 [ %18, %17 ], [ %nonlocals.promoted53, %11 ]
  %20 = phi i32 [ %18, %17 ], [ %12, %11 ]
  %21 = load double, ptr %14, align 8
  %22 = fneg double %16
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %21, double %.03845)
  %24 = or i64 %indvars.iv, 1
  %25 = getelementptr inbounds ptr, ptr %.pre, i64 %24
  %26 = load ptr, ptr %25, align 8
  %.not43 = icmp eq ptr %26, null
  br i1 %.not43, label %27, label %29

27:                                               ; preds = %19
  %28 = add nsw i32 %20, 1
  store i32 %28, ptr @nonlocals, align 4
  br label %29

29:                                               ; preds = %27, %19
  %nonlocals.promoted51 = phi i32 [ %28, %27 ], [ %nonlocals.promoted52, %19 ]
  %30 = phi i32 [ %28, %27 ], [ %20, %19 ]
  %31 = load double, ptr %26, align 8
  %32 = tail call double @llvm.fmuladd.f64(double %22, double %31, double %23)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %33 = icmp ult i64 %indvars.iv.next, %10
  br i1 %33, label %11, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %29
  %34 = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph59
  %nonlocals.promoted50 = phi i32 [ %nonlocals.promoted5456, %.lr.ph59 ], [ %nonlocals.promoted51, %._crit_edge.loopexit ]
  %.039.lcssa = phi i32 [ 0, %.lr.ph59 ], [ %34, %._crit_edge.loopexit ]
  %.038.lcssa = phi double [ %3, %.lr.ph59 ], [ %32, %._crit_edge.loopexit ]
  %35 = icmp eq i32 %.039.lcssa, %6
  br i1 %35, label %36, label %52

36:                                               ; preds = %._crit_edge
  %37 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = zext i32 %6 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds double, ptr %43, i64 %39
  %45 = load double, ptr %44, align 8
  %.not41 = icmp eq ptr %41, null
  br i1 %.not41, label %46, label %48

46:                                               ; preds = %36
  %47 = add nsw i32 %nonlocals.promoted50, 1
  store i32 %47, ptr @nonlocals, align 4
  br label %48

48:                                               ; preds = %46, %36
  %nonlocals.promoted49 = phi i32 [ %47, %46 ], [ %nonlocals.promoted50, %36 ]
  %49 = load double, ptr %41, align 8
  %50 = fneg double %45
  %51 = tail call double @llvm.fmuladd.f64(double %50, double %49, double %.038.lcssa)
  br label %52

52:                                               ; preds = %48, %._crit_edge
  %nonlocals.promoted48 = phi i32 [ %nonlocals.promoted49, %48 ], [ %nonlocals.promoted50, %._crit_edge ]
  %.1 = phi double [ %51, %48 ], [ %.038.lcssa, %._crit_edge ]
  store double %.1, ptr %2, align 8
  %53 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %.not = icmp eq ptr %54, null
  br i1 %.not, label %._crit_edge60, label %.lr.ph59

._crit_edge60:                                    ; preds = %52, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
.loopexit:
  tail call void @dealwithargs(i32 noundef %0, ptr noundef %1)
  %2 = load i32, ptr @n_nodes, align 4
  %3 = load i32, ptr @d_nodes, align 4
  %4 = load i32, ptr @local_p, align 4
  %5 = load i32, ptr @__NumNodes, align 4
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %7 = tail call ptr @initialize_graph()
  %8 = load ptr, ptr %7, align 8
  tail call void @compute_nodes(ptr noundef %8)
  %9 = getelementptr inbounds %struct.graph_t, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8
  tail call void @compute_nodes(ptr noundef %10)
  %11 = load i32, ptr @nonlocals, align 4
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %11)
  tail call void @printstats()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ATOMICINC(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr %0, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @make_table(i32 noundef %0, i32 %1) local_unnamed_addr #2 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #13
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1.8, i32 noundef 51, ptr noundef null) #14
  unreachable

7:                                                ; preds = %2
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_table(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #2 {
  %5 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13
  store ptr %5, ptr %0, align 8
  %6 = tail call double @gen_uniform_double()
  store double %6, ptr %1, align 8
  store ptr %1, ptr %5, align 8
  %7 = getelementptr inbounds %struct.node_t, ptr %5, i64 0, i32 5
  store i32 0, ptr %7, align 8
  %8 = icmp sgt i32 %2, 1
  br i1 %8, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %4
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.01922 = phi ptr [ %5, %.lr.ph.preheader ], [ %9, %.lr.ph ]
  %.pn21 = phi ptr [ %1, %.lr.ph.preheader ], [ %.020, %.lr.ph ]
  %.020 = getelementptr inbounds double, ptr %.pn21, i64 1
  %9 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13
  %10 = tail call double @gen_uniform_double()
  store double %10, ptr %.020, align 8
  store ptr %.020, ptr %9, align 8
  %11 = getelementptr inbounds %struct.node_t, ptr %9, i64 0, i32 5
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  store ptr %9, ptr %12, align 8
  %13 = getelementptr inbounds %struct.node_t, ptr %.01922, i64 0, i32 1
  store ptr %9, ptr %13, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %4
  %.019.lcssa = phi ptr [ %5, %4 ], [ %9, %.lr.ph ]
  %14 = getelementptr inbounds %struct.node_t, ptr %.019.lcssa, i64 0, i32 1
  store ptr null, ptr %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_neighbors(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %.not66 = icmp eq ptr %0, null
  br i1 %.not66, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %6
  %7 = sext i32 %3 to i64
  %8 = shl nsw i64 %7, 3
  %9 = icmp sgt i32 %3, 0
  %10 = add nsw i32 %5, 64
  %wide.trip.count84 = zext i32 %3 to i64
  br label %11

11:                                               ; preds = %._crit_edge65, %.lr.ph69
  %.067 = phi ptr [ %0, %.lr.ph69 ], [ %61, %._crit_edge65 ]
  %12 = tail call noalias ptr @malloc(i64 noundef %8) #13
  %13 = getelementptr inbounds %struct.node_t, ptr %.067, i64 0, i32 2
  store ptr %12, ptr %13, align 8
  %.not44 = icmp eq ptr %12, null
  br i1 %.not44, label %14, label %.preheader49

.preheader49:                                     ; preds = %11
  br i1 %9, label %.preheader48, label %._crit_edge65

14:                                               ; preds = %11
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 0) #14
  unreachable

.preheader48:                                     ; preds = %57, %.preheader49
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %57 ], [ 0, %.preheader49 ]
  %.not86 = icmp eq i64 %indvars.iv82, 0
  br label %15

15:                                               ; preds = %46, %.preheader48
  %16 = tail call i32 @gen_number(i32 noundef %2), !range !6
  %17 = tail call i32 @check_percent(i32 noundef %4), !range !7
  %.not45 = icmp eq i32 %17, 0
  br i1 %.not45, label %18, label %23

18:                                               ; preds = %15
  %19 = tail call i32 @gen_signed_number(i32 noundef 1), !range !8
  %20 = shl nsw i32 %19, 2
  %21 = add nsw i32 %10, %20
  %22 = srem i32 %21, 64
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i32 [ %22, %18 ], [ %5, %15 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25
  %27 = load ptr, ptr %26, align 8
  %28 = sext i32 %16 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8
  %.not46 = icmp eq ptr %30, null
  br i1 %.not46, label %34, label %.preheader

.preheader:                                       ; preds = %23
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %31 = load ptr, ptr %13, align 8
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %._crit_edge, label %.lr.ph110

34:                                               ; preds = %23
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %16, i32 noundef %24)
  tail call void @exit(i32 noundef 0) #14
  unreachable

.lr.ph110:                                        ; preds = %36, %.lr.ph
  %indvars.iv109 = phi i64 [ %indvars.iv.next, %36 ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv109, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv82
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %36

36:                                               ; preds = %.lr.ph110
  %37 = getelementptr inbounds ptr, ptr %31, i64 %indvars.iv.next
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %30, %38
  br i1 %39, label %._crit_edge.loopexit, label %.lr.ph110

._crit_edge.loopexit:                             ; preds = %36, %.lr.ph110
  %40 = icmp ult i64 %indvars.iv.next, %indvars.iv82
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph, %.preheader
  %.lcssa = phi i1 [ false, %.preheader ], [ true, %.lr.ph ], [ %40, %._crit_edge.loopexit ]
  %41 = ptrtoint ptr %30 to i64
  %42 = trunc i64 %41 to i32
  %43 = icmp ult i32 %42, 262144
  br i1 %43, label %44, label %46

44:                                               ; preds = %._crit_edge
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %42, i32 noundef %16, i32 noundef %24)
  br label %46

46:                                               ; preds = %44, %._crit_edge
  br i1 %.lcssa, label %15, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %13, align 8
  %.not47 = icmp eq ptr %48, null
  br i1 %.not47, label %49, label %53

49:                                               ; preds = %47
  %50 = ptrtoint ptr %.067 to i64
  %51 = trunc i64 %50 to i32
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %51)
  tail call void @exit(i32 noundef 0) #14
  unreachable

53:                                               ; preds = %47
  %54 = getelementptr inbounds ptr, ptr %48, i64 %indvars.iv82
  store ptr %30, ptr %54, align 8
  br i1 %43, label %55, label %57

55:                                               ; preds = %53
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %42)
  br label %57

57:                                               ; preds = %55, %53
  %58 = getelementptr inbounds %struct.node_t, ptr %30, i64 0, i32 5
  %59 = tail call i32 @ATOMICINC(ptr noundef nonnull %58)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond85.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge65, label %.preheader48

._crit_edge65:                                    ; preds = %57, %.preheader49
  %60 = getelementptr inbounds %struct.node_t, ptr %.067, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8
  %.not = icmp eq ptr %61, null
  br i1 %.not, label %._crit_edge70, label %11

._crit_edge70:                                    ; preds = %._crit_edge65, %6
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @update_from_coeffs(ptr noundef %0) local_unnamed_addr #7 {
  %.not9 = icmp eq ptr %0, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %6, %1
  %.010 = phi ptr [ %15, %6 ], [ %0, %1 ]
  %2 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %.lr.ph
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %6

6:                                                ; preds = %5, %.lr.ph
  %7 = sext i32 %3 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #13
  %10 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 3
  store ptr %9, ptr %10, align 8
  %11 = tail call noalias ptr @malloc(i64 noundef %8) #13
  %12 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 4
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 6
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %.not = icmp eq ptr %15, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_from_fields(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %.not28 = icmp eq ptr %0, null
  br i1 %.not28, label %._crit_edge30, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %2
  %3 = icmp sgt i32 %1, 0
  %wide.trip.count = zext i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %.029 = phi ptr [ %0, %.preheader.lr.ph ], [ %31, %._crit_edge ]
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %4 = getelementptr inbounds %struct.node_t, ptr %.029, i64 0, i32 2
  br label %5

5:                                                ; preds = %23, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %.029, align 8
  %.not25 = icmp eq ptr %8, null
  br i1 %.not25, label %10, label %11

10:                                               ; preds = %5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.node_t, ptr %8, i64 0, i32 6
  %13 = tail call i32 @ATOMICINC(ptr noundef nonnull %12)
  %14 = getelementptr inbounds %struct.node_t, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %.not26 = icmp eq ptr %15, null
  br i1 %.not26, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.node_t, ptr %8, i64 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = ptrtoint ptr %8 to i64
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %20, i32 noundef 0, i32 noundef %18)
  %22 = load ptr, ptr %14, align 8
  br label %23

23:                                               ; preds = %16, %11
  %.022 = phi ptr [ %15, %11 ], [ %22, %16 ]
  %24 = sext i32 %13 to i64
  %25 = getelementptr inbounds ptr, ptr %.022, i64 %24
  store ptr %9, ptr %25, align 8
  %26 = tail call double @gen_uniform_double()
  %27 = getelementptr inbounds %struct.node_t, ptr %8, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds double, ptr %28, i64 %24
  store double %26, ptr %29, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %23, %.preheader
  %30 = getelementptr inbounds %struct.node_t, ptr %.029, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %.not = icmp eq ptr %31, null
  br i1 %.not, label %._crit_edge30, label %.preheader

._crit_edge30:                                    ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local void @localize_local(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %.not12 = icmp eq ptr %0, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %1
  %.013 = phi ptr [ %3, %.lr.ph ], [ %0, %1 ]
  %2 = getelementptr inbounds %struct.node_t, ptr %.013, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_tables(ptr nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = mul nsw i32 %1, 793
  tail call void @init_random(i32 noundef %3)
  %4 = load i32, ptr @n_nodes, align 4
  %5 = sdiv i32 %4, 64
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #13
  %9 = tail call ptr @make_table(i32 noundef %5, i32 poison)
  %10 = load i32, ptr @n_nodes, align 4
  %11 = sdiv i32 %10, 64
  tail call void @fill_table(ptr noundef %9, ptr noundef %8, i32 noundef %11, i32 poison)
  %12 = load i32, ptr @n_nodes, align 4
  %13 = sdiv i32 %12, 64
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call noalias ptr @malloc(i64 noundef %15) #13
  %17 = tail call ptr @make_table(i32 noundef %13, i32 poison)
  %18 = load i32, ptr @n_nodes, align 4
  %19 = sdiv i32 %18, 64
  tail call void @fill_table(ptr noundef %17, ptr noundef %16, i32 noundef %19, i32 poison)
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %20
  store ptr %17, ptr %21, align 8
  %22 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %20
  store ptr %9, ptr %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_all_neighbors(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = mul nsw i32 %1, 39
  tail call void @init_random(i32 noundef %3)
  %4 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %5
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr @n_nodes, align 4
  %10 = sdiv i32 %9, 64
  %11 = load i32, ptr @d_nodes, align 4
  %12 = load i32, ptr @local_p, align 4
  tail call void @make_neighbors(ptr noundef %8, ptr noundef %0, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %1)
  %13 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %5
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load i32, ptr @n_nodes, align 4
  %17 = sdiv i32 %16, 64
  %18 = load i32, ptr @d_nodes, align 4
  %19 = load i32, ptr @local_p, align 4
  tail call void @make_neighbors(ptr noundef %15, ptr noundef nonnull %4, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %1)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @update_all_from_coeffs(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %3
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  tail call void @update_from_coeffs(ptr noundef %6)
  %7 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %3
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  tail call void @update_from_coeffs(ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_all_from_fields(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = mul nsw i32 %1, 17
  tail call void @init_random(i32 noundef %3)
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr @d_nodes, align 4
  tail call void @fill_from_fields(ptr noundef %7, i32 noundef %8)
  %9 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %4
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr @d_nodes, align 4
  tail call void @fill_from_fields(ptr noundef %11, i32 noundef %12)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local void @localize(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %3
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  tail call void @localize_local(ptr noundef %6)
  %7 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %3
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  tail call void @localize_local(ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_all(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp sgt i32 %2, 1
  br i1 %6, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %tailrecurse, %5
  %.tr1720 = phi i32 [ %7, %tailrecurse ], [ %2, %5 ]
  %7 = lshr i32 %.tr1720, 1
  %8 = add nsw i32 %7, %1
  tail call void @do_all(ptr noundef %0, i32 noundef %8, i32 noundef %7, ptr noundef %3, i32 noundef %4)
  %9 = icmp ugt i32 %.tr1720, 3
  br i1 %9, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %5
  tail call void %3(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @initialize_graph() local_unnamed_addr #2 {
  %1 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #13
  %2 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #13
  %3 = load i32, ptr @__NumNodes, align 4
  %4 = sdiv i32 64, %3
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @make_tables, i32 noundef %4)
  %puts54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @make_all_neighbors, i32 noundef %4)
  %puts55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @update_all_from_coeffs, i32 noundef %4)
  %puts56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @fill_all_from_fields, i32 noundef %4)
  %puts57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @localize, i32 noundef %4)
  %5 = load i32, ptr @__NumNodes, align 4
  %puts58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  %6 = load i32, ptr @__NumNodes, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %0
  %8 = sdiv i32 64, %5
  %9 = icmp sgt i32 %8, 1
  %10 = load i32, ptr @n_nodes, align 4
  %11 = sdiv i32 %10, 64
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = sext i32 %8 to i64
  %wide.trip.count66 = zext i32 %6 to i64
  %wide.trip.count = zext i32 %8 to i64
  br label %15

15:                                               ; preds = %._crit_edge, %.lr.ph62
  %indvars.iv64 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next65, %._crit_edge ]
  %16 = mul nsw i64 %indvars.iv64, %14
  %17 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %indvars.iv64
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %16
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %indvars.iv64
  store ptr %23, ptr %24, align 8
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %15
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %15 ]
  %25 = add nsw i64 %indvars.iv, %16
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 %13
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %25
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.node_t, ptr %30, i64 0, i32 1
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %26
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds ptr, ptr %36, i64 %13
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %25
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.node_t, ptr %38, i64 0, i32 1
  store ptr %41, ptr %42, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %15
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge63, label %15

._crit_edge63:                                    ; preds = %._crit_edge, %0
  ret ptr %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_random(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 (i32, ...) @srand48(i32 noundef %0) #15
  ret void
}

declare i32 @srand48(...) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gen_number(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 (...) @lrand48() #15
  %3 = sext i32 %0 to i64
  %4 = srem i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

declare i64 @lrand48(...) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gen_signed_number(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 (...) @lrand48() #15
  %3 = shl nsw i32 %0, 1
  %4 = sext i32 %3 to i64
  %5 = srem i64 %2, %4
  %6 = trunc i64 %5 to i32
  %7 = sub nsw i32 %6, %0
  %8 = icmp sgt i32 %7, -1
  %9 = zext i1 %8 to i32
  %spec.select = add nuw nsw i32 %7, %9
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @gen_uniform_double() local_unnamed_addr #2 {
  %1 = tail call double (...) @drand48() #15
  ret double %1
}

declare double @drand48(...) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_percent(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call double (...) @drand48() #15
  %3 = sitofp i32 %0 to double
  %4 = fdiv double %3, 1.000000e+02
  %5 = fcmp olt double %2, %4
  %6 = load i32, ptr @percentcheck, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @percentcheck, align 4
  br i1 %5, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, ptr @numlocal, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @numlocal, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = zext i1 %5 to i32
  ret i32 %12
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @printstats() local_unnamed_addr #7 {
  %1 = load i32, ptr @percentcheck, align 4
  %2 = load i32, ptr @numlocal, align 4
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define dso_local void @dealwithargs(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = icmp sgt i32 %0, 5
  br i1 %3, label %.thread, label %7

.thread:                                          ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @atoi(ptr nocapture noundef %5) #16
  store i32 %6, ptr @DebugFlag, align 4
  br label %.thread14

7:                                                ; preds = %2
  store i32 0, ptr @DebugFlag, align 4
  %8 = icmp eq i32 %0, 5
  br i1 %8, label %.thread14, label %12

.thread14:                                        ; preds = %7, %.thread
  %9 = getelementptr inbounds ptr, ptr %1, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @atoi(ptr nocapture noundef %10) #16
  store i32 %11, ptr @__NumNodes, align 4
  br label %14

12:                                               ; preds = %7
  store i32 4, ptr @__NumNodes, align 4
  %13 = icmp sgt i32 %0, 1
  br i1 %13, label %14, label %.thread16

.thread16:                                        ; preds = %12
  store i32 64, ptr @n_nodes, align 4
  br label %.thread18

14:                                               ; preds = %12, %.thread14
  %15 = getelementptr inbounds ptr, ptr %1, i64 1
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @atoi(ptr nocapture noundef %16) #16
  store i32 %17, ptr @n_nodes, align 4
  %18 = icmp ugt i32 %0, 2
  br i1 %18, label %19, label %.thread18

.thread18:                                        ; preds = %14, %.thread16
  store i32 3, ptr @d_nodes, align 4
  br label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds ptr, ptr %1, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @atoi(ptr nocapture noundef %21) #16
  store i32 %22, ptr @d_nodes, align 4
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds ptr, ptr %1, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @atoi(ptr nocapture noundef %25) #16
  br label %27

27:                                               ; preds = %23, %19, %.thread18
  %storemerge12 = phi i32 [ %26, %23 ], [ 75, %19 ], [ 75, %.thread18 ]
  store i32 %storemerge12, ptr @local_p, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

declare void @exit.9(i32, ...)

declare i32 @printf.10(ptr, i32, ...)

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

attributes #0 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 -2147483647, i32 -2147483648}
!7 = !{i32 0, i32 2}
!8 = !{i32 1, i32 0}
