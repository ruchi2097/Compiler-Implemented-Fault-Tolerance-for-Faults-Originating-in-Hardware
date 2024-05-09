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

3:                                                ; preds = %134, %2
  %Diff_phi = phi i32 [ %152, %134 ], [ 3, %2 ]
  %Dest_phi = phi i32 [ %139, %134 ], [ 1, %2 ]
  %4 = phi i32 [ 0, %2 ], [ %137, %134 ]
  %.020 = phi i32 [ 0, %2 ], [ %.121, %134 ]
  %5 = phi i32 [ -1, %2 ], [ %138, %134 ]
  %.0 = phi i32 [ -1, %2 ], [ %.1, %134 ]
  %6 = xor i32 %Diff_phi, %Dest_phi
  %7 = icmp eq i32 %6, 2
  %8 = zext i1 %7 to i32
  call void @assert_cfg_ft(i32 %8, i32 %6, i32 0)
  %9 = icmp eq i32 %.020, %4
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = icmp eq i32 %.0, %5
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = icmp eq i32 %5, -1
  %14 = icmp eq i32 %.0, -1
  %15 = icmp eq i1 %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = select i1 %14, i32 4, i32 3
  %18 = xor i32 2, %17
  br i1 %14, label %53, label %19

19:                                               ; preds = %3
  %Diff_phi22 = phi i32 [ %18, %3 ]
  %Dest_phi23 = phi i32 [ %6, %3 ]
  %20 = xor i32 %Diff_phi22, %Dest_phi23
  %21 = icmp eq i32 %20, 3
  %22 = zext i1 %21 to i32
  call void @assert_cfg_ft(i32 %22, i32 %20, i32 0)
  %23 = sext i32 %4 to i64
  %24 = sext i32 %.020 to i64
  %25 = icmp eq i64 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = getelementptr inbounds i8, ptr %0, i64 %23
  %28 = getelementptr inbounds i8, ptr %0, i64 %24
  %29 = icmp eq ptr %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = load i8, ptr %27, align 1
  %32 = load i8, ptr %28, align 1
  %33 = icmp eq i8 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = sext i32 %5 to i64
  %36 = sext i32 %.0 to i64
  %37 = icmp eq i64 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = getelementptr inbounds i8, ptr %0, i64 %35
  %40 = getelementptr inbounds i8, ptr %0, i64 %36
  %41 = icmp eq ptr %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = load i8, ptr %39, align 1
  %44 = load i8, ptr %40, align 1
  %45 = icmp eq i8 %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = icmp eq i8 %31, %43
  %48 = icmp eq i8 %32, %44
  %49 = icmp eq i1 %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = select i1 %48, i32 4, i32 7
  %52 = xor i32 3, %51
  br i1 %48, label %53, label %122

53:                                               ; preds = %19, %3
  %Diff_phi24 = phi i32 [ %52, %19 ], [ %18, %3 ]
  %Dest_phi25 = phi i32 [ %20, %19 ], [ %6, %3 ]
  %54 = xor i32 %Diff_phi24, %Dest_phi25
  %55 = icmp eq i32 %54, 4
  %56 = zext i1 %55 to i32
  call void @assert_cfg_ft(i32 %56, i32 %54, i32 0)
  %57 = add nsw i32 %4, 1
  %58 = add nsw i32 %.020, 1
  %59 = icmp eq i32 %58, %57
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = add nsw i32 %5, 1
  %62 = add nsw i32 %.0, 1
  %63 = icmp eq i32 %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = sext i32 %61 to i64
  %66 = sext i32 %62 to i64
  %67 = icmp eq i64 %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = getelementptr inbounds i8, ptr %0, i64 %65
  %70 = getelementptr inbounds i8, ptr %0, i64 %66
  %71 = icmp eq ptr %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = load i8, ptr %69, align 1
  %74 = load i8, ptr %70, align 1
  %75 = icmp eq i8 %74, %73
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  %77 = sext i32 %57 to i64
  %78 = sext i32 %58 to i64
  %79 = icmp eq i64 %78, %77
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = getelementptr inbounds i8, ptr %0, i64 %77
  %82 = getelementptr inbounds i8, ptr %0, i64 %78
  %83 = icmp eq ptr %82, %81
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = load i8, ptr %81, align 1
  %86 = load i8, ptr %82, align 1
  %87 = icmp eq i8 %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = icmp eq i8 %73, %85
  %90 = icmp eq i8 %74, %86
  %91 = icmp eq i1 %90, %89
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = select i1 %90, i32 5, i32 6
  %94 = xor i32 4, %93
  br i1 %90, label %95, label %107

95:                                               ; preds = %53
  %Diff_phi26 = phi i32 [ %94, %53 ]
  %Dest_phi27 = phi i32 [ %54, %53 ]
  %96 = xor i32 %Diff_phi26, %Dest_phi27
  %97 = icmp eq i32 %96, 5
  %98 = zext i1 %97 to i32
  call void @assert_cfg_ft(i32 %98, i32 %96, i32 0)
  %99 = getelementptr inbounds i32, ptr %1, i64 %65
  %100 = getelementptr inbounds i32, ptr %1, i64 %66
  %101 = icmp eq ptr %100, %99
  %102 = zext i1 %101 to i32
  call void @assert_ft(i32 %102, i32 1)
  %103 = load i32, ptr %99, align 4
  %104 = load i32, ptr %100, align 4
  %105 = icmp eq i32 %104, %103
  %106 = zext i1 %105 to i32
  call void @assert_ft(i32 %106, i32 1)
  br label %107

107:                                              ; preds = %95, %53
  %Diff_phi28 = phi i32 [ %94, %53 ], [ 3, %95 ]
  %Dest_phi29 = phi i32 [ %54, %53 ], [ %96, %95 ]
  %108 = phi i32 [ %103, %95 ], [ %61, %53 ]
  %109 = phi i32 [ %104, %95 ], [ %62, %53 ]
  %110 = xor i32 %Diff_phi28, %Dest_phi29
  %111 = icmp eq i32 %110, 6
  %112 = zext i1 %111 to i32
  call void @assert_cfg_ft(i32 %112, i32 %110, i32 0)
  %113 = icmp eq i32 %109, %108
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = getelementptr inbounds i32, ptr %1, i64 %77
  %116 = getelementptr inbounds i32, ptr %1, i64 %78
  %117 = icmp eq ptr %116, %115
  %118 = zext i1 %117 to i32
  call void @assert_ft(i32 %118, i32 1)
  store i32 %109, ptr %116, align 4
  %119 = load i8, ptr %81, align 1
  %.pre = load i8, ptr %82, align 1
  %120 = icmp eq i8 %.pre, %119
  %121 = zext i1 %120 to i32
  call void @assert_ft(i32 %121, i32 1)
  br label %134

122:                                              ; preds = %19
  %Diff_phi30 = phi i32 [ %52, %19 ]
  %Dest_phi31 = phi i32 [ %20, %19 ]
  %123 = xor i32 %Diff_phi30, %Dest_phi31
  %124 = icmp eq i32 %123, 7
  %125 = zext i1 %124 to i32
  call void @assert_cfg_ft(i32 %125, i32 %123, i32 0)
  %126 = getelementptr inbounds i32, ptr %1, i64 %35
  %127 = getelementptr inbounds i32, ptr %1, i64 %36
  %128 = icmp eq ptr %127, %126
  %129 = zext i1 %128 to i32
  call void @assert_ft(i32 %129, i32 1)
  %130 = load i32, ptr %126, align 4
  %131 = load i32, ptr %127, align 4
  %132 = icmp eq i32 %131, %130
  %133 = zext i1 %132 to i32
  call void @assert_ft(i32 %133, i32 1)
  br label %134

