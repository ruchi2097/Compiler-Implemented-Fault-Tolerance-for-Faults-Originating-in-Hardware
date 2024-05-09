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
  %2 = icmp eq i64 %0, 0
  %.not = icmp eq i64 %0, 0
  %3 = icmp eq i1 %.not, %2
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = select i1 %.not, i32 3, i32 2
  %6 = xor i32 1, %5
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader, %1
  %Diff_phi = phi i32 [ %6, %1 ], [ %32, %.preheader ]
  %Dest_phi = phi i32 [ 1, %1 ], [ %9, %.preheader ]
  %7 = phi i64 [ %24, %.preheader ], [ %0, %1 ]
  %.05 = phi i64 [ %25, %.preheader ], [ %0, %1 ]
  %8 = phi i32 [ %16, %.preheader ], [ 0, %1 ]
  %.0 = phi i32 [ %17, %.preheader ], [ 0, %1 ]
  %9 = xor i32 %Diff_phi, %Dest_phi
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i32
  call void @assert_cfg_ft(i32 %11, i32 %9, i32 0)
  %12 = icmp eq i32 %.0, %8
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = icmp eq i64 %.05, %7
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = add nuw nsw i32 %8, 1
  %17 = add nuw nsw i32 %.0, 1
  %18 = icmp eq i32 %17, %16
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = add nsw i64 %7, -1
  %21 = add nsw i64 %.05, -1
  %22 = icmp eq i64 %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = and i64 %20, %7
  %25 = and i64 %21, %.05
  %26 = icmp eq i64 %25, %24
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = icmp eq i64 %24, 0
  %.not7 = icmp eq i64 %25, 0
  %29 = icmp eq i1 %.not7, %28
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = select i1 %.not7, i32 3, i32 2
  %32 = xor i32 2, %31
  br i1 %.not7, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %1
  %Diff_phi8 = phi i32 [ %32, %.preheader ], [ %6, %1 ]
  %Dest_phi9 = phi i32 [ %9, %.preheader ], [ 1, %1 ]
  %33 = phi i32 [ 0, %1 ], [ %16, %.preheader ]
  %.1 = phi i32 [ 0, %1 ], [ %17, %.preheader ]
  %34 = xor i32 %Diff_phi8, %Dest_phi9
  %35 = icmp eq i32 %34, 3
  %36 = zext i1 %35 to i32
  call void @assert_cfg_ft(i32 %36, i32 %34, i32 0)
  %37 = icmp eq i32 %.1, %33
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  ret i32 %.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @bitcount(i64 noundef %0) #1 {
  %2 = lshr i64 %0, 1
  %3 = lshr i64 %0, 1
  %4 = icmp eq i64 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = and i64 %2, 1431655765
  %7 = and i64 %3, 1431655765
  %8 = icmp eq i64 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = and i64 %0, 1431655765
  %11 = and i64 %0, 1431655765
  %12 = icmp eq i64 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = add nuw nsw i64 %6, %10
  %15 = add nuw nsw i64 %7, %11
  %16 = icmp eq i64 %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = lshr i64 %14, 2
  %19 = lshr i64 %15, 2
  %20 = icmp eq i64 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = and i64 %18, 858993459
  %23 = and i64 %19, 858993459
  %24 = icmp eq i64 %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = and i64 %14, 858993459
  %27 = and i64 %15, 858993459
  %28 = icmp eq i64 %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = add nuw nsw i64 %22, %26
  %31 = add nuw nsw i64 %23, %27
  %32 = icmp eq i64 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = lshr i64 %30, 4
  %35 = lshr i64 %31, 4
  %36 = icmp eq i64 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = and i64 %34, 117901063
  %39 = and i64 %35, 117901063
  %40 = icmp eq i64 %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = and i64 %30, 117901063
  %43 = and i64 %31, 117901063
  %44 = icmp eq i64 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = add nuw nsw i64 %38, %42
  %47 = add nuw nsw i64 %39, %43
  %48 = icmp eq i64 %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = lshr i64 %46, 8
  %51 = lshr i64 %47, 8
  %52 = icmp eq i64 %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = and i64 %50, 983055
  %55 = and i64 %51, 983055
  %56 = icmp eq i64 %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = and i64 %46, 983055
  %59 = and i64 %47, 983055
  %60 = icmp eq i64 %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = add nuw nsw i64 %54, %58
  %63 = add nuw nsw i64 %55, %59
  %64 = icmp eq i64 %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = lshr i64 %62, 16
  %67 = lshr i64 %63, 16
  %68 = icmp eq i64 %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = and i64 %62, 31
  %71 = and i64 %63, 31
  %72 = icmp eq i64 %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = add nuw nsw i64 %66, %70
  %75 = add nuw nsw i64 %67, %71
  %76 = icmp eq i64 %75, %74
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = trunc i64 %74 to i32
  %79 = trunc i64 %75 to i32
  %80 = icmp eq i32 %79, %78
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  ret i32 %79
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @ntbl_bitcount(i64 noundef %0) #1 {
  %2 = and i64 %0, 15
  %3 = and i64 %0, 15
  %4 = icmp eq i64 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %7 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %3
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = load i8, ptr %6, align 1
  %11 = load i8, ptr %7, align 1
  %12 = icmp eq i8 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = sext i8 %10 to i32
  %15 = sext i8 %11 to i32
  %16 = icmp eq i32 %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = lshr i64 %0, 4
  %19 = lshr i64 %0, 4
  %20 = icmp eq i64 %19, %18
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = and i64 %18, 15
  %23 = and i64 %19, 15
  %24 = icmp eq i64 %23, %22
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %22
  %27 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %23
  %28 = icmp eq ptr %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = load i8, ptr %26, align 1
  %31 = load i8, ptr %27, align 1
  %32 = icmp eq i8 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = sext i8 %30 to i32
  %35 = sext i8 %31 to i32
  %36 = icmp eq i32 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = add nsw i32 %34, %14
  %39 = add nsw i32 %35, %15
  %40 = icmp eq i32 %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = lshr i64 %0, 8
  %43 = lshr i64 %0, 8
  %44 = icmp eq i64 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = and i64 %42, 15
  %47 = and i64 %43, 15
  %48 = icmp eq i64 %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %46
  %51 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %47
  %52 = icmp eq ptr %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = load i8, ptr %50, align 1
  %55 = load i8, ptr %51, align 1
  %56 = icmp eq i8 %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = sext i8 %54 to i32
  %59 = sext i8 %55 to i32
  %60 = icmp eq i32 %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = add nsw i32 %38, %58
  %63 = add nsw i32 %39, %59
  %64 = icmp eq i32 %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = lshr i64 %0, 12
  %67 = lshr i64 %0, 12
  %68 = icmp eq i64 %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = and i64 %66, 15
  %71 = and i64 %67, 15
  %72 = icmp eq i64 %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %70
  %75 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %71
  %76 = icmp eq ptr %75, %74
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = load i8, ptr %74, align 1
  %79 = load i8, ptr %75, align 1
  %80 = icmp eq i8 %79, %78
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  %82 = sext i8 %78 to i32
  %83 = sext i8 %79 to i32
  %84 = icmp eq i32 %83, %82
  %85 = zext i1 %84 to i32
  call void @assert_ft(i32 %85, i32 1)
  %86 = add nsw i32 %62, %82
  %87 = add nsw i32 %63, %83
  %88 = icmp eq i32 %87, %86
  %89 = zext i1 %88 to i32
  call void @assert_ft(i32 %89, i32 1)
  %90 = lshr i64 %0, 16
  %91 = lshr i64 %0, 16
  %92 = icmp eq i64 %91, %90
  %93 = zext i1 %92 to i32
  call void @assert_ft(i32 %93, i32 1)
  %94 = and i64 %90, 15
  %95 = and i64 %91, 15
  %96 = icmp eq i64 %95, %94
  %97 = zext i1 %96 to i32
  call void @assert_ft(i32 %97, i32 1)
  %98 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %94
  %99 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %95
  %100 = icmp eq ptr %99, %98
  %101 = zext i1 %100 to i32
  call void @assert_ft(i32 %101, i32 1)
  %102 = load i8, ptr %98, align 1
  %103 = load i8, ptr %99, align 1
  %104 = icmp eq i8 %103, %102
  %105 = zext i1 %104 to i32
  call void @assert_ft(i32 %105, i32 1)
  %106 = sext i8 %102 to i32
  %107 = sext i8 %103 to i32
  %108 = icmp eq i32 %107, %106
  %109 = zext i1 %108 to i32
  call void @assert_ft(i32 %109, i32 1)
  %110 = add nsw i32 %86, %106
  %111 = add nsw i32 %87, %107
  %112 = icmp eq i32 %111, %110
  %113 = zext i1 %112 to i32
  call void @assert_ft(i32 %113, i32 1)
  %114 = lshr i64 %0, 20
  %115 = lshr i64 %0, 20
  %116 = icmp eq i64 %115, %114
  %117 = zext i1 %116 to i32
  call void @assert_ft(i32 %117, i32 1)
  %118 = and i64 %114, 15
  %119 = and i64 %115, 15
  %120 = icmp eq i64 %119, %118
  %121 = zext i1 %120 to i32
  call void @assert_ft(i32 %121, i32 1)
  %122 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %118
  %123 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %119
  %124 = icmp eq ptr %123, %122
  %125 = zext i1 %124 to i32
  call void @assert_ft(i32 %125, i32 1)
  %126 = load i8, ptr %122, align 1
  %127 = load i8, ptr %123, align 1
  %128 = icmp eq i8 %127, %126
  %129 = zext i1 %128 to i32
  call void @assert_ft(i32 %129, i32 1)
  %130 = sext i8 %126 to i32
  %131 = sext i8 %127 to i32
  %132 = icmp eq i32 %131, %130
  %133 = zext i1 %132 to i32
  call void @assert_ft(i32 %133, i32 1)
  %134 = add nsw i32 %110, %130
  %135 = add nsw i32 %111, %131
  %136 = icmp eq i32 %135, %134
  %137 = zext i1 %136 to i32
  call void @assert_ft(i32 %137, i32 1)
  %138 = lshr i64 %0, 24
  %139 = lshr i64 %0, 24
  %140 = icmp eq i64 %139, %138
  %141 = zext i1 %140 to i32
  call void @assert_ft(i32 %141, i32 1)
  %142 = and i64 %138, 15
  %143 = and i64 %139, 15
  %144 = icmp eq i64 %143, %142
  %145 = zext i1 %144 to i32
  call void @assert_ft(i32 %145, i32 1)
  %146 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %142
  %147 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %143
  %148 = icmp eq ptr %147, %146
  %149 = zext i1 %148 to i32
  call void @assert_ft(i32 %149, i32 1)
  %150 = load i8, ptr %146, align 1
  %151 = load i8, ptr %147, align 1
  %152 = icmp eq i8 %151, %150
  %153 = zext i1 %152 to i32
  call void @assert_ft(i32 %153, i32 1)
  %154 = sext i8 %150 to i32
  %155 = sext i8 %151 to i32
  %156 = icmp eq i32 %155, %154
  %157 = zext i1 %156 to i32
  call void @assert_ft(i32 %157, i32 1)
  %158 = add nsw i32 %134, %154
  %159 = add nsw i32 %135, %155
  %160 = icmp eq i32 %159, %158
  %161 = zext i1 %160 to i32
  call void @assert_ft(i32 %161, i32 1)
  %162 = lshr i64 %0, 28
  %163 = lshr i64 %0, 28
  %164 = icmp eq i64 %163, %162
  %165 = zext i1 %164 to i32
  call void @assert_ft(i32 %165, i32 1)
  %166 = and i64 %162, 15
  %167 = and i64 %163, 15
  %168 = icmp eq i64 %167, %166
  %169 = zext i1 %168 to i32
  call void @assert_ft(i32 %169, i32 1)
  %170 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %166
  %171 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %167
  %172 = icmp eq ptr %171, %170
  %173 = zext i1 %172 to i32
  call void @assert_ft(i32 %173, i32 1)
  %174 = load i8, ptr %170, align 1
  %175 = load i8, ptr %171, align 1
  %176 = icmp eq i8 %175, %174
  %177 = zext i1 %176 to i32
  call void @assert_ft(i32 %177, i32 1)
  %178 = sext i8 %174 to i32
  %179 = sext i8 %175 to i32
  %180 = icmp eq i32 %179, %178
  %181 = zext i1 %180 to i32
  call void @assert_ft(i32 %181, i32 1)
  %182 = add nsw i32 %158, %178
  %183 = add nsw i32 %159, %179
  %184 = icmp eq i32 %183, %182
  %185 = zext i1 %184 to i32
  call void @assert_ft(i32 %185, i32 1)
  ret i32 %183
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @BW_btbl_bitcount(i64 noundef %0) #1 {
  %2 = lshr i64 %0, 8
  %.sroa.2.0.extract.shift = lshr i64 %0, 8
  %3 = icmp eq i64 %.sroa.2.0.extract.shift, %2
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = lshr i64 %0, 16
  %.sroa.3.0.extract.shift = lshr i64 %0, 16
  %6 = icmp eq i64 %.sroa.3.0.extract.shift, %5
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = lshr i64 %0, 24
  %.sroa.4.0.extract.shift = lshr i64 %0, 24
  %9 = icmp eq i64 %.sroa.4.0.extract.shift, %8
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = and i64 %0, 255
  %12 = and i64 %0, 255
  %13 = icmp eq i64 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %11
  %16 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %12
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = load i8, ptr %15, align 1
  %20 = load i8, ptr %16, align 1
  %21 = icmp eq i8 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = sext i8 %19 to i32
  %24 = sext i8 %20 to i32
  %25 = icmp eq i32 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = and i64 %2, 255
  %28 = and i64 %.sroa.2.0.extract.shift, 255
  %29 = icmp eq i64 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %27
  %32 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %28
  %33 = icmp eq ptr %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = load i8, ptr %31, align 1
  %36 = load i8, ptr %32, align 1
  %37 = icmp eq i8 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = sext i8 %35 to i32
  %40 = sext i8 %36 to i32
  %41 = icmp eq i32 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = add nsw i32 %39, %23
  %44 = add nsw i32 %40, %24
  %45 = icmp eq i32 %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = and i64 %8, 255
  %48 = and i64 %.sroa.4.0.extract.shift, 255
  %49 = icmp eq i64 %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %47
  %52 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %48
  %53 = icmp eq ptr %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = load i8, ptr %51, align 1
  %56 = load i8, ptr %52, align 1
  %57 = icmp eq i8 %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = sext i8 %55 to i32
  %60 = sext i8 %56 to i32
  %61 = icmp eq i32 %60, %59
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = add nsw i32 %43, %59
  %64 = add nsw i32 %44, %60
  %65 = icmp eq i32 %64, %63
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = and i64 %5, 255
  %68 = and i64 %.sroa.3.0.extract.shift, 255
  %69 = icmp eq i64 %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %67
  %72 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %68
  %73 = icmp eq ptr %72, %71
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = load i8, ptr %71, align 1
  %76 = load i8, ptr %72, align 1
  %77 = icmp eq i8 %76, %75
  %78 = zext i1 %77 to i32
  call void @assert_ft(i32 %78, i32 1)
  %79 = sext i8 %75 to i32
  %80 = sext i8 %76 to i32
  %81 = icmp eq i32 %80, %79
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  %83 = add nsw i32 %63, %79
  %84 = add nsw i32 %64, %80
  %85 = icmp eq i32 %84, %83
  %86 = zext i1 %85 to i32
  call void @assert_ft(i32 %86, i32 1)
  ret i32 %84
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @AR_btbl_bitcount(i64 noundef %0) #1 {
  %2 = lshr i64 %0, 8
  %.sroa.2.0.extract.shift = lshr i64 %0, 8
  %3 = icmp eq i64 %.sroa.2.0.extract.shift, %2
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = lshr i64 %0, 16
  %.sroa.3.0.extract.shift = lshr i64 %0, 16
  %6 = icmp eq i64 %.sroa.3.0.extract.shift, %5
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = lshr i64 %0, 24
  %.sroa.4.0.extract.shift = lshr i64 %0, 24
  %9 = icmp eq i64 %.sroa.4.0.extract.shift, %8
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = and i64 %0, 255
  %12 = and i64 %0, 255
  %13 = icmp eq i64 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %11
  %16 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %12
  %17 = icmp eq ptr %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = load i8, ptr %15, align 1
  %20 = load i8, ptr %16, align 1
  %21 = icmp eq i8 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = sext i8 %19 to i32
  %24 = sext i8 %20 to i32
  %25 = icmp eq i32 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = and i64 %2, 255
  %28 = and i64 %.sroa.2.0.extract.shift, 255
  %29 = icmp eq i64 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %27
  %32 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %28
  %33 = icmp eq ptr %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = load i8, ptr %31, align 1
  %36 = load i8, ptr %32, align 1
  %37 = icmp eq i8 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = sext i8 %35 to i32
  %40 = sext i8 %36 to i32
  %41 = icmp eq i32 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = add nsw i32 %39, %23
  %44 = add nsw i32 %40, %24
  %45 = icmp eq i32 %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = and i64 %5, 255
  %48 = and i64 %.sroa.3.0.extract.shift, 255
  %49 = icmp eq i64 %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %47
  %52 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %48
  %53 = icmp eq ptr %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = load i8, ptr %51, align 1
  %56 = load i8, ptr %52, align 1
  %57 = icmp eq i8 %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  %59 = sext i8 %55 to i32
  %60 = sext i8 %56 to i32
  %61 = icmp eq i32 %60, %59
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = add nsw i32 %43, %59
  %64 = add nsw i32 %44, %60
  %65 = icmp eq i32 %64, %63
  %66 = zext i1 %65 to i32
  call void @assert_ft(i32 %66, i32 1)
  %67 = and i64 %8, 255
  %68 = and i64 %.sroa.4.0.extract.shift, 255
  %69 = icmp eq i64 %68, %67
  %70 = zext i1 %69 to i32
  call void @assert_ft(i32 %70, i32 1)
  %71 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %67
  %72 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %68
  %73 = icmp eq ptr %72, %71
  %74 = zext i1 %73 to i32
  call void @assert_ft(i32 %74, i32 1)
  %75 = load i8, ptr %71, align 1
  %76 = load i8, ptr %72, align 1
  %77 = icmp eq i8 %76, %75
  %78 = zext i1 %77 to i32
  call void @assert_ft(i32 %78, i32 1)
  %79 = sext i8 %75 to i32
  %80 = sext i8 %76 to i32
  %81 = icmp eq i32 %80, %79
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  %83 = add nsw i32 %63, %79
  %84 = add nsw i32 %64, %80
  %85 = icmp eq i32 %84, %83
  %86 = zext i1 %85 to i32
  call void @assert_ft(i32 %86, i32 1)
  ret i32 %84
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ntbl_bitcnt(i64 noundef %0) #0 {
  %2 = and i64 %0, 15
  %3 = and i64 %0, 15
  %4 = icmp eq i64 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %7 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %3
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = load i8, ptr %6, align 1
  %11 = load i8, ptr %7, align 1
  %12 = icmp eq i8 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = sext i8 %10 to i32
  %15 = sext i8 %11 to i32
  %16 = icmp eq i32 %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = icmp ult i64 %0, 16
  %.not6 = icmp ult i64 %0, 16
  %19 = icmp eq i1 %.not6, %18
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = select i1 %.not6, i32 10, i32 9
  %22 = xor i32 8, %21
  br i1 %.not6, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %1
  %Diff_phi = phi i32 [ %22, %1 ], [ %64, %tailrecurse ]
  %Dest_phi = phi i32 [ 8, %1 ], [ %27, %tailrecurse ]
  %23 = phi i32 [ %56, %tailrecurse ], [ %14, %1 ]
  %24 = phi i32 [ %57, %tailrecurse ], [ %15, %1 ]
  %25 = phi i64 [ %36, %tailrecurse ], [ %0, %1 ]
  %.tr8 = phi i64 [ %37, %tailrecurse ], [ %0, %1 ]
  %26 = phi i32 [ %40, %tailrecurse ], [ 0, %1 ]
  %accumulator.tr7 = phi i32 [ %41, %tailrecurse ], [ 0, %1 ]
  %27 = xor i32 %Diff_phi, %Dest_phi
  %28 = icmp eq i32 %27, 9
  %29 = zext i1 %28 to i32
  call void @assert_cfg_ft(i32 %29, i32 %27, i32 0)
  %30 = icmp eq i32 %accumulator.tr7, %26
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = icmp eq i32 %24, %23
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = icmp eq i64 %.tr8, %25
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = ashr i64 %25, 4
  %37 = ashr i64 %.tr8, 4
  %38 = icmp eq i64 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = add nsw i32 %23, %26
  %41 = add nsw i32 %24, %accumulator.tr7
  %42 = icmp eq i32 %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = and i64 %36, 15
  %45 = and i64 %37, 15
  %46 = icmp eq i64 %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %44
  %49 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %45
  %50 = icmp eq ptr %49, %48
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = load i8, ptr %48, align 1
  %53 = load i8, ptr %49, align 1
  %54 = icmp eq i8 %53, %52
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = sext i8 %52 to i32
  %57 = sext i8 %53 to i32
  %58 = icmp eq i32 %57, %56
  %59 = zext i1 %58 to i32
  call void @assert_ft(i32 %59, i32 1)
  %60 = icmp ult i64 %25, 256
  %.not = icmp ult i64 %.tr8, 256
  %61 = icmp eq i1 %.not, %60
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = select i1 %.not, i32 10, i32 9
  %64 = xor i32 9, %63
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %1
  %Diff_phi20 = phi i32 [ %64, %tailrecurse ], [ %22, %1 ]
  %Dest_phi21 = phi i32 [ %27, %tailrecurse ], [ 8, %1 ]
  %65 = phi i32 [ 0, %1 ], [ %40, %tailrecurse ]
  %accumulator.tr.lcssa = phi i32 [ 0, %1 ], [ %41, %tailrecurse ]
  %66 = phi i32 [ %14, %1 ], [ %56, %tailrecurse ]
  %.lcssa = phi i32 [ %15, %1 ], [ %57, %tailrecurse ]
  %67 = xor i32 %Diff_phi20, %Dest_phi21
  %68 = icmp eq i32 %67, 10
  %69 = zext i1 %68 to i32
  call void @assert_cfg_ft(i32 %69, i32 %67, i32 0)
  %70 = icmp eq i32 %.lcssa, %66
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  %72 = icmp eq i32 %accumulator.tr.lcssa, %65
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = add nsw i32 %66, %65
  %accumulator.ret.tr = add nsw i32 %.lcssa, %accumulator.tr.lcssa
  %75 = icmp eq i32 %accumulator.ret.tr, %74
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @btbl_bitcnt(i64 noundef %0) local_unnamed_addr #0 {
  %2 = and i64 %0, 255
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %7 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %3
  %8 = icmp eq ptr %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = load i8, ptr %6, align 1
  %11 = load i8, ptr %7, align 1
  %12 = icmp eq i8 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = sext i8 %10 to i32
  %15 = sext i8 %11 to i32
  %16 = icmp eq i32 %15, %14
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = icmp ult i64 %0, 256
  %.not16 = icmp ult i64 %0, 256
  %19 = icmp eq i1 %.not16, %18
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = select i1 %.not16, i32 13, i32 12
  %22 = xor i32 11, %21
  br i1 %.not16, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %1
  %Diff_phi = phi i32 [ %22, %1 ], [ %64, %tailrecurse ]
  %Dest_phi = phi i32 [ 11, %1 ], [ %27, %tailrecurse ]
  %23 = phi i32 [ %56, %tailrecurse ], [ %14, %1 ]
  %24 = phi i32 [ %57, %tailrecurse ], [ %15, %1 ]
  %25 = phi i64 [ %36, %tailrecurse ], [ %0, %1 ]
  %.tr18 = phi i64 [ %37, %tailrecurse ], [ %0, %1 ]
  %26 = phi i32 [ %40, %tailrecurse ], [ 0, %1 ]
  %accumulator.tr17 = phi i32 [ %41, %tailrecurse ], [ 0, %1 ]
  %27 = xor i32 %Diff_phi, %Dest_phi
  %28 = icmp eq i32 %27, 12
  %29 = zext i1 %28 to i32
  call void @assert_cfg_ft(i32 %29, i32 %27, i32 0)
  %30 = icmp eq i64 %.tr18, %25
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = icmp eq i32 %24, %23
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = icmp eq i32 %accumulator.tr17, %26
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = ashr i64 %25, 8
  %37 = ashr i64 %.tr18, 8
  %38 = icmp eq i64 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = add nsw i32 %23, %26
  %41 = add nsw i32 %24, %accumulator.tr17
  %42 = icmp eq i32 %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = and i64 %36, 255
  %45 = and i64 %37, 255
  %46 = icmp eq i64 %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %44
  %49 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %45
  %50 = icmp eq ptr %49, %48
  %51 = zext i1 %50 to i32
  call void @assert_ft(i32 %51, i32 1)
  %52 = load i8, ptr %48, align 1
  %53 = load i8, ptr %49, align 1
  %54 = icmp eq i8 %53, %52
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = sext i8 %52 to i32
  %57 = sext i8 %53 to i32
  %58 = icmp eq i32 %57, %56
  %59 = zext i1 %58 to i32
  call void @assert_ft(i32 %59, i32 1)
  %60 = icmp ult i64 %25, 65536
  %.not = icmp ult i64 %.tr18, 65536
  %61 = icmp eq i1 %.not, %60
  %62 = zext i1 %61 to i32
  call void @assert_ft(i32 %62, i32 1)
  %63 = select i1 %.not, i32 13, i32 12
  %64 = xor i32 12, %63
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %1
  %Diff_phi30 = phi i32 [ %64, %tailrecurse ], [ %22, %1 ]
  %Dest_phi31 = phi i32 [ %27, %tailrecurse ], [ 11, %1 ]
  %65 = phi i32 [ 0, %1 ], [ %40, %tailrecurse ]
  %accumulator.tr.lcssa = phi i32 [ 0, %1 ], [ %41, %tailrecurse ]
  %66 = phi i32 [ %14, %1 ], [ %56, %tailrecurse ]
  %.lcssa = phi i32 [ %15, %1 ], [ %57, %tailrecurse ]
  %67 = xor i32 %Diff_phi30, %Dest_phi31
  %68 = icmp eq i32 %67, 13
  %69 = zext i1 %68 to i32
  call void @assert_cfg_ft(i32 %69, i32 %67, i32 0)
  %70 = icmp eq i32 %.lcssa, %66
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  %72 = icmp eq i32 %accumulator.tr.lcssa, %65
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = add nsw i32 %66, %65
  %accumulator.ret.tr = add nsw i32 %.lcssa, %accumulator.tr.lcssa
  %75 = icmp eq i32 %accumulator.ret.tr, %74
  %76 = zext i1 %75 to i32
  call void @assert_ft(i32 %76, i32 1)
  ret i32 %accumulator.ret.tr
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 2
  %4 = icmp slt i32 %0, 2
  %5 = icmp eq i1 %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = select i1 %4, i32 15, i32 16
  %8 = xor i32 14, %7
  br i1 %4, label %9, label %18

