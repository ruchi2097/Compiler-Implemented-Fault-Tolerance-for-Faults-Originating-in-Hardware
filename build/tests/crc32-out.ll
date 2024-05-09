; ModuleID = 'crc32-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@crc_32_tab = internal unnamed_addr constant [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%08lX %7ld\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @updateCRC32(i8 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i64 %1 to i8
  %.tr = trunc i64 %1 to i8
  %4 = icmp eq i8 %.tr, %3
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = xor i8 %3, %0
  %.narrow = xor i8 %.tr, %0
  %7 = icmp eq i8 %.narrow, %6
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = zext i8 %6 to i64
  %10 = zext i8 %.narrow to i64
  %11 = icmp eq i64 %10, %9
  %12 = zext i1 %11 to i32
  call void @assert_ft(i32 %12, i32 1)
  %13 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %9
  %14 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %10
  %15 = icmp eq ptr %14, %13
  %16 = zext i1 %15 to i32
  call void @assert_ft(i32 %16, i32 1)
  %17 = load i64, ptr %13, align 8
  %18 = load i64, ptr %14, align 8
  %19 = icmp eq i64 %18, %17
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = lshr i64 %1, 8
  %22 = lshr i64 %1, 8
  %23 = icmp eq i64 %22, %21
  %24 = zext i1 %23 to i32
  call void @assert_ft(i32 %24, i32 1)
  %25 = xor i64 %17, %21
  %26 = xor i64 %18, %22
  %27 = icmp eq i64 %26, %25
  %28 = zext i1 %27 to i32
  call void @assert_ft(i32 %28, i32 1)
  ret i64 %26
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @crc32file(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  store i64 0, ptr %2, align 8
  %4 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = select i1 %6, i32 4, i32 3
  %10 = xor i32 2, %9
  br i1 %6, label %20, label %.preheader

.preheader:                                       ; preds = %3
  %Diff_phi = phi i32 [ %10, %3 ]
  %Dest_phi = phi i32 [ 2, %3 ]
  %11 = xor i32 %Diff_phi, %Dest_phi
  %12 = icmp eq i32 %11, 3
  %13 = zext i1 %12 to i32
  call void @assert_cfg_ft(i32 %13, i32 %11, i32 0)
  %14 = tail call i32 @getc(ptr noundef nonnull %4)
  %15 = icmp eq i32 %14, -1
  %.not17 = icmp eq i32 %14, -1
  %16 = icmp eq i1 %.not17, %15
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = select i1 %.not17, i32 7, i32 5
  %19 = xor i32 3, %18
  br i1 %.not17, label %._crit_edge, label %.lr.ph

20:                                               ; preds = %3
  %Diff_phi19 = phi i32 [ %10, %3 ]
  %Dest_phi20 = phi i32 [ 2, %3 ]
  %21 = xor i32 %Diff_phi19, %Dest_phi20
  %22 = icmp eq i32 %21, 4
  %23 = zext i1 %22 to i32
  call void @assert_cfg_ft(i32 %23, i32 %21, i32 0)
  tail call void @perror(ptr noundef %0) #6
  br label %104

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %Diff_phi21 = phi i32 [ %19, %.preheader ], [ %75, %.lr.ph ]
  %Dest_phi22 = phi i32 [ %11, %.preheader ], [ %27, %.lr.ph ]
  %24 = phi i32 [ %70, %.lr.ph ], [ %14, %.preheader ]
  %25 = phi i32 [ %70, %.lr.ph ], [ %14, %.preheader ]
  %26 = phi i64 [ %66, %.lr.ph ], [ 4294967295, %.preheader ]
  %.01418 = phi i64 [ %67, %.lr.ph ], [ 4294967295, %.preheader ]
  %27 = xor i32 %Diff_phi21, %Dest_phi22
  %28 = icmp eq i32 %27, 5
  %29 = zext i1 %28 to i32
  call void @assert_cfg_ft(i32 %29, i32 %27, i32 0)
  %30 = icmp eq i64 %.01418, %26
  %31 = zext i1 %30 to i32
  call void @assert_ft(i32 %31, i32 1)
  %32 = icmp eq i32 %25, %24
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = load i64, ptr %2, align 8
  %35 = load i64, ptr %2, align 8
  %36 = icmp eq i64 %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = add nsw i64 %34, 1
  %39 = add nsw i64 %35, 1
  %40 = icmp eq i64 %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  store i64 %39, ptr %2, align 8
  %42 = zext i32 %24 to i64
  %43 = zext i32 %25 to i64
  %44 = icmp eq i64 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = xor i64 %26, %42
  %47 = xor i64 %.01418, %43
  %48 = icmp eq i64 %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = and i64 %46, 255
  %51 = and i64 %47, 255
  %52 = icmp eq i64 %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %50
  %55 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %51
  %56 = icmp eq ptr %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = load i64, ptr %54, align 8
  %59 = load i64, ptr %55, align 8
  %60 = icmp eq i64 %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = lshr i64 %26, 8
  %63 = lshr i64 %.01418, 8
  %64 = icmp eq i64 %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  %66 = xor i64 %58, %62
  %67 = xor i64 %59, %63
  %68 = icmp eq i64 %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  %70 = tail call i32 @getc(ptr noundef nonnull %4)
  %71 = icmp eq i32 %70, -1
  %.not = icmp eq i32 %70, -1
  %72 = icmp eq i1 %.not, %71
  %73 = zext i1 %72 to i32
  call void @assert_ft(i32 %73, i32 1)
  %74 = select i1 %.not, i32 6, i32 5
  %75 = xor i32 5, %74
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %Diff_phi23 = phi i32 [ %75, %.lr.ph ]
  %Dest_phi24 = phi i32 [ %27, %.lr.ph ]
  %76 = xor i32 %Diff_phi23, %Dest_phi24
  %77 = icmp eq i32 %76, 6
  %78 = zext i1 %77 to i32
  call void @assert_cfg_ft(i32 %78, i32 %76, i32 0)
  %79 = xor i64 %66, -1
  %80 = xor i64 %67, -1
  %81 = icmp eq i64 %80, %79
  %82 = zext i1 %81 to i32
  call void @assert_ft(i32 %82, i32 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %Diff_phi25 = phi i32 [ 1, %._crit_edge.loopexit ], [ %19, %.preheader ]
  %Dest_phi26 = phi i32 [ %76, %._crit_edge.loopexit ], [ %11, %.preheader ]
  %83 = phi i64 [ -4294967296, %.preheader ], [ %79, %._crit_edge.loopexit ]
  %.014.lcssa = phi i64 [ -4294967296, %.preheader ], [ %80, %._crit_edge.loopexit ]
  %84 = xor i32 %Diff_phi25, %Dest_phi26
  %85 = icmp eq i32 %84, 7
  %86 = zext i1 %85 to i32
  call void @assert_cfg_ft(i32 %86, i32 %84, i32 0)
  %87 = icmp eq i64 %.014.lcssa, %83
  %88 = zext i1 %87 to i32
  call void @assert_ft(i32 %88, i32 1)
  %89 = tail call i32 @ferror(ptr noundef nonnull %4) #7
  %90 = icmp eq i32 %89, 0
  %.not16 = icmp eq i32 %89, 0
  %91 = icmp eq i1 %.not16, %90
  %92 = zext i1 %91 to i32
  call void @assert_ft(i32 %92, i32 1)
  %93 = select i1 %.not16, i32 9, i32 8
  %94 = xor i32 7, %93
  br i1 %.not16, label %99, label %95

95:                                               ; preds = %._crit_edge
  %Diff_phi27 = phi i32 [ %94, %._crit_edge ]
  %Dest_phi28 = phi i32 [ %84, %._crit_edge ]
  %96 = xor i32 %Diff_phi27, %Dest_phi28
  %97 = icmp eq i32 %96, 8
  %98 = zext i1 %97 to i32
  call void @assert_cfg_ft(i32 %98, i32 %96, i32 0)
  tail call void @perror(ptr noundef %0) #6
  store i64 -1, ptr %2, align 8
  br label %99

99:                                               ; preds = %95, %._crit_edge
  %Diff_phi29 = phi i32 [ 1, %95 ], [ %94, %._crit_edge ]
  %Dest_phi30 = phi i32 [ %96, %95 ], [ %84, %._crit_edge ]
  %100 = xor i32 %Diff_phi29, %Dest_phi30
  %101 = icmp eq i32 %100, 9
  %102 = zext i1 %101 to i32
  call void @assert_cfg_ft(i32 %102, i32 %100, i32 0)
  %103 = tail call i32 @fclose(ptr noundef nonnull %4)
  store i64 %.014.lcssa, ptr %1, align 8
  br label %104

104:                                              ; preds = %99, %20
  %Diff_phi31 = phi i32 [ 3, %99 ], [ 14, %20 ]
  %Dest_phi32 = phi i32 [ %100, %99 ], [ %21, %20 ]
  %105 = phi i32 [ -1, %20 ], [ 0, %99 ]
  %.0 = phi i32 [ -1, %20 ], [ 0, %99 ]
  %106 = xor i32 %Diff_phi31, %Dest_phi32
  %107 = icmp eq i32 %106, 10
  %108 = zext i1 %107 to i32
  call void @assert_cfg_ft(i32 %108, i32 %106, i32 0)
  %109 = icmp eq i32 %.0, %105
  %110 = zext i1 %109 to i32
  call void @assert_ft(i32 %110, i32 1)
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @crc32buf(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i64 %1, 0
  %.not8 = icmp eq i64 %1, 0
  %4 = icmp eq i1 %.not8, %3
  %5 = zext i1 %4 to i32
  call void @assert_ft(i32 %5, i32 1)
  %6 = select i1 %.not8, i32 14, i32 12
  %7 = xor i32 11, %6
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %2
  %Diff_phi = phi i32 [ %7, %2 ], [ %62, %.lr.ph ]
  %Dest_phi = phi i32 [ 11, %2 ], [ %11, %.lr.ph ]
  %8 = phi i64 [ %46, %.lr.ph ], [ 4294967295, %2 ]
  %.011 = phi i64 [ %47, %.lr.ph ], [ 4294967295, %2 ]
  %9 = phi i64 [ %50, %.lr.ph ], [ %1, %2 ]
  %.0610 = phi i64 [ %51, %.lr.ph ], [ %1, %2 ]
  %10 = phi ptr [ %54, %.lr.ph ], [ %0, %2 ]
  %.079 = phi ptr [ %55, %.lr.ph ], [ %0, %2 ]
  %11 = xor i32 %Diff_phi, %Dest_phi
  %12 = icmp eq i32 %11, 12
  %13 = zext i1 %12 to i32
  call void @assert_cfg_ft(i32 %13, i32 %11, i32 0)
  %14 = icmp eq i64 %.0610, %9
  %15 = zext i1 %14 to i32
  call void @assert_ft(i32 %15, i32 1)
  %16 = icmp eq ptr %.079, %10
  %17 = zext i1 %16 to i32
  call void @assert_ft(i32 %17, i32 1)
  %18 = icmp eq i64 %.011, %8
  %19 = zext i1 %18 to i32
  call void @assert_ft(i32 %19, i32 1)
  %20 = load i8, ptr %10, align 1
  %21 = load i8, ptr %.079, align 1
  %22 = icmp eq i8 %21, %20
  %23 = zext i1 %22 to i32
  call void @assert_ft(i32 %23, i32 1)
  %24 = trunc i64 %8 to i8
  %.0.tr = trunc i64 %.011 to i8
  %25 = icmp eq i8 %.0.tr, %24
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = xor i8 %20, %24
  %.narrow = xor i8 %21, %.0.tr
  %28 = icmp eq i8 %.narrow, %27
  %29 = zext i1 %28 to i32
  call void @assert_ft(i32 %29, i32 1)
  %30 = zext i8 %27 to i64
  %31 = zext i8 %.narrow to i64
  %32 = icmp eq i64 %31, %30
  %33 = zext i1 %32 to i32
  call void @assert_ft(i32 %33, i32 1)
  %34 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %30
  %35 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %31
  %36 = icmp eq ptr %35, %34
  %37 = zext i1 %36 to i32
  call void @assert_ft(i32 %37, i32 1)
  %38 = load i64, ptr %34, align 8
  %39 = load i64, ptr %35, align 8
  %40 = icmp eq i64 %39, %38
  %41 = zext i1 %40 to i32
  call void @assert_ft(i32 %41, i32 1)
  %42 = lshr i64 %8, 8
  %43 = lshr i64 %.011, 8
  %44 = icmp eq i64 %43, %42
  %45 = zext i1 %44 to i32
  call void @assert_ft(i32 %45, i32 1)
  %46 = xor i64 %38, %42
  %47 = xor i64 %39, %43
  %48 = icmp eq i64 %47, %46
  %49 = zext i1 %48 to i32
  call void @assert_ft(i32 %49, i32 1)
  %50 = add i64 %9, -1
  %51 = add i64 %.0610, -1
  %52 = icmp eq i64 %51, %50
  %53 = zext i1 %52 to i32
  call void @assert_ft(i32 %53, i32 1)
  %54 = getelementptr inbounds i8, ptr %10, i64 1
  %55 = getelementptr inbounds i8, ptr %.079, i64 1
  %56 = icmp eq ptr %55, %54
  %57 = zext i1 %56 to i32
  call void @assert_ft(i32 %57, i32 1)
  %58 = icmp eq i64 %50, 0
  %.not = icmp eq i64 %51, 0
  %59 = icmp eq i1 %.not, %58
  %60 = zext i1 %59 to i32
  call void @assert_ft(i32 %60, i32 1)
  %61 = select i1 %.not, i32 13, i32 12
  %62 = xor i32 12, %61
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %Diff_phi12 = phi i32 [ %62, %.lr.ph ]
  %Dest_phi13 = phi i32 [ %11, %.lr.ph ]
  %63 = xor i32 %Diff_phi12, %Dest_phi13
  %64 = icmp eq i32 %63, 13
  %65 = zext i1 %64 to i32
  call void @assert_cfg_ft(i32 %65, i32 %63, i32 0)
  %66 = xor i64 %46, -1
  %67 = xor i64 %47, -1
  %68 = icmp eq i64 %67, %66
  %69 = zext i1 %68 to i32
  call void @assert_ft(i32 %69, i32 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %Diff_phi14 = phi i32 [ 3, %._crit_edge.loopexit ], [ %7, %2 ]
  %Dest_phi15 = phi i32 [ %63, %._crit_edge.loopexit ], [ 11, %2 ]
  %70 = phi i64 [ -4294967296, %2 ], [ %66, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ -4294967296, %2 ], [ %67, %._crit_edge.loopexit ]
  %71 = xor i32 %Diff_phi14, %Dest_phi15
  %72 = icmp eq i32 %71, 14
  %73 = zext i1 %72 to i32
  call void @assert_cfg_ft(i32 %73, i32 %71, i32 0)
  %74 = icmp eq i64 %.0.lcssa, %70
  %75 = zext i1 %74 to i32
  call void @assert_ft(i32 %75, i32 1)
  ret i64 %.0.lcssa
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = icmp sgt i32 %0, 1
  %6 = icmp sgt i32 %0, 1
  %7 = icmp eq i1 %6, %5
  %8 = zext i1 %7 to i32
  call void @assert_ft(i32 %8, i32 1)
  %9 = select i1 %6, i32 16, i32 18
  %10 = xor i32 15, %9
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %Diff_phi = phi i32 [ %10, %2 ], [ %54, %.lr.ph ]
  %Dest_phi = phi i32 [ 15, %2 ], [ %14, %.lr.ph ]
  %11 = phi i32 [ %36, %.lr.ph ], [ 0, %2 ]
  %.08 = phi i32 [ %37, %.lr.ph ], [ 0, %2 ]
  %12 = phi ptr [ %27, %.lr.ph ], [ %1, %2 ]
  %.037 = phi ptr [ %28, %.lr.ph ], [ %1, %2 ]
  %13 = phi i32 [ %23, %.lr.ph ], [ %0, %2 ]
  %.046 = phi i32 [ %24, %.lr.ph ], [ %0, %2 ]
  %14 = xor i32 %Diff_phi, %Dest_phi
  %15 = icmp eq i32 %14, 16
  %16 = zext i1 %15 to i32
  call void @assert_cfg_ft(i32 %16, i32 %14, i32 0)
  %17 = icmp eq i32 %.046, %13
  %18 = zext i1 %17 to i32
  call void @assert_ft(i32 %18, i32 1)
  %19 = icmp eq ptr %.037, %12
  %20 = zext i1 %19 to i32
  call void @assert_ft(i32 %20, i32 1)
  %21 = icmp eq i32 %.08, %11
  %22 = zext i1 %21 to i32
  call void @assert_ft(i32 %22, i32 1)
  %23 = add nsw i32 %13, -1
  %24 = add nsw i32 %.046, -1
  %25 = icmp eq i32 %24, %23
  %26 = zext i1 %25 to i32
  call void @assert_ft(i32 %26, i32 1)
  %27 = getelementptr inbounds ptr, ptr %12, i64 1
  %28 = getelementptr inbounds ptr, ptr %.037, i64 1
  %29 = icmp eq ptr %28, %27
  %30 = zext i1 %29 to i32
  call void @assert_ft(i32 %30, i32 1)
  %31 = load ptr, ptr %27, align 8
  %32 = load ptr, ptr %28, align 8
  %33 = icmp eq ptr %32, %31
  %34 = zext i1 %33 to i32
  call void @assert_ft(i32 %34, i32 1)
  %35 = call i32 @crc32file(ptr noundef %32, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !6
  %36 = or i32 %35, %11
  %37 = or i32 %35, %.08
  %38 = icmp eq i32 %37, %36
  %39 = zext i1 %38 to i32
  call void @assert_ft(i32 %39, i32 1)
  %40 = load i64, ptr %3, align 8
  %41 = load i64, ptr %3, align 8
  %42 = icmp eq i64 %41, %40
  %43 = zext i1 %42 to i32
  call void @assert_ft(i32 %43, i32 1)
  %44 = load i64, ptr %4, align 8
  %45 = load i64, ptr %4, align 8
  %46 = icmp eq i64 %45, %44
  %47 = zext i1 %46 to i32
  call void @assert_ft(i32 %47, i32 1)
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %41, i64 noundef %45)
  %49 = icmp ugt i32 %13, 2
  %50 = icmp ugt i32 %.046, 2
  %51 = icmp eq i1 %50, %49
  %52 = zext i1 %51 to i32
  call void @assert_ft(i32 %52, i32 1)
  %53 = select i1 %50, i32 16, i32 17
  %54 = xor i32 16, %53
  br i1 %50, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %Diff_phi9 = phi i32 [ %54, %.lr.ph ]
  %Dest_phi10 = phi i32 [ %14, %.lr.ph ]
  %55 = xor i32 %Diff_phi9, %Dest_phi10
  %56 = icmp eq i32 %55, 17
  %57 = zext i1 %56 to i32
  call void @assert_cfg_ft(i32 %57, i32 %55, i32 0)
  %58 = icmp ne i32 %36, 0
  %59 = icmp ne i32 %37, 0
  %60 = icmp eq i1 %59, %58
  %61 = zext i1 %60 to i32
  call void @assert_ft(i32 %61, i32 1)
  %62 = zext i1 %58 to i32
  %63 = zext i1 %59 to i32
  %64 = icmp eq i32 %63, %62
  %65 = zext i1 %64 to i32
  call void @assert_ft(i32 %65, i32 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %Diff_phi11 = phi i32 [ 3, %._crit_edge.loopexit ], [ %10, %2 ]
  %Dest_phi12 = phi i32 [ %55, %._crit_edge.loopexit ], [ 15, %2 ]
  %66 = phi i32 [ 0, %2 ], [ %62, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %2 ], [ %63, %._crit_edge.loopexit ]
  %67 = xor i32 %Diff_phi11, %Dest_phi12
  %68 = icmp eq i32 %67, 18
  %69 = zext i1 %68 to i32
  call void @assert_cfg_ft(i32 %69, i32 %67, i32 0)
  %70 = icmp eq i32 %.0.lcssa, %66
  %71 = zext i1 %70 to i32
  call void @assert_ft(i32 %71, i32 1)
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @exit(i32, ...)

declare i32 @printf.1(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
  call void (i32, ...) @exit(i32 1099)
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
  call void (i32, ...) @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 -1, i32 1}