134:                                              ; preds = %122, %107
  %Diff_phi32 = phi i32 [ 14, %107 ], [ 15, %122 ]
  %Dest_phi33 = phi i32 [ %110, %107 ], [ %123, %122 ]
  %135 = phi i8 [ %119, %107 ], [ %31, %122 ]
  %136 = phi i8 [ %.pre, %107 ], [ %32, %122 ]
  %137 = phi i32 [ %57, %107 ], [ %4, %122 ]
  %.121 = phi i32 [ %58, %107 ], [ %.020, %122 ]
  %138 = phi i32 [ %61, %107 ], [ %130, %122 ]
  %.1 = phi i32 [ %62, %107 ], [ %131, %122 ]
  %139 = xor i32 %Diff_phi32, %Dest_phi33
  %140 = icmp eq i32 %139, 8
  %141 = zext i1 %140 to i32
  call void @assert_cfg_ft(i32 %141, i32 %139, i32 0)
  %142 = icmp eq i8 %136, %135
  %143 = zext i1 %142 to i32
  call void @assert_ft(i32 %143, i32 1)
  %144 = icmp eq i32 %.121, %137
  %145 = zext i1 %144 to i32
  call void @assert_ft(i32 %145, i32 1)
  %146 = icmp eq i32 %.1, %138
  %147 = zext i1 %146 to i32
  call void @assert_ft(i32 %147, i32 1)
  %148 = icmp eq i8 %135, 0
  %.not = icmp eq i8 %136, 0
  %149 = icmp eq i1 %.not, %148
  %150 = zext i1 %149 to i32
  call void @assert_ft(i32 %150, i32 1)
  %151 = select i1 %.not, i32 9, i32 2
  %152 = xor i32 8, %151
  br i1 %.not, label %153, label %3