9:                                                ; preds = %2
  %Diff_phi = phi i32 [ %8, %2 ]
  %Dest_phi = phi i32 [ 14, %2 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 15
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %13 = load ptr, ptr @stderr, align 8
  %14 = load ptr, ptr @stderr, align 8
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %14) #14
  tail call void @exit(i32 noundef -1) #15
  unreachable

18:                                               ; preds = %2
  %Diff_phi46 = phi i32 [ %8, %2 ]
  %Dest_phi47 = phi i32 [ 14, %2 ]
  %19 = xor i32 %Diff_phi46, %Dest_phi47
  %20 = icmp eq i32 %19, 16
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
  %30 = tail call i32 @atoi(ptr nocapture noundef %27) #16
  %31 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8)
  %32 = sext i32 %30 to i64
  %33 = sext i32 %30 to i64
  %34 = icmp eq i64 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = icmp sgt i32 %30, 0
  %37 = icmp sgt i32 %30, 0
  %38 = icmp eq i1 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  br label %40

40:                                               ; preds = %._crit_edge, %18
  %Diff_phi48 = phi i32 [ 1, %18 ], [ %160, %._crit_edge ]
  %Dest_phi49 = phi i32 [ %19, %18 ], [ %110, %._crit_edge ]
  %41 = phi i64 [ 0, %18 ], [ %153, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %18 ], [ %indvars.iv.next, %._crit_edge ]
  %42 = phi double [ 0x7FEFFFFFFFFFFFFF, %18 ], [ %135, %._crit_edge ]
  %.044 = phi double [ 0x7FEFFFFFFFFFFFFF, %18 ], [ %.1, %._crit_edge ]
  %43 = phi i32 [ undef, %18 ], [ %141, %._crit_edge ]
  %.02843 = phi i32 [ undef, %18 ], [ %.129, %._crit_edge ]
  %44 = phi i32 [ undef, %18 ], [ %132, %._crit_edge ]
  %.03042 = phi i32 [ undef, %18 ], [ %.131, %._crit_edge ]
  %45 = phi double [ 0.000000e+00, %18 ], [ %140, %._crit_edge ]
  %.03340 = phi double [ 0.000000e+00, %18 ], [ %.134, %._crit_edge ]
  %46 = xor i32 %Diff_phi48, %Dest_phi49
  %47 = icmp eq i32 %46, 17
  %48 = zext i1 %47 to i32
  call void @assert_cfg_ft(i32 %48, i32 %46, i32 0)
  %49 = icmp eq i32 %.03042, %44
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = icmp eq i32 %.02843, %43
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = icmp eq i64 %indvars.iv, %41
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = tail call i64 @clock() #17
  %56 = tail call i32 @rand() #17
  %57 = select i1 %37, i32 18, i32 20
  %58 = xor i32 17, %57
  br i1 %37, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %40
  %Diff_phi50 = phi i32 [ %58, %40 ]
  %Dest_phi51 = phi i32 [ %46, %40 ]
  %59 = xor i32 %Diff_phi50, %Dest_phi51
  %60 = icmp eq i32 %59, 18
  %61 = zext i1 %60 to i32
  call void @assert_cfg_ft(i32 %61, i32 %59, i32 0)
  %62 = sext i32 %56 to i64
  %63 = sext i32 %56 to i64
  %64 = icmp eq i64 %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %41
  %67 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %indvars.iv
  %68 = icmp eq ptr %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = load ptr, ptr %66, align 8
  %71 = load ptr, ptr %67, align 8
  %72 = icmp eq ptr %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  br label %74

74:                                               ; preds = %74, %.lr.ph
  %Diff_phi52 = phi i32 [ 1, %.lr.ph ], [ %108, %74 ]
  %Dest_phi53 = phi i32 [ %59, %.lr.ph ], [ %78, %74 ]
  %75 = phi i64 [ %62, %.lr.ph ], [ %100, %74 ]
  %.02539 = phi i64 [ %63, %.lr.ph ], [ %101, %74 ]
  %76 = phi i64 [ 0, %.lr.ph ], [ %92, %74 ]
  %.02638 = phi i64 [ 0, %.lr.ph ], [ %93, %74 ]
  %77 = phi i64 [ 0, %.lr.ph ], [ %96, %74 ]
  %.02737 = phi i64 [ 0, %.lr.ph ], [ %97, %74 ]
  %78 = xor i32 %Diff_phi52, %Dest_phi53
  %79 = icmp eq i32 %78, 19
  %80 = zext i1 %79 to i32
  call void @assert_cfg_ft(i32 %80, i32 %78, i32 0)
  %81 = icmp eq i64 %.02539, %75
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  %83 = icmp eq i64 %.02638, %76
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = icmp eq i64 %.02737, %77
  %86 = zext i1 %85 to i32
  call void @assert_ft(i32 %86, i32 1)
  %87 = tail call i32 %71(i64 noundef %.02539) #17
  %88 = sext i32 %87 to i64
  %89 = sext i32 %87 to i64
  %90 = icmp eq i64 %89, %88
  %91 = zext i1 %90 to i32
  call void @assert_ft(i32 %91, i32 1)
  %92 = add nsw i64 %76, %88
  %93 = add nsw i64 %.02638, %89
  %94 = icmp eq i64 %93, %92
  %95 = zext i1 %94 to i32
  call void @assert_ft(i32 %95, i32 1)
  %96 = add nuw nsw i64 %77, 1
  %97 = add nuw nsw i64 %.02737, 1
  %98 = icmp eq i64 %97, %96
  %99 = zext i1 %98 to i32
  call void @assert_ft(i32 %99, i32 1)
  %100 = add nsw i64 %75, 13
  %101 = add nsw i64 %.02539, 13
  %102 = icmp eq i64 %101, %100
  %103 = zext i1 %102 to i32
  call void @assert_ft(i32 %103, i32 1)
  %104 = icmp eq i64 %96, %32
  %exitcond.not = icmp eq i64 %97, %33
  %105 = icmp eq i1 %exitcond.not, %104
  %106 = zext i1 %105 to i32
  call void @assert_ft(i32 %106, i32 1)
  %107 = select i1 %exitcond.not, i32 20, i32 19
  %108 = xor i32 19, %107
  br i1 %exitcond.not, label %._crit_edge, label %74