153:                                              ; preds = %134
  %Diff_phi34 = phi i32 [ %152, %134 ]
  %Dest_phi35 = phi i32 [ %139, %134 ]
  %154 = xor i32 %Diff_phi34, %Dest_phi35
  %155 = icmp eq i32 %154, 9
  %156 = zext i1 %155 to i32
  call void @assert_cfg_ft(i32 %156, i32 %154, i32 0)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @search(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %0, align 1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = icmp eq i8 %3, 0
  %8 = icmp eq i8 %4, 0
  %9 = icmp eq i1 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = select i1 %8, i32 19, i32 11
  %12 = xor i32 10, %11
  br i1 %8, label %.loopexit, label %13

13:                                               ; preds = %2
  %Diff_phi = phi i32 [ %12, %2 ]
  %Dest_phi = phi i32 [ 10, %2 ]
  %14 = xor i32 %Diff_phi, %Dest_phi
  %15 = icmp eq i32 %14, 11
  %16 = zext i1 %15 to i32
  call void @assert_cfg_ft(i32 %16, i32 %14, i32 0)
  %17 = load ptr, ptr @next, align 8
  %18 = load ptr, ptr @next, align 8
  %19 = icmp eq ptr %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  tail call void @preprocpat(ptr noundef nonnull %0, ptr noundef %18)
  %21 = load i8, ptr %1, align 1
  %22 = load i8, ptr %1, align 1
  %23 = icmp eq i8 %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = icmp eq i8 %21, 0
  %.not20 = icmp eq i8 %22, 0
  %26 = icmp eq i1 %.not20, %25
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = select i1 %.not20, i32 19, i32 12
  %29 = xor i32 11, %28
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %13
  %Diff_phi28 = phi i32 [ %29, %13 ]
  %Dest_phi29 = phi i32 [ %14, %13 ]
  %30 = xor i32 %Diff_phi28, %Dest_phi29
  %31 = icmp eq i32 %30, 12
  %32 = zext i1 %31 to i32
  call void @assert_cfg_ft(i32 %32, i32 %30, i32 0)
  %33 = load ptr, ptr @next, align 8
  %34 = load ptr, ptr @next, align 8
  %35 = icmp eq ptr %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  br label %37

37:                                               ; preds = %133, %.lr.ph
  %Diff_phi30 = phi i32 [ 1, %.lr.ph ], [ %151, %133 ]
  %Dest_phi31 = phi i32 [ %30, %.lr.ph ], [ %136, %133 ]
  %38 = phi i8 [ %21, %.lr.ph ], [ %143, %133 ]
  %39 = phi i8 [ %22, %.lr.ph ], [ %144, %133 ]
  %40 = phi i32 [ 0, %.lr.ph ], [ %135, %133 ]
  %.022 = phi i32 [ 0, %.lr.ph ], [ %.1, %133 ]
  %41 = phi ptr [ %1, %.lr.ph ], [ %134, %133 ]
  %.01521 = phi ptr [ %1, %.lr.ph ], [ %.116, %133 ]
  %42 = xor i32 %Diff_phi30, %Dest_phi31
  %43 = icmp eq i32 %42, 13
  %44 = zext i1 %43 to i32
  call void @assert_cfg_ft(i32 %44, i32 %42, i32 0)
  %45 = icmp eq i8 %39, %38
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = icmp eq ptr %.01521, %41
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = icmp eq i32 %.022, %40
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = icmp eq i32 %40, -1
  %52 = icmp eq i32 %.022, -1
  %53 = icmp eq i1 %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = select i1 %52, i32 15, i32 14
  %56 = xor i32 13, %55
  br i1 %52, label %79, label %57

57:                                               ; preds = %37
  %Diff_phi32 = phi i32 [ %56, %37 ]
  %Dest_phi33 = phi i32 [ %42, %37 ]
  %58 = xor i32 %Diff_phi32, %Dest_phi33
  %59 = icmp eq i32 %58, 14
  %60 = zext i1 %59 to i32
  call void @assert_cfg_ft(i32 %60, i32 %58, i32 0)
  %61 = sext i32 %40 to i64
  %62 = sext i32 %.022 to i64
  %63 = icmp eq i64 %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = getelementptr inbounds i8, ptr %0, i64 %61
  %66 = getelementptr inbounds i8, ptr %0, i64 %62
  %67 = icmp eq ptr %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = load i8, ptr %65, align 1
  %70 = load i8, ptr %66, align 1
  %71 = icmp eq i8 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = icmp eq i8 %69, %38
  %74 = icmp eq i8 %70, %39
  %75 = icmp eq i1 %74, %73
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  %77 = select i1 %74, i32 15, i32 17
  %78 = xor i32 14, %77
  br i1 %74, label %79, label %121

79:                                               ; preds = %57, %37
  %Diff_phi34 = phi i32 [ %78, %57 ], [ %56, %37 ]
  %Dest_phi35 = phi i32 [ %58, %57 ], [ %42, %37 ]
  %80 = xor i32 %Diff_phi34, %Dest_phi35
  %81 = icmp eq i32 %80, 15
  %82 = zext i1 %81 to i32
  call void @assert_cfg_ft(i32 %82, i32 %80, i32 0)
  %83 = getelementptr inbounds i8, ptr %41, i64 1
  %84 = getelementptr inbounds i8, ptr %.01521, i64 1
  %85 = icmp eq ptr %84, %83
  %86 = zext i1 %85 to i32
  call void @assert_ft(i32 %86, i32 1)
  %87 = add nsw i32 %40, 1
  %88 = add nsw i32 %.022, 1
  %89 = icmp eq i32 %88, %87
  %90 = zext i1 %89 to i32
  call void @assert_ft(i32 %90, i32 1)
  %91 = sext i32 %87 to i64
  %92 = sext i32 %88 to i64
  %93 = icmp eq i64 %92, %91
  %94 = zext i1 %93 to i32
  call void @assert_ft(i32 %94, i32 1)
  %95 = getelementptr inbounds i8, ptr %0, i64 %91
  %96 = getelementptr inbounds i8, ptr %0, i64 %92
  %97 = icmp eq ptr %96, %95
  %98 = zext i1 %97 to i32
  call void @assert_ft(i32 %98, i32 1)
  %99 = load i8, ptr %95, align 1
  %100 = load i8, ptr %96, align 1
  %101 = icmp eq i8 %100, %99
  %102 = zext i1 %101 to i32
  call void @assert_ft(i32 %102, i32 1)
  %103 = icmp eq i8 %99, 0
  %104 = icmp eq i8 %100, 0
  %105 = icmp eq i1 %104, %103
  %106 = zext i1 %105 to i32
  call void @assert_ft(i32 %106, i32 1)
  %107 = select i1 %104, i32 16, i32 18
  %108 = xor i32 15, %107
  br i1 %104, label %109, label %133

109:                                              ; preds = %79
  %Diff_phi36 = phi i32 [ %108, %79 ]
  %Dest_phi37 = phi i32 [ %80, %79 ]
  %110 = xor i32 %Diff_phi36, %Dest_phi37
  %111 = icmp eq i32 %110, 16
  %112 = zext i1 %111 to i32
  call void @assert_cfg_ft(i32 %112, i32 %110, i32 0)
  %113 = sub nsw i64 0, %91
  %114 = sub nsw i64 0, %92
  %115 = icmp eq i64 %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = getelementptr inbounds i8, ptr %83, i64 %113
  %118 = getelementptr inbounds i8, ptr %84, i64 %114
  %119 = icmp eq ptr %118, %117
  %120 = zext i1 %119 to i32
  call void @assert_ft(i32 %120, i32 1)
  br label %.loopexit

121:                                              ; preds = %57
  %Diff_phi38 = phi i32 [ %78, %57 ]
  %Dest_phi39 = phi i32 [ %58, %57 ]
  %122 = xor i32 %Diff_phi38, %Dest_phi39
  %123 = icmp eq i32 %122, 17
  %124 = zext i1 %123 to i32
  call void @assert_cfg_ft(i32 %124, i32 %122, i32 0)
  %125 = getelementptr inbounds i32, ptr %33, i64 %61
  %126 = getelementptr inbounds i32, ptr %34, i64 %62
  %127 = icmp eq ptr %126, %125
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = load i32, ptr %125, align 4
  %130 = load i32, ptr %126, align 4
  %131 = icmp eq i32 %130, %129
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  br label %133

133:                                              ; preds = %121, %79
  %Diff_phi40 = phi i32 [ %108, %79 ], [ 3, %121 ]
  %Dest_phi41 = phi i32 [ %80, %79 ], [ %122, %121 ]
  %134 = phi ptr [ %83, %79 ], [ %41, %121 ]
  %.116 = phi ptr [ %84, %79 ], [ %.01521, %121 ]
  %135 = phi i32 [ %87, %79 ], [ %129, %121 ]
  %.1 = phi i32 [ %88, %79 ], [ %130, %121 ]
  %136 = xor i32 %Diff_phi40, %Dest_phi41
  %137 = icmp eq i32 %136, 18
  %138 = zext i1 %137 to i32
  call void @assert_cfg_ft(i32 %138, i32 %136, i32 0)
  %139 = icmp eq i32 %.1, %135
  %140 = zext i1 %139 to i32
  call void @assert_ft(i32 %140, i32 1)
  %141 = icmp eq ptr %.116, %134
  %142 = zext i1 %141 to i32
  call void @assert_ft(i32 %142, i32 1)
  %143 = load i8, ptr %134, align 1
  %144 = load i8, ptr %.116, align 1
  %145 = icmp eq i8 %144, %143
  %146 = zext i1 %145 to i32
  call void @assert_ft(i32 %146, i32 1)
  %147 = icmp eq i8 %143, 0
  %.not = icmp eq i8 %144, 0
  %148 = icmp eq i1 %.not, %147
  %149 = zext i1 %148 to i32
  call void @assert_ft(i32 %149, i32 1)
  %150 = select i1 %.not, i32 19, i32 13
  %151 = xor i32 18, %150
  br i1 %.not, label %.loopexit, label %37

.loopexit:                                        ; preds = %133, %109, %13, %2
  %Diff_phi42 = phi i32 [ %151, %133 ], [ %29, %13 ], [ %12, %2 ], [ 3, %109 ]
  %Dest_phi43 = phi i32 [ %136, %133 ], [ %14, %13 ], [ 10, %2 ], [ %110, %109 ]
  %152 = phi ptr [ %117, %109 ], [ %1, %2 ], [ null, %13 ], [ null, %133 ]
  %.017 = phi ptr [ %118, %109 ], [ %1, %2 ], [ null, %13 ], [ null, %133 ]
  %153 = xor i32 %Diff_phi42, %Dest_phi43
  %154 = icmp eq i32 %153, 19
  %155 = zext i1 %154 to i32
  call void @assert_cfg_ft(i32 %155, i32 %153, i32 0)
  %156 = icmp eq ptr %.017, %152
  %157 = zext i1 %156 to i32
  call void @assert_ft(i32 %157, i32 1)
  ret ptr %.017
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 2
  %4 = icmp slt i32 %0, 2
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = select i1 %4, i32 21, i32 22
  %8 = xor i32 20, %7
  br i1 %4, label %9, label %18

9:                                                ; preds = %2
  %Diff_phi = phi i32 [ %8, %2 ]
  %Dest_phi = phi i32 [ 20, %2 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 21
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %13 = load ptr, ptr %1, align 8
  %14 = load ptr, ptr %1, align 8
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %14)
  tail call void @exit(i32 noundef 0) #13
  unreachable

18:                                               ; preds = %2
  %Diff_phi55 = phi i32 [ %8, %2 ]
  %Dest_phi56 = phi i32 [ 20, %2 ]
  %19 = xor i32 %Diff_phi55, %Dest_phi56
  %20 = icmp eq i32 %19, 22
  %21 = zext i1 %20 to i32
  call void @assert_cfg_ft(i32 %21, i32 %19, i32 0)
  %22 = getelementptr inbounds ptr, ptr %1, i64 1
  %23 = getelementptr inbounds ptr, ptr %1, i64 1
  %24 = icmp eq ptr %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = load ptr, ptr %22, align 8
  %27 = load ptr, ptr %23, align 8
  %28 = icmp eq ptr %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = tail call i32 @strcasecmp(ptr noundef %27, ptr noundef nonnull @.str.1) #14
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq i32 %30, 0
  %33 = icmp eq i1 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = select i1 %32, i32 26, i32 23
  %36 = xor i32 22, %35
  br i1 %32, label %63, label %37

37:                                               ; preds = %18
  %Diff_phi57 = phi i32 [ %36, %18 ]
  %Dest_phi58 = phi i32 [ %19, %18 ]
  %38 = xor i32 %Diff_phi57, %Dest_phi58
  %39 = icmp eq i32 %38, 23
  %40 = zext i1 %39 to i32
  call void @assert_cfg_ft(i32 %40, i32 %38, i32 0)
  %41 = tail call i32 @strcasecmp(ptr noundef %27, ptr noundef nonnull @.str.3) #14
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq i32 %41, 0
  %44 = icmp eq i1 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = select i1 %43, i32 26, i32 24
  %47 = xor i32 23, %46
  br i1 %43, label %63, label %48

48:                                               ; preds = %37
  %Diff_phi59 = phi i32 [ %47, %37 ]
  %Dest_phi60 = phi i32 [ %38, %37 ]
  %49 = xor i32 %Diff_phi59, %Dest_phi60
  %50 = icmp eq i32 %49, 24
  %51 = zext i1 %50 to i32
  call void @assert_cfg_ft(i32 %51, i32 %49, i32 0)
  %52 = tail call i32 @strcasecmp(ptr noundef %27, ptr noundef nonnull @.str.5) #14
  %53 = icmp eq i32 %52, 0
  %54 = icmp eq i32 %52, 0
  %55 = icmp eq i1 %54, %53
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  %57 = select i1 %54, i32 26, i32 25
  %58 = xor i32 24, %57
  br i1 %54, label %63, label %59

59:                                               ; preds = %48
  %Diff_phi61 = phi i32 [ %58, %48 ]
  %Dest_phi62 = phi i32 [ %49, %48 ]
  %60 = xor i32 %Diff_phi61, %Dest_phi62
  %61 = icmp eq i32 %60, 25
  %62 = zext i1 %61 to i32
  call void @assert_cfg_ft(i32 %62, i32 %60, i32 0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef -1) #13
  unreachable

63:                                               ; preds = %48, %37, %18
  %Diff_phi63 = phi i32 [ %58, %48 ], [ %47, %37 ], [ %36, %18 ]
  %Dest_phi64 = phi i32 [ %49, %48 ], [ %38, %37 ], [ %19, %18 ]
  %64 = phi ptr [ @str.4, %18 ], [ @str.3, %37 ], [ @str.3, %48 ]
  %str.3.sink = phi ptr [ @str.4, %18 ], [ @str.3, %37 ], [ @str.3, %48 ]
  %65 = phi i32 [ 6, %18 ], [ 5, %37 ], [ 4, %48 ]
  %.039 = phi i32 [ 6, %18 ], [ 5, %37 ], [ 4, %48 ]
  %66 = phi i32 [ 524305, %18 ], [ 98321, %37 ], [ 32785, %48 ]
  %.038 = phi i32 [ 524305, %18 ], [ 98321, %37 ], [ 32785, %48 ]
  %67 = xor i32 %Diff_phi63, %Dest_phi64
  %68 = icmp eq i32 %67, 26
  %69 = zext i1 %68 to i32
  call void @assert_cfg_ft(i32 %69, i32 %67, i32 0)
  %70 = icmp eq i32 %.039, %65
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  %72 = icmp eq i32 %.038, %66
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = icmp eq ptr %str.3.sink, %64
  %75 = zext i1 %74 to i32
  call void @assert_ft(i32 %75, i32 1)
  %puts44 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.3.sink)
  %76 = zext i32 %66 to i64
  %77 = zext i32 %.038 to i64
  %78 = icmp eq i64 %77, %76
  %79 = zext i1 %78 to i32
  call void @assert_ft(i32 %79, i32 1)
  %80 = tail call noalias ptr @malloc(i64 noundef %77) #15
  store ptr %80, ptr @buffer, align 8
  %81 = icmp eq ptr %80, null
  %.not = icmp eq ptr %80, null
  %82 = icmp eq i1 %.not, %81
  %83 = zext i1 %82 to i32
  call void @assert_ft(i32 %83, i32 1)
  %84 = select i1 %.not, i32 27, i32 28
  %85 = xor i32 26, %84
  br i1 %.not, label %86, label %95