._crit_edge:                                      ; preds = %74, %40
  %Diff_phi54 = phi i32 [ %108, %74 ], [ %58, %40 ]
  %Dest_phi55 = phi i32 [ %78, %74 ], [ %46, %40 ]
  %109 = phi i64 [ 0, %40 ], [ %92, %74 ]
  %.026.lcssa = phi i64 [ 0, %40 ], [ %93, %74 ]
  %110 = xor i32 %Diff_phi54, %Dest_phi55
  %111 = icmp eq i32 %110, 20
  %112 = zext i1 %111 to i32
  call void @assert_cfg_ft(i32 %112, i32 %110, i32 0)
  %113 = icmp eq i64 %.026.lcssa, %109
  %114 = zext i1 %113 to i32
  call void @assert_ft(i32 %114, i32 1)
  %115 = tail call i64 @clock() #17
  %116 = sub nsw i64 %115, %55
  %117 = sub nsw i64 %115, %55
  %118 = icmp eq i64 %117, %116
  %119 = zext i1 %118 to i32
  call void @assert_ft(i32 %119, i32 1)
  %120 = sitofp i64 %116 to double
  %121 = sitofp i64 %117 to double
  %122 = fdiv double %120, 1.000000e+06
  %123 = fdiv double %121, 1.000000e+06
  %124 = fcmp olt double %122, %42
  %125 = fcmp olt double %123, %.044
  %126 = icmp eq i1 %125, %124
  %127 = zext i1 %126 to i32
  call void @assert_ft(i32 %127, i32 1)
  %128 = trunc i64 %41 to i32
  %129 = trunc i64 %indvars.iv to i32
  %130 = icmp eq i32 %129, %128
  %131 = zext i1 %130 to i32
  call void @assert_ft(i32 %131, i32 1)
  %132 = select i1 %124, i32 %128, i32 %44
  %.131 = select i1 %125, i32 %129, i32 %.03042
  %133 = icmp eq i32 %.131, %132
  %134 = zext i1 %133 to i32
  call void @assert_ft(i32 %134, i32 1)
  %135 = select i1 %124, double %122, double %42
  %.1 = select i1 %125, double %123, double %.044
  %136 = fcmp ogt double %122, %45
  %137 = fcmp ogt double %123, %.03340
  %138 = icmp eq i1 %137, %136
  %139 = zext i1 %138 to i32
  call void @assert_ft(i32 %139, i32 1)
  %140 = select i1 %136, double %122, double %45
  %.134 = select i1 %137, double %123, double %.03340
  %141 = select i1 %136, i32 %128, i32 %43
  %.129 = select i1 %137, i32 %129, i32 %.02843
  %142 = icmp eq i32 %.129, %141
  %143 = zext i1 %142 to i32
  call void @assert_ft(i32 %143, i32 1)
  %144 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %41
  %145 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %indvars.iv
  %146 = icmp eq ptr %145, %144
  %147 = zext i1 %146 to i32
  call void @assert_ft(i32 %147, i32 1)
  %148 = load ptr, ptr %144, align 8
  %149 = load ptr, ptr %145, align 8
  %150 = icmp eq ptr %149, %148
  %151 = zext i1 %150 to i32
  call void @assert_ft(i32 %151, i32 1)
  %152 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %149, double noundef %123, i64 noundef %.026.lcssa)
  %153 = add nuw nsw i64 %41, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %154 = icmp eq i64 %indvars.iv.next, %153
  %155 = zext i1 %154 to i32
  call void @assert_ft(i32 %155, i32 1)
  %156 = icmp eq i64 %153, 7
  %exitcond45.not = icmp eq i64 %indvars.iv.next, 7
  %157 = icmp eq i1 %exitcond45.not, %156
  %158 = zext i1 %157 to i32
  call void @assert_ft(i32 %158, i32 1)
  %159 = select i1 %exitcond45.not, i32 21, i32 17
  %160 = xor i32 20, %159
  br i1 %exitcond45.not, label %161, label %40