86:                                               ; preds = %63
  %Diff_phi65 = phi i32 [ %85, %63 ]
  %Dest_phi66 = phi i32 [ %67, %63 ]
  %87 = xor i32 %Diff_phi65, %Dest_phi66
  %88 = icmp eq i32 %87, 27
  %89 = zext i1 %88 to i32
  call void @assert_cfg_ft(i32 %89, i32 %87, i32 0)
  %90 = load ptr, ptr @stderr, align 8
  %91 = load ptr, ptr @stderr, align 8
  %92 = icmp eq ptr %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr %91) #16
  tail call void @exit(i32 noundef 0) #13
  unreachable

95:                                               ; preds = %63
  %Diff_phi67 = phi i32 [ %85, %63 ]
  %Dest_phi68 = phi i32 [ %67, %63 ]
  %96 = xor i32 %Diff_phi67, %Dest_phi68
  %97 = icmp eq i32 %96, 28
  %98 = zext i1 %97 to i32
  call void @assert_cfg_ft(i32 %98, i32 %96, i32 0)
  %99 = tail call ptr @init_mill(i64 noundef 63009, i64 noundef 12584, i64 noundef 33363)
  %100 = add nuw nsw i32 %65, 1
  %101 = add nuw nsw i32 %.039, 1
  %102 = icmp eq i32 %101, %100
  %103 = zext i1 %102 to i32
  call void @assert_ft(i32 %103, i32 1)
  %104 = zext i32 %100 to i64
  %105 = zext i32 %101 to i64
  %106 = icmp eq i64 %105, %104
  %107 = zext i1 %106 to i32
  call void @assert_ft(i32 %107, i32 1)
  %108 = tail call noalias ptr @malloc(i64 noundef %105) #15
  store ptr %108, ptr @pat, align 8
  %109 = zext i32 %65 to i64
  %110 = zext i32 %.039 to i64
  %111 = icmp eq i64 %110, %109
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  %113 = shl nuw nsw i64 %109, 2
  %114 = shl nuw nsw i64 %110, 2
  %115 = icmp eq i64 %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = tail call noalias ptr @malloc(i64 noundef %114) #15
  store ptr %117, ptr @next, align 8
  %118 = icmp ne ptr %108, null
  %119 = icmp ne ptr %108, null
  %120 = icmp eq i1 %119, %118
  %121 = zext i1 %120 to i32
  call void @assert_ft(i32 %121, i32 1)
  %122 = icmp ne ptr %117, null
  %123 = icmp ne ptr %117, null
  %124 = icmp eq i1 %123, %122
  %125 = zext i1 %124 to i32
  call void @assert_ft(i32 %125, i32 1)
  %126 = and i1 %118, %122
  %or.cond = and i1 %119, %123
  %127 = icmp eq i1 %or.cond, %126
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = load ptr, ptr @stderr, align 8
  %130 = load ptr, ptr @stderr, align 8
  %131 = icmp eq ptr %130, %129
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = select i1 %or.cond, i32 30, i32 29
  %134 = xor i32 28, %133
  br i1 %or.cond, label %140, label %135

135:                                              ; preds = %95
  %Diff_phi69 = phi i32 [ %134, %95 ]
  %Dest_phi70 = phi i32 [ %96, %95 ]
  %136 = xor i32 %Diff_phi69, %Dest_phi70
  %137 = icmp eq i32 %136, 29
  %138 = zext i1 %137 to i32
  call void @assert_cfg_ft(i32 %138, i32 %136, i32 0)
  %139 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr %130) #16
  tail call void @exit(i32 noundef 0) #13
  unreachable

140:                                              ; preds = %95
  %Diff_phi71 = phi i32 [ %134, %95 ]
  %Dest_phi72 = phi i32 [ %96, %95 ]
  %141 = xor i32 %Diff_phi71, %Dest_phi72
  %142 = icmp eq i32 %141, 30
  %143 = zext i1 %142 to i32
  call void @assert_cfg_ft(i32 %143, i32 %141, i32 0)
  %144 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 19, i64 1, ptr %130) #16
  br label %145

145:                                              ; preds = %145, %140
  %Diff_phi73 = phi i32 [ 1, %140 ], [ %180, %145 ]
  %Dest_phi74 = phi i32 [ %141, %140 ], [ %147, %145 ]
  %146 = phi i64 [ 0, %140 ], [ %173, %145 ]
  %indvars.iv = phi i64 [ 0, %140 ], [ %indvars.iv.next, %145 ]
  %147 = xor i32 %Diff_phi73, %Dest_phi74
  %148 = icmp eq i32 %147, 31
  %149 = zext i1 %148 to i32
  call void @assert_cfg_ft(i32 %149, i32 %147, i32 0)
  %150 = icmp eq i64 %indvars.iv, %146
  %151 = zext i1 %150 to i32
  call void @assert_ft(i32 %151, i32 1)
  %152 = tail call i64 @rndnum(ptr noundef %99)
  %153 = urem i64 %152, 7
  %154 = urem i64 %152, 7
  %155 = icmp eq i64 %154, %153
  %156 = zext i1 %155 to i32
  call void @assert_ft(i32 %156, i32 1)
  %157 = trunc i64 %153 to i8
  %158 = trunc i64 %154 to i8
  %159 = icmp eq i8 %158, %157
  %160 = zext i1 %159 to i32
  call void @assert_ft(i32 %160, i32 1)
  %161 = add nuw nsw i8 %157, 97
  %162 = add nuw nsw i8 %158, 97
  %163 = icmp eq i8 %162, %161
  %164 = zext i1 %163 to i32
  call void @assert_ft(i32 %164, i32 1)
  %165 = load ptr, ptr @buffer, align 8
  %166 = load ptr, ptr @buffer, align 8
  %167 = icmp eq ptr %166, %165
  %168 = zext i1 %167 to i32
  call void @assert_ft(i32 %168, i32 1)
  %169 = getelementptr inbounds i8, ptr %165, i64 %146
  %170 = getelementptr inbounds i8, ptr %166, i64 %indvars.iv
  %171 = icmp eq ptr %170, %169
  %172 = zext i1 %171 to i32
  call void @assert_ft(i32 %172, i32 1)
  store i8 %162, ptr %170, align 1
  %173 = add nuw nsw i64 %146, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %174 = icmp eq i64 %indvars.iv.next, %173
  %175 = zext i1 %174 to i32
  call void @assert_ft(i32 %175, i32 1)
  %176 = icmp eq i64 %173, %76
  %exitcond.not = icmp eq i64 %indvars.iv.next, %77
  %177 = icmp eq i1 %exitcond.not, %176
  %178 = zext i1 %177 to i32
  call void @assert_ft(i32 %178, i32 1)
  %179 = select i1 %exitcond.not, i32 32, i32 31
  %180 = xor i32 31, %179
  br i1 %exitcond.not, label %181, label %145

181:                                              ; preds = %145
  %Diff_phi75 = phi i32 [ %180, %145 ]
  %Dest_phi76 = phi i32 [ %147, %145 ]
  %182 = xor i32 %Diff_phi75, %Dest_phi76
  %183 = icmp eq i32 %182, 32
  %184 = zext i1 %183 to i32
  call void @assert_cfg_ft(i32 %184, i32 %182, i32 0)
  %185 = load ptr, ptr @buffer, align 8
  %186 = load ptr, ptr @buffer, align 8
  %187 = icmp eq ptr %186, %185
  %188 = zext i1 %187 to i32
  call void @assert_ft(i32 %188, i32 1)
  %189 = add nsw i32 %66, -1
  %190 = add nsw i32 %.038, -1
  %191 = icmp eq i32 %190, %189
  %192 = zext i1 %191 to i32
  call void @assert_ft(i32 %192, i32 1)
  %193 = zext i32 %189 to i64
  %194 = zext i32 %190 to i64
  %195 = icmp eq i64 %194, %193
  %196 = zext i1 %195 to i32
  call void @assert_ft(i32 %196, i32 1)
  %197 = getelementptr inbounds i8, ptr %185, i64 %193
  %198 = getelementptr inbounds i8, ptr %186, i64 %194
  %199 = icmp eq ptr %198, %197
  %200 = zext i1 %199 to i32
  call void @assert_ft(i32 %200, i32 1)
  store i8 0, ptr %198, align 1
  %201 = mul nuw nsw i32 %66, 3
  %202 = mul nuw nsw i32 %.038, 3
  %203 = icmp eq i32 %202, %201
  %204 = zext i1 %203 to i32
  call void @assert_ft(i32 %204, i32 1)
  br label %205

205:                                              ; preds = %._crit_edge, %181
  %Diff_phi77 = phi i32 [ 1, %181 ], [ %384, %._crit_edge ]
  %Dest_phi78 = phi i32 [ %182, %181 ], [ %366, %._crit_edge ]
  %206 = phi i32 [ 0, %181 ], [ %212, %._crit_edge ]
  %.04049 = phi i32 [ 0, %181 ], [ %213, %._crit_edge ]
  %207 = xor i32 %Diff_phi77, %Dest_phi78
  %208 = icmp eq i32 %207, 33
  %209 = zext i1 %208 to i32
  call void @assert_cfg_ft(i32 %209, i32 %207, i32 0)
  %210 = icmp eq i32 %.04049, %206
  %211 = zext i1 %210 to i32
  call void @assert_ft(i32 %211, i32 1)
  %212 = add nuw nsw i32 %206, 1
  %213 = add nuw nsw i32 %.04049, 1
  %214 = icmp eq i32 %213, %212
  %215 = zext i1 %214 to i32
  call void @assert_ft(i32 %215, i32 1)
  %216 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %213)
  br label %217