161:                                              ; preds = %._crit_edge
  %Diff_phi56 = phi i32 [ %160, %._crit_edge ]
  %Dest_phi57 = phi i32 [ %110, %._crit_edge ]
  %162 = xor i32 %Diff_phi56, %Dest_phi57
  %163 = icmp eq i32 %162, 21
  %164 = zext i1 %163 to i32
  call void @assert_cfg_ft(i32 %164, i32 %162, i32 0)
  %165 = sext i32 %132 to i64
  %166 = sext i32 %.131 to i64
  %167 = icmp eq i64 %166, %165
  %168 = zext i1 %167 to i32
  call void @assert_ft(i32 %168, i32 1)
  %169 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %165
  %170 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %166
  %171 = icmp eq ptr %170, %169
  %172 = zext i1 %171 to i32
  call void @assert_ft(i32 %172, i32 1)
  %173 = load ptr, ptr %169, align 8
  %174 = load ptr, ptr %170, align 8
  %175 = icmp eq ptr %174, %173
  %176 = zext i1 %175 to i32
  call void @assert_ft(i32 %176, i32 1)
  %177 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %174)
  %178 = sext i32 %141 to i64
  %179 = sext i32 %.129 to i64
  %180 = icmp eq i64 %179, %178
  %181 = zext i1 %180 to i32
  call void @assert_ft(i32 %181, i32 1)
  %182 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %178
  %183 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %179
  %184 = icmp eq ptr %183, %182
  %185 = zext i1 %184 to i32
  call void @assert_ft(i32 %185, i32 1)
  %186 = load ptr, ptr %182, align 8
  %187 = load ptr, ptr %183, align 8
  %188 = icmp eq ptr %187, %186
  %189 = zext i1 %188 to i32
  call void @assert_ft(i32 %189, i32 1)
  %190 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %187)
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
  %2 = icmp eq i64 %0, 0
  %.not = icmp eq i64 %0, 0
  %3 = icmp eq i1 %.not, %2
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = select i1 %.not, i32 24, i32 23
  %6 = xor i32 22, %5
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %1
  %Diff_phi = phi i32 [ %6, %1 ], [ %52, %.lr.ph ]
  %Dest_phi = phi i32 [ 22, %1 ], [ %10, %.lr.ph ]
  %7 = phi i32 [ %27, %.lr.ph ], [ 0, %1 ]
  %.011 = phi i32 [ %28, %.lr.ph ], [ 0, %1 ]
  %8 = phi i32 [ %31, %.lr.ph ], [ 0, %1 ]
  %.0710 = phi i32 [ %32, %.lr.ph ], [ 0, %1 ]
  %9 = phi i64 [ %35, %.lr.ph ], [ %0, %1 ]
  %.089 = phi i64 [ %36, %.lr.ph ], [ %0, %1 ]
  %10 = xor i32 %Diff_phi, %Dest_phi
  %11 = icmp eq i32 %10, 23
  %12 = zext i1 %11 to i32
  call void @assert_cfg_ft(i32 %12, i32 %10, i32 0)
  %13 = icmp eq i32 %.0710, %8
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = icmp eq i32 %.011, %7
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = icmp eq i64 %.089, %9
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = trunc i64 %9 to i32
  %20 = trunc i64 %.089 to i32
  %21 = icmp eq i32 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = and i32 %19, 1
  %24 = and i32 %20, 1
  %25 = icmp eq i32 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = add nuw nsw i32 %7, %23
  %28 = add nuw nsw i32 %.011, %24
  %29 = icmp eq i32 %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = add nuw nsw i32 %8, 1
  %32 = add nuw nsw i32 %.0710, 1
  %33 = icmp eq i32 %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = ashr i64 %9, 1
  %36 = ashr i64 %.089, 1
  %37 = icmp eq i64 %36, %35
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = icmp ugt i64 %9, 1
  %40 = icmp ugt i64 %.089, 1
  %41 = icmp eq i1 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = icmp ult i32 %8, 63
  %44 = icmp ult i32 %.0710, 63
  %45 = icmp eq i1 %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = select i1 %39, i1 %43, i1 false
  %48 = select i1 %40, i1 %44, i1 false
  %49 = icmp eq i1 %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = select i1 %48, i32 23, i32 24
  %52 = xor i32 23, %51
  br i1 %48, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %1
  %Diff_phi12 = phi i32 [ %52, %.lr.ph ], [ %6, %1 ]
  %Dest_phi13 = phi i32 [ %10, %.lr.ph ], [ 22, %1 ]
  %53 = phi i32 [ 0, %1 ], [ %27, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %1 ], [ %28, %.lr.ph ]
  %54 = xor i32 %Diff_phi12, %Dest_phi13
  %55 = icmp eq i32 %54, 24
  %56 = zext i1 %55 to i32
  call void @assert_cfg_ft(i32 %56, i32 %54, i32 0)
  %57 = icmp eq i32 %.0.lcssa, %53
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  ret i32 %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @bfopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18
  %4 = icmp eq ptr %3, null
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, %4
  %7 = zext i1 %6 to i32
  call void @assert_ft(i32 %7, i32 1)
  %8 = select i1 %5, i32 29, i32 26
  %9 = xor i32 25, %8
  br i1 %5, label %37, label %10

10:                                               ; preds = %2
  %Diff_phi = phi i32 [ %9, %2 ]
  %Dest_phi = phi i32 [ 25, %2 ]
  %11 = xor i32 %Diff_phi, %Dest_phi
  %12 = icmp eq i32 %11, 26
  %13 = zext i1 %12 to i32
  call void @assert_cfg_ft(i32 %13, i32 %11, i32 0)
  %14 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  store ptr %14, ptr %3, align 8
  %15 = icmp eq ptr %14, null
  %16 = icmp eq ptr %14, null
  %17 = icmp eq i1 %16, %15
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = select i1 %16, i32 27, i32 28
  %20 = xor i32 26, %19
  br i1 %16, label %21, label %25

21:                                               ; preds = %10
  %Diff_phi11 = phi i32 [ %20, %10 ]
  %Dest_phi12 = phi i32 [ %11, %10 ]
  %22 = xor i32 %Diff_phi11, %Dest_phi12
  %23 = icmp eq i32 %22, 27
  %24 = zext i1 %23 to i32
  call void @assert_cfg_ft(i32 %24, i32 %22, i32 0)
  tail call void @free(ptr noundef nonnull %3) #17
  br label %37