217:                                              ; preds = %217, %205
  %Diff_phi79 = phi i32 [ 3, %205 ], [ %268, %217 ]
  %Dest_phi80 = phi i32 [ %207, %205 ], [ %219, %217 ]
  %218 = phi i64 [ 0, %205 ], [ %261, %217 ]
  %indvars.iv50 = phi i64 [ 0, %205 ], [ %indvars.iv.next51, %217 ]
  %219 = xor i32 %Diff_phi79, %Dest_phi80
  %220 = icmp eq i32 %219, 34
  %221 = zext i1 %220 to i32
  call void @assert_cfg_ft(i32 %221, i32 %219, i32 0)
  %222 = icmp eq i64 %indvars.iv50, %218
  %223 = zext i1 %222 to i32
  call void @assert_ft(i32 %223, i32 1)
  %224 = tail call i64 @rndnum(ptr noundef %99)
  %225 = urem i64 %224, 7
  %226 = urem i64 %224, 7
  %227 = icmp eq i64 %226, %225
  %228 = zext i1 %227 to i32
  call void @assert_ft(i32 %228, i32 1)
  %229 = trunc i64 %225 to i8
  %230 = trunc i64 %226 to i8
  %231 = icmp eq i8 %230, %229
  %232 = zext i1 %231 to i32
  call void @assert_ft(i32 %232, i32 1)
  %233 = add nuw nsw i8 %229, 97
  %234 = add nuw nsw i8 %230, 97
  %235 = icmp eq i8 %234, %233
  %236 = zext i1 %235 to i32
  call void @assert_ft(i32 %236, i32 1)
  %237 = load ptr, ptr @pat, align 8
  %238 = load ptr, ptr @pat, align 8
  %239 = icmp eq ptr %238, %237
  %240 = zext i1 %239 to i32
  call void @assert_ft(i32 %240, i32 1)
  %241 = getelementptr inbounds i8, ptr %237, i64 %218
  %242 = getelementptr inbounds i8, ptr %238, i64 %indvars.iv50
  %243 = icmp eq ptr %242, %241
  %244 = zext i1 %243 to i32
  call void @assert_ft(i32 %244, i32 1)
  store i8 %234, ptr %242, align 1
  %245 = load ptr, ptr @pat, align 8
  %246 = load ptr, ptr @pat, align 8
  %247 = icmp eq ptr %246, %245
  %248 = zext i1 %247 to i32
  call void @assert_ft(i32 %248, i32 1)
  %249 = getelementptr inbounds i8, ptr %245, i64 %218
  %250 = getelementptr inbounds i8, ptr %246, i64 %indvars.iv50
  %251 = icmp eq ptr %250, %249
  %252 = zext i1 %251 to i32
  call void @assert_ft(i32 %252, i32 1)
  %253 = load i8, ptr %249, align 1
  %254 = load i8, ptr %250, align 1
  %255 = icmp eq i8 %254, %253
  %256 = zext i1 %255 to i32
  call void @assert_ft(i32 %256, i32 1)
  %257 = sext i8 %253 to i32
  %258 = sext i8 %254 to i32
  %259 = icmp eq i32 %258, %257
  %260 = zext i1 %259 to i32
  call void @assert_ft(i32 %260, i32 1)
  %putchar = tail call i32 @putchar(i32 %258)
  %261 = add nuw nsw i64 %218, 1
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %262 = icmp eq i64 %indvars.iv.next51, %261
  %263 = zext i1 %262 to i32
  call void @assert_ft(i32 %263, i32 1)
  %264 = icmp eq i64 %261, %109
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, %110
  %265 = icmp eq i1 %exitcond53.not, %264
  %266 = zext i1 %265 to i32
  call void @assert_ft(i32 %266, i32 1)
  %267 = select i1 %exitcond53.not, i32 35, i32 34
  %268 = xor i32 34, %267
  br i1 %exitcond53.not, label %269, label %217

269:                                              ; preds = %217
  %Diff_phi81 = phi i32 [ %268, %217 ]
  %Dest_phi82 = phi i32 [ %219, %217 ]
  %270 = xor i32 %Diff_phi81, %Dest_phi82
  %271 = icmp eq i32 %270, 35
  %272 = zext i1 %271 to i32
  call void @assert_cfg_ft(i32 %272, i32 %270, i32 0)
  %273 = load ptr, ptr @pat, align 8
  %274 = load ptr, ptr @pat, align 8
  %275 = icmp eq ptr %274, %273
  %276 = zext i1 %275 to i32
  call void @assert_ft(i32 %276, i32 1)
  %277 = getelementptr inbounds i8, ptr %273, i64 %109
  %278 = getelementptr inbounds i8, ptr %274, i64 %110
  %279 = icmp eq ptr %278, %277
  %280 = zext i1 %279 to i32
  call void @assert_ft(i32 %280, i32 1)
  store i8 0, ptr %278, align 1
  %281 = load ptr, ptr @buffer, align 8
  %282 = load ptr, ptr @buffer, align 8
  %283 = icmp eq ptr %282, %281
  %284 = zext i1 %283 to i32
  call void @assert_ft(i32 %284, i32 1)
  %285 = urem i32 %206, 3
  %286 = urem i32 %.04049, 3
  %287 = icmp eq i32 %286, %285
  %288 = zext i1 %287 to i32
  call void @assert_ft(i32 %288, i32 1)
  %289 = add nuw nsw i32 %285, 3
  %290 = add nuw nsw i32 %286, 3
  %291 = icmp eq i32 %290, %289
  %292 = zext i1 %291 to i32
  call void @assert_ft(i32 %292, i32 1)
  %293 = udiv i32 %201, %289
  %294 = udiv i32 %202, %290
  %295 = icmp eq i32 %294, %293
  %296 = zext i1 %295 to i32
  call void @assert_ft(i32 %296, i32 1)
  %297 = add nsw i32 %293, -1
  %298 = add nsw i32 %294, -1
  %299 = icmp eq i32 %298, %297
  %300 = zext i1 %299 to i32
  call void @assert_ft(i32 %300, i32 1)
  %301 = zext i32 %297 to i64
  %302 = zext i32 %298 to i64
  %303 = icmp eq i64 %302, %301
  %304 = zext i1 %303 to i32
  call void @assert_ft(i32 %304, i32 1)
  %305 = getelementptr inbounds i8, ptr %281, i64 %301
  %306 = getelementptr inbounds i8, ptr %282, i64 %302
  %307 = icmp eq ptr %306, %305
  %308 = zext i1 %307 to i32
  call void @assert_ft(i32 %308, i32 1)
  store i8 0, ptr %306, align 1
  %309 = load ptr, ptr @buffer, align 8
  %310 = load ptr, ptr @buffer, align 8
  %311 = icmp eq ptr %310, %309
  %312 = zext i1 %311 to i32
  call void @assert_ft(i32 %312, i32 1)
  %313 = lshr i32 %297, 2
  %314 = lshr i32 %298, 2
  %315 = icmp eq i32 %314, %313
  %316 = zext i1 %315 to i32
  call void @assert_ft(i32 %316, i32 1)
  %317 = zext i32 %313 to i64
  %318 = zext i32 %314 to i64
  %319 = icmp eq i64 %318, %317
  %320 = zext i1 %319 to i32
  call void @assert_ft(i32 %320, i32 1)
  %321 = getelementptr inbounds i8, ptr %309, i64 %317
  %322 = getelementptr inbounds i8, ptr %310, i64 %318
  %323 = icmp eq ptr %322, %321
  %324 = zext i1 %323 to i32
  call void @assert_ft(i32 %324, i32 1)
  %325 = load ptr, ptr @pat, align 8
  %326 = load ptr, ptr @pat, align 8
  %327 = icmp eq ptr %326, %325
  %328 = zext i1 %327 to i32
  call void @assert_ft(i32 %328, i32 1)
  %329 = tail call ptr @search(ptr noundef %326, ptr noundef %322)
  %330 = icmp eq ptr %329, null
  %331 = icmp eq ptr %329, null
  %332 = icmp eq i1 %331, %330
  %333 = zext i1 %332 to i32
  call void @assert_ft(i32 %333, i32 1)
  %334 = select i1 %331, i32 37, i32 36
  %335 = xor i32 35, %334
  br i1 %331, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %269
  %Diff_phi83 = phi i32 [ %335, %269 ], [ %364, %.lr.ph ]
  %Dest_phi84 = phi i32 [ %270, %269 ], [ %339, %.lr.ph ]
  %336 = phi ptr [ %358, %.lr.ph ], [ %329, %269 ]
  %337 = phi ptr [ %358, %.lr.ph ], [ %329, %269 ]
  %338 = phi i32 [ %350, %.lr.ph ], [ 0, %269 ]
  %.048 = phi i32 [ %351, %.lr.ph ], [ 0, %269 ]
  %339 = xor i32 %Diff_phi83, %Dest_phi84
  %340 = icmp eq i32 %339, 36
  %341 = zext i1 %340 to i32
  call void @assert_cfg_ft(i32 %341, i32 %339, i32 0)
  %342 = icmp eq i32 %.048, %338
  %343 = zext i1 %342 to i32
  call void @assert_ft(i32 %343, i32 1)
  %344 = icmp eq ptr %337, %336
  %345 = zext i1 %344 to i32
  call void @assert_ft(i32 %345, i32 1)
  %346 = getelementptr inbounds i8, ptr %336, i64 1
  %347 = getelementptr inbounds i8, ptr %337, i64 1
  %348 = icmp eq ptr %347, %346
  %349 = zext i1 %348 to i32
  call void @assert_ft(i32 %349, i32 1)
  %350 = add nuw nsw i32 %338, 1
  %351 = add nuw nsw i32 %.048, 1
  %352 = icmp eq i32 %351, %350
  %353 = zext i1 %352 to i32
  call void @assert_ft(i32 %353, i32 1)
  %354 = load ptr, ptr @pat, align 8
  %355 = load ptr, ptr @pat, align 8
  %356 = icmp eq ptr %355, %354
  %357 = zext i1 %356 to i32
  call void @assert_ft(i32 %357, i32 1)
  %358 = tail call ptr @search(ptr noundef %355, ptr noundef nonnull %347)
  %359 = icmp eq ptr %358, null
  %360 = icmp eq ptr %358, null
  %361 = icmp eq i1 %360, %359
  %362 = zext i1 %361 to i32
  call void @assert_ft(i32 %362, i32 1)
  %363 = select i1 %360, i32 37, i32 36
  %364 = xor i32 36, %363
  br i1 %360, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %269
  %Diff_phi85 = phi i32 [ %364, %.lr.ph ], [ %335, %269 ]
  %Dest_phi86 = phi i32 [ %339, %.lr.ph ], [ %270, %269 ]
  %365 = phi i32 [ 0, %269 ], [ %350, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %269 ], [ %351, %.lr.ph ]
  %366 = xor i32 %Diff_phi85, %Dest_phi86
  %367 = icmp eq i32 %366, 37
  %368 = zext i1 %367 to i32
  call void @assert_cfg_ft(i32 %368, i32 %366, i32 0)
  %369 = icmp eq i32 %.0.lcssa, %365
  %370 = zext i1 %369 to i32
  call void @assert_ft(i32 %370, i32 1)
  %371 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.0.lcssa)
  %372 = load ptr, ptr @buffer, align 8
  %373 = load ptr, ptr @buffer, align 8
  %374 = icmp eq ptr %373, %372
  %375 = zext i1 %374 to i32
  call void @assert_ft(i32 %375, i32 1)
  %376 = getelementptr inbounds i8, ptr %372, i64 %301
  %377 = getelementptr inbounds i8, ptr %373, i64 %302
  %378 = icmp eq ptr %377, %376
  %379 = zext i1 %378 to i32
  call void @assert_ft(i32 %379, i32 1)
  store i8 97, ptr %377, align 1
  %380 = icmp eq i32 %212, 23
  %exitcond54.not = icmp eq i32 %213, 23
  %381 = icmp eq i1 %exitcond54.not, %380
  %382 = zext i1 %381 to i32
  call void @assert_ft(i32 %382, i32 1)
  %383 = select i1 %exitcond54.not, i32 38, i32 33
  %384 = xor i32 37, %383
  br i1 %exitcond54.not, label %385, label %205