25:                                               ; preds = %10
  %Diff_phi13 = phi i32 [ %20, %10 ]
  %Dest_phi14 = phi i32 [ %11, %10 ]
  %26 = xor i32 %Diff_phi13, %Dest_phi14
  %27 = icmp eq i32 %26, 28
  %28 = zext i1 %27 to i32
  call void @assert_cfg_ft(i32 %28, i32 %26, i32 0)
  %29 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 2
  %30 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 2
  %31 = icmp eq ptr %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  store i8 0, ptr %30, align 1
  %33 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 4
  %34 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 4
  %35 = icmp eq ptr %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  store i8 0, ptr %34, align 1
  br label %37

37:                                               ; preds = %25, %21, %2
  %Diff_phi15 = phi i32 [ %9, %2 ], [ 1, %25 ], [ 6, %21 ]
  %Dest_phi16 = phi i32 [ 25, %2 ], [ %26, %25 ], [ %22, %21 ]
  %38 = phi ptr [ null, %21 ], [ %3, %25 ], [ null, %2 ]
  %.0 = phi ptr [ null, %21 ], [ %3, %25 ], [ null, %2 ]
  %39 = xor i32 %Diff_phi15, %Dest_phi16
  %40 = icmp eq i32 %39, 29
  %41 = zext i1 %40 to i32
  call void @assert_cfg_ft(i32 %41, i32 %39, i32 0)
  %42 = icmp eq ptr %.0, %38
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
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
  %3 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = load i8, ptr %2, align 1
  %7 = load i8, ptr %3, align 1
  %8 = icmp eq i8 %7, %6
  %9 = zext i1 %8 to i32
  call void @assert_ft(i32 %9, i32 1)
  %10 = icmp eq i8 %6, 0
  %11 = icmp eq i8 %7, 0
  %12 = icmp eq i1 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = select i1 %11, i32 32, i32 31
  %15 = xor i32 30, %14
  br i1 %11, label %29, label %._crit_edge

._crit_edge:                                      ; preds = %1
  %Diff_phi = phi i32 [ %15, %1 ]
  %Dest_phi = phi i32 [ 30, %1 ]
  %16 = xor i32 %Diff_phi, %Dest_phi
  %17 = icmp eq i32 %16, 31
  %18 = zext i1 %17 to i32
  call void @assert_cfg_ft(i32 %18, i32 %16, i32 0)
  %19 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  %.phi.trans.insert = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  %20 = icmp eq ptr %.phi.trans.insert, %19
  %21 = zext i1 %20 to i32
  call void @assert_ft(i32 %21, i32 1)
  %22 = load i8, ptr %19, align 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8
  %23 = icmp eq i8 %.pre, %22
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = add i8 %6, -1
  %26 = add i8 %7, -1
  %27 = icmp eq i8 %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  br label %46

29:                                               ; preds = %1
  %Diff_phi7 = phi i32 [ %15, %1 ]
  %Dest_phi8 = phi i32 [ 30, %1 ]
  %30 = xor i32 %Diff_phi7, %Dest_phi8
  %31 = icmp eq i32 %30, 32
  %32 = zext i1 %31 to i32
  call void @assert_cfg_ft(i32 %32, i32 %30, i32 0)
  %33 = load ptr, ptr %0, align 8
  %34 = load ptr, ptr %0, align 8
  %35 = icmp eq ptr %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = tail call i32 @fgetc(ptr noundef %34)
  %38 = trunc i32 %37 to i8
  %39 = trunc i32 %37 to i8
  %40 = icmp eq i8 %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  %43 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  %44 = icmp eq ptr %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  store i8 %39, ptr %43, align 8
  br label %46