385:                                              ; preds = %._crit_edge
  %Diff_phi87 = phi i32 [ %384, %._crit_edge ]
  %Dest_phi88 = phi i32 [ %366, %._crit_edge ]
  %386 = xor i32 %Diff_phi87, %Dest_phi88
  %387 = icmp eq i32 %386, 38
  %388 = zext i1 %387 to i32
  call void @assert_cfg_ft(i32 %388, i32 %386, i32 0)
  %puts43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  tail call void @nuke_mill(ptr noundef %99)
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
  %6 = getelementptr inbounds %struct.rndmill, ptr %4, i64 0, i32 1
  %7 = icmp eq ptr %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  store i64 %1, ptr %6, align 8
  %9 = getelementptr inbounds %struct.rndmill, ptr %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.rndmill, ptr %4, i64 0, i32 2
  %11 = icmp eq ptr %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  store i64 %2, ptr %10, align 8
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
  %3 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %4 = icmp eq ptr %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = load i64, ptr %0, align 8
  %.promoted = load i64, ptr %0, align 8
  %11 = icmp eq i64 %.promoted, %10
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = load i64, ptr %2, align 8
  %.promoted25 = load i64, ptr %3, align 8
  %14 = icmp eq i64 %.promoted25, %13
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = load i64, ptr %6, align 8
  %.promoted27 = load i64, ptr %7, align 8
  %17 = icmp eq i64 %.promoted27, %16
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  br label %19

19:                                               ; preds = %19, %1
  %Diff_phi = phi i32 [ 3, %1 ], [ %165, %19 ]
  %Dest_phi = phi i32 [ 41, %1 ], [ %28, %19 ]
  %20 = phi i32 [ 0, %1 ], [ %157, %19 ]
  %.030 = phi i32 [ 0, %1 ], [ %158, %19 ]
  %21 = phi i64 [ 0, %1 ], [ %153, %19 ]
  %.02429 = phi i64 [ 0, %1 ], [ %154, %19 ]
  %22 = phi i64 [ %10, %1 ], [ %85, %19 ]
  %23 = phi i64 [ %.promoted, %1 ], [ %86, %19 ]
  %24 = phi i64 [ %13, %1 ], [ %105, %19 ]
  %25 = phi i64 [ %.promoted25, %1 ], [ %106, %19 ]
  %26 = phi i64 [ %16, %1 ], [ %125, %19 ]
  %27 = phi i64 [ %.promoted27, %1 ], [ %126, %19 ]
  %28 = xor i32 %Diff_phi, %Dest_phi
  %29 = icmp eq i32 %28, 42
  %30 = zext i1 %29 to i32
  call void @assert_cfg_ft(i32 %30, i32 %28, i32 0)
  %31 = icmp eq i64 %27, %26
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = icmp eq i32 %.030, %20
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = icmp eq i64 %.02429, %21
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = icmp eq i64 %23, %22
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = icmp eq i64 %25, %24
  %40 = zext i1 %39 to i32
  call void @assert_ft(i32 %40, i32 1)
  %41 = lshr i64 %22, 31
  %42 = lshr i64 %23, 31
  %43 = icmp eq i64 %42, %41
  %44 = zext i1 %43 to i32
  call void @assert_ft(i32 %44, i32 1)
  %45 = lshr i64 %22, 6
  %46 = lshr i64 %23, 6
  %47 = icmp eq i64 %46, %45
  %48 = zext i1 %47 to i32
  call void @assert_ft(i32 %48, i32 1)
  %49 = lshr i64 %22, 4
  %50 = lshr i64 %23, 4
  %51 = icmp eq i64 %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = lshr i64 %22, 2
  %54 = lshr i64 %23, 2
  %55 = icmp eq i64 %54, %53
  %56 = zext i1 %55 to i32
  call void @assert_ft(i32 %56, i32 1)
  %57 = xor i64 %45, %41
  %58 = xor i64 %46, %42
  %59 = icmp eq i64 %58, %57
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = xor i64 %57, %49
  %62 = xor i64 %58, %50
  %63 = icmp eq i64 %62, %61
  %64 = zext i1 %63 to i32
  call void @assert_ft(i32 %64, i32 1)
  %65 = xor i64 %61, %53
  %66 = xor i64 %62, %54
  %67 = icmp eq i64 %66, %65
  %68 = zext i1 %67 to i32
  call void @assert_ft(i32 %68, i32 1)
  %69 = xor i64 %65, %22
  %70 = xor i64 %66, %23
  %71 = icmp eq i64 %70, %69
  %72 = zext i1 %71 to i32
  call void @assert_ft(i32 %72, i32 1)
  %73 = shl i64 %69, 31
  %74 = shl i64 %70, 31
  %75 = icmp eq i64 %74, %73
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  %77 = and i64 %73, 2147483648
  %78 = and i64 %74, 2147483648
  %79 = icmp eq i64 %78, %77
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  %81 = lshr i64 %22, 1
  %82 = lshr i64 %23, 1
  %83 = icmp eq i64 %82, %81
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = or i64 %77, %81
  %86 = or i64 %78, %82
  %87 = icmp eq i64 %86, %85
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = shl i64 %24, 28
  %90 = shl i64 %25, 28
  %91 = icmp eq i64 %90, %89
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = xor i64 %89, %24
  %94 = xor i64 %90, %25
  %95 = icmp eq i64 %94, %93
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = and i64 %93, 1073741824
  %98 = and i64 %94, 1073741824
  %99 = icmp eq i64 %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = lshr i64 %24, 1
  %102 = lshr i64 %25, 1
  %103 = icmp eq i64 %102, %101
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  %105 = or i64 %97, %101
  %106 = or i64 %98, %102
  %107 = icmp eq i64 %106, %105
  %108 = zext i1 %107 to i32
  call void @assert_ft(i32 %108, i32 1)
  %109 = lshr i64 %26, 1
  %110 = lshr i64 %27, 1
  %111 = icmp eq i64 %110, %109
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  %113 = shl i64 %109, 28
  %114 = shl i64 %110, 28
  %115 = icmp eq i64 %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = xor i64 %113, %26
  %118 = xor i64 %114, %27
  %119 = icmp eq i64 %118, %117
  %120 = zext i1 %119 to i32
  call void @assert_ft(i32 %120, i32 1)
  %121 = and i64 %117, 268435456
  %122 = and i64 %118, 268435456
  %123 = icmp eq i64 %122, %121
  %124 = zext i1 %123 to i32
  call void @assert_ft(i32 %124, i32 1)
  %125 = or i64 %121, %109
  %126 = or i64 %122, %110
  %127 = icmp eq i64 %126, %125
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = and i64 %101, %81
  %130 = and i64 %102, %82
  %131 = icmp eq i64 %130, %129
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = xor i64 %81, -1
  %134 = xor i64 %82, -1
  %135 = icmp eq i64 %134, %133
  %136 = zext i1 %135 to i32
  call void @assert_ft(i32 %136, i32 1)
  %137 = and i64 %109, %133
  %138 = and i64 %110, %134
  %139 = icmp eq i64 %138, %137
  %140 = zext i1 %139 to i32
  call void @assert_ft(i32 %140, i32 1)
  %141 = or i64 %137, %129
  %142 = or i64 %138, %130
  %143 = icmp eq i64 %142, %141
  %144 = zext i1 %143 to i32
  call void @assert_ft(i32 %144, i32 1)
  %145 = and i64 %141, 1
  %146 = and i64 %142, 1
  %147 = icmp eq i64 %146, %145
  %148 = zext i1 %147 to i32
  call void @assert_ft(i32 %148, i32 1)
  %149 = shl i64 %21, 1
  %150 = shl i64 %.02429, 1
  %151 = icmp eq i64 %150, %149
  %152 = zext i1 %151 to i32
  call void @assert_ft(i32 %152, i32 1)
  %153 = or i64 %145, %149
  %154 = or i64 %146, %150
  %155 = icmp eq i64 %154, %153
  %156 = zext i1 %155 to i32
  call void @assert_ft(i32 %156, i32 1)
  %157 = add nuw nsw i32 %20, 1
  %158 = add nuw nsw i32 %.030, 1
  %159 = icmp eq i32 %158, %157
  %160 = zext i1 %159 to i32
  call void @assert_ft(i32 %160, i32 1)
  %161 = icmp eq i32 %157, 32
  %exitcond.not = icmp eq i32 %158, 32
  %162 = icmp eq i1 %exitcond.not, %161
  %163 = zext i1 %162 to i32
  call void @assert_ft(i32 %163, i32 1)
  %164 = select i1 %exitcond.not, i32 43, i32 42
  %165 = xor i32 42, %164
  br i1 %exitcond.not, label %166, label %19

166:                                              ; preds = %19
  %Diff_phi46 = phi i32 [ %165, %19 ]
  %Dest_phi47 = phi i32 [ %28, %19 ]
  %167 = xor i32 %Diff_phi46, %Dest_phi47
  %168 = icmp eq i32 %167, 43
  %169 = zext i1 %168 to i32
  call void @assert_cfg_ft(i32 %169, i32 %167, i32 0)
  store i64 %86, ptr %0, align 8
  store i64 %106, ptr %3, align 8
  store i64 %126, ptr %7, align 8
  ret i64 %154
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @checkpoint_mill(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 8
  %3 = load i64, ptr %0, align 8
  %4 = icmp eq i64 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = load i64, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = icmp eq i64 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %16 = icmp eq ptr %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = load i64, ptr %14, align 8
  %19 = load i64, ptr %15, align 8
  %20 = icmp eq i64 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = tail call ptr @init_mill(i64 noundef %3, i64 noundef %11, i64 noundef %19)
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @reset_mill(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = load i64, ptr %1, align 8
  %4 = load i64, ptr %1, align 8
  %5 = icmp eq i64 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  store i64 %4, ptr %0, align 8
  %7 = getelementptr inbounds %struct.rndmill, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rndmill, ptr %1, i64 0, i32 1
  %9 = icmp eq ptr %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = load i64, ptr %7, align 8
  %12 = load i64, ptr %8, align 8
  %13 = icmp eq i64 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  store i64 %12, ptr %16, align 8
  %19 = getelementptr inbounds %struct.rndmill, ptr %1, i64 0, i32 2
  %20 = getelementptr inbounds %struct.rndmill, ptr %1, i64 0, i32 2
  %21 = icmp eq ptr %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = load i64, ptr %19, align 8
  %24 = load i64, ptr %20, align 8
  %25 = icmp eq i64 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %28 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %29 = icmp eq ptr %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  store i64 %24, ptr %28, align 8
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