46:                                               ; preds = %29, %._crit_edge
  %Diff_phi9 = phi i32 [ 62, %._crit_edge ], [ 1, %29 ]
  %Dest_phi10 = phi i32 [ %16, %._crit_edge ], [ %30, %29 ]
  %47 = phi i8 [ %38, %29 ], [ %22, %._crit_edge ]
  %48 = phi i8 [ %39, %29 ], [ %.pre, %._crit_edge ]
  %49 = phi i8 [ 7, %29 ], [ %25, %._crit_edge ]
  %50 = phi i8 [ 7, %29 ], [ %26, %._crit_edge ]
  %51 = xor i32 %Diff_phi9, %Dest_phi10
  %52 = icmp eq i32 %51, 33
  %53 = zext i1 %52 to i32
  call void @assert_cfg_ft(i32 %53, i32 %51, i32 0)
  %54 = icmp eq i8 %48, %47
  %55 = zext i1 %54 to i32
  call void @assert_ft(i32 %55, i32 1)
  %56 = icmp eq i8 %50, %49
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  store i8 %50, ptr %3, align 1
  %58 = sext i8 %47 to i32
  %59 = sext i8 %48 to i32
  %60 = icmp eq i32 %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = zext i8 %49 to i32
  %63 = zext i8 %50 to i32
  %64 = icmp eq i32 %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = lshr i32 %58, %62
  %67 = lshr i32 %59, %63
  %68 = icmp eq i32 %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = and i32 %66, 1
  %71 = and i32 %67, 1
  %72 = icmp eq i32 %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  ret i32 %71
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @bfwrite(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 4
  %4 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 4
  %5 = icmp eq ptr %4, %3
  %6 = zext i1 %5 to i32
  call void @assert_ft(i32 %6, i32 1)
  %7 = load i8, ptr %3, align 1
  %8 = load i8, ptr %4, align 1
  %9 = icmp eq i8 %8, %7
  %10 = zext i1 %9 to i32
  call void @assert_ft(i32 %10, i32 1)
  %11 = icmp eq i8 %7, 8
  %12 = icmp eq i8 %8, 8
  %13 = icmp eq i1 %12, %11
  %14 = zext i1 %13 to i32
  call void @assert_ft(i32 %14, i32 1)
  %15 = select i1 %12, i32 35, i32 36
  %16 = xor i32 34, %15
  br i1 %12, label %17, label %38

17:                                               ; preds = %2
  %Diff_phi = phi i32 [ %16, %2 ]
  %Dest_phi = phi i32 [ 34, %2 ]
  %18 = xor i32 %Diff_phi, %Dest_phi
  %19 = icmp eq i32 %18, 35
  %20 = zext i1 %19 to i32
  call void @assert_cfg_ft(i32 %20, i32 %18, i32 0)
  %21 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %22 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %23 = icmp eq ptr %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = load i8, ptr %21, align 2
  %26 = load i8, ptr %22, align 2
  %27 = icmp eq i8 %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  %29 = sext i8 %25 to i32
  %30 = sext i8 %26 to i32
  %31 = icmp eq i32 %30, %29
  %32 = zext i1 %31 to i32
  call void @assert_ft(i32 %32, i32 1)
  %33 = load ptr, ptr %1, align 8
  %34 = load ptr, ptr %1, align 8
  %35 = icmp eq ptr %34, %33
  %36 = zext i1 %35 to i32
  call void @assert_ft(i32 %36, i32 1)
  %37 = tail call i32 @fputc(i32 noundef %30, ptr noundef %34)
  br label %38

38:                                               ; preds = %17, %2
  %Diff_phi7 = phi i32 [ 7, %17 ], [ %16, %2 ]
  %Dest_phi8 = phi i32 [ %18, %17 ], [ 34, %2 ]
  %39 = phi i8 [ 0, %17 ], [ %7, %2 ]
  %40 = phi i8 [ 0, %17 ], [ %8, %2 ]
  %41 = xor i32 %Diff_phi7, %Dest_phi8
  %42 = icmp eq i32 %41, 36
  %43 = zext i1 %42 to i32
  call void @assert_cfg_ft(i32 %43, i32 %41, i32 0)
  %44 = icmp eq i8 %40, %39
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = add i8 %39, 1
  %47 = add i8 %40, 1
  %48 = icmp eq i8 %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  store i8 %47, ptr %4, align 1
  %50 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %51 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %52 = icmp eq ptr %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = load i8, ptr %50, align 2
  %55 = load i8, ptr %51, align 2
  %56 = icmp eq i8 %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = shl i8 %54, 1
  %59 = shl i8 %55, 1
  %60 = icmp eq i8 %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = trunc i32 %0 to i8
  %63 = trunc i32 %0 to i8
  %64 = icmp eq i8 %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = and i8 %62, 1
  %67 = and i8 %63, 1
  %68 = icmp eq i8 %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = or i8 %58, %66
  %71 = or i8 %59, %67
  %72 = icmp eq i8 %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  store i8 %71, ptr %51, align 2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @bfclose(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %3, %2
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = tail call i32 @fclose(ptr noundef %3)
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @bitstring(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = ashr i32 %2, 2
  %6 = ashr i32 %2, 2
  %7 = icmp eq i32 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = and i32 %2, 3
  %10 = and i32 %2, 3
  %11 = icmp eq i32 %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = icmp eq i32 %9, 0
  %.not = icmp eq i32 %10, 0
  %14 = icmp eq i1 %.not, %13
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = zext i1 %13 to i32
  %.neg.neg28 = zext i1 %.not to i32
  %17 = icmp eq i32 %.neg.neg28, %16
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = add i32 %5, %2
  %20 = add i32 %6, %2
  %21 = icmp eq i32 %20, %19
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = sub i32 %3, %19
  %.neg22 = sub i32 %3, %20
  %24 = icmp eq i32 %.neg22, %23
  %25 = zext i1 %24 to i32
  call void @assert_ft(i32 %25, i32 1)
  %26 = add i32 %23, %16
  %27 = add i32 %.neg22, %.neg.neg28
  %28 = icmp eq i32 %27, %26
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = icmp sgt i32 %26, 0
  %31 = icmp sgt i32 %27, 0
  %32 = icmp eq i1 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = select i1 %31, i32 39, i32 40
  %35 = xor i32 38, %34
  br i1 %31, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %4
  %Diff_phi = phi i32 [ %35, %4 ]
  %Dest_phi = phi i32 [ 38, %4 ]
  %36 = xor i32 %Diff_phi, %Dest_phi
  %37 = icmp eq i32 %36, 39
  %38 = zext i1 %37 to i32
  call void @assert_cfg_ft(i32 %38, i32 %36, i32 0)
  %39 = add i32 %16, %3
  %40 = add i32 %.neg.neg28, %3
  %41 = icmp eq i32 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = xor i32 %19, -1
  %44 = xor i32 %20, -1
  %45 = icmp eq i32 %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = add i32 %39, %43
  %48 = add i32 %40, %44
  %49 = icmp eq i32 %48, %47
  %50 = zext i1 %49 to i32
  call void @assert_ft(i32 %50, i32 1)
  %51 = zext i32 %47 to i64
  %52 = zext i32 %48 to i64
  %53 = icmp eq i64 %52, %51
  %54 = zext i1 %53 to i32
  call void @assert_ft(i32 %54, i32 1)
  %55 = add nuw nsw i64 %51, 1
  %56 = add nuw nsw i64 %52, 1
  %57 = icmp eq i64 %56, %55
  %58 = zext i1 %57 to i32
  call void @assert_ft(i32 %58, i32 1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 32, i64 %56, i1 false)
  %59 = getelementptr i8, ptr %0, i64 %55
  %scevgep = getelementptr i8, ptr %0, i64 %56
  %60 = icmp eq ptr %scevgep, %59
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %4
  %Diff_phi29 = phi i32 [ 15, %.lr.ph.preheader ], [ %35, %4 ]
  %Dest_phi30 = phi i32 [ %36, %.lr.ph.preheader ], [ 38, %4 ]
  %62 = phi ptr [ %0, %4 ], [ %59, %.lr.ph.preheader ]
  %.0.lcssa = phi ptr [ %0, %4 ], [ %scevgep, %.lr.ph.preheader ]
  %63 = xor i32 %Diff_phi29, %Dest_phi30
  %64 = icmp eq i32 %63, 40
  %65 = zext i1 %64 to i32
  call void @assert_cfg_ft(i32 %65, i32 %63, i32 0)
  %66 = icmp eq ptr %.0.lcssa, %62
  %67 = zext i1 %66 to i32
  call void @assert_ft(i32 %67, i32 1)
  %68 = icmp sgt i32 %2, 0
  %69 = icmp sgt i32 %2, 0
  %70 = icmp eq i1 %69, %68
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  %72 = select i1 %69, i32 41, i32 45
  %73 = xor i32 40, %72
  br i1 %69, label %.lr.ph26.preheader, label %._crit_edge

.lr.ph26.preheader:                               ; preds = %.preheader
  %Diff_phi31 = phi i32 [ %73, %.preheader ]
  %Dest_phi32 = phi i32 [ %63, %.preheader ]
  %74 = xor i32 %Diff_phi31, %Dest_phi32
  %75 = icmp eq i32 %74, 41
  %76 = zext i1 %75 to i32
  call void @assert_cfg_ft(i32 %76, i32 %74, i32 0)
  %77 = zext i32 %2 to i64
  %78 = zext i32 %2 to i64
  %79 = icmp eq i64 %78, %77
  %80 = zext i1 %79 to i32
  call void @assert_ft(i32 %80, i32 1)
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %146, %.lr.ph26.preheader
  %Diff_phi33 = phi i32 [ 3, %.lr.ph26.preheader ], [ %161, %146 ]
  %Dest_phi34 = phi i32 [ %74, %.lr.ph26.preheader ], [ %148, %146 ]
  %81 = phi i64 [ %77, %.lr.ph26.preheader ], [ %157, %146 ]
  %indvars.iv = phi i64 [ %78, %.lr.ph26.preheader ], [ %indvars.iv.next, %146 ]
  %82 = phi i32 [ %2, %.lr.ph26.preheader ], [ %93, %146 ]
  %.in = phi i32 [ %2, %.lr.ph26.preheader ], [ %94, %146 ]
  %83 = phi ptr [ %62, %.lr.ph26.preheader ], [ %147, %146 ]
  %.125 = phi ptr [ %.0.lcssa, %.lr.ph26.preheader ], [ %.2, %146 ]
  %84 = xor i32 %Diff_phi33, %Dest_phi34
  %85 = icmp eq i32 %84, 42
  %86 = zext i1 %85 to i32
  call void @assert_cfg_ft(i32 %86, i32 %84, i32 0)
  %87 = icmp eq i64 %indvars.iv, %81
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = icmp eq ptr %.125, %83
  %90 = zext i1 %89 to i32
  call void @assert_ft(i32 %90, i32 1)
  %91 = icmp eq i32 %.in, %82
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = add nsw i32 %82, -1
  %94 = add nsw i32 %.in, -1
  %95 = icmp eq i32 %94, %93
  %96 = zext i1 %95 to i32
  call void @assert_ft(i32 %96, i32 1)
  %97 = zext i32 %93 to i64
  %98 = zext i32 %94 to i64
  %99 = icmp eq i64 %98, %97
  %100 = zext i1 %99 to i32
  call void @assert_ft(i32 %100, i32 1)
  %101 = lshr i64 %1, %97
  %102 = lshr i64 %1, %98
  %103 = icmp eq i64 %102, %101
  %104 = zext i1 %103 to i32
  call void @assert_ft(i32 %104, i32 1)
  %105 = trunc i64 %101 to i8
  %106 = trunc i64 %102 to i8
  %107 = icmp eq i8 %106, %105
  %108 = zext i1 %107 to i32
  call void @assert_ft(i32 %108, i32 1)
  %109 = and i8 %105, 1
  %110 = and i8 %106, 1
  %111 = icmp eq i8 %110, %109
  %112 = zext i1 %111 to i32
  call void @assert_ft(i32 %112, i32 1)
  %113 = or i8 %109, 48
  %114 = or i8 %110, 48
  %115 = icmp eq i8 %114, %113
  %116 = zext i1 %115 to i32
  call void @assert_ft(i32 %116, i32 1)
  %117 = getelementptr inbounds i8, ptr %83, i64 1
  %118 = getelementptr inbounds i8, ptr %.125, i64 1
  %119 = icmp eq ptr %118, %117
  %120 = zext i1 %119 to i32
  call void @assert_ft(i32 %120, i32 1)
  store i8 %114, ptr %.125, align 1
  %121 = and i32 %93, 3
  %122 = and i32 %94, 3
  %123 = icmp eq i32 %122, %121
  %124 = zext i1 %123 to i32
  call void @assert_ft(i32 %124, i32 1)
  %125 = icmp eq i32 %121, 0
  %126 = icmp eq i32 %122, 0
  %127 = icmp eq i1 %126, %125
  %128 = zext i1 %127 to i32
  call void @assert_ft(i32 %128, i32 1)
  %129 = icmp ne i32 %93, 0
  %130 = icmp ne i32 %94, 0
  %131 = icmp eq i1 %130, %129
  %132 = zext i1 %131 to i32
  call void @assert_ft(i32 %132, i32 1)
  %133 = and i1 %129, %125
  %or.cond = and i1 %130, %126
  %134 = icmp eq i1 %or.cond, %133
  %135 = zext i1 %134 to i32
  call void @assert_ft(i32 %135, i32 1)
  %136 = select i1 %or.cond, i32 43, i32 44
  %137 = xor i32 42, %136
  br i1 %or.cond, label %138, label %146

138:                                              ; preds = %.lr.ph26
  %Diff_phi35 = phi i32 [ %137, %.lr.ph26 ]
  %Dest_phi36 = phi i32 [ %84, %.lr.ph26 ]
  %139 = xor i32 %Diff_phi35, %Dest_phi36
  %140 = icmp eq i32 %139, 43
  %141 = zext i1 %140 to i32
  call void @assert_cfg_ft(i32 %141, i32 %139, i32 0)
  %142 = getelementptr inbounds i8, ptr %83, i64 2
  %143 = getelementptr inbounds i8, ptr %.125, i64 2
  %144 = icmp eq ptr %143, %142
  %145 = zext i1 %144 to i32
  call void @assert_ft(i32 %145, i32 1)
  store i8 32, ptr %118, align 1
  br label %146

146:                                              ; preds = %138, %.lr.ph26
  %Diff_phi37 = phi i32 [ 7, %138 ], [ %137, %.lr.ph26 ]
  %Dest_phi38 = phi i32 [ %139, %138 ], [ %84, %.lr.ph26 ]
  %147 = phi ptr [ %142, %138 ], [ %117, %.lr.ph26 ]
  %.2 = phi ptr [ %143, %138 ], [ %118, %.lr.ph26 ]
  %148 = xor i32 %Diff_phi37, %Dest_phi38
  %149 = icmp eq i32 %148, 44
  %150 = zext i1 %149 to i32
  call void @assert_cfg_ft(i32 %150, i32 %148, i32 0)
  %151 = icmp eq ptr %.2, %147
  %152 = zext i1 %151 to i32
  call void @assert_ft(i32 %152, i32 1)
  %153 = icmp sgt i64 %81, 1
  %154 = icmp sgt i64 %indvars.iv, 1
  %155 = icmp eq i1 %154, %153
  %156 = zext i1 %155 to i32
  call void @assert_ft(i32 %156, i32 1)
  %157 = add nsw i64 %81, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %158 = icmp eq i64 %indvars.iv.next, %157
  %159 = zext i1 %158 to i32
  call void @assert_ft(i32 %159, i32 1)
  %160 = select i1 %154, i32 42, i32 45
  %161 = xor i32 44, %160
  br i1 %154, label %.lr.ph26, label %._crit_edge

._crit_edge:                                      ; preds = %146, %.preheader
  %Diff_phi39 = phi i32 [ %161, %146 ], [ %73, %.preheader ]
  %Dest_phi40 = phi i32 [ %148, %146 ], [ %63, %.preheader ]
  %162 = phi ptr [ %62, %.preheader ], [ %147, %146 ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader ], [ %.2, %146 ]
  %163 = xor i32 %Diff_phi39, %Dest_phi40
  %164 = icmp eq i32 %163, 45
  %165 = zext i1 %164 to i32
  call void @assert_cfg_ft(i32 %165, i32 %163, i32 0)
  %166 = icmp eq ptr %.1.lcssa, %162
  %167 = zext i1 %166 to i32
  call void @assert_ft(i32 %167, i32 1)
  store i8 0, ptr %.1.lcssa, align 1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bstr_i(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  %.not12 = icmp eq ptr %0, null
  %3 = icmp eq i1 %.not12, %2
  %4 = zext i1 %3 to i32
  call void @assert_ft(i32 %4, i32 1)
  %5 = select i1 %.not12, i32 50, i32 47
  %6 = xor i32 46, %5
  br i1 %.not12, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %1
  %Diff_phi = phi i32 [ %6, %1 ]
  %Dest_phi = phi i32 [ 46, %1 ]
  %7 = xor i32 %Diff_phi, %Dest_phi
  %8 = icmp eq i32 %7, 47
  %9 = zext i1 %8 to i32
  call void @assert_cfg_ft(i32 %9, i32 %7, i32 0)
  %10 = load i8, ptr %0, align 1
  %11 = load i8, ptr %0, align 1
  %12 = icmp eq i8 %11, %10
  %13 = zext i1 %12 to i32
  call void @assert_ft(i32 %13, i32 1)
  %14 = icmp eq i8 %10, 0
  %.not919 = icmp eq i8 %11, 0
  %15 = icmp eq i1 %.not919, %14
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = select i1 %.not919, i32 50, i32 48
  %18 = xor i32 47, %17
  br i1 %.not919, label %.critedge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph, %.lr.ph.preheader
  %Diff_phi24 = phi i32 [ %18, %.lr.ph.preheader ], [ %86, %.lr.ph ]
  %Dest_phi25 = phi i32 [ %7, %.lr.ph.preheader ], [ %55, %.lr.ph ]
  %19 = phi i8 [ %78, %.lr.ph ], [ %10, %.lr.ph.preheader ]
  %20 = phi i8 [ %79, %.lr.ph ], [ %11, %.lr.ph.preheader ]
  %21 = phi ptr [ %58, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %.071321 = phi ptr [ %59, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %22 = phi i32 [ %74, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.01420 = phi i32 [ %75, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %23 = xor i32 %Diff_phi24, %Dest_phi25
  %24 = icmp eq i32 %23, 48
  %25 = zext i1 %24 to i32
  call void @assert_cfg_ft(i32 %25, i32 %23, i32 0)
  %26 = icmp eq i32 %.01420, %22
  %27 = zext i1 %26 to i32
  call void @assert_ft(i32 %27, i32 1)
  %28 = icmp eq i8 %20, %19
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = icmp eq ptr %.071321, %21
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = zext i8 %19 to i64
  %33 = zext i8 %20 to i64
  %34 = icmp eq i64 %33, %32
  %35 = zext i1 %34 to i32
  call void @assert_ft(i32 %35, i32 1)
  %36 = icmp ugt i8 %19, 63
  %memchr.bounds = icmp ugt i8 %20, 63
  %37 = icmp eq i1 %memchr.bounds, %36
  %38 = zext i1 %37 to i32
  call void @assert_ft(i32 %38, i32 1)
  %39 = shl nuw i64 1, %32
  %40 = shl nuw i64 1, %33
  %41 = icmp eq i64 %40, %39
  %42 = zext i1 %41 to i32
  call void @assert_ft(i32 %42, i32 1)
  %43 = and i64 %39, 844424930131969
  %44 = and i64 %40, 844424930131969
  %45 = icmp eq i64 %44, %43
  %46 = zext i1 %45 to i32
  call void @assert_ft(i32 %46, i32 1)
  %47 = icmp eq i64 %43, 0
  %memchr.bits = icmp eq i64 %44, 0
  %48 = icmp eq i1 %memchr.bits, %47
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = select i1 %36, i1 true, i1 %47
  %memchr10.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  %51 = icmp eq i1 %memchr10.not, %50
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = select i1 %memchr10.not, i32 50, i32 49
  %54 = xor i32 48, %53
  br i1 %memchr10.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %Diff_phi26 = phi i32 [ %54, %.lr.ph22 ]
  %Dest_phi27 = phi i32 [ %23, %.lr.ph22 ]
  %55 = xor i32 %Diff_phi26, %Dest_phi27
  %56 = icmp eq i32 %55, 49
  %57 = zext i1 %56 to i32
  call void @assert_cfg_ft(i32 %57, i32 %55, i32 0)
  %58 = getelementptr inbounds i8, ptr %21, i64 1
  %59 = getelementptr inbounds i8, ptr %.071321, i64 1
  %60 = icmp eq ptr %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = shl i32 %22, 1
  %63 = shl i32 %.01420, 1
  %64 = icmp eq i32 %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = and i8 %19, 1
  %67 = and i8 %20, 1
  %68 = icmp eq i8 %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = zext i8 %66 to i32
  %71 = zext i8 %67 to i32
  %72 = icmp eq i32 %71, %70
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = or i32 %62, %70
  %75 = or i32 %63, %71
  %76 = icmp eq i32 %75, %74
  %77 = zext i1 %76 to i32
  call void @assert_ft(i32 %77, i32 1)
  %78 = load i8, ptr %58, align 1
  %79 = load i8, ptr %59, align 1
  %80 = icmp eq i8 %79, %78
  %81 = zext i1 %80 to i32
  call void @assert_ft(i32 %81, i32 1)
  %82 = icmp eq i8 %78, 0
  %.not9 = icmp eq i8 %79, 0
  %83 = icmp eq i1 %.not9, %82
  %84 = zext i1 %83 to i32
  call void @assert_ft(i32 %84, i32 1)
  %85 = select i1 %.not9, i32 50, i32 48
  %86 = xor i32 49, %85
  br i1 %.not9, label %.critedge, label %.lr.ph22

.critedge:                                        ; preds = %.lr.ph, %.lr.ph22, %.lr.ph.preheader, %1
  %Diff_phi28 = phi i32 [ %86, %.lr.ph ], [ %54, %.lr.ph22 ], [ %18, %.lr.ph.preheader ], [ %6, %1 ]
  %Dest_phi29 = phi i32 [ %55, %.lr.ph ], [ %23, %.lr.ph22 ], [ %7, %.lr.ph.preheader ], [ 46, %1 ]
  %87 = phi i32 [ 0, %1 ], [ 0, %.lr.ph.preheader ], [ %22, %.lr.ph22 ], [ %74, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %1 ], [ 0, %.lr.ph.preheader ], [ %.01420, %.lr.ph22 ], [ %75, %.lr.ph ]
  %88 = xor i32 %Diff_phi28, %Dest_phi29
  %89 = icmp eq i32 %88, 50
  %90 = zext i1 %89 to i32
  call void @assert_cfg_ft(i32 %90, i32 %88, i32 0)
  %91 = icmp eq i32 %.0.lcssa, %87
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
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
