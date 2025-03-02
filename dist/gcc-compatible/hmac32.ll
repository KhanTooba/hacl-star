; ModuleID = 'Hacl_HMAC.c'
source_filename = "Hacl_HMAC.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

%struct.K___uint32_t_uint32_t_s = type { i32, i32 }
%struct.FStar_UInt128_uint128_s = type { i64, i64 }

@__const.Hacl_HMAC_compute_md5.s = private unnamed_addr constant [4 x i32] [i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878], align 4
@__const.Hacl_HMAC_compute_sha1.s = private unnamed_addr constant [5 x i32] [i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878, i32 -1009589776], align 4
@Hacl_Hash_SHA2_h224 = internal constant [8 x i32] [i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599, i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868], align 4, !dbg !0
@Hacl_Hash_SHA2_h256 = internal constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 4, !dbg !14
@Hacl_Hash_SHA2_h384 = internal constant [8 x i64] [i64 -3766243637369397544, i64 7105036623409894663, i64 -7973340178411365097, i64 1526699215303891257, i64 7436329637833083697, i64 -8163818279084223215, i64 -2662702644619276377, i64 5167115440072839076], align 8, !dbg !21
@Hacl_Hash_SHA2_h512 = internal constant [8 x i64] [i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809], align 8, !dbg !25

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_md5(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !34 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [64 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [4 x i32], align 4
  %24 = alloca i8*, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %31 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 4
  %36 = alloca i8*, align 4
  %37 = alloca i8*, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %44 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 4
  %49 = alloca i8*, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !52, metadata !DIExpression()), !dbg !56
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !57
  call void @llvm.memset.p0i8.i32(i8* align 1 %50, i8 0, i32 64, i1 false), !dbg !57
  call void @llvm.dbg.declare(metadata i8** %12, metadata !58, metadata !DIExpression()), !dbg !59
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !60
  store i8* %51, i8** %12, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %13, metadata !61, metadata !DIExpression()), !dbg !62
  %52 = load i32, i32* %8, align 4, !dbg !63
  %53 = icmp ule i32 %52, 64, !dbg !65
  br i1 %53, label %54, label %56, !dbg !66

54:                                               ; preds = %5
  %55 = load i32, i32* %8, align 4, !dbg !67
  store i32 %55, i32* %13, align 4, !dbg !69
  br label %57, !dbg !70

56:                                               ; preds = %5
  store i32 16, i32* %13, align 4, !dbg !71
  br label %57

57:                                               ; preds = %56, %54
  call void @llvm.dbg.declare(metadata i8** %14, metadata !73, metadata !DIExpression()), !dbg !74
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !75
  %59 = load i32, i32* %13, align 4, !dbg !76
  %60 = getelementptr inbounds i8, i8* %58, i32 %59, !dbg !77
  store i8* %60, i8** %14, align 4, !dbg !74
  %61 = load i8*, i8** %14, align 4, !dbg !78
  %62 = load i32, i32* %8, align 4, !dbg !79
  %63 = icmp ule i32 %62, 64, !dbg !81
  br i1 %63, label %64, label %69, !dbg !82

64:                                               ; preds = %57
  %65 = load i8*, i8** %12, align 4, !dbg !83
  %66 = load i8*, i8** %7, align 4, !dbg !85
  %67 = load i32, i32* %8, align 4, !dbg !86
  %68 = mul i32 %67, 1, !dbg !87
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %65, i8* align 1 %66, i32 %68, i1 false), !dbg !88
  br label %73, !dbg !89

69:                                               ; preds = %57
  %70 = load i8*, i8** %12, align 4, !dbg !90
  %71 = load i8*, i8** %7, align 4, !dbg !92
  %72 = load i32, i32* %8, align 4, !dbg !93
  call void @Hacl_Hash_MD5_hash_oneshot(i8* noundef %70, i8* noundef %71, i32 noundef %72), !dbg !94
  br label %73

73:                                               ; preds = %69, %64
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !95, metadata !DIExpression()), !dbg !96
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !97
  call void @llvm.memset.p0i8.i32(i8* align 1 %74, i8 54, i32 64, i1 false), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %16, metadata !98, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %16, align 4, !dbg !100
  br label %75, !dbg !101

75:                                               ; preds = %93, %73
  %76 = load i32, i32* %16, align 4, !dbg !102
  %77 = icmp ult i32 %76, 64, !dbg !104
  br i1 %77, label %78, label %96, !dbg !105

78:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata i8* %17, metadata !106, metadata !DIExpression()), !dbg !108
  %79 = load i32, i32* %16, align 4, !dbg !109
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %79, !dbg !110
  %81 = load i8, i8* %80, align 1, !dbg !110
  store i8 %81, i8* %17, align 1, !dbg !108
  call void @llvm.dbg.declare(metadata i8* %18, metadata !111, metadata !DIExpression()), !dbg !112
  %82 = load i32, i32* %16, align 4, !dbg !113
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %82, !dbg !114
  %84 = load i8, i8* %83, align 1, !dbg !114
  store i8 %84, i8* %18, align 1, !dbg !112
  %85 = load i8, i8* %17, align 1, !dbg !115
  %86 = zext i8 %85 to i32, !dbg !116
  %87 = load i8, i8* %18, align 1, !dbg !117
  %88 = zext i8 %87 to i32, !dbg !118
  %89 = xor i32 %86, %88, !dbg !119
  %90 = trunc i32 %89 to i8, !dbg !116
  %91 = load i32, i32* %16, align 4, !dbg !120
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %91, !dbg !121
  store i8 %90, i8* %92, align 1, !dbg !122
  br label %93, !dbg !123

93:                                               ; preds = %78
  %94 = load i32, i32* %16, align 4, !dbg !124
  %95 = add i32 %94, 1, !dbg !124
  store i32 %95, i32* %16, align 4, !dbg !124
  br label %75, !dbg !125, !llvm.loop !126

96:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !129, metadata !DIExpression()), !dbg !130
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !131
  call void @llvm.memset.p0i8.i32(i8* align 1 %97, i8 92, i32 64, i1 false), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %20, metadata !132, metadata !DIExpression()), !dbg !134
  store i32 0, i32* %20, align 4, !dbg !134
  br label %98, !dbg !135

98:                                               ; preds = %116, %96
  %99 = load i32, i32* %20, align 4, !dbg !136
  %100 = icmp ult i32 %99, 64, !dbg !138
  br i1 %100, label %101, label %119, !dbg !139

101:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata i8* %21, metadata !140, metadata !DIExpression()), !dbg !142
  %102 = load i32, i32* %20, align 4, !dbg !143
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %102, !dbg !144
  %104 = load i8, i8* %103, align 1, !dbg !144
  store i8 %104, i8* %21, align 1, !dbg !142
  call void @llvm.dbg.declare(metadata i8* %22, metadata !145, metadata !DIExpression()), !dbg !146
  %105 = load i32, i32* %20, align 4, !dbg !147
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %105, !dbg !148
  %107 = load i8, i8* %106, align 1, !dbg !148
  store i8 %107, i8* %22, align 1, !dbg !146
  %108 = load i8, i8* %21, align 1, !dbg !149
  %109 = zext i8 %108 to i32, !dbg !150
  %110 = load i8, i8* %22, align 1, !dbg !151
  %111 = zext i8 %110 to i32, !dbg !152
  %112 = xor i32 %109, %111, !dbg !153
  %113 = trunc i32 %112 to i8, !dbg !150
  %114 = load i32, i32* %20, align 4, !dbg !154
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %114, !dbg !155
  store i8 %113, i8* %115, align 1, !dbg !156
  br label %116, !dbg !157

116:                                              ; preds = %101
  %117 = load i32, i32* %20, align 4, !dbg !158
  %118 = add i32 %117, 1, !dbg !158
  store i32 %118, i32* %20, align 4, !dbg !158
  br label %98, !dbg !159, !llvm.loop !160

119:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata [4 x i32]* %23, metadata !162, metadata !DIExpression()), !dbg !166
  %120 = bitcast [4 x i32]* %23 to i8*, !dbg !166
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %120, i8* align 4 bitcast ([4 x i32]* @__const.Hacl_HMAC_compute_md5.s to i8*), i32 16, i1 false), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %24, metadata !167, metadata !DIExpression()), !dbg !168
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !169
  store i8* %121, i8** %24, align 4, !dbg !168
  %122 = load i32, i32* %10, align 4, !dbg !170
  %123 = icmp eq i32 %122, 0, !dbg !172
  br i1 %123, label %124, label %127, !dbg !173

124:                                              ; preds = %119
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !174
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !176
  call void @Hacl_Hash_MD5_update_last(i32* noundef %125, i64 noundef 0, i8* noundef %126, i32 noundef 64), !dbg !177
  br label %182, !dbg !178

127:                                              ; preds = %119
  call void @llvm.dbg.declare(metadata i32* %25, metadata !179, metadata !DIExpression()), !dbg !181
  store i32 64, i32* %25, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %26, metadata !182, metadata !DIExpression()), !dbg !183
  %128 = load i32, i32* %10, align 4, !dbg !184
  %129 = load i32, i32* %25, align 4, !dbg !185
  %130 = udiv i32 %128, %129, !dbg !186
  store i32 %130, i32* %26, align 4, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %27, metadata !187, metadata !DIExpression()), !dbg !188
  %131 = load i32, i32* %10, align 4, !dbg !189
  %132 = load i32, i32* %25, align 4, !dbg !190
  %133 = urem i32 %131, %132, !dbg !191
  store i32 %133, i32* %27, align 4, !dbg !188
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !192, metadata !DIExpression()), !dbg !199
  %134 = load i32, i32* %26, align 4, !dbg !200
  %135 = icmp ugt i32 %134, 0, !dbg !202
  br i1 %135, label %136, label %152, !dbg !203

136:                                              ; preds = %127
  %137 = load i32, i32* %27, align 4, !dbg !204
  %138 = icmp eq i32 %137, 0, !dbg !205
  br i1 %138, label %139, label %152, !dbg !206

139:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata i32* %29, metadata !207, metadata !DIExpression()), !dbg !209
  %140 = load i32, i32* %26, align 4, !dbg !210
  %141 = sub i32 %140, 1, !dbg !211
  store i32 %141, i32* %29, align 4, !dbg !209
  %142 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !212
  %143 = load i32, i32* %29, align 4, !dbg !213
  store i32 %143, i32* %142, align 4, !dbg !212
  %144 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !212
  %145 = load i32, i32* %10, align 4, !dbg !214
  %146 = load i32, i32* %29, align 4, !dbg !215
  %147 = load i32, i32* %25, align 4, !dbg !216
  %148 = mul i32 %146, %147, !dbg !217
  %149 = sub i32 %145, %148, !dbg !218
  store i32 %149, i32* %144, align 4, !dbg !212
  %150 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !219
  %151 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !219
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %150, i8* align 4 %151, i32 8, i1 false), !dbg !219
  br label %159, !dbg !220

152:                                              ; preds = %136, %127
  %153 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !221
  %154 = load i32, i32* %26, align 4, !dbg !223
  store i32 %154, i32* %153, align 4, !dbg !221
  %155 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !221
  %156 = load i32, i32* %27, align 4, !dbg !224
  store i32 %156, i32* %155, align 4, !dbg !221
  %157 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !225
  %158 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !225
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %157, i8* align 4 %158, i32 8, i1 false), !dbg !225
  br label %159

159:                                              ; preds = %152, %139
  call void @llvm.dbg.declare(metadata i32* %32, metadata !226, metadata !DIExpression()), !dbg !227
  %160 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !228
  %161 = load i32, i32* %160, align 4, !dbg !228
  store i32 %161, i32* %32, align 4, !dbg !227
  call void @llvm.dbg.declare(metadata i32* %33, metadata !229, metadata !DIExpression()), !dbg !230
  %162 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !231
  %163 = load i32, i32* %162, align 4, !dbg !231
  store i32 %163, i32* %33, align 4, !dbg !230
  call void @llvm.dbg.declare(metadata i32* %34, metadata !232, metadata !DIExpression()), !dbg !233
  %164 = load i32, i32* %32, align 4, !dbg !234
  %165 = load i32, i32* %25, align 4, !dbg !235
  %166 = mul i32 %164, %165, !dbg !236
  store i32 %166, i32* %34, align 4, !dbg !233
  call void @llvm.dbg.declare(metadata i8** %35, metadata !237, metadata !DIExpression()), !dbg !238
  %167 = load i8*, i8** %9, align 4, !dbg !239
  store i8* %167, i8** %35, align 4, !dbg !238
  call void @llvm.dbg.declare(metadata i8** %36, metadata !240, metadata !DIExpression()), !dbg !241
  %168 = load i8*, i8** %9, align 4, !dbg !242
  %169 = load i32, i32* %34, align 4, !dbg !243
  %170 = getelementptr inbounds i8, i8* %168, i32 %169, !dbg !244
  store i8* %170, i8** %36, align 4, !dbg !241
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !245
  %172 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !246
  call void @Hacl_Hash_MD5_update_multi(i32* noundef %171, i8* noundef %172, i32 noundef 1), !dbg !247
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !248
  %174 = load i8*, i8** %35, align 4, !dbg !249
  %175 = load i32, i32* %32, align 4, !dbg !250
  call void @Hacl_Hash_MD5_update_multi(i32* noundef %173, i8* noundef %174, i32 noundef %175), !dbg !251
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !252
  %177 = load i32, i32* %34, align 4, !dbg !253
  %178 = zext i32 %177 to i64, !dbg !254
  %179 = add i64 64, %178, !dbg !255
  %180 = load i8*, i8** %36, align 4, !dbg !256
  %181 = load i32, i32* %33, align 4, !dbg !257
  call void @Hacl_Hash_MD5_update_last(i32* noundef %176, i64 noundef %179, i8* noundef %180, i32 noundef %181), !dbg !258
  br label %182

182:                                              ; preds = %159, %124
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !259
  %184 = load i8*, i8** %24, align 4, !dbg !260
  call void @Hacl_Hash_MD5_finish(i32* noundef %183, i8* noundef %184), !dbg !261
  call void @llvm.dbg.declare(metadata i8** %37, metadata !262, metadata !DIExpression()), !dbg !263
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !264
  store i8* %185, i8** %37, align 4, !dbg !263
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !265
  call void @Hacl_Hash_MD5_init(i32* noundef %186), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %38, metadata !267, metadata !DIExpression()), !dbg !268
  store i32 64, i32* %38, align 4, !dbg !268
  call void @llvm.dbg.declare(metadata i32* %39, metadata !269, metadata !DIExpression()), !dbg !270
  %187 = load i32, i32* %38, align 4, !dbg !271
  %188 = udiv i32 16, %187, !dbg !272
  store i32 %188, i32* %39, align 4, !dbg !270
  call void @llvm.dbg.declare(metadata i32* %40, metadata !273, metadata !DIExpression()), !dbg !274
  %189 = load i32, i32* %38, align 4, !dbg !275
  %190 = urem i32 16, %189, !dbg !276
  store i32 %190, i32* %40, align 4, !dbg !274
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %41, metadata !277, metadata !DIExpression()), !dbg !278
  %191 = load i32, i32* %39, align 4, !dbg !279
  %192 = icmp ugt i32 %191, 0, !dbg !281
  br i1 %192, label %193, label %208, !dbg !282

193:                                              ; preds = %182
  %194 = load i32, i32* %40, align 4, !dbg !283
  %195 = icmp eq i32 %194, 0, !dbg !284
  br i1 %195, label %196, label %208, !dbg !285

196:                                              ; preds = %193
  call void @llvm.dbg.declare(metadata i32* %42, metadata !286, metadata !DIExpression()), !dbg !288
  %197 = load i32, i32* %39, align 4, !dbg !289
  %198 = sub i32 %197, 1, !dbg !290
  store i32 %198, i32* %42, align 4, !dbg !288
  %199 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %43, i32 0, i32 0, !dbg !291
  %200 = load i32, i32* %42, align 4, !dbg !292
  store i32 %200, i32* %199, align 4, !dbg !291
  %201 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %43, i32 0, i32 1, !dbg !291
  %202 = load i32, i32* %42, align 4, !dbg !293
  %203 = load i32, i32* %38, align 4, !dbg !294
  %204 = mul i32 %202, %203, !dbg !295
  %205 = sub i32 16, %204, !dbg !296
  store i32 %205, i32* %201, align 4, !dbg !291
  %206 = bitcast %struct.K___uint32_t_uint32_t_s* %41 to i8*, !dbg !297
  %207 = bitcast %struct.K___uint32_t_uint32_t_s* %43 to i8*, !dbg !297
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %206, i8* align 4 %207, i32 8, i1 false), !dbg !297
  br label %215, !dbg !298

208:                                              ; preds = %193, %182
  %209 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %44, i32 0, i32 0, !dbg !299
  %210 = load i32, i32* %39, align 4, !dbg !301
  store i32 %210, i32* %209, align 4, !dbg !299
  %211 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %44, i32 0, i32 1, !dbg !299
  %212 = load i32, i32* %40, align 4, !dbg !302
  store i32 %212, i32* %211, align 4, !dbg !299
  %213 = bitcast %struct.K___uint32_t_uint32_t_s* %41 to i8*, !dbg !303
  %214 = bitcast %struct.K___uint32_t_uint32_t_s* %44 to i8*, !dbg !303
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %213, i8* align 4 %214, i32 8, i1 false), !dbg !303
  br label %215

215:                                              ; preds = %208, %196
  call void @llvm.dbg.declare(metadata i32* %45, metadata !304, metadata !DIExpression()), !dbg !305
  %216 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %41, i32 0, i32 0, !dbg !306
  %217 = load i32, i32* %216, align 4, !dbg !306
  store i32 %217, i32* %45, align 4, !dbg !305
  call void @llvm.dbg.declare(metadata i32* %46, metadata !307, metadata !DIExpression()), !dbg !308
  %218 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %41, i32 0, i32 1, !dbg !309
  %219 = load i32, i32* %218, align 4, !dbg !309
  store i32 %219, i32* %46, align 4, !dbg !308
  call void @llvm.dbg.declare(metadata i32* %47, metadata !310, metadata !DIExpression()), !dbg !311
  %220 = load i32, i32* %45, align 4, !dbg !312
  %221 = load i32, i32* %38, align 4, !dbg !313
  %222 = mul i32 %220, %221, !dbg !314
  store i32 %222, i32* %47, align 4, !dbg !311
  call void @llvm.dbg.declare(metadata i8** %48, metadata !315, metadata !DIExpression()), !dbg !316
  %223 = load i8*, i8** %37, align 4, !dbg !317
  store i8* %223, i8** %48, align 4, !dbg !316
  call void @llvm.dbg.declare(metadata i8** %49, metadata !318, metadata !DIExpression()), !dbg !319
  %224 = load i8*, i8** %37, align 4, !dbg !320
  %225 = load i32, i32* %47, align 4, !dbg !321
  %226 = getelementptr inbounds i8, i8* %224, i32 %225, !dbg !322
  store i8* %226, i8** %49, align 4, !dbg !319
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !323
  %228 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !324
  call void @Hacl_Hash_MD5_update_multi(i32* noundef %227, i8* noundef %228, i32 noundef 1), !dbg !325
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !326
  %230 = load i8*, i8** %48, align 4, !dbg !327
  %231 = load i32, i32* %45, align 4, !dbg !328
  call void @Hacl_Hash_MD5_update_multi(i32* noundef %229, i8* noundef %230, i32 noundef %231), !dbg !329
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !330
  %233 = load i32, i32* %47, align 4, !dbg !331
  %234 = zext i32 %233 to i64, !dbg !332
  %235 = add i64 64, %234, !dbg !333
  %236 = load i8*, i8** %49, align 4, !dbg !334
  %237 = load i32, i32* %46, align 4, !dbg !335
  call void @Hacl_Hash_MD5_update_last(i32* noundef %232, i64 noundef %235, i8* noundef %236, i32 noundef %237), !dbg !336
  %238 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0, !dbg !337
  %239 = load i8*, i8** %6, align 4, !dbg !338
  call void @Hacl_Hash_MD5_finish(i32* noundef %238, i8* noundef %239), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

declare dso_local void @Hacl_Hash_MD5_hash_oneshot(i8* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_MD5_update_last(i32* noundef, i64 noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_MD5_update_multi(i32* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_MD5_finish(i32* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_MD5_init(i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha1(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !341 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [64 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [5 x i32], align 4
  %24 = alloca i8*, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %31 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 4
  %36 = alloca i8*, align 4
  %37 = alloca i8*, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %44 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 4
  %49 = alloca i8*, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !342, metadata !DIExpression()), !dbg !343
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !344, metadata !DIExpression()), !dbg !345
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !346, metadata !DIExpression()), !dbg !347
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !348, metadata !DIExpression()), !dbg !349
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !352, metadata !DIExpression()), !dbg !353
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !354
  call void @llvm.memset.p0i8.i32(i8* align 1 %50, i8 0, i32 64, i1 false), !dbg !354
  call void @llvm.dbg.declare(metadata i8** %12, metadata !355, metadata !DIExpression()), !dbg !356
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !357
  store i8* %51, i8** %12, align 4, !dbg !356
  call void @llvm.dbg.declare(metadata i32* %13, metadata !358, metadata !DIExpression()), !dbg !359
  %52 = load i32, i32* %8, align 4, !dbg !360
  %53 = icmp ule i32 %52, 64, !dbg !362
  br i1 %53, label %54, label %56, !dbg !363

54:                                               ; preds = %5
  %55 = load i32, i32* %8, align 4, !dbg !364
  store i32 %55, i32* %13, align 4, !dbg !366
  br label %57, !dbg !367

56:                                               ; preds = %5
  store i32 20, i32* %13, align 4, !dbg !368
  br label %57

57:                                               ; preds = %56, %54
  call void @llvm.dbg.declare(metadata i8** %14, metadata !370, metadata !DIExpression()), !dbg !371
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !372
  %59 = load i32, i32* %13, align 4, !dbg !373
  %60 = getelementptr inbounds i8, i8* %58, i32 %59, !dbg !374
  store i8* %60, i8** %14, align 4, !dbg !371
  %61 = load i8*, i8** %14, align 4, !dbg !375
  %62 = load i32, i32* %8, align 4, !dbg !376
  %63 = icmp ule i32 %62, 64, !dbg !378
  br i1 %63, label %64, label %69, !dbg !379

64:                                               ; preds = %57
  %65 = load i8*, i8** %12, align 4, !dbg !380
  %66 = load i8*, i8** %7, align 4, !dbg !382
  %67 = load i32, i32* %8, align 4, !dbg !383
  %68 = mul i32 %67, 1, !dbg !384
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %65, i8* align 1 %66, i32 %68, i1 false), !dbg !385
  br label %73, !dbg !386

69:                                               ; preds = %57
  %70 = load i8*, i8** %12, align 4, !dbg !387
  %71 = load i8*, i8** %7, align 4, !dbg !389
  %72 = load i32, i32* %8, align 4, !dbg !390
  call void @Hacl_Hash_SHA1_hash_oneshot(i8* noundef %70, i8* noundef %71, i32 noundef %72), !dbg !391
  br label %73

73:                                               ; preds = %69, %64
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !392, metadata !DIExpression()), !dbg !393
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !394
  call void @llvm.memset.p0i8.i32(i8* align 1 %74, i8 54, i32 64, i1 false), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %16, metadata !395, metadata !DIExpression()), !dbg !397
  store i32 0, i32* %16, align 4, !dbg !397
  br label %75, !dbg !398

75:                                               ; preds = %93, %73
  %76 = load i32, i32* %16, align 4, !dbg !399
  %77 = icmp ult i32 %76, 64, !dbg !401
  br i1 %77, label %78, label %96, !dbg !402

78:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata i8* %17, metadata !403, metadata !DIExpression()), !dbg !405
  %79 = load i32, i32* %16, align 4, !dbg !406
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %79, !dbg !407
  %81 = load i8, i8* %80, align 1, !dbg !407
  store i8 %81, i8* %17, align 1, !dbg !405
  call void @llvm.dbg.declare(metadata i8* %18, metadata !408, metadata !DIExpression()), !dbg !409
  %82 = load i32, i32* %16, align 4, !dbg !410
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %82, !dbg !411
  %84 = load i8, i8* %83, align 1, !dbg !411
  store i8 %84, i8* %18, align 1, !dbg !409
  %85 = load i8, i8* %17, align 1, !dbg !412
  %86 = zext i8 %85 to i32, !dbg !413
  %87 = load i8, i8* %18, align 1, !dbg !414
  %88 = zext i8 %87 to i32, !dbg !415
  %89 = xor i32 %86, %88, !dbg !416
  %90 = trunc i32 %89 to i8, !dbg !413
  %91 = load i32, i32* %16, align 4, !dbg !417
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %91, !dbg !418
  store i8 %90, i8* %92, align 1, !dbg !419
  br label %93, !dbg !420

93:                                               ; preds = %78
  %94 = load i32, i32* %16, align 4, !dbg !421
  %95 = add i32 %94, 1, !dbg !421
  store i32 %95, i32* %16, align 4, !dbg !421
  br label %75, !dbg !422, !llvm.loop !423

96:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !425, metadata !DIExpression()), !dbg !426
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !427
  call void @llvm.memset.p0i8.i32(i8* align 1 %97, i8 92, i32 64, i1 false), !dbg !427
  call void @llvm.dbg.declare(metadata i32* %20, metadata !428, metadata !DIExpression()), !dbg !430
  store i32 0, i32* %20, align 4, !dbg !430
  br label %98, !dbg !431

98:                                               ; preds = %116, %96
  %99 = load i32, i32* %20, align 4, !dbg !432
  %100 = icmp ult i32 %99, 64, !dbg !434
  br i1 %100, label %101, label %119, !dbg !435

101:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata i8* %21, metadata !436, metadata !DIExpression()), !dbg !438
  %102 = load i32, i32* %20, align 4, !dbg !439
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %102, !dbg !440
  %104 = load i8, i8* %103, align 1, !dbg !440
  store i8 %104, i8* %21, align 1, !dbg !438
  call void @llvm.dbg.declare(metadata i8* %22, metadata !441, metadata !DIExpression()), !dbg !442
  %105 = load i32, i32* %20, align 4, !dbg !443
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %105, !dbg !444
  %107 = load i8, i8* %106, align 1, !dbg !444
  store i8 %107, i8* %22, align 1, !dbg !442
  %108 = load i8, i8* %21, align 1, !dbg !445
  %109 = zext i8 %108 to i32, !dbg !446
  %110 = load i8, i8* %22, align 1, !dbg !447
  %111 = zext i8 %110 to i32, !dbg !448
  %112 = xor i32 %109, %111, !dbg !449
  %113 = trunc i32 %112 to i8, !dbg !446
  %114 = load i32, i32* %20, align 4, !dbg !450
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %114, !dbg !451
  store i8 %113, i8* %115, align 1, !dbg !452
  br label %116, !dbg !453

116:                                              ; preds = %101
  %117 = load i32, i32* %20, align 4, !dbg !454
  %118 = add i32 %117, 1, !dbg !454
  store i32 %118, i32* %20, align 4, !dbg !454
  br label %98, !dbg !455, !llvm.loop !456

119:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata [5 x i32]* %23, metadata !458, metadata !DIExpression()), !dbg !462
  %120 = bitcast [5 x i32]* %23 to i8*, !dbg !462
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %120, i8* align 4 bitcast ([5 x i32]* @__const.Hacl_HMAC_compute_sha1.s to i8*), i32 20, i1 false), !dbg !462
  call void @llvm.dbg.declare(metadata i8** %24, metadata !463, metadata !DIExpression()), !dbg !464
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !465
  store i8* %121, i8** %24, align 4, !dbg !464
  %122 = load i32, i32* %10, align 4, !dbg !466
  %123 = icmp eq i32 %122, 0, !dbg !468
  br i1 %123, label %124, label %127, !dbg !469

124:                                              ; preds = %119
  %125 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !470
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !472
  call void @Hacl_Hash_SHA1_update_last(i32* noundef %125, i64 noundef 0, i8* noundef %126, i32 noundef 64), !dbg !473
  br label %182, !dbg !474

127:                                              ; preds = %119
  call void @llvm.dbg.declare(metadata i32* %25, metadata !475, metadata !DIExpression()), !dbg !477
  store i32 64, i32* %25, align 4, !dbg !477
  call void @llvm.dbg.declare(metadata i32* %26, metadata !478, metadata !DIExpression()), !dbg !479
  %128 = load i32, i32* %10, align 4, !dbg !480
  %129 = load i32, i32* %25, align 4, !dbg !481
  %130 = udiv i32 %128, %129, !dbg !482
  store i32 %130, i32* %26, align 4, !dbg !479
  call void @llvm.dbg.declare(metadata i32* %27, metadata !483, metadata !DIExpression()), !dbg !484
  %131 = load i32, i32* %10, align 4, !dbg !485
  %132 = load i32, i32* %25, align 4, !dbg !486
  %133 = urem i32 %131, %132, !dbg !487
  store i32 %133, i32* %27, align 4, !dbg !484
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !488, metadata !DIExpression()), !dbg !489
  %134 = load i32, i32* %26, align 4, !dbg !490
  %135 = icmp ugt i32 %134, 0, !dbg !492
  br i1 %135, label %136, label %152, !dbg !493

136:                                              ; preds = %127
  %137 = load i32, i32* %27, align 4, !dbg !494
  %138 = icmp eq i32 %137, 0, !dbg !495
  br i1 %138, label %139, label %152, !dbg !496

139:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata i32* %29, metadata !497, metadata !DIExpression()), !dbg !499
  %140 = load i32, i32* %26, align 4, !dbg !500
  %141 = sub i32 %140, 1, !dbg !501
  store i32 %141, i32* %29, align 4, !dbg !499
  %142 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !502
  %143 = load i32, i32* %29, align 4, !dbg !503
  store i32 %143, i32* %142, align 4, !dbg !502
  %144 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !502
  %145 = load i32, i32* %10, align 4, !dbg !504
  %146 = load i32, i32* %29, align 4, !dbg !505
  %147 = load i32, i32* %25, align 4, !dbg !506
  %148 = mul i32 %146, %147, !dbg !507
  %149 = sub i32 %145, %148, !dbg !508
  store i32 %149, i32* %144, align 4, !dbg !502
  %150 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !509
  %151 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !509
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %150, i8* align 4 %151, i32 8, i1 false), !dbg !509
  br label %159, !dbg !510

152:                                              ; preds = %136, %127
  %153 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !511
  %154 = load i32, i32* %26, align 4, !dbg !513
  store i32 %154, i32* %153, align 4, !dbg !511
  %155 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !511
  %156 = load i32, i32* %27, align 4, !dbg !514
  store i32 %156, i32* %155, align 4, !dbg !511
  %157 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !515
  %158 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !515
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %157, i8* align 4 %158, i32 8, i1 false), !dbg !515
  br label %159

159:                                              ; preds = %152, %139
  call void @llvm.dbg.declare(metadata i32* %32, metadata !516, metadata !DIExpression()), !dbg !517
  %160 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !518
  %161 = load i32, i32* %160, align 4, !dbg !518
  store i32 %161, i32* %32, align 4, !dbg !517
  call void @llvm.dbg.declare(metadata i32* %33, metadata !519, metadata !DIExpression()), !dbg !520
  %162 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !521
  %163 = load i32, i32* %162, align 4, !dbg !521
  store i32 %163, i32* %33, align 4, !dbg !520
  call void @llvm.dbg.declare(metadata i32* %34, metadata !522, metadata !DIExpression()), !dbg !523
  %164 = load i32, i32* %32, align 4, !dbg !524
  %165 = load i32, i32* %25, align 4, !dbg !525
  %166 = mul i32 %164, %165, !dbg !526
  store i32 %166, i32* %34, align 4, !dbg !523
  call void @llvm.dbg.declare(metadata i8** %35, metadata !527, metadata !DIExpression()), !dbg !528
  %167 = load i8*, i8** %9, align 4, !dbg !529
  store i8* %167, i8** %35, align 4, !dbg !528
  call void @llvm.dbg.declare(metadata i8** %36, metadata !530, metadata !DIExpression()), !dbg !531
  %168 = load i8*, i8** %9, align 4, !dbg !532
  %169 = load i32, i32* %34, align 4, !dbg !533
  %170 = getelementptr inbounds i8, i8* %168, i32 %169, !dbg !534
  store i8* %170, i8** %36, align 4, !dbg !531
  %171 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !535
  %172 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !536
  call void @Hacl_Hash_SHA1_update_multi(i32* noundef %171, i8* noundef %172, i32 noundef 1), !dbg !537
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !538
  %174 = load i8*, i8** %35, align 4, !dbg !539
  %175 = load i32, i32* %32, align 4, !dbg !540
  call void @Hacl_Hash_SHA1_update_multi(i32* noundef %173, i8* noundef %174, i32 noundef %175), !dbg !541
  %176 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !542
  %177 = load i32, i32* %34, align 4, !dbg !543
  %178 = zext i32 %177 to i64, !dbg !544
  %179 = add i64 64, %178, !dbg !545
  %180 = load i8*, i8** %36, align 4, !dbg !546
  %181 = load i32, i32* %33, align 4, !dbg !547
  call void @Hacl_Hash_SHA1_update_last(i32* noundef %176, i64 noundef %179, i8* noundef %180, i32 noundef %181), !dbg !548
  br label %182

182:                                              ; preds = %159, %124
  %183 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !549
  %184 = load i8*, i8** %24, align 4, !dbg !550
  call void @Hacl_Hash_SHA1_finish(i32* noundef %183, i8* noundef %184), !dbg !551
  call void @llvm.dbg.declare(metadata i8** %37, metadata !552, metadata !DIExpression()), !dbg !553
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !554
  store i8* %185, i8** %37, align 4, !dbg !553
  %186 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !555
  call void @Hacl_Hash_SHA1_init(i32* noundef %186), !dbg !556
  call void @llvm.dbg.declare(metadata i32* %38, metadata !557, metadata !DIExpression()), !dbg !558
  store i32 64, i32* %38, align 4, !dbg !558
  call void @llvm.dbg.declare(metadata i32* %39, metadata !559, metadata !DIExpression()), !dbg !560
  %187 = load i32, i32* %38, align 4, !dbg !561
  %188 = udiv i32 20, %187, !dbg !562
  store i32 %188, i32* %39, align 4, !dbg !560
  call void @llvm.dbg.declare(metadata i32* %40, metadata !563, metadata !DIExpression()), !dbg !564
  %189 = load i32, i32* %38, align 4, !dbg !565
  %190 = urem i32 20, %189, !dbg !566
  store i32 %190, i32* %40, align 4, !dbg !564
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %41, metadata !567, metadata !DIExpression()), !dbg !568
  %191 = load i32, i32* %39, align 4, !dbg !569
  %192 = icmp ugt i32 %191, 0, !dbg !571
  br i1 %192, label %193, label %208, !dbg !572

193:                                              ; preds = %182
  %194 = load i32, i32* %40, align 4, !dbg !573
  %195 = icmp eq i32 %194, 0, !dbg !574
  br i1 %195, label %196, label %208, !dbg !575

196:                                              ; preds = %193
  call void @llvm.dbg.declare(metadata i32* %42, metadata !576, metadata !DIExpression()), !dbg !578
  %197 = load i32, i32* %39, align 4, !dbg !579
  %198 = sub i32 %197, 1, !dbg !580
  store i32 %198, i32* %42, align 4, !dbg !578
  %199 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %43, i32 0, i32 0, !dbg !581
  %200 = load i32, i32* %42, align 4, !dbg !582
  store i32 %200, i32* %199, align 4, !dbg !581
  %201 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %43, i32 0, i32 1, !dbg !581
  %202 = load i32, i32* %42, align 4, !dbg !583
  %203 = load i32, i32* %38, align 4, !dbg !584
  %204 = mul i32 %202, %203, !dbg !585
  %205 = sub i32 20, %204, !dbg !586
  store i32 %205, i32* %201, align 4, !dbg !581
  %206 = bitcast %struct.K___uint32_t_uint32_t_s* %41 to i8*, !dbg !587
  %207 = bitcast %struct.K___uint32_t_uint32_t_s* %43 to i8*, !dbg !587
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %206, i8* align 4 %207, i32 8, i1 false), !dbg !587
  br label %215, !dbg !588

208:                                              ; preds = %193, %182
  %209 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %44, i32 0, i32 0, !dbg !589
  %210 = load i32, i32* %39, align 4, !dbg !591
  store i32 %210, i32* %209, align 4, !dbg !589
  %211 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %44, i32 0, i32 1, !dbg !589
  %212 = load i32, i32* %40, align 4, !dbg !592
  store i32 %212, i32* %211, align 4, !dbg !589
  %213 = bitcast %struct.K___uint32_t_uint32_t_s* %41 to i8*, !dbg !593
  %214 = bitcast %struct.K___uint32_t_uint32_t_s* %44 to i8*, !dbg !593
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %213, i8* align 4 %214, i32 8, i1 false), !dbg !593
  br label %215

215:                                              ; preds = %208, %196
  call void @llvm.dbg.declare(metadata i32* %45, metadata !594, metadata !DIExpression()), !dbg !595
  %216 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %41, i32 0, i32 0, !dbg !596
  %217 = load i32, i32* %216, align 4, !dbg !596
  store i32 %217, i32* %45, align 4, !dbg !595
  call void @llvm.dbg.declare(metadata i32* %46, metadata !597, metadata !DIExpression()), !dbg !598
  %218 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %41, i32 0, i32 1, !dbg !599
  %219 = load i32, i32* %218, align 4, !dbg !599
  store i32 %219, i32* %46, align 4, !dbg !598
  call void @llvm.dbg.declare(metadata i32* %47, metadata !600, metadata !DIExpression()), !dbg !601
  %220 = load i32, i32* %45, align 4, !dbg !602
  %221 = load i32, i32* %38, align 4, !dbg !603
  %222 = mul i32 %220, %221, !dbg !604
  store i32 %222, i32* %47, align 4, !dbg !601
  call void @llvm.dbg.declare(metadata i8** %48, metadata !605, metadata !DIExpression()), !dbg !606
  %223 = load i8*, i8** %37, align 4, !dbg !607
  store i8* %223, i8** %48, align 4, !dbg !606
  call void @llvm.dbg.declare(metadata i8** %49, metadata !608, metadata !DIExpression()), !dbg !609
  %224 = load i8*, i8** %37, align 4, !dbg !610
  %225 = load i32, i32* %47, align 4, !dbg !611
  %226 = getelementptr inbounds i8, i8* %224, i32 %225, !dbg !612
  store i8* %226, i8** %49, align 4, !dbg !609
  %227 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !613
  %228 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !614
  call void @Hacl_Hash_SHA1_update_multi(i32* noundef %227, i8* noundef %228, i32 noundef 1), !dbg !615
  %229 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !616
  %230 = load i8*, i8** %48, align 4, !dbg !617
  %231 = load i32, i32* %45, align 4, !dbg !618
  call void @Hacl_Hash_SHA1_update_multi(i32* noundef %229, i8* noundef %230, i32 noundef %231), !dbg !619
  %232 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !620
  %233 = load i32, i32* %47, align 4, !dbg !621
  %234 = zext i32 %233 to i64, !dbg !622
  %235 = add i64 64, %234, !dbg !623
  %236 = load i8*, i8** %49, align 4, !dbg !624
  %237 = load i32, i32* %46, align 4, !dbg !625
  call void @Hacl_Hash_SHA1_update_last(i32* noundef %232, i64 noundef %235, i8* noundef %236, i32 noundef %237), !dbg !626
  %238 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i32 0, i32 0, !dbg !627
  %239 = load i8*, i8** %6, align 4, !dbg !628
  call void @Hacl_Hash_SHA1_finish(i32* noundef %238, i8* noundef %239), !dbg !629
  ret void, !dbg !630
}

declare dso_local void @Hacl_Hash_SHA1_hash_oneshot(i8* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_SHA1_update_last(i32* noundef, i64 noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_SHA1_update_multi(i32* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_SHA1_finish(i32* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA1_init(i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha2_224(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !631 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [64 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [8 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 4
  %42 = alloca i8*, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %47 = alloca i32, align 4
  %48 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %49 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i8*, align 4
  %54 = alloca i8*, align 4
  %55 = alloca i8*, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %60 = alloca i32, align 4
  %61 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %62 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i8*, align 4
  %67 = alloca i8*, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !632, metadata !DIExpression()), !dbg !633
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !636, metadata !DIExpression()), !dbg !637
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !638, metadata !DIExpression()), !dbg !639
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !640, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !642, metadata !DIExpression()), !dbg !643
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !644
  call void @llvm.memset.p0i8.i32(i8* align 1 %68, i8 0, i32 64, i1 false), !dbg !644
  call void @llvm.dbg.declare(metadata i8** %12, metadata !645, metadata !DIExpression()), !dbg !646
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !647
  store i8* %69, i8** %12, align 4, !dbg !646
  call void @llvm.dbg.declare(metadata i32* %13, metadata !648, metadata !DIExpression()), !dbg !649
  %70 = load i32, i32* %8, align 4, !dbg !650
  %71 = icmp ule i32 %70, 64, !dbg !652
  br i1 %71, label %72, label %74, !dbg !653

72:                                               ; preds = %5
  %73 = load i32, i32* %8, align 4, !dbg !654
  store i32 %73, i32* %13, align 4, !dbg !656
  br label %75, !dbg !657

74:                                               ; preds = %5
  store i32 28, i32* %13, align 4, !dbg !658
  br label %75

75:                                               ; preds = %74, %72
  call void @llvm.dbg.declare(metadata i8** %14, metadata !660, metadata !DIExpression()), !dbg !661
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !662
  %77 = load i32, i32* %13, align 4, !dbg !663
  %78 = getelementptr inbounds i8, i8* %76, i32 %77, !dbg !664
  store i8* %78, i8** %14, align 4, !dbg !661
  %79 = load i8*, i8** %14, align 4, !dbg !665
  %80 = load i32, i32* %8, align 4, !dbg !666
  %81 = icmp ule i32 %80, 64, !dbg !668
  br i1 %81, label %82, label %87, !dbg !669

82:                                               ; preds = %75
  %83 = load i8*, i8** %12, align 4, !dbg !670
  %84 = load i8*, i8** %7, align 4, !dbg !672
  %85 = load i32, i32* %8, align 4, !dbg !673
  %86 = mul i32 %85, 1, !dbg !674
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %83, i8* align 1 %84, i32 %86, i1 false), !dbg !675
  br label %91, !dbg !676

87:                                               ; preds = %75
  %88 = load i8*, i8** %12, align 4, !dbg !677
  %89 = load i8*, i8** %7, align 4, !dbg !679
  %90 = load i32, i32* %8, align 4, !dbg !680
  call void @Hacl_Hash_SHA2_hash_224(i8* noundef %88, i8* noundef %89, i32 noundef %90), !dbg !681
  br label %91

91:                                               ; preds = %87, %82
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !682, metadata !DIExpression()), !dbg !683
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !684
  call void @llvm.memset.p0i8.i32(i8* align 1 %92, i8 54, i32 64, i1 false), !dbg !684
  call void @llvm.dbg.declare(metadata i32* %16, metadata !685, metadata !DIExpression()), !dbg !687
  store i32 0, i32* %16, align 4, !dbg !687
  br label %93, !dbg !688

93:                                               ; preds = %111, %91
  %94 = load i32, i32* %16, align 4, !dbg !689
  %95 = icmp ult i32 %94, 64, !dbg !691
  br i1 %95, label %96, label %114, !dbg !692

96:                                               ; preds = %93
  call void @llvm.dbg.declare(metadata i8* %17, metadata !693, metadata !DIExpression()), !dbg !695
  %97 = load i32, i32* %16, align 4, !dbg !696
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %97, !dbg !697
  %99 = load i8, i8* %98, align 1, !dbg !697
  store i8 %99, i8* %17, align 1, !dbg !695
  call void @llvm.dbg.declare(metadata i8* %18, metadata !698, metadata !DIExpression()), !dbg !699
  %100 = load i32, i32* %16, align 4, !dbg !700
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %100, !dbg !701
  %102 = load i8, i8* %101, align 1, !dbg !701
  store i8 %102, i8* %18, align 1, !dbg !699
  %103 = load i8, i8* %17, align 1, !dbg !702
  %104 = zext i8 %103 to i32, !dbg !703
  %105 = load i8, i8* %18, align 1, !dbg !704
  %106 = zext i8 %105 to i32, !dbg !705
  %107 = xor i32 %104, %106, !dbg !706
  %108 = trunc i32 %107 to i8, !dbg !703
  %109 = load i32, i32* %16, align 4, !dbg !707
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %109, !dbg !708
  store i8 %108, i8* %110, align 1, !dbg !709
  br label %111, !dbg !710

111:                                              ; preds = %96
  %112 = load i32, i32* %16, align 4, !dbg !711
  %113 = add i32 %112, 1, !dbg !711
  store i32 %113, i32* %16, align 4, !dbg !711
  br label %93, !dbg !712, !llvm.loop !713

114:                                              ; preds = %93
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !715, metadata !DIExpression()), !dbg !716
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !717
  call void @llvm.memset.p0i8.i32(i8* align 1 %115, i8 92, i32 64, i1 false), !dbg !717
  call void @llvm.dbg.declare(metadata i32* %20, metadata !718, metadata !DIExpression()), !dbg !720
  store i32 0, i32* %20, align 4, !dbg !720
  br label %116, !dbg !721

116:                                              ; preds = %134, %114
  %117 = load i32, i32* %20, align 4, !dbg !722
  %118 = icmp ult i32 %117, 64, !dbg !724
  br i1 %118, label %119, label %137, !dbg !725

119:                                              ; preds = %116
  call void @llvm.dbg.declare(metadata i8* %21, metadata !726, metadata !DIExpression()), !dbg !728
  %120 = load i32, i32* %20, align 4, !dbg !729
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %120, !dbg !730
  %122 = load i8, i8* %121, align 1, !dbg !730
  store i8 %122, i8* %21, align 1, !dbg !728
  call void @llvm.dbg.declare(metadata i8* %22, metadata !731, metadata !DIExpression()), !dbg !732
  %123 = load i32, i32* %20, align 4, !dbg !733
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %123, !dbg !734
  %125 = load i8, i8* %124, align 1, !dbg !734
  store i8 %125, i8* %22, align 1, !dbg !732
  %126 = load i8, i8* %21, align 1, !dbg !735
  %127 = zext i8 %126 to i32, !dbg !736
  %128 = load i8, i8* %22, align 1, !dbg !737
  %129 = zext i8 %128 to i32, !dbg !738
  %130 = xor i32 %127, %129, !dbg !739
  %131 = trunc i32 %130 to i8, !dbg !736
  %132 = load i32, i32* %20, align 4, !dbg !740
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %132, !dbg !741
  store i8 %131, i8* %133, align 1, !dbg !742
  br label %134, !dbg !743

134:                                              ; preds = %119
  %135 = load i32, i32* %20, align 4, !dbg !744
  %136 = add i32 %135, 1, !dbg !744
  store i32 %136, i32* %20, align 4, !dbg !744
  br label %116, !dbg !745, !llvm.loop !746

137:                                              ; preds = %116
  call void @llvm.dbg.declare(metadata [8 x i32]* %23, metadata !748, metadata !DIExpression()), !dbg !750
  %138 = bitcast [8 x i32]* %23 to i8*, !dbg !750
  call void @llvm.memset.p0i8.i32(i8* align 4 %138, i8 0, i32 32, i1 false), !dbg !750
  br label %139, !dbg !751

139:                                              ; preds = %137
  call void @llvm.dbg.declare(metadata i32* %24, metadata !752, metadata !DIExpression()), !dbg !754
  store i32 0, i32* %24, align 4, !dbg !754
  call void @llvm.dbg.declare(metadata i32** %25, metadata !755, metadata !DIExpression()), !dbg !758
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !758
  store i32* %140, i32** %25, align 4, !dbg !758
  call void @llvm.dbg.declare(metadata i32* %26, metadata !759, metadata !DIExpression()), !dbg !758
  %141 = load i32, i32* %24, align 4, !dbg !758
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i32 0, i32 %141, !dbg !758
  %143 = load i32, i32* %142, align 4, !dbg !758
  store i32 %143, i32* %26, align 4, !dbg !758
  %144 = load i32, i32* %26, align 4, !dbg !758
  %145 = load i32*, i32** %25, align 4, !dbg !758
  %146 = load i32, i32* %24, align 4, !dbg !758
  %147 = getelementptr inbounds i32, i32* %145, i32 %146, !dbg !758
  store i32 %144, i32* %147, align 4, !dbg !758
  %148 = load i32, i32* %24, align 4, !dbg !758
  %149 = add i32 %148, 1, !dbg !758
  store i32 %149, i32* %24, align 4, !dbg !758
  %150 = load i32, i32* %24, align 4, !dbg !758
  call void @llvm.dbg.declare(metadata i32** %27, metadata !760, metadata !DIExpression()), !dbg !762
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !762
  store i32* %151, i32** %27, align 4, !dbg !762
  call void @llvm.dbg.declare(metadata i32* %28, metadata !763, metadata !DIExpression()), !dbg !762
  %152 = load i32, i32* %24, align 4, !dbg !762
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i32 0, i32 %152, !dbg !762
  %154 = load i32, i32* %153, align 4, !dbg !762
  store i32 %154, i32* %28, align 4, !dbg !762
  %155 = load i32, i32* %28, align 4, !dbg !762
  %156 = load i32*, i32** %27, align 4, !dbg !762
  %157 = load i32, i32* %24, align 4, !dbg !762
  %158 = getelementptr inbounds i32, i32* %156, i32 %157, !dbg !762
  store i32 %155, i32* %158, align 4, !dbg !762
  %159 = load i32, i32* %24, align 4, !dbg !762
  %160 = add i32 %159, 1, !dbg !762
  store i32 %160, i32* %24, align 4, !dbg !762
  %161 = load i32, i32* %24, align 4, !dbg !762
  call void @llvm.dbg.declare(metadata i32** %29, metadata !764, metadata !DIExpression()), !dbg !766
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !766
  store i32* %162, i32** %29, align 4, !dbg !766
  call void @llvm.dbg.declare(metadata i32* %30, metadata !767, metadata !DIExpression()), !dbg !766
  %163 = load i32, i32* %24, align 4, !dbg !766
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i32 0, i32 %163, !dbg !766
  %165 = load i32, i32* %164, align 4, !dbg !766
  store i32 %165, i32* %30, align 4, !dbg !766
  %166 = load i32, i32* %30, align 4, !dbg !766
  %167 = load i32*, i32** %29, align 4, !dbg !766
  %168 = load i32, i32* %24, align 4, !dbg !766
  %169 = getelementptr inbounds i32, i32* %167, i32 %168, !dbg !766
  store i32 %166, i32* %169, align 4, !dbg !766
  %170 = load i32, i32* %24, align 4, !dbg !766
  %171 = add i32 %170, 1, !dbg !766
  store i32 %171, i32* %24, align 4, !dbg !766
  %172 = load i32, i32* %24, align 4, !dbg !766
  call void @llvm.dbg.declare(metadata i32** %31, metadata !768, metadata !DIExpression()), !dbg !770
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !770
  store i32* %173, i32** %31, align 4, !dbg !770
  call void @llvm.dbg.declare(metadata i32* %32, metadata !771, metadata !DIExpression()), !dbg !770
  %174 = load i32, i32* %24, align 4, !dbg !770
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i32 0, i32 %174, !dbg !770
  %176 = load i32, i32* %175, align 4, !dbg !770
  store i32 %176, i32* %32, align 4, !dbg !770
  %177 = load i32, i32* %32, align 4, !dbg !770
  %178 = load i32*, i32** %31, align 4, !dbg !770
  %179 = load i32, i32* %24, align 4, !dbg !770
  %180 = getelementptr inbounds i32, i32* %178, i32 %179, !dbg !770
  store i32 %177, i32* %180, align 4, !dbg !770
  %181 = load i32, i32* %24, align 4, !dbg !770
  %182 = add i32 %181, 1, !dbg !770
  store i32 %182, i32* %24, align 4, !dbg !770
  %183 = load i32, i32* %24, align 4, !dbg !770
  call void @llvm.dbg.declare(metadata i32** %33, metadata !772, metadata !DIExpression()), !dbg !774
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !774
  store i32* %184, i32** %33, align 4, !dbg !774
  call void @llvm.dbg.declare(metadata i32* %34, metadata !775, metadata !DIExpression()), !dbg !774
  %185 = load i32, i32* %24, align 4, !dbg !774
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i32 0, i32 %185, !dbg !774
  %187 = load i32, i32* %186, align 4, !dbg !774
  store i32 %187, i32* %34, align 4, !dbg !774
  %188 = load i32, i32* %34, align 4, !dbg !774
  %189 = load i32*, i32** %33, align 4, !dbg !774
  %190 = load i32, i32* %24, align 4, !dbg !774
  %191 = getelementptr inbounds i32, i32* %189, i32 %190, !dbg !774
  store i32 %188, i32* %191, align 4, !dbg !774
  %192 = load i32, i32* %24, align 4, !dbg !774
  %193 = add i32 %192, 1, !dbg !774
  store i32 %193, i32* %24, align 4, !dbg !774
  %194 = load i32, i32* %24, align 4, !dbg !774
  call void @llvm.dbg.declare(metadata i32** %35, metadata !776, metadata !DIExpression()), !dbg !778
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !778
  store i32* %195, i32** %35, align 4, !dbg !778
  call void @llvm.dbg.declare(metadata i32* %36, metadata !779, metadata !DIExpression()), !dbg !778
  %196 = load i32, i32* %24, align 4, !dbg !778
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i32 0, i32 %196, !dbg !778
  %198 = load i32, i32* %197, align 4, !dbg !778
  store i32 %198, i32* %36, align 4, !dbg !778
  %199 = load i32, i32* %36, align 4, !dbg !778
  %200 = load i32*, i32** %35, align 4, !dbg !778
  %201 = load i32, i32* %24, align 4, !dbg !778
  %202 = getelementptr inbounds i32, i32* %200, i32 %201, !dbg !778
  store i32 %199, i32* %202, align 4, !dbg !778
  %203 = load i32, i32* %24, align 4, !dbg !778
  %204 = add i32 %203, 1, !dbg !778
  store i32 %204, i32* %24, align 4, !dbg !778
  %205 = load i32, i32* %24, align 4, !dbg !778
  call void @llvm.dbg.declare(metadata i32** %37, metadata !780, metadata !DIExpression()), !dbg !782
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !782
  store i32* %206, i32** %37, align 4, !dbg !782
  call void @llvm.dbg.declare(metadata i32* %38, metadata !783, metadata !DIExpression()), !dbg !782
  %207 = load i32, i32* %24, align 4, !dbg !782
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i32 0, i32 %207, !dbg !782
  %209 = load i32, i32* %208, align 4, !dbg !782
  store i32 %209, i32* %38, align 4, !dbg !782
  %210 = load i32, i32* %38, align 4, !dbg !782
  %211 = load i32*, i32** %37, align 4, !dbg !782
  %212 = load i32, i32* %24, align 4, !dbg !782
  %213 = getelementptr inbounds i32, i32* %211, i32 %212, !dbg !782
  store i32 %210, i32* %213, align 4, !dbg !782
  %214 = load i32, i32* %24, align 4, !dbg !782
  %215 = add i32 %214, 1, !dbg !782
  store i32 %215, i32* %24, align 4, !dbg !782
  %216 = load i32, i32* %24, align 4, !dbg !782
  call void @llvm.dbg.declare(metadata i32** %39, metadata !784, metadata !DIExpression()), !dbg !786
  %217 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !786
  store i32* %217, i32** %39, align 4, !dbg !786
  call void @llvm.dbg.declare(metadata i32* %40, metadata !787, metadata !DIExpression()), !dbg !786
  %218 = load i32, i32* %24, align 4, !dbg !786
  %219 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i32 0, i32 %218, !dbg !786
  %220 = load i32, i32* %219, align 4, !dbg !786
  store i32 %220, i32* %40, align 4, !dbg !786
  %221 = load i32, i32* %40, align 4, !dbg !786
  %222 = load i32*, i32** %39, align 4, !dbg !786
  %223 = load i32, i32* %24, align 4, !dbg !786
  %224 = getelementptr inbounds i32, i32* %222, i32 %223, !dbg !786
  store i32 %221, i32* %224, align 4, !dbg !786
  %225 = load i32, i32* %24, align 4, !dbg !786
  %226 = add i32 %225, 1, !dbg !786
  store i32 %226, i32* %24, align 4, !dbg !786
  %227 = load i32, i32* %24, align 4, !dbg !786
  br label %228, !dbg !754

228:                                              ; preds = %139
  call void @llvm.dbg.declare(metadata i32** %41, metadata !788, metadata !DIExpression()), !dbg !789
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !790
  store i32* %229, i32** %41, align 4, !dbg !789
  call void @llvm.dbg.declare(metadata i8** %42, metadata !791, metadata !DIExpression()), !dbg !792
  %230 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !793
  store i8* %230, i8** %42, align 4, !dbg !792
  %231 = load i32, i32* %10, align 4, !dbg !794
  %232 = icmp eq i32 %231, 0, !dbg !796
  br i1 %232, label %233, label %236, !dbg !797

233:                                              ; preds = %228
  %234 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !798
  %235 = load i32*, i32** %41, align 4, !dbg !800
  call void @Hacl_Hash_SHA2_sha224_update_last(i64 noundef 64, i32 noundef 64, i8* noundef %234, i32* noundef %235), !dbg !801
  br label %295, !dbg !802

236:                                              ; preds = %228
  call void @llvm.dbg.declare(metadata i32* %43, metadata !803, metadata !DIExpression()), !dbg !805
  store i32 64, i32* %43, align 4, !dbg !805
  call void @llvm.dbg.declare(metadata i32* %44, metadata !806, metadata !DIExpression()), !dbg !807
  %237 = load i32, i32* %10, align 4, !dbg !808
  %238 = load i32, i32* %43, align 4, !dbg !809
  %239 = udiv i32 %237, %238, !dbg !810
  store i32 %239, i32* %44, align 4, !dbg !807
  call void @llvm.dbg.declare(metadata i32* %45, metadata !811, metadata !DIExpression()), !dbg !812
  %240 = load i32, i32* %10, align 4, !dbg !813
  %241 = load i32, i32* %43, align 4, !dbg !814
  %242 = urem i32 %240, %241, !dbg !815
  store i32 %242, i32* %45, align 4, !dbg !812
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %46, metadata !816, metadata !DIExpression()), !dbg !817
  %243 = load i32, i32* %44, align 4, !dbg !818
  %244 = icmp ugt i32 %243, 0, !dbg !820
  br i1 %244, label %245, label %261, !dbg !821

245:                                              ; preds = %236
  %246 = load i32, i32* %45, align 4, !dbg !822
  %247 = icmp eq i32 %246, 0, !dbg !823
  br i1 %247, label %248, label %261, !dbg !824

248:                                              ; preds = %245
  call void @llvm.dbg.declare(metadata i32* %47, metadata !825, metadata !DIExpression()), !dbg !827
  %249 = load i32, i32* %44, align 4, !dbg !828
  %250 = sub i32 %249, 1, !dbg !829
  store i32 %250, i32* %47, align 4, !dbg !827
  %251 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !830
  %252 = load i32, i32* %47, align 4, !dbg !831
  store i32 %252, i32* %251, align 4, !dbg !830
  %253 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !830
  %254 = load i32, i32* %10, align 4, !dbg !832
  %255 = load i32, i32* %47, align 4, !dbg !833
  %256 = load i32, i32* %43, align 4, !dbg !834
  %257 = mul i32 %255, %256, !dbg !835
  %258 = sub i32 %254, %257, !dbg !836
  store i32 %258, i32* %253, align 4, !dbg !830
  %259 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !837
  %260 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !837
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %259, i8* align 4 %260, i32 8, i1 false), !dbg !837
  br label %268, !dbg !838

261:                                              ; preds = %245, %236
  %262 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !839
  %263 = load i32, i32* %44, align 4, !dbg !841
  store i32 %263, i32* %262, align 4, !dbg !839
  %264 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !839
  %265 = load i32, i32* %45, align 4, !dbg !842
  store i32 %265, i32* %264, align 4, !dbg !839
  %266 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !843
  %267 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !843
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %266, i8* align 4 %267, i32 8, i1 false), !dbg !843
  br label %268

268:                                              ; preds = %261, %248
  call void @llvm.dbg.declare(metadata i32* %50, metadata !844, metadata !DIExpression()), !dbg !845
  %269 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 0, !dbg !846
  %270 = load i32, i32* %269, align 4, !dbg !846
  store i32 %270, i32* %50, align 4, !dbg !845
  call void @llvm.dbg.declare(metadata i32* %51, metadata !847, metadata !DIExpression()), !dbg !848
  %271 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 1, !dbg !849
  %272 = load i32, i32* %271, align 4, !dbg !849
  store i32 %272, i32* %51, align 4, !dbg !848
  call void @llvm.dbg.declare(metadata i32* %52, metadata !850, metadata !DIExpression()), !dbg !851
  %273 = load i32, i32* %50, align 4, !dbg !852
  %274 = load i32, i32* %43, align 4, !dbg !853
  %275 = mul i32 %273, %274, !dbg !854
  store i32 %275, i32* %52, align 4, !dbg !851
  call void @llvm.dbg.declare(metadata i8** %53, metadata !855, metadata !DIExpression()), !dbg !856
  %276 = load i8*, i8** %9, align 4, !dbg !857
  store i8* %276, i8** %53, align 4, !dbg !856
  call void @llvm.dbg.declare(metadata i8** %54, metadata !858, metadata !DIExpression()), !dbg !859
  %277 = load i8*, i8** %9, align 4, !dbg !860
  %278 = load i32, i32* %52, align 4, !dbg !861
  %279 = getelementptr inbounds i8, i8* %277, i32 %278, !dbg !862
  store i8* %279, i8** %54, align 4, !dbg !859
  %280 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !863
  %281 = load i32*, i32** %41, align 4, !dbg !864
  call void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef 64, i8* noundef %280, i32* noundef %281), !dbg !865
  %282 = load i32, i32* %50, align 4, !dbg !866
  %283 = mul i32 %282, 64, !dbg !867
  %284 = load i8*, i8** %53, align 4, !dbg !868
  %285 = load i32*, i32** %41, align 4, !dbg !869
  call void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef %283, i8* noundef %284, i32* noundef %285), !dbg !870
  %286 = load i32, i32* %52, align 4, !dbg !871
  %287 = zext i32 %286 to i64, !dbg !872
  %288 = add i64 64, %287, !dbg !873
  %289 = load i32, i32* %51, align 4, !dbg !874
  %290 = zext i32 %289 to i64, !dbg !875
  %291 = add i64 %288, %290, !dbg !876
  %292 = load i32, i32* %51, align 4, !dbg !877
  %293 = load i8*, i8** %54, align 4, !dbg !878
  %294 = load i32*, i32** %41, align 4, !dbg !879
  call void @Hacl_Hash_SHA2_sha224_update_last(i64 noundef %291, i32 noundef %292, i8* noundef %293, i32* noundef %294), !dbg !880
  br label %295

295:                                              ; preds = %268, %233
  %296 = load i32*, i32** %41, align 4, !dbg !881
  %297 = load i8*, i8** %42, align 4, !dbg !882
  call void @Hacl_Hash_SHA2_sha224_finish(i32* noundef %296, i8* noundef %297), !dbg !883
  call void @llvm.dbg.declare(metadata i8** %55, metadata !884, metadata !DIExpression()), !dbg !885
  %298 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !886
  store i8* %298, i8** %55, align 4, !dbg !885
  %299 = load i32*, i32** %41, align 4, !dbg !887
  call void @Hacl_Hash_SHA2_sha224_init(i32* noundef %299), !dbg !888
  call void @llvm.dbg.declare(metadata i32* %56, metadata !889, metadata !DIExpression()), !dbg !890
  store i32 64, i32* %56, align 4, !dbg !890
  call void @llvm.dbg.declare(metadata i32* %57, metadata !891, metadata !DIExpression()), !dbg !892
  %300 = load i32, i32* %56, align 4, !dbg !893
  %301 = udiv i32 28, %300, !dbg !894
  store i32 %301, i32* %57, align 4, !dbg !892
  call void @llvm.dbg.declare(metadata i32* %58, metadata !895, metadata !DIExpression()), !dbg !896
  %302 = load i32, i32* %56, align 4, !dbg !897
  %303 = urem i32 28, %302, !dbg !898
  store i32 %303, i32* %58, align 4, !dbg !896
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %59, metadata !899, metadata !DIExpression()), !dbg !900
  %304 = load i32, i32* %57, align 4, !dbg !901
  %305 = icmp ugt i32 %304, 0, !dbg !903
  br i1 %305, label %306, label %321, !dbg !904

306:                                              ; preds = %295
  %307 = load i32, i32* %58, align 4, !dbg !905
  %308 = icmp eq i32 %307, 0, !dbg !906
  br i1 %308, label %309, label %321, !dbg !907

309:                                              ; preds = %306
  call void @llvm.dbg.declare(metadata i32* %60, metadata !908, metadata !DIExpression()), !dbg !910
  %310 = load i32, i32* %57, align 4, !dbg !911
  %311 = sub i32 %310, 1, !dbg !912
  store i32 %311, i32* %60, align 4, !dbg !910
  %312 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 0, !dbg !913
  %313 = load i32, i32* %60, align 4, !dbg !914
  store i32 %313, i32* %312, align 4, !dbg !913
  %314 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 1, !dbg !913
  %315 = load i32, i32* %60, align 4, !dbg !915
  %316 = load i32, i32* %56, align 4, !dbg !916
  %317 = mul i32 %315, %316, !dbg !917
  %318 = sub i32 28, %317, !dbg !918
  store i32 %318, i32* %314, align 4, !dbg !913
  %319 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !919
  %320 = bitcast %struct.K___uint32_t_uint32_t_s* %61 to i8*, !dbg !919
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %319, i8* align 4 %320, i32 8, i1 false), !dbg !919
  br label %328, !dbg !920

321:                                              ; preds = %306, %295
  %322 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 0, !dbg !921
  %323 = load i32, i32* %57, align 4, !dbg !923
  store i32 %323, i32* %322, align 4, !dbg !921
  %324 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 1, !dbg !921
  %325 = load i32, i32* %58, align 4, !dbg !924
  store i32 %325, i32* %324, align 4, !dbg !921
  %326 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !925
  %327 = bitcast %struct.K___uint32_t_uint32_t_s* %62 to i8*, !dbg !925
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %326, i8* align 4 %327, i32 8, i1 false), !dbg !925
  br label %328

328:                                              ; preds = %321, %309
  call void @llvm.dbg.declare(metadata i32* %63, metadata !926, metadata !DIExpression()), !dbg !927
  %329 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 0, !dbg !928
  %330 = load i32, i32* %329, align 4, !dbg !928
  store i32 %330, i32* %63, align 4, !dbg !927
  call void @llvm.dbg.declare(metadata i32* %64, metadata !929, metadata !DIExpression()), !dbg !930
  %331 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 1, !dbg !931
  %332 = load i32, i32* %331, align 4, !dbg !931
  store i32 %332, i32* %64, align 4, !dbg !930
  call void @llvm.dbg.declare(metadata i32* %65, metadata !932, metadata !DIExpression()), !dbg !933
  %333 = load i32, i32* %63, align 4, !dbg !934
  %334 = load i32, i32* %56, align 4, !dbg !935
  %335 = mul i32 %333, %334, !dbg !936
  store i32 %335, i32* %65, align 4, !dbg !933
  call void @llvm.dbg.declare(metadata i8** %66, metadata !937, metadata !DIExpression()), !dbg !938
  %336 = load i8*, i8** %55, align 4, !dbg !939
  store i8* %336, i8** %66, align 4, !dbg !938
  call void @llvm.dbg.declare(metadata i8** %67, metadata !940, metadata !DIExpression()), !dbg !941
  %337 = load i8*, i8** %55, align 4, !dbg !942
  %338 = load i32, i32* %65, align 4, !dbg !943
  %339 = getelementptr inbounds i8, i8* %337, i32 %338, !dbg !944
  store i8* %339, i8** %67, align 4, !dbg !941
  %340 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !945
  %341 = load i32*, i32** %41, align 4, !dbg !946
  call void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef 64, i8* noundef %340, i32* noundef %341), !dbg !947
  %342 = load i32, i32* %63, align 4, !dbg !948
  %343 = mul i32 %342, 64, !dbg !949
  %344 = load i8*, i8** %66, align 4, !dbg !950
  %345 = load i32*, i32** %41, align 4, !dbg !951
  call void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef %343, i8* noundef %344, i32* noundef %345), !dbg !952
  %346 = load i32, i32* %65, align 4, !dbg !953
  %347 = zext i32 %346 to i64, !dbg !954
  %348 = add i64 64, %347, !dbg !955
  %349 = load i32, i32* %64, align 4, !dbg !956
  %350 = zext i32 %349 to i64, !dbg !957
  %351 = add i64 %348, %350, !dbg !958
  %352 = load i32, i32* %64, align 4, !dbg !959
  %353 = load i8*, i8** %67, align 4, !dbg !960
  %354 = load i32*, i32** %41, align 4, !dbg !961
  call void @Hacl_Hash_SHA2_sha224_update_last(i64 noundef %351, i32 noundef %352, i8* noundef %353, i32* noundef %354), !dbg !962
  %355 = load i32*, i32** %41, align 4, !dbg !963
  %356 = load i8*, i8** %6, align 4, !dbg !964
  call void @Hacl_Hash_SHA2_sha224_finish(i32* noundef %355, i8* noundef %356), !dbg !965
  ret void, !dbg !966
}

declare dso_local void @Hacl_Hash_SHA2_hash_224(i8* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha224_update_last(i64 noundef, i32 noundef, i8* noundef, i32* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef, i8* noundef, i32* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha224_finish(i32* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha224_init(i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha2_256(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !967 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [64 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [8 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 4
  %42 = alloca i8*, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %47 = alloca i32, align 4
  %48 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %49 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i8*, align 4
  %54 = alloca i8*, align 4
  %55 = alloca i8*, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %60 = alloca i32, align 4
  %61 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %62 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i8*, align 4
  %67 = alloca i8*, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !968, metadata !DIExpression()), !dbg !969
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !970, metadata !DIExpression()), !dbg !971
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !972, metadata !DIExpression()), !dbg !973
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !974, metadata !DIExpression()), !dbg !975
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !976, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !978, metadata !DIExpression()), !dbg !979
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !980
  call void @llvm.memset.p0i8.i32(i8* align 1 %68, i8 0, i32 64, i1 false), !dbg !980
  call void @llvm.dbg.declare(metadata i8** %12, metadata !981, metadata !DIExpression()), !dbg !982
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !983
  store i8* %69, i8** %12, align 4, !dbg !982
  call void @llvm.dbg.declare(metadata i32* %13, metadata !984, metadata !DIExpression()), !dbg !985
  %70 = load i32, i32* %8, align 4, !dbg !986
  %71 = icmp ule i32 %70, 64, !dbg !988
  br i1 %71, label %72, label %74, !dbg !989

72:                                               ; preds = %5
  %73 = load i32, i32* %8, align 4, !dbg !990
  store i32 %73, i32* %13, align 4, !dbg !992
  br label %75, !dbg !993

74:                                               ; preds = %5
  store i32 32, i32* %13, align 4, !dbg !994
  br label %75

75:                                               ; preds = %74, %72
  call void @llvm.dbg.declare(metadata i8** %14, metadata !996, metadata !DIExpression()), !dbg !997
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !998
  %77 = load i32, i32* %13, align 4, !dbg !999
  %78 = getelementptr inbounds i8, i8* %76, i32 %77, !dbg !1000
  store i8* %78, i8** %14, align 4, !dbg !997
  %79 = load i8*, i8** %14, align 4, !dbg !1001
  %80 = load i32, i32* %8, align 4, !dbg !1002
  %81 = icmp ule i32 %80, 64, !dbg !1004
  br i1 %81, label %82, label %87, !dbg !1005

82:                                               ; preds = %75
  %83 = load i8*, i8** %12, align 4, !dbg !1006
  %84 = load i8*, i8** %7, align 4, !dbg !1008
  %85 = load i32, i32* %8, align 4, !dbg !1009
  %86 = mul i32 %85, 1, !dbg !1010
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %83, i8* align 1 %84, i32 %86, i1 false), !dbg !1011
  br label %91, !dbg !1012

87:                                               ; preds = %75
  %88 = load i8*, i8** %12, align 4, !dbg !1013
  %89 = load i8*, i8** %7, align 4, !dbg !1015
  %90 = load i32, i32* %8, align 4, !dbg !1016
  call void @Hacl_Hash_SHA2_hash_256(i8* noundef %88, i8* noundef %89, i32 noundef %90), !dbg !1017
  br label %91

91:                                               ; preds = %87, %82
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !1018, metadata !DIExpression()), !dbg !1019
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !1020
  call void @llvm.memset.p0i8.i32(i8* align 1 %92, i8 54, i32 64, i1 false), !dbg !1020
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1021, metadata !DIExpression()), !dbg !1023
  store i32 0, i32* %16, align 4, !dbg !1023
  br label %93, !dbg !1024

93:                                               ; preds = %111, %91
  %94 = load i32, i32* %16, align 4, !dbg !1025
  %95 = icmp ult i32 %94, 64, !dbg !1027
  br i1 %95, label %96, label %114, !dbg !1028

96:                                               ; preds = %93
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1029, metadata !DIExpression()), !dbg !1031
  %97 = load i32, i32* %16, align 4, !dbg !1032
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %97, !dbg !1033
  %99 = load i8, i8* %98, align 1, !dbg !1033
  store i8 %99, i8* %17, align 1, !dbg !1031
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1034, metadata !DIExpression()), !dbg !1035
  %100 = load i32, i32* %16, align 4, !dbg !1036
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %100, !dbg !1037
  %102 = load i8, i8* %101, align 1, !dbg !1037
  store i8 %102, i8* %18, align 1, !dbg !1035
  %103 = load i8, i8* %17, align 1, !dbg !1038
  %104 = zext i8 %103 to i32, !dbg !1039
  %105 = load i8, i8* %18, align 1, !dbg !1040
  %106 = zext i8 %105 to i32, !dbg !1041
  %107 = xor i32 %104, %106, !dbg !1042
  %108 = trunc i32 %107 to i8, !dbg !1039
  %109 = load i32, i32* %16, align 4, !dbg !1043
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %109, !dbg !1044
  store i8 %108, i8* %110, align 1, !dbg !1045
  br label %111, !dbg !1046

111:                                              ; preds = %96
  %112 = load i32, i32* %16, align 4, !dbg !1047
  %113 = add i32 %112, 1, !dbg !1047
  store i32 %113, i32* %16, align 4, !dbg !1047
  br label %93, !dbg !1048, !llvm.loop !1049

114:                                              ; preds = %93
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !1051, metadata !DIExpression()), !dbg !1052
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !1053
  call void @llvm.memset.p0i8.i32(i8* align 1 %115, i8 92, i32 64, i1 false), !dbg !1053
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1054, metadata !DIExpression()), !dbg !1056
  store i32 0, i32* %20, align 4, !dbg !1056
  br label %116, !dbg !1057

116:                                              ; preds = %134, %114
  %117 = load i32, i32* %20, align 4, !dbg !1058
  %118 = icmp ult i32 %117, 64, !dbg !1060
  br i1 %118, label %119, label %137, !dbg !1061

119:                                              ; preds = %116
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1062, metadata !DIExpression()), !dbg !1064
  %120 = load i32, i32* %20, align 4, !dbg !1065
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %120, !dbg !1066
  %122 = load i8, i8* %121, align 1, !dbg !1066
  store i8 %122, i8* %21, align 1, !dbg !1064
  call void @llvm.dbg.declare(metadata i8* %22, metadata !1067, metadata !DIExpression()), !dbg !1068
  %123 = load i32, i32* %20, align 4, !dbg !1069
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %123, !dbg !1070
  %125 = load i8, i8* %124, align 1, !dbg !1070
  store i8 %125, i8* %22, align 1, !dbg !1068
  %126 = load i8, i8* %21, align 1, !dbg !1071
  %127 = zext i8 %126 to i32, !dbg !1072
  %128 = load i8, i8* %22, align 1, !dbg !1073
  %129 = zext i8 %128 to i32, !dbg !1074
  %130 = xor i32 %127, %129, !dbg !1075
  %131 = trunc i32 %130 to i8, !dbg !1072
  %132 = load i32, i32* %20, align 4, !dbg !1076
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %132, !dbg !1077
  store i8 %131, i8* %133, align 1, !dbg !1078
  br label %134, !dbg !1079

134:                                              ; preds = %119
  %135 = load i32, i32* %20, align 4, !dbg !1080
  %136 = add i32 %135, 1, !dbg !1080
  store i32 %136, i32* %20, align 4, !dbg !1080
  br label %116, !dbg !1081, !llvm.loop !1082

137:                                              ; preds = %116
  call void @llvm.dbg.declare(metadata [8 x i32]* %23, metadata !1084, metadata !DIExpression()), !dbg !1085
  %138 = bitcast [8 x i32]* %23 to i8*, !dbg !1085
  call void @llvm.memset.p0i8.i32(i8* align 4 %138, i8 0, i32 32, i1 false), !dbg !1085
  br label %139, !dbg !1086

139:                                              ; preds = %137
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1087, metadata !DIExpression()), !dbg !1089
  store i32 0, i32* %24, align 4, !dbg !1089
  call void @llvm.dbg.declare(metadata i32** %25, metadata !1090, metadata !DIExpression()), !dbg !1092
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !1092
  store i32* %140, i32** %25, align 4, !dbg !1092
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1093, metadata !DIExpression()), !dbg !1092
  %141 = load i32, i32* %24, align 4, !dbg !1092
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i32 0, i32 %141, !dbg !1092
  %143 = load i32, i32* %142, align 4, !dbg !1092
  store i32 %143, i32* %26, align 4, !dbg !1092
  %144 = load i32, i32* %26, align 4, !dbg !1092
  %145 = load i32*, i32** %25, align 4, !dbg !1092
  %146 = load i32, i32* %24, align 4, !dbg !1092
  %147 = getelementptr inbounds i32, i32* %145, i32 %146, !dbg !1092
  store i32 %144, i32* %147, align 4, !dbg !1092
  %148 = load i32, i32* %24, align 4, !dbg !1092
  %149 = add i32 %148, 1, !dbg !1092
  store i32 %149, i32* %24, align 4, !dbg !1092
  %150 = load i32, i32* %24, align 4, !dbg !1092
  call void @llvm.dbg.declare(metadata i32** %27, metadata !1094, metadata !DIExpression()), !dbg !1096
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !1096
  store i32* %151, i32** %27, align 4, !dbg !1096
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1097, metadata !DIExpression()), !dbg !1096
  %152 = load i32, i32* %24, align 4, !dbg !1096
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i32 0, i32 %152, !dbg !1096
  %154 = load i32, i32* %153, align 4, !dbg !1096
  store i32 %154, i32* %28, align 4, !dbg !1096
  %155 = load i32, i32* %28, align 4, !dbg !1096
  %156 = load i32*, i32** %27, align 4, !dbg !1096
  %157 = load i32, i32* %24, align 4, !dbg !1096
  %158 = getelementptr inbounds i32, i32* %156, i32 %157, !dbg !1096
  store i32 %155, i32* %158, align 4, !dbg !1096
  %159 = load i32, i32* %24, align 4, !dbg !1096
  %160 = add i32 %159, 1, !dbg !1096
  store i32 %160, i32* %24, align 4, !dbg !1096
  %161 = load i32, i32* %24, align 4, !dbg !1096
  call void @llvm.dbg.declare(metadata i32** %29, metadata !1098, metadata !DIExpression()), !dbg !1100
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !1100
  store i32* %162, i32** %29, align 4, !dbg !1100
  call void @llvm.dbg.declare(metadata i32* %30, metadata !1101, metadata !DIExpression()), !dbg !1100
  %163 = load i32, i32* %24, align 4, !dbg !1100
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i32 0, i32 %163, !dbg !1100
  %165 = load i32, i32* %164, align 4, !dbg !1100
  store i32 %165, i32* %30, align 4, !dbg !1100
  %166 = load i32, i32* %30, align 4, !dbg !1100
  %167 = load i32*, i32** %29, align 4, !dbg !1100
  %168 = load i32, i32* %24, align 4, !dbg !1100
  %169 = getelementptr inbounds i32, i32* %167, i32 %168, !dbg !1100
  store i32 %166, i32* %169, align 4, !dbg !1100
  %170 = load i32, i32* %24, align 4, !dbg !1100
  %171 = add i32 %170, 1, !dbg !1100
  store i32 %171, i32* %24, align 4, !dbg !1100
  %172 = load i32, i32* %24, align 4, !dbg !1100
  call void @llvm.dbg.declare(metadata i32** %31, metadata !1102, metadata !DIExpression()), !dbg !1104
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !1104
  store i32* %173, i32** %31, align 4, !dbg !1104
  call void @llvm.dbg.declare(metadata i32* %32, metadata !1105, metadata !DIExpression()), !dbg !1104
  %174 = load i32, i32* %24, align 4, !dbg !1104
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i32 0, i32 %174, !dbg !1104
  %176 = load i32, i32* %175, align 4, !dbg !1104
  store i32 %176, i32* %32, align 4, !dbg !1104
  %177 = load i32, i32* %32, align 4, !dbg !1104
  %178 = load i32*, i32** %31, align 4, !dbg !1104
  %179 = load i32, i32* %24, align 4, !dbg !1104
  %180 = getelementptr inbounds i32, i32* %178, i32 %179, !dbg !1104
  store i32 %177, i32* %180, align 4, !dbg !1104
  %181 = load i32, i32* %24, align 4, !dbg !1104
  %182 = add i32 %181, 1, !dbg !1104
  store i32 %182, i32* %24, align 4, !dbg !1104
  %183 = load i32, i32* %24, align 4, !dbg !1104
  call void @llvm.dbg.declare(metadata i32** %33, metadata !1106, metadata !DIExpression()), !dbg !1108
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !1108
  store i32* %184, i32** %33, align 4, !dbg !1108
  call void @llvm.dbg.declare(metadata i32* %34, metadata !1109, metadata !DIExpression()), !dbg !1108
  %185 = load i32, i32* %24, align 4, !dbg !1108
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i32 0, i32 %185, !dbg !1108
  %187 = load i32, i32* %186, align 4, !dbg !1108
  store i32 %187, i32* %34, align 4, !dbg !1108
  %188 = load i32, i32* %34, align 4, !dbg !1108
  %189 = load i32*, i32** %33, align 4, !dbg !1108
  %190 = load i32, i32* %24, align 4, !dbg !1108
  %191 = getelementptr inbounds i32, i32* %189, i32 %190, !dbg !1108
  store i32 %188, i32* %191, align 4, !dbg !1108
  %192 = load i32, i32* %24, align 4, !dbg !1108
  %193 = add i32 %192, 1, !dbg !1108
  store i32 %193, i32* %24, align 4, !dbg !1108
  %194 = load i32, i32* %24, align 4, !dbg !1108
  call void @llvm.dbg.declare(metadata i32** %35, metadata !1110, metadata !DIExpression()), !dbg !1112
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !1112
  store i32* %195, i32** %35, align 4, !dbg !1112
  call void @llvm.dbg.declare(metadata i32* %36, metadata !1113, metadata !DIExpression()), !dbg !1112
  %196 = load i32, i32* %24, align 4, !dbg !1112
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i32 0, i32 %196, !dbg !1112
  %198 = load i32, i32* %197, align 4, !dbg !1112
  store i32 %198, i32* %36, align 4, !dbg !1112
  %199 = load i32, i32* %36, align 4, !dbg !1112
  %200 = load i32*, i32** %35, align 4, !dbg !1112
  %201 = load i32, i32* %24, align 4, !dbg !1112
  %202 = getelementptr inbounds i32, i32* %200, i32 %201, !dbg !1112
  store i32 %199, i32* %202, align 4, !dbg !1112
  %203 = load i32, i32* %24, align 4, !dbg !1112
  %204 = add i32 %203, 1, !dbg !1112
  store i32 %204, i32* %24, align 4, !dbg !1112
  %205 = load i32, i32* %24, align 4, !dbg !1112
  call void @llvm.dbg.declare(metadata i32** %37, metadata !1114, metadata !DIExpression()), !dbg !1116
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !1116
  store i32* %206, i32** %37, align 4, !dbg !1116
  call void @llvm.dbg.declare(metadata i32* %38, metadata !1117, metadata !DIExpression()), !dbg !1116
  %207 = load i32, i32* %24, align 4, !dbg !1116
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i32 0, i32 %207, !dbg !1116
  %209 = load i32, i32* %208, align 4, !dbg !1116
  store i32 %209, i32* %38, align 4, !dbg !1116
  %210 = load i32, i32* %38, align 4, !dbg !1116
  %211 = load i32*, i32** %37, align 4, !dbg !1116
  %212 = load i32, i32* %24, align 4, !dbg !1116
  %213 = getelementptr inbounds i32, i32* %211, i32 %212, !dbg !1116
  store i32 %210, i32* %213, align 4, !dbg !1116
  %214 = load i32, i32* %24, align 4, !dbg !1116
  %215 = add i32 %214, 1, !dbg !1116
  store i32 %215, i32* %24, align 4, !dbg !1116
  %216 = load i32, i32* %24, align 4, !dbg !1116
  call void @llvm.dbg.declare(metadata i32** %39, metadata !1118, metadata !DIExpression()), !dbg !1120
  %217 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !1120
  store i32* %217, i32** %39, align 4, !dbg !1120
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1121, metadata !DIExpression()), !dbg !1120
  %218 = load i32, i32* %24, align 4, !dbg !1120
  %219 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i32 0, i32 %218, !dbg !1120
  %220 = load i32, i32* %219, align 4, !dbg !1120
  store i32 %220, i32* %40, align 4, !dbg !1120
  %221 = load i32, i32* %40, align 4, !dbg !1120
  %222 = load i32*, i32** %39, align 4, !dbg !1120
  %223 = load i32, i32* %24, align 4, !dbg !1120
  %224 = getelementptr inbounds i32, i32* %222, i32 %223, !dbg !1120
  store i32 %221, i32* %224, align 4, !dbg !1120
  %225 = load i32, i32* %24, align 4, !dbg !1120
  %226 = add i32 %225, 1, !dbg !1120
  store i32 %226, i32* %24, align 4, !dbg !1120
  %227 = load i32, i32* %24, align 4, !dbg !1120
  br label %228, !dbg !1089

228:                                              ; preds = %139
  call void @llvm.dbg.declare(metadata i32** %41, metadata !1122, metadata !DIExpression()), !dbg !1123
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i32 0, i32 0, !dbg !1124
  store i32* %229, i32** %41, align 4, !dbg !1123
  call void @llvm.dbg.declare(metadata i8** %42, metadata !1125, metadata !DIExpression()), !dbg !1126
  %230 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !1127
  store i8* %230, i8** %42, align 4, !dbg !1126
  %231 = load i32, i32* %10, align 4, !dbg !1128
  %232 = icmp eq i32 %231, 0, !dbg !1130
  br i1 %232, label %233, label %236, !dbg !1131

233:                                              ; preds = %228
  %234 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !1132
  %235 = load i32*, i32** %41, align 4, !dbg !1134
  call void @Hacl_Hash_SHA2_sha256_update_last(i64 noundef 64, i32 noundef 64, i8* noundef %234, i32* noundef %235), !dbg !1135
  br label %295, !dbg !1136

236:                                              ; preds = %228
  call void @llvm.dbg.declare(metadata i32* %43, metadata !1137, metadata !DIExpression()), !dbg !1139
  store i32 64, i32* %43, align 4, !dbg !1139
  call void @llvm.dbg.declare(metadata i32* %44, metadata !1140, metadata !DIExpression()), !dbg !1141
  %237 = load i32, i32* %10, align 4, !dbg !1142
  %238 = load i32, i32* %43, align 4, !dbg !1143
  %239 = udiv i32 %237, %238, !dbg !1144
  store i32 %239, i32* %44, align 4, !dbg !1141
  call void @llvm.dbg.declare(metadata i32* %45, metadata !1145, metadata !DIExpression()), !dbg !1146
  %240 = load i32, i32* %10, align 4, !dbg !1147
  %241 = load i32, i32* %43, align 4, !dbg !1148
  %242 = urem i32 %240, %241, !dbg !1149
  store i32 %242, i32* %45, align 4, !dbg !1146
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %46, metadata !1150, metadata !DIExpression()), !dbg !1151
  %243 = load i32, i32* %44, align 4, !dbg !1152
  %244 = icmp ugt i32 %243, 0, !dbg !1154
  br i1 %244, label %245, label %261, !dbg !1155

245:                                              ; preds = %236
  %246 = load i32, i32* %45, align 4, !dbg !1156
  %247 = icmp eq i32 %246, 0, !dbg !1157
  br i1 %247, label %248, label %261, !dbg !1158

248:                                              ; preds = %245
  call void @llvm.dbg.declare(metadata i32* %47, metadata !1159, metadata !DIExpression()), !dbg !1161
  %249 = load i32, i32* %44, align 4, !dbg !1162
  %250 = sub i32 %249, 1, !dbg !1163
  store i32 %250, i32* %47, align 4, !dbg !1161
  %251 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !1164
  %252 = load i32, i32* %47, align 4, !dbg !1165
  store i32 %252, i32* %251, align 4, !dbg !1164
  %253 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !1164
  %254 = load i32, i32* %10, align 4, !dbg !1166
  %255 = load i32, i32* %47, align 4, !dbg !1167
  %256 = load i32, i32* %43, align 4, !dbg !1168
  %257 = mul i32 %255, %256, !dbg !1169
  %258 = sub i32 %254, %257, !dbg !1170
  store i32 %258, i32* %253, align 4, !dbg !1164
  %259 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !1171
  %260 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !1171
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %259, i8* align 4 %260, i32 8, i1 false), !dbg !1171
  br label %268, !dbg !1172

261:                                              ; preds = %245, %236
  %262 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !1173
  %263 = load i32, i32* %44, align 4, !dbg !1175
  store i32 %263, i32* %262, align 4, !dbg !1173
  %264 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !1173
  %265 = load i32, i32* %45, align 4, !dbg !1176
  store i32 %265, i32* %264, align 4, !dbg !1173
  %266 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !1177
  %267 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !1177
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %266, i8* align 4 %267, i32 8, i1 false), !dbg !1177
  br label %268

268:                                              ; preds = %261, %248
  call void @llvm.dbg.declare(metadata i32* %50, metadata !1178, metadata !DIExpression()), !dbg !1179
  %269 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 0, !dbg !1180
  %270 = load i32, i32* %269, align 4, !dbg !1180
  store i32 %270, i32* %50, align 4, !dbg !1179
  call void @llvm.dbg.declare(metadata i32* %51, metadata !1181, metadata !DIExpression()), !dbg !1182
  %271 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 1, !dbg !1183
  %272 = load i32, i32* %271, align 4, !dbg !1183
  store i32 %272, i32* %51, align 4, !dbg !1182
  call void @llvm.dbg.declare(metadata i32* %52, metadata !1184, metadata !DIExpression()), !dbg !1185
  %273 = load i32, i32* %50, align 4, !dbg !1186
  %274 = load i32, i32* %43, align 4, !dbg !1187
  %275 = mul i32 %273, %274, !dbg !1188
  store i32 %275, i32* %52, align 4, !dbg !1185
  call void @llvm.dbg.declare(metadata i8** %53, metadata !1189, metadata !DIExpression()), !dbg !1190
  %276 = load i8*, i8** %9, align 4, !dbg !1191
  store i8* %276, i8** %53, align 4, !dbg !1190
  call void @llvm.dbg.declare(metadata i8** %54, metadata !1192, metadata !DIExpression()), !dbg !1193
  %277 = load i8*, i8** %9, align 4, !dbg !1194
  %278 = load i32, i32* %52, align 4, !dbg !1195
  %279 = getelementptr inbounds i8, i8* %277, i32 %278, !dbg !1196
  store i8* %279, i8** %54, align 4, !dbg !1193
  %280 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !1197
  %281 = load i32*, i32** %41, align 4, !dbg !1198
  call void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef 64, i8* noundef %280, i32* noundef %281), !dbg !1199
  %282 = load i32, i32* %50, align 4, !dbg !1200
  %283 = mul i32 %282, 64, !dbg !1201
  %284 = load i8*, i8** %53, align 4, !dbg !1202
  %285 = load i32*, i32** %41, align 4, !dbg !1203
  call void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef %283, i8* noundef %284, i32* noundef %285), !dbg !1204
  %286 = load i32, i32* %52, align 4, !dbg !1205
  %287 = zext i32 %286 to i64, !dbg !1206
  %288 = add i64 64, %287, !dbg !1207
  %289 = load i32, i32* %51, align 4, !dbg !1208
  %290 = zext i32 %289 to i64, !dbg !1209
  %291 = add i64 %288, %290, !dbg !1210
  %292 = load i32, i32* %51, align 4, !dbg !1211
  %293 = load i8*, i8** %54, align 4, !dbg !1212
  %294 = load i32*, i32** %41, align 4, !dbg !1213
  call void @Hacl_Hash_SHA2_sha256_update_last(i64 noundef %291, i32 noundef %292, i8* noundef %293, i32* noundef %294), !dbg !1214
  br label %295

295:                                              ; preds = %268, %233
  %296 = load i32*, i32** %41, align 4, !dbg !1215
  %297 = load i8*, i8** %42, align 4, !dbg !1216
  call void @Hacl_Hash_SHA2_sha256_finish(i32* noundef %296, i8* noundef %297), !dbg !1217
  call void @llvm.dbg.declare(metadata i8** %55, metadata !1218, metadata !DIExpression()), !dbg !1219
  %298 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !1220
  store i8* %298, i8** %55, align 4, !dbg !1219
  %299 = load i32*, i32** %41, align 4, !dbg !1221
  call void @Hacl_Hash_SHA2_sha256_init(i32* noundef %299), !dbg !1222
  call void @llvm.dbg.declare(metadata i32* %56, metadata !1223, metadata !DIExpression()), !dbg !1224
  store i32 64, i32* %56, align 4, !dbg !1224
  call void @llvm.dbg.declare(metadata i32* %57, metadata !1225, metadata !DIExpression()), !dbg !1226
  %300 = load i32, i32* %56, align 4, !dbg !1227
  %301 = udiv i32 32, %300, !dbg !1228
  store i32 %301, i32* %57, align 4, !dbg !1226
  call void @llvm.dbg.declare(metadata i32* %58, metadata !1229, metadata !DIExpression()), !dbg !1230
  %302 = load i32, i32* %56, align 4, !dbg !1231
  %303 = urem i32 32, %302, !dbg !1232
  store i32 %303, i32* %58, align 4, !dbg !1230
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %59, metadata !1233, metadata !DIExpression()), !dbg !1234
  %304 = load i32, i32* %57, align 4, !dbg !1235
  %305 = icmp ugt i32 %304, 0, !dbg !1237
  br i1 %305, label %306, label %321, !dbg !1238

306:                                              ; preds = %295
  %307 = load i32, i32* %58, align 4, !dbg !1239
  %308 = icmp eq i32 %307, 0, !dbg !1240
  br i1 %308, label %309, label %321, !dbg !1241

309:                                              ; preds = %306
  call void @llvm.dbg.declare(metadata i32* %60, metadata !1242, metadata !DIExpression()), !dbg !1244
  %310 = load i32, i32* %57, align 4, !dbg !1245
  %311 = sub i32 %310, 1, !dbg !1246
  store i32 %311, i32* %60, align 4, !dbg !1244
  %312 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 0, !dbg !1247
  %313 = load i32, i32* %60, align 4, !dbg !1248
  store i32 %313, i32* %312, align 4, !dbg !1247
  %314 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 1, !dbg !1247
  %315 = load i32, i32* %60, align 4, !dbg !1249
  %316 = load i32, i32* %56, align 4, !dbg !1250
  %317 = mul i32 %315, %316, !dbg !1251
  %318 = sub i32 32, %317, !dbg !1252
  store i32 %318, i32* %314, align 4, !dbg !1247
  %319 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !1253
  %320 = bitcast %struct.K___uint32_t_uint32_t_s* %61 to i8*, !dbg !1253
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %319, i8* align 4 %320, i32 8, i1 false), !dbg !1253
  br label %328, !dbg !1254

321:                                              ; preds = %306, %295
  %322 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 0, !dbg !1255
  %323 = load i32, i32* %57, align 4, !dbg !1257
  store i32 %323, i32* %322, align 4, !dbg !1255
  %324 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 1, !dbg !1255
  %325 = load i32, i32* %58, align 4, !dbg !1258
  store i32 %325, i32* %324, align 4, !dbg !1255
  %326 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !1259
  %327 = bitcast %struct.K___uint32_t_uint32_t_s* %62 to i8*, !dbg !1259
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %326, i8* align 4 %327, i32 8, i1 false), !dbg !1259
  br label %328

328:                                              ; preds = %321, %309
  call void @llvm.dbg.declare(metadata i32* %63, metadata !1260, metadata !DIExpression()), !dbg !1261
  %329 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 0, !dbg !1262
  %330 = load i32, i32* %329, align 4, !dbg !1262
  store i32 %330, i32* %63, align 4, !dbg !1261
  call void @llvm.dbg.declare(metadata i32* %64, metadata !1263, metadata !DIExpression()), !dbg !1264
  %331 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 1, !dbg !1265
  %332 = load i32, i32* %331, align 4, !dbg !1265
  store i32 %332, i32* %64, align 4, !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %65, metadata !1266, metadata !DIExpression()), !dbg !1267
  %333 = load i32, i32* %63, align 4, !dbg !1268
  %334 = load i32, i32* %56, align 4, !dbg !1269
  %335 = mul i32 %333, %334, !dbg !1270
  store i32 %335, i32* %65, align 4, !dbg !1267
  call void @llvm.dbg.declare(metadata i8** %66, metadata !1271, metadata !DIExpression()), !dbg !1272
  %336 = load i8*, i8** %55, align 4, !dbg !1273
  store i8* %336, i8** %66, align 4, !dbg !1272
  call void @llvm.dbg.declare(metadata i8** %67, metadata !1274, metadata !DIExpression()), !dbg !1275
  %337 = load i8*, i8** %55, align 4, !dbg !1276
  %338 = load i32, i32* %65, align 4, !dbg !1277
  %339 = getelementptr inbounds i8, i8* %337, i32 %338, !dbg !1278
  store i8* %339, i8** %67, align 4, !dbg !1275
  %340 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !1279
  %341 = load i32*, i32** %41, align 4, !dbg !1280
  call void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef 64, i8* noundef %340, i32* noundef %341), !dbg !1281
  %342 = load i32, i32* %63, align 4, !dbg !1282
  %343 = mul i32 %342, 64, !dbg !1283
  %344 = load i8*, i8** %66, align 4, !dbg !1284
  %345 = load i32*, i32** %41, align 4, !dbg !1285
  call void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef %343, i8* noundef %344, i32* noundef %345), !dbg !1286
  %346 = load i32, i32* %65, align 4, !dbg !1287
  %347 = zext i32 %346 to i64, !dbg !1288
  %348 = add i64 64, %347, !dbg !1289
  %349 = load i32, i32* %64, align 4, !dbg !1290
  %350 = zext i32 %349 to i64, !dbg !1291
  %351 = add i64 %348, %350, !dbg !1292
  %352 = load i32, i32* %64, align 4, !dbg !1293
  %353 = load i8*, i8** %67, align 4, !dbg !1294
  %354 = load i32*, i32** %41, align 4, !dbg !1295
  call void @Hacl_Hash_SHA2_sha256_update_last(i64 noundef %351, i32 noundef %352, i8* noundef %353, i32* noundef %354), !dbg !1296
  %355 = load i32*, i32** %41, align 4, !dbg !1297
  %356 = load i8*, i8** %6, align 4, !dbg !1298
  call void @Hacl_Hash_SHA2_sha256_finish(i32* noundef %355, i8* noundef %356), !dbg !1299
  ret void, !dbg !1300
}

declare dso_local void @Hacl_Hash_SHA2_hash_256(i8* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha256_update_last(i64 noundef, i32 noundef, i8* noundef, i32* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef, i8* noundef, i32* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha256_finish(i32* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha256_init(i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha2_384(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !1301 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [128 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [128 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [8 x i64], align 8
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64*, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64*, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64*, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64*, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64*, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64*, align 4
  %38 = alloca i64, align 8
  %39 = alloca i64*, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64*, align 4
  %42 = alloca i8*, align 4
  %43 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %44 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %45 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %50 = alloca i32, align 4
  %51 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %52 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i8*, align 4
  %57 = alloca i8*, align 4
  %58 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %59 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %60 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %61 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %62 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %63 = alloca i8*, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %68 = alloca i32, align 4
  %69 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %70 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i8*, align 4
  %75 = alloca i8*, align 4
  %76 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %77 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %78 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %79 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %80 = alloca %struct.FStar_UInt128_uint128_s, align 8
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1302, metadata !DIExpression()), !dbg !1303
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1304, metadata !DIExpression()), !dbg !1305
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1306, metadata !DIExpression()), !dbg !1307
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1308, metadata !DIExpression()), !dbg !1309
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1310, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.declare(metadata [128 x i8]* %11, metadata !1312, metadata !DIExpression()), !dbg !1316
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0, !dbg !1317
  call void @llvm.memset.p0i8.i32(i8* align 1 %81, i8 0, i32 128, i1 false), !dbg !1317
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1318, metadata !DIExpression()), !dbg !1319
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0, !dbg !1320
  store i8* %82, i8** %12, align 4, !dbg !1319
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1321, metadata !DIExpression()), !dbg !1322
  %83 = load i32, i32* %8, align 4, !dbg !1323
  %84 = icmp ule i32 %83, 128, !dbg !1325
  br i1 %84, label %85, label %87, !dbg !1326

85:                                               ; preds = %5
  %86 = load i32, i32* %8, align 4, !dbg !1327
  store i32 %86, i32* %13, align 4, !dbg !1329
  br label %88, !dbg !1330

87:                                               ; preds = %5
  store i32 48, i32* %13, align 4, !dbg !1331
  br label %88

88:                                               ; preds = %87, %85
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1333, metadata !DIExpression()), !dbg !1334
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0, !dbg !1335
  %90 = load i32, i32* %13, align 4, !dbg !1336
  %91 = getelementptr inbounds i8, i8* %89, i32 %90, !dbg !1337
  store i8* %91, i8** %14, align 4, !dbg !1334
  %92 = load i8*, i8** %14, align 4, !dbg !1338
  %93 = load i32, i32* %8, align 4, !dbg !1339
  %94 = icmp ule i32 %93, 128, !dbg !1341
  br i1 %94, label %95, label %100, !dbg !1342

95:                                               ; preds = %88
  %96 = load i8*, i8** %12, align 4, !dbg !1343
  %97 = load i8*, i8** %7, align 4, !dbg !1345
  %98 = load i32, i32* %8, align 4, !dbg !1346
  %99 = mul i32 %98, 1, !dbg !1347
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %96, i8* align 1 %97, i32 %99, i1 false), !dbg !1348
  br label %104, !dbg !1349

100:                                              ; preds = %88
  %101 = load i8*, i8** %12, align 4, !dbg !1350
  %102 = load i8*, i8** %7, align 4, !dbg !1352
  %103 = load i32, i32* %8, align 4, !dbg !1353
  call void @Hacl_Hash_SHA2_hash_384(i8* noundef %101, i8* noundef %102, i32 noundef %103), !dbg !1354
  br label %104

104:                                              ; preds = %100, %95
  call void @llvm.dbg.declare(metadata [128 x i8]* %15, metadata !1355, metadata !DIExpression()), !dbg !1356
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1357
  call void @llvm.memset.p0i8.i32(i8* align 1 %105, i8 54, i32 128, i1 false), !dbg !1357
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1358, metadata !DIExpression()), !dbg !1360
  store i32 0, i32* %16, align 4, !dbg !1360
  br label %106, !dbg !1361

106:                                              ; preds = %124, %104
  %107 = load i32, i32* %16, align 4, !dbg !1362
  %108 = icmp ult i32 %107, 128, !dbg !1364
  br i1 %108, label %109, label %127, !dbg !1365

109:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1366, metadata !DIExpression()), !dbg !1368
  %110 = load i32, i32* %16, align 4, !dbg !1369
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 %110, !dbg !1370
  %112 = load i8, i8* %111, align 1, !dbg !1370
  store i8 %112, i8* %17, align 1, !dbg !1368
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1371, metadata !DIExpression()), !dbg !1372
  %113 = load i32, i32* %16, align 4, !dbg !1373
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 %113, !dbg !1374
  %115 = load i8, i8* %114, align 1, !dbg !1374
  store i8 %115, i8* %18, align 1, !dbg !1372
  %116 = load i8, i8* %17, align 1, !dbg !1375
  %117 = zext i8 %116 to i32, !dbg !1376
  %118 = load i8, i8* %18, align 1, !dbg !1377
  %119 = zext i8 %118 to i32, !dbg !1378
  %120 = xor i32 %117, %119, !dbg !1379
  %121 = trunc i32 %120 to i8, !dbg !1376
  %122 = load i32, i32* %16, align 4, !dbg !1380
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 %122, !dbg !1381
  store i8 %121, i8* %123, align 1, !dbg !1382
  br label %124, !dbg !1383

124:                                              ; preds = %109
  %125 = load i32, i32* %16, align 4, !dbg !1384
  %126 = add i32 %125, 1, !dbg !1384
  store i32 %126, i32* %16, align 4, !dbg !1384
  br label %106, !dbg !1385, !llvm.loop !1386

127:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata [128 x i8]* %19, metadata !1388, metadata !DIExpression()), !dbg !1389
  %128 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !1390
  call void @llvm.memset.p0i8.i32(i8* align 1 %128, i8 92, i32 128, i1 false), !dbg !1390
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1391, metadata !DIExpression()), !dbg !1393
  store i32 0, i32* %20, align 4, !dbg !1393
  br label %129, !dbg !1394

129:                                              ; preds = %147, %127
  %130 = load i32, i32* %20, align 4, !dbg !1395
  %131 = icmp ult i32 %130, 128, !dbg !1397
  br i1 %131, label %132, label %150, !dbg !1398

132:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1399, metadata !DIExpression()), !dbg !1401
  %133 = load i32, i32* %20, align 4, !dbg !1402
  %134 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 %133, !dbg !1403
  %135 = load i8, i8* %134, align 1, !dbg !1403
  store i8 %135, i8* %21, align 1, !dbg !1401
  call void @llvm.dbg.declare(metadata i8* %22, metadata !1404, metadata !DIExpression()), !dbg !1405
  %136 = load i32, i32* %20, align 4, !dbg !1406
  %137 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 %136, !dbg !1407
  %138 = load i8, i8* %137, align 1, !dbg !1407
  store i8 %138, i8* %22, align 1, !dbg !1405
  %139 = load i8, i8* %21, align 1, !dbg !1408
  %140 = zext i8 %139 to i32, !dbg !1409
  %141 = load i8, i8* %22, align 1, !dbg !1410
  %142 = zext i8 %141 to i32, !dbg !1411
  %143 = xor i32 %140, %142, !dbg !1412
  %144 = trunc i32 %143 to i8, !dbg !1409
  %145 = load i32, i32* %20, align 4, !dbg !1413
  %146 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 %145, !dbg !1414
  store i8 %144, i8* %146, align 1, !dbg !1415
  br label %147, !dbg !1416

147:                                              ; preds = %132
  %148 = load i32, i32* %20, align 4, !dbg !1417
  %149 = add i32 %148, 1, !dbg !1417
  store i32 %149, i32* %20, align 4, !dbg !1417
  br label %129, !dbg !1418, !llvm.loop !1419

150:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata [8 x i64]* %23, metadata !1421, metadata !DIExpression()), !dbg !1423
  %151 = bitcast [8 x i64]* %23 to i8*, !dbg !1423
  call void @llvm.memset.p0i8.i32(i8* align 8 %151, i8 0, i32 64, i1 false), !dbg !1423
  br label %152, !dbg !1424

152:                                              ; preds = %150
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1425, metadata !DIExpression()), !dbg !1427
  store i32 0, i32* %24, align 4, !dbg !1427
  call void @llvm.dbg.declare(metadata i64** %25, metadata !1428, metadata !DIExpression()), !dbg !1431
  %153 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1431
  store i64* %153, i64** %25, align 4, !dbg !1431
  call void @llvm.dbg.declare(metadata i64* %26, metadata !1432, metadata !DIExpression()), !dbg !1431
  %154 = load i32, i32* %24, align 4, !dbg !1431
  %155 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i32 0, i32 %154, !dbg !1431
  %156 = load i64, i64* %155, align 8, !dbg !1431
  store i64 %156, i64* %26, align 8, !dbg !1431
  %157 = load i64, i64* %26, align 8, !dbg !1431
  %158 = load i64*, i64** %25, align 4, !dbg !1431
  %159 = load i32, i32* %24, align 4, !dbg !1431
  %160 = getelementptr inbounds i64, i64* %158, i32 %159, !dbg !1431
  store i64 %157, i64* %160, align 8, !dbg !1431
  %161 = load i32, i32* %24, align 4, !dbg !1431
  %162 = add i32 %161, 1, !dbg !1431
  store i32 %162, i32* %24, align 4, !dbg !1431
  %163 = load i32, i32* %24, align 4, !dbg !1431
  call void @llvm.dbg.declare(metadata i64** %27, metadata !1433, metadata !DIExpression()), !dbg !1435
  %164 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1435
  store i64* %164, i64** %27, align 4, !dbg !1435
  call void @llvm.dbg.declare(metadata i64* %28, metadata !1436, metadata !DIExpression()), !dbg !1435
  %165 = load i32, i32* %24, align 4, !dbg !1435
  %166 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i32 0, i32 %165, !dbg !1435
  %167 = load i64, i64* %166, align 8, !dbg !1435
  store i64 %167, i64* %28, align 8, !dbg !1435
  %168 = load i64, i64* %28, align 8, !dbg !1435
  %169 = load i64*, i64** %27, align 4, !dbg !1435
  %170 = load i32, i32* %24, align 4, !dbg !1435
  %171 = getelementptr inbounds i64, i64* %169, i32 %170, !dbg !1435
  store i64 %168, i64* %171, align 8, !dbg !1435
  %172 = load i32, i32* %24, align 4, !dbg !1435
  %173 = add i32 %172, 1, !dbg !1435
  store i32 %173, i32* %24, align 4, !dbg !1435
  %174 = load i32, i32* %24, align 4, !dbg !1435
  call void @llvm.dbg.declare(metadata i64** %29, metadata !1437, metadata !DIExpression()), !dbg !1439
  %175 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1439
  store i64* %175, i64** %29, align 4, !dbg !1439
  call void @llvm.dbg.declare(metadata i64* %30, metadata !1440, metadata !DIExpression()), !dbg !1439
  %176 = load i32, i32* %24, align 4, !dbg !1439
  %177 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i32 0, i32 %176, !dbg !1439
  %178 = load i64, i64* %177, align 8, !dbg !1439
  store i64 %178, i64* %30, align 8, !dbg !1439
  %179 = load i64, i64* %30, align 8, !dbg !1439
  %180 = load i64*, i64** %29, align 4, !dbg !1439
  %181 = load i32, i32* %24, align 4, !dbg !1439
  %182 = getelementptr inbounds i64, i64* %180, i32 %181, !dbg !1439
  store i64 %179, i64* %182, align 8, !dbg !1439
  %183 = load i32, i32* %24, align 4, !dbg !1439
  %184 = add i32 %183, 1, !dbg !1439
  store i32 %184, i32* %24, align 4, !dbg !1439
  %185 = load i32, i32* %24, align 4, !dbg !1439
  call void @llvm.dbg.declare(metadata i64** %31, metadata !1441, metadata !DIExpression()), !dbg !1443
  %186 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1443
  store i64* %186, i64** %31, align 4, !dbg !1443
  call void @llvm.dbg.declare(metadata i64* %32, metadata !1444, metadata !DIExpression()), !dbg !1443
  %187 = load i32, i32* %24, align 4, !dbg !1443
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i32 0, i32 %187, !dbg !1443
  %189 = load i64, i64* %188, align 8, !dbg !1443
  store i64 %189, i64* %32, align 8, !dbg !1443
  %190 = load i64, i64* %32, align 8, !dbg !1443
  %191 = load i64*, i64** %31, align 4, !dbg !1443
  %192 = load i32, i32* %24, align 4, !dbg !1443
  %193 = getelementptr inbounds i64, i64* %191, i32 %192, !dbg !1443
  store i64 %190, i64* %193, align 8, !dbg !1443
  %194 = load i32, i32* %24, align 4, !dbg !1443
  %195 = add i32 %194, 1, !dbg !1443
  store i32 %195, i32* %24, align 4, !dbg !1443
  %196 = load i32, i32* %24, align 4, !dbg !1443
  call void @llvm.dbg.declare(metadata i64** %33, metadata !1445, metadata !DIExpression()), !dbg !1447
  %197 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1447
  store i64* %197, i64** %33, align 4, !dbg !1447
  call void @llvm.dbg.declare(metadata i64* %34, metadata !1448, metadata !DIExpression()), !dbg !1447
  %198 = load i32, i32* %24, align 4, !dbg !1447
  %199 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i32 0, i32 %198, !dbg !1447
  %200 = load i64, i64* %199, align 8, !dbg !1447
  store i64 %200, i64* %34, align 8, !dbg !1447
  %201 = load i64, i64* %34, align 8, !dbg !1447
  %202 = load i64*, i64** %33, align 4, !dbg !1447
  %203 = load i32, i32* %24, align 4, !dbg !1447
  %204 = getelementptr inbounds i64, i64* %202, i32 %203, !dbg !1447
  store i64 %201, i64* %204, align 8, !dbg !1447
  %205 = load i32, i32* %24, align 4, !dbg !1447
  %206 = add i32 %205, 1, !dbg !1447
  store i32 %206, i32* %24, align 4, !dbg !1447
  %207 = load i32, i32* %24, align 4, !dbg !1447
  call void @llvm.dbg.declare(metadata i64** %35, metadata !1449, metadata !DIExpression()), !dbg !1451
  %208 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1451
  store i64* %208, i64** %35, align 4, !dbg !1451
  call void @llvm.dbg.declare(metadata i64* %36, metadata !1452, metadata !DIExpression()), !dbg !1451
  %209 = load i32, i32* %24, align 4, !dbg !1451
  %210 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i32 0, i32 %209, !dbg !1451
  %211 = load i64, i64* %210, align 8, !dbg !1451
  store i64 %211, i64* %36, align 8, !dbg !1451
  %212 = load i64, i64* %36, align 8, !dbg !1451
  %213 = load i64*, i64** %35, align 4, !dbg !1451
  %214 = load i32, i32* %24, align 4, !dbg !1451
  %215 = getelementptr inbounds i64, i64* %213, i32 %214, !dbg !1451
  store i64 %212, i64* %215, align 8, !dbg !1451
  %216 = load i32, i32* %24, align 4, !dbg !1451
  %217 = add i32 %216, 1, !dbg !1451
  store i32 %217, i32* %24, align 4, !dbg !1451
  %218 = load i32, i32* %24, align 4, !dbg !1451
  call void @llvm.dbg.declare(metadata i64** %37, metadata !1453, metadata !DIExpression()), !dbg !1455
  %219 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1455
  store i64* %219, i64** %37, align 4, !dbg !1455
  call void @llvm.dbg.declare(metadata i64* %38, metadata !1456, metadata !DIExpression()), !dbg !1455
  %220 = load i32, i32* %24, align 4, !dbg !1455
  %221 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i32 0, i32 %220, !dbg !1455
  %222 = load i64, i64* %221, align 8, !dbg !1455
  store i64 %222, i64* %38, align 8, !dbg !1455
  %223 = load i64, i64* %38, align 8, !dbg !1455
  %224 = load i64*, i64** %37, align 4, !dbg !1455
  %225 = load i32, i32* %24, align 4, !dbg !1455
  %226 = getelementptr inbounds i64, i64* %224, i32 %225, !dbg !1455
  store i64 %223, i64* %226, align 8, !dbg !1455
  %227 = load i32, i32* %24, align 4, !dbg !1455
  %228 = add i32 %227, 1, !dbg !1455
  store i32 %228, i32* %24, align 4, !dbg !1455
  %229 = load i32, i32* %24, align 4, !dbg !1455
  call void @llvm.dbg.declare(metadata i64** %39, metadata !1457, metadata !DIExpression()), !dbg !1459
  %230 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1459
  store i64* %230, i64** %39, align 4, !dbg !1459
  call void @llvm.dbg.declare(metadata i64* %40, metadata !1460, metadata !DIExpression()), !dbg !1459
  %231 = load i32, i32* %24, align 4, !dbg !1459
  %232 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i32 0, i32 %231, !dbg !1459
  %233 = load i64, i64* %232, align 8, !dbg !1459
  store i64 %233, i64* %40, align 8, !dbg !1459
  %234 = load i64, i64* %40, align 8, !dbg !1459
  %235 = load i64*, i64** %39, align 4, !dbg !1459
  %236 = load i32, i32* %24, align 4, !dbg !1459
  %237 = getelementptr inbounds i64, i64* %235, i32 %236, !dbg !1459
  store i64 %234, i64* %237, align 8, !dbg !1459
  %238 = load i32, i32* %24, align 4, !dbg !1459
  %239 = add i32 %238, 1, !dbg !1459
  store i32 %239, i32* %24, align 4, !dbg !1459
  %240 = load i32, i32* %24, align 4, !dbg !1459
  br label %241, !dbg !1427

241:                                              ; preds = %152
  call void @llvm.dbg.declare(metadata i64** %41, metadata !1461, metadata !DIExpression()), !dbg !1462
  %242 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1463
  store i64* %242, i64** %41, align 4, !dbg !1462
  call void @llvm.dbg.declare(metadata i8** %42, metadata !1464, metadata !DIExpression()), !dbg !1465
  %243 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1466
  store i8* %243, i8** %42, align 4, !dbg !1465
  %244 = load i32, i32* %10, align 4, !dbg !1467
  %245 = icmp eq i32 %244, 0, !dbg !1469
  br i1 %245, label %246, label %249, !dbg !1470

246:                                              ; preds = %241
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %44, i64 noundef 0), !dbg !1471
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %45, i64 noundef 128), !dbg !1473
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %43, %struct.FStar_UInt128_uint128_s* noundef %44, %struct.FStar_UInt128_uint128_s* noundef %45), !dbg !1474
  %247 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1475
  %248 = load i64*, i64** %41, align 4, !dbg !1476
  call void @Hacl_Hash_SHA2_sha384_update_last(%struct.FStar_UInt128_uint128_s* noundef %43, i32 noundef 128, i8* noundef %247, i64* noundef %248), !dbg !1477
  br label %306, !dbg !1478

249:                                              ; preds = %241
  call void @llvm.dbg.declare(metadata i32* %46, metadata !1479, metadata !DIExpression()), !dbg !1481
  store i32 128, i32* %46, align 4, !dbg !1481
  call void @llvm.dbg.declare(metadata i32* %47, metadata !1482, metadata !DIExpression()), !dbg !1483
  %250 = load i32, i32* %10, align 4, !dbg !1484
  %251 = load i32, i32* %46, align 4, !dbg !1485
  %252 = udiv i32 %250, %251, !dbg !1486
  store i32 %252, i32* %47, align 4, !dbg !1483
  call void @llvm.dbg.declare(metadata i32* %48, metadata !1487, metadata !DIExpression()), !dbg !1488
  %253 = load i32, i32* %10, align 4, !dbg !1489
  %254 = load i32, i32* %46, align 4, !dbg !1490
  %255 = urem i32 %253, %254, !dbg !1491
  store i32 %255, i32* %48, align 4, !dbg !1488
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %49, metadata !1492, metadata !DIExpression()), !dbg !1493
  %256 = load i32, i32* %47, align 4, !dbg !1494
  %257 = icmp ugt i32 %256, 0, !dbg !1496
  br i1 %257, label %258, label %274, !dbg !1497

258:                                              ; preds = %249
  %259 = load i32, i32* %48, align 4, !dbg !1498
  %260 = icmp eq i32 %259, 0, !dbg !1499
  br i1 %260, label %261, label %274, !dbg !1500

261:                                              ; preds = %258
  call void @llvm.dbg.declare(metadata i32* %50, metadata !1501, metadata !DIExpression()), !dbg !1503
  %262 = load i32, i32* %47, align 4, !dbg !1504
  %263 = sub i32 %262, 1, !dbg !1505
  store i32 %263, i32* %50, align 4, !dbg !1503
  %264 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %51, i32 0, i32 0, !dbg !1506
  %265 = load i32, i32* %50, align 4, !dbg !1507
  store i32 %265, i32* %264, align 4, !dbg !1506
  %266 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %51, i32 0, i32 1, !dbg !1506
  %267 = load i32, i32* %10, align 4, !dbg !1508
  %268 = load i32, i32* %50, align 4, !dbg !1509
  %269 = load i32, i32* %46, align 4, !dbg !1510
  %270 = mul i32 %268, %269, !dbg !1511
  %271 = sub i32 %267, %270, !dbg !1512
  store i32 %271, i32* %266, align 4, !dbg !1506
  %272 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !1513
  %273 = bitcast %struct.K___uint32_t_uint32_t_s* %51 to i8*, !dbg !1513
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %272, i8* align 4 %273, i32 8, i1 false), !dbg !1513
  br label %281, !dbg !1514

274:                                              ; preds = %258, %249
  %275 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %52, i32 0, i32 0, !dbg !1515
  %276 = load i32, i32* %47, align 4, !dbg !1517
  store i32 %276, i32* %275, align 4, !dbg !1515
  %277 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %52, i32 0, i32 1, !dbg !1515
  %278 = load i32, i32* %48, align 4, !dbg !1518
  store i32 %278, i32* %277, align 4, !dbg !1515
  %279 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !1519
  %280 = bitcast %struct.K___uint32_t_uint32_t_s* %52 to i8*, !dbg !1519
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %279, i8* align 4 %280, i32 8, i1 false), !dbg !1519
  br label %281

281:                                              ; preds = %274, %261
  call void @llvm.dbg.declare(metadata i32* %53, metadata !1520, metadata !DIExpression()), !dbg !1521
  %282 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !1522
  %283 = load i32, i32* %282, align 4, !dbg !1522
  store i32 %283, i32* %53, align 4, !dbg !1521
  call void @llvm.dbg.declare(metadata i32* %54, metadata !1523, metadata !DIExpression()), !dbg !1524
  %284 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !1525
  %285 = load i32, i32* %284, align 4, !dbg !1525
  store i32 %285, i32* %54, align 4, !dbg !1524
  call void @llvm.dbg.declare(metadata i32* %55, metadata !1526, metadata !DIExpression()), !dbg !1527
  %286 = load i32, i32* %53, align 4, !dbg !1528
  %287 = load i32, i32* %46, align 4, !dbg !1529
  %288 = mul i32 %286, %287, !dbg !1530
  store i32 %288, i32* %55, align 4, !dbg !1527
  call void @llvm.dbg.declare(metadata i8** %56, metadata !1531, metadata !DIExpression()), !dbg !1532
  %289 = load i8*, i8** %9, align 4, !dbg !1533
  store i8* %289, i8** %56, align 4, !dbg !1532
  call void @llvm.dbg.declare(metadata i8** %57, metadata !1534, metadata !DIExpression()), !dbg !1535
  %290 = load i8*, i8** %9, align 4, !dbg !1536
  %291 = load i32, i32* %55, align 4, !dbg !1537
  %292 = getelementptr inbounds i8, i8* %290, i32 %291, !dbg !1538
  store i8* %292, i8** %57, align 4, !dbg !1535
  %293 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1539
  %294 = load i64*, i64** %41, align 4, !dbg !1540
  call void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef 128, i8* noundef %293, i64* noundef %294), !dbg !1541
  %295 = load i32, i32* %53, align 4, !dbg !1542
  %296 = mul i32 %295, 128, !dbg !1543
  %297 = load i8*, i8** %56, align 4, !dbg !1544
  %298 = load i64*, i64** %41, align 4, !dbg !1545
  call void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef %296, i8* noundef %297, i64* noundef %298), !dbg !1546
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %60, i64 noundef 128), !dbg !1547
  %299 = load i32, i32* %55, align 4, !dbg !1548
  %300 = zext i32 %299 to i64, !dbg !1549
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %61, i64 noundef %300), !dbg !1550
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %59, %struct.FStar_UInt128_uint128_s* noundef %60, %struct.FStar_UInt128_uint128_s* noundef %61), !dbg !1551
  %301 = load i32, i32* %54, align 4, !dbg !1552
  %302 = zext i32 %301 to i64, !dbg !1553
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %62, i64 noundef %302), !dbg !1554
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %58, %struct.FStar_UInt128_uint128_s* noundef %59, %struct.FStar_UInt128_uint128_s* noundef %62), !dbg !1555
  %303 = load i32, i32* %54, align 4, !dbg !1556
  %304 = load i8*, i8** %57, align 4, !dbg !1557
  %305 = load i64*, i64** %41, align 4, !dbg !1558
  call void @Hacl_Hash_SHA2_sha384_update_last(%struct.FStar_UInt128_uint128_s* noundef %58, i32 noundef %303, i8* noundef %304, i64* noundef %305), !dbg !1559
  br label %306

306:                                              ; preds = %281, %246
  %307 = load i64*, i64** %41, align 4, !dbg !1560
  %308 = load i8*, i8** %42, align 4, !dbg !1561
  call void @Hacl_Hash_SHA2_sha384_finish(i64* noundef %307, i8* noundef %308), !dbg !1562
  call void @llvm.dbg.declare(metadata i8** %63, metadata !1563, metadata !DIExpression()), !dbg !1564
  %309 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1565
  store i8* %309, i8** %63, align 4, !dbg !1564
  %310 = load i64*, i64** %41, align 4, !dbg !1566
  call void @Hacl_Hash_SHA2_sha384_init(i64* noundef %310), !dbg !1567
  call void @llvm.dbg.declare(metadata i32* %64, metadata !1568, metadata !DIExpression()), !dbg !1569
  store i32 128, i32* %64, align 4, !dbg !1569
  call void @llvm.dbg.declare(metadata i32* %65, metadata !1570, metadata !DIExpression()), !dbg !1571
  %311 = load i32, i32* %64, align 4, !dbg !1572
  %312 = udiv i32 48, %311, !dbg !1573
  store i32 %312, i32* %65, align 4, !dbg !1571
  call void @llvm.dbg.declare(metadata i32* %66, metadata !1574, metadata !DIExpression()), !dbg !1575
  %313 = load i32, i32* %64, align 4, !dbg !1576
  %314 = urem i32 48, %313, !dbg !1577
  store i32 %314, i32* %66, align 4, !dbg !1575
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %67, metadata !1578, metadata !DIExpression()), !dbg !1579
  %315 = load i32, i32* %65, align 4, !dbg !1580
  %316 = icmp ugt i32 %315, 0, !dbg !1582
  br i1 %316, label %317, label %332, !dbg !1583

317:                                              ; preds = %306
  %318 = load i32, i32* %66, align 4, !dbg !1584
  %319 = icmp eq i32 %318, 0, !dbg !1585
  br i1 %319, label %320, label %332, !dbg !1586

320:                                              ; preds = %317
  call void @llvm.dbg.declare(metadata i32* %68, metadata !1587, metadata !DIExpression()), !dbg !1589
  %321 = load i32, i32* %65, align 4, !dbg !1590
  %322 = sub i32 %321, 1, !dbg !1591
  store i32 %322, i32* %68, align 4, !dbg !1589
  %323 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %69, i32 0, i32 0, !dbg !1592
  %324 = load i32, i32* %68, align 4, !dbg !1593
  store i32 %324, i32* %323, align 4, !dbg !1592
  %325 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %69, i32 0, i32 1, !dbg !1592
  %326 = load i32, i32* %68, align 4, !dbg !1594
  %327 = load i32, i32* %64, align 4, !dbg !1595
  %328 = mul i32 %326, %327, !dbg !1596
  %329 = sub i32 48, %328, !dbg !1597
  store i32 %329, i32* %325, align 4, !dbg !1592
  %330 = bitcast %struct.K___uint32_t_uint32_t_s* %67 to i8*, !dbg !1598
  %331 = bitcast %struct.K___uint32_t_uint32_t_s* %69 to i8*, !dbg !1598
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %330, i8* align 4 %331, i32 8, i1 false), !dbg !1598
  br label %339, !dbg !1599

332:                                              ; preds = %317, %306
  %333 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %70, i32 0, i32 0, !dbg !1600
  %334 = load i32, i32* %65, align 4, !dbg !1602
  store i32 %334, i32* %333, align 4, !dbg !1600
  %335 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %70, i32 0, i32 1, !dbg !1600
  %336 = load i32, i32* %66, align 4, !dbg !1603
  store i32 %336, i32* %335, align 4, !dbg !1600
  %337 = bitcast %struct.K___uint32_t_uint32_t_s* %67 to i8*, !dbg !1604
  %338 = bitcast %struct.K___uint32_t_uint32_t_s* %70 to i8*, !dbg !1604
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %337, i8* align 4 %338, i32 8, i1 false), !dbg !1604
  br label %339

339:                                              ; preds = %332, %320
  call void @llvm.dbg.declare(metadata i32* %71, metadata !1605, metadata !DIExpression()), !dbg !1606
  %340 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %67, i32 0, i32 0, !dbg !1607
  %341 = load i32, i32* %340, align 4, !dbg !1607
  store i32 %341, i32* %71, align 4, !dbg !1606
  call void @llvm.dbg.declare(metadata i32* %72, metadata !1608, metadata !DIExpression()), !dbg !1609
  %342 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %67, i32 0, i32 1, !dbg !1610
  %343 = load i32, i32* %342, align 4, !dbg !1610
  store i32 %343, i32* %72, align 4, !dbg !1609
  call void @llvm.dbg.declare(metadata i32* %73, metadata !1611, metadata !DIExpression()), !dbg !1612
  %344 = load i32, i32* %71, align 4, !dbg !1613
  %345 = load i32, i32* %64, align 4, !dbg !1614
  %346 = mul i32 %344, %345, !dbg !1615
  store i32 %346, i32* %73, align 4, !dbg !1612
  call void @llvm.dbg.declare(metadata i8** %74, metadata !1616, metadata !DIExpression()), !dbg !1617
  %347 = load i8*, i8** %63, align 4, !dbg !1618
  store i8* %347, i8** %74, align 4, !dbg !1617
  call void @llvm.dbg.declare(metadata i8** %75, metadata !1619, metadata !DIExpression()), !dbg !1620
  %348 = load i8*, i8** %63, align 4, !dbg !1621
  %349 = load i32, i32* %73, align 4, !dbg !1622
  %350 = getelementptr inbounds i8, i8* %348, i32 %349, !dbg !1623
  store i8* %350, i8** %75, align 4, !dbg !1620
  %351 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !1624
  %352 = load i64*, i64** %41, align 4, !dbg !1625
  call void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef 128, i8* noundef %351, i64* noundef %352), !dbg !1626
  %353 = load i32, i32* %71, align 4, !dbg !1627
  %354 = mul i32 %353, 128, !dbg !1628
  %355 = load i8*, i8** %74, align 4, !dbg !1629
  %356 = load i64*, i64** %41, align 4, !dbg !1630
  call void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef %354, i8* noundef %355, i64* noundef %356), !dbg !1631
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %78, i64 noundef 128), !dbg !1632
  %357 = load i32, i32* %73, align 4, !dbg !1633
  %358 = zext i32 %357 to i64, !dbg !1634
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %79, i64 noundef %358), !dbg !1635
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %77, %struct.FStar_UInt128_uint128_s* noundef %78, %struct.FStar_UInt128_uint128_s* noundef %79), !dbg !1636
  %359 = load i32, i32* %72, align 4, !dbg !1637
  %360 = zext i32 %359 to i64, !dbg !1638
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %80, i64 noundef %360), !dbg !1639
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %76, %struct.FStar_UInt128_uint128_s* noundef %77, %struct.FStar_UInt128_uint128_s* noundef %80), !dbg !1640
  %361 = load i32, i32* %72, align 4, !dbg !1641
  %362 = load i8*, i8** %75, align 4, !dbg !1642
  %363 = load i64*, i64** %41, align 4, !dbg !1643
  call void @Hacl_Hash_SHA2_sha384_update_last(%struct.FStar_UInt128_uint128_s* noundef %76, i32 noundef %361, i8* noundef %362, i64* noundef %363), !dbg !1644
  %364 = load i64*, i64** %41, align 4, !dbg !1645
  %365 = load i8*, i8** %6, align 4, !dbg !1646
  call void @Hacl_Hash_SHA2_sha384_finish(i64* noundef %364, i8* noundef %365), !dbg !1647
  ret void, !dbg !1648
}

declare dso_local void @Hacl_Hash_SHA2_hash_384(i8* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha384_update_last(%struct.FStar_UInt128_uint128_s* noundef, i32 noundef, i8* noundef, i64* noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* noalias sret(%struct.FStar_UInt128_uint128_s) align 8 %0, %struct.FStar_UInt128_uint128_s* noundef %1, %struct.FStar_UInt128_uint128_s* noundef %2) #0 !dbg !1649 {
  %4 = alloca i8*, align 4
  %5 = bitcast %struct.FStar_UInt128_uint128_s* %0 to i8*
  store i8* %5, i8** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128_s* %1, metadata !1659, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128_s* %2, metadata !1661, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1663, metadata !DIExpression(DW_OP_deref)), !dbg !1664
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %1, i32 0, i32 0, !dbg !1665
  %7 = load i64, i64* %6, align 8, !dbg !1665
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %2, i32 0, i32 0, !dbg !1666
  %9 = load i64, i64* %8, align 8, !dbg !1666
  %10 = add i64 %7, %9, !dbg !1667
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %0, i32 0, i32 0, !dbg !1668
  store i64 %10, i64* %11, align 8, !dbg !1669
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %1, i32 0, i32 1, !dbg !1670
  %13 = load i64, i64* %12, align 8, !dbg !1670
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %2, i32 0, i32 1, !dbg !1671
  %15 = load i64, i64* %14, align 8, !dbg !1671
  %16 = add i64 %13, %15, !dbg !1672
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %1, i32 0, i32 0, !dbg !1673
  %18 = load i64, i64* %17, align 8, !dbg !1673
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %2, i32 0, i32 0, !dbg !1674
  %20 = load i64, i64* %19, align 8, !dbg !1674
  %21 = add i64 %18, %20, !dbg !1675
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %2, i32 0, i32 0, !dbg !1676
  %23 = load i64, i64* %22, align 8, !dbg !1676
  %24 = call i64 @FStar_UInt128_carry(i64 noundef %21, i64 noundef %23), !dbg !1677
  %25 = add i64 %16, %24, !dbg !1678
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %0, i32 0, i32 1, !dbg !1679
  store i64 %25, i64* %26, align 8, !dbg !1680
  ret void, !dbg !1681
}

; Function Attrs: noinline nounwind optnone
define internal void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* noalias sret(%struct.FStar_UInt128_uint128_s) align 8 %0, i64 noundef %1) #0 !dbg !1682 {
  %3 = alloca i8*, align 4
  %4 = alloca i64, align 8
  %5 = bitcast %struct.FStar_UInt128_uint128_s* %0 to i8*
  store i8* %5, i8** %3, align 4
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1685, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1687, metadata !DIExpression(DW_OP_deref)), !dbg !1688
  %6 = load i64, i64* %4, align 8, !dbg !1689
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %0, i32 0, i32 0, !dbg !1690
  store i64 %6, i64* %7, align 8, !dbg !1691
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128_s, %struct.FStar_UInt128_uint128_s* %0, i32 0, i32 1, !dbg !1692
  store i64 0, i64* %8, align 8, !dbg !1693
  ret void, !dbg !1694
}

declare dso_local void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef, i8* noundef, i64* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha384_finish(i64* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha384_init(i64* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha2_512(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !1695 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [128 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [128 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [8 x i64], align 8
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64*, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64*, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64*, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64*, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64*, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64*, align 4
  %38 = alloca i64, align 8
  %39 = alloca i64*, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64*, align 4
  %42 = alloca i8*, align 4
  %43 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %44 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %45 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %50 = alloca i32, align 4
  %51 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %52 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i8*, align 4
  %57 = alloca i8*, align 4
  %58 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %59 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %60 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %61 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %62 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %63 = alloca i8*, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %68 = alloca i32, align 4
  %69 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %70 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i8*, align 4
  %75 = alloca i8*, align 4
  %76 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %77 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %78 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %79 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %80 = alloca %struct.FStar_UInt128_uint128_s, align 8
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1696, metadata !DIExpression()), !dbg !1697
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1698, metadata !DIExpression()), !dbg !1699
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1700, metadata !DIExpression()), !dbg !1701
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1702, metadata !DIExpression()), !dbg !1703
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1704, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.declare(metadata [128 x i8]* %11, metadata !1706, metadata !DIExpression()), !dbg !1707
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0, !dbg !1708
  call void @llvm.memset.p0i8.i32(i8* align 1 %81, i8 0, i32 128, i1 false), !dbg !1708
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1709, metadata !DIExpression()), !dbg !1710
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0, !dbg !1711
  store i8* %82, i8** %12, align 4, !dbg !1710
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1712, metadata !DIExpression()), !dbg !1713
  %83 = load i32, i32* %8, align 4, !dbg !1714
  %84 = icmp ule i32 %83, 128, !dbg !1716
  br i1 %84, label %85, label %87, !dbg !1717

85:                                               ; preds = %5
  %86 = load i32, i32* %8, align 4, !dbg !1718
  store i32 %86, i32* %13, align 4, !dbg !1720
  br label %88, !dbg !1721

87:                                               ; preds = %5
  store i32 64, i32* %13, align 4, !dbg !1722
  br label %88

88:                                               ; preds = %87, %85
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1724, metadata !DIExpression()), !dbg !1725
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0, !dbg !1726
  %90 = load i32, i32* %13, align 4, !dbg !1727
  %91 = getelementptr inbounds i8, i8* %89, i32 %90, !dbg !1728
  store i8* %91, i8** %14, align 4, !dbg !1725
  %92 = load i8*, i8** %14, align 4, !dbg !1729
  %93 = load i32, i32* %8, align 4, !dbg !1730
  %94 = icmp ule i32 %93, 128, !dbg !1732
  br i1 %94, label %95, label %100, !dbg !1733

95:                                               ; preds = %88
  %96 = load i8*, i8** %12, align 4, !dbg !1734
  %97 = load i8*, i8** %7, align 4, !dbg !1736
  %98 = load i32, i32* %8, align 4, !dbg !1737
  %99 = mul i32 %98, 1, !dbg !1738
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %96, i8* align 1 %97, i32 %99, i1 false), !dbg !1739
  br label %104, !dbg !1740

100:                                              ; preds = %88
  %101 = load i8*, i8** %12, align 4, !dbg !1741
  %102 = load i8*, i8** %7, align 4, !dbg !1743
  %103 = load i32, i32* %8, align 4, !dbg !1744
  call void @Hacl_Hash_SHA2_hash_512(i8* noundef %101, i8* noundef %102, i32 noundef %103), !dbg !1745
  br label %104

104:                                              ; preds = %100, %95
  call void @llvm.dbg.declare(metadata [128 x i8]* %15, metadata !1746, metadata !DIExpression()), !dbg !1747
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1748
  call void @llvm.memset.p0i8.i32(i8* align 1 %105, i8 54, i32 128, i1 false), !dbg !1748
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1749, metadata !DIExpression()), !dbg !1751
  store i32 0, i32* %16, align 4, !dbg !1751
  br label %106, !dbg !1752

106:                                              ; preds = %124, %104
  %107 = load i32, i32* %16, align 4, !dbg !1753
  %108 = icmp ult i32 %107, 128, !dbg !1755
  br i1 %108, label %109, label %127, !dbg !1756

109:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1757, metadata !DIExpression()), !dbg !1759
  %110 = load i32, i32* %16, align 4, !dbg !1760
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 %110, !dbg !1761
  %112 = load i8, i8* %111, align 1, !dbg !1761
  store i8 %112, i8* %17, align 1, !dbg !1759
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1762, metadata !DIExpression()), !dbg !1763
  %113 = load i32, i32* %16, align 4, !dbg !1764
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 %113, !dbg !1765
  %115 = load i8, i8* %114, align 1, !dbg !1765
  store i8 %115, i8* %18, align 1, !dbg !1763
  %116 = load i8, i8* %17, align 1, !dbg !1766
  %117 = zext i8 %116 to i32, !dbg !1767
  %118 = load i8, i8* %18, align 1, !dbg !1768
  %119 = zext i8 %118 to i32, !dbg !1769
  %120 = xor i32 %117, %119, !dbg !1770
  %121 = trunc i32 %120 to i8, !dbg !1767
  %122 = load i32, i32* %16, align 4, !dbg !1771
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 %122, !dbg !1772
  store i8 %121, i8* %123, align 1, !dbg !1773
  br label %124, !dbg !1774

124:                                              ; preds = %109
  %125 = load i32, i32* %16, align 4, !dbg !1775
  %126 = add i32 %125, 1, !dbg !1775
  store i32 %126, i32* %16, align 4, !dbg !1775
  br label %106, !dbg !1776, !llvm.loop !1777

127:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata [128 x i8]* %19, metadata !1779, metadata !DIExpression()), !dbg !1780
  %128 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !1781
  call void @llvm.memset.p0i8.i32(i8* align 1 %128, i8 92, i32 128, i1 false), !dbg !1781
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1782, metadata !DIExpression()), !dbg !1784
  store i32 0, i32* %20, align 4, !dbg !1784
  br label %129, !dbg !1785

129:                                              ; preds = %147, %127
  %130 = load i32, i32* %20, align 4, !dbg !1786
  %131 = icmp ult i32 %130, 128, !dbg !1788
  br i1 %131, label %132, label %150, !dbg !1789

132:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1790, metadata !DIExpression()), !dbg !1792
  %133 = load i32, i32* %20, align 4, !dbg !1793
  %134 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 %133, !dbg !1794
  %135 = load i8, i8* %134, align 1, !dbg !1794
  store i8 %135, i8* %21, align 1, !dbg !1792
  call void @llvm.dbg.declare(metadata i8* %22, metadata !1795, metadata !DIExpression()), !dbg !1796
  %136 = load i32, i32* %20, align 4, !dbg !1797
  %137 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 %136, !dbg !1798
  %138 = load i8, i8* %137, align 1, !dbg !1798
  store i8 %138, i8* %22, align 1, !dbg !1796
  %139 = load i8, i8* %21, align 1, !dbg !1799
  %140 = zext i8 %139 to i32, !dbg !1800
  %141 = load i8, i8* %22, align 1, !dbg !1801
  %142 = zext i8 %141 to i32, !dbg !1802
  %143 = xor i32 %140, %142, !dbg !1803
  %144 = trunc i32 %143 to i8, !dbg !1800
  %145 = load i32, i32* %20, align 4, !dbg !1804
  %146 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 %145, !dbg !1805
  store i8 %144, i8* %146, align 1, !dbg !1806
  br label %147, !dbg !1807

147:                                              ; preds = %132
  %148 = load i32, i32* %20, align 4, !dbg !1808
  %149 = add i32 %148, 1, !dbg !1808
  store i32 %149, i32* %20, align 4, !dbg !1808
  br label %129, !dbg !1809, !llvm.loop !1810

150:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata [8 x i64]* %23, metadata !1812, metadata !DIExpression()), !dbg !1813
  %151 = bitcast [8 x i64]* %23 to i8*, !dbg !1813
  call void @llvm.memset.p0i8.i32(i8* align 8 %151, i8 0, i32 64, i1 false), !dbg !1813
  br label %152, !dbg !1814

152:                                              ; preds = %150
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1815, metadata !DIExpression()), !dbg !1817
  store i32 0, i32* %24, align 4, !dbg !1817
  call void @llvm.dbg.declare(metadata i64** %25, metadata !1818, metadata !DIExpression()), !dbg !1820
  %153 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1820
  store i64* %153, i64** %25, align 4, !dbg !1820
  call void @llvm.dbg.declare(metadata i64* %26, metadata !1821, metadata !DIExpression()), !dbg !1820
  %154 = load i32, i32* %24, align 4, !dbg !1820
  %155 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i32 0, i32 %154, !dbg !1820
  %156 = load i64, i64* %155, align 8, !dbg !1820
  store i64 %156, i64* %26, align 8, !dbg !1820
  %157 = load i64, i64* %26, align 8, !dbg !1820
  %158 = load i64*, i64** %25, align 4, !dbg !1820
  %159 = load i32, i32* %24, align 4, !dbg !1820
  %160 = getelementptr inbounds i64, i64* %158, i32 %159, !dbg !1820
  store i64 %157, i64* %160, align 8, !dbg !1820
  %161 = load i32, i32* %24, align 4, !dbg !1820
  %162 = add i32 %161, 1, !dbg !1820
  store i32 %162, i32* %24, align 4, !dbg !1820
  %163 = load i32, i32* %24, align 4, !dbg !1820
  call void @llvm.dbg.declare(metadata i64** %27, metadata !1822, metadata !DIExpression()), !dbg !1824
  %164 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1824
  store i64* %164, i64** %27, align 4, !dbg !1824
  call void @llvm.dbg.declare(metadata i64* %28, metadata !1825, metadata !DIExpression()), !dbg !1824
  %165 = load i32, i32* %24, align 4, !dbg !1824
  %166 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i32 0, i32 %165, !dbg !1824
  %167 = load i64, i64* %166, align 8, !dbg !1824
  store i64 %167, i64* %28, align 8, !dbg !1824
  %168 = load i64, i64* %28, align 8, !dbg !1824
  %169 = load i64*, i64** %27, align 4, !dbg !1824
  %170 = load i32, i32* %24, align 4, !dbg !1824
  %171 = getelementptr inbounds i64, i64* %169, i32 %170, !dbg !1824
  store i64 %168, i64* %171, align 8, !dbg !1824
  %172 = load i32, i32* %24, align 4, !dbg !1824
  %173 = add i32 %172, 1, !dbg !1824
  store i32 %173, i32* %24, align 4, !dbg !1824
  %174 = load i32, i32* %24, align 4, !dbg !1824
  call void @llvm.dbg.declare(metadata i64** %29, metadata !1826, metadata !DIExpression()), !dbg !1828
  %175 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1828
  store i64* %175, i64** %29, align 4, !dbg !1828
  call void @llvm.dbg.declare(metadata i64* %30, metadata !1829, metadata !DIExpression()), !dbg !1828
  %176 = load i32, i32* %24, align 4, !dbg !1828
  %177 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i32 0, i32 %176, !dbg !1828
  %178 = load i64, i64* %177, align 8, !dbg !1828
  store i64 %178, i64* %30, align 8, !dbg !1828
  %179 = load i64, i64* %30, align 8, !dbg !1828
  %180 = load i64*, i64** %29, align 4, !dbg !1828
  %181 = load i32, i32* %24, align 4, !dbg !1828
  %182 = getelementptr inbounds i64, i64* %180, i32 %181, !dbg !1828
  store i64 %179, i64* %182, align 8, !dbg !1828
  %183 = load i32, i32* %24, align 4, !dbg !1828
  %184 = add i32 %183, 1, !dbg !1828
  store i32 %184, i32* %24, align 4, !dbg !1828
  %185 = load i32, i32* %24, align 4, !dbg !1828
  call void @llvm.dbg.declare(metadata i64** %31, metadata !1830, metadata !DIExpression()), !dbg !1832
  %186 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1832
  store i64* %186, i64** %31, align 4, !dbg !1832
  call void @llvm.dbg.declare(metadata i64* %32, metadata !1833, metadata !DIExpression()), !dbg !1832
  %187 = load i32, i32* %24, align 4, !dbg !1832
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i32 0, i32 %187, !dbg !1832
  %189 = load i64, i64* %188, align 8, !dbg !1832
  store i64 %189, i64* %32, align 8, !dbg !1832
  %190 = load i64, i64* %32, align 8, !dbg !1832
  %191 = load i64*, i64** %31, align 4, !dbg !1832
  %192 = load i32, i32* %24, align 4, !dbg !1832
  %193 = getelementptr inbounds i64, i64* %191, i32 %192, !dbg !1832
  store i64 %190, i64* %193, align 8, !dbg !1832
  %194 = load i32, i32* %24, align 4, !dbg !1832
  %195 = add i32 %194, 1, !dbg !1832
  store i32 %195, i32* %24, align 4, !dbg !1832
  %196 = load i32, i32* %24, align 4, !dbg !1832
  call void @llvm.dbg.declare(metadata i64** %33, metadata !1834, metadata !DIExpression()), !dbg !1836
  %197 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1836
  store i64* %197, i64** %33, align 4, !dbg !1836
  call void @llvm.dbg.declare(metadata i64* %34, metadata !1837, metadata !DIExpression()), !dbg !1836
  %198 = load i32, i32* %24, align 4, !dbg !1836
  %199 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i32 0, i32 %198, !dbg !1836
  %200 = load i64, i64* %199, align 8, !dbg !1836
  store i64 %200, i64* %34, align 8, !dbg !1836
  %201 = load i64, i64* %34, align 8, !dbg !1836
  %202 = load i64*, i64** %33, align 4, !dbg !1836
  %203 = load i32, i32* %24, align 4, !dbg !1836
  %204 = getelementptr inbounds i64, i64* %202, i32 %203, !dbg !1836
  store i64 %201, i64* %204, align 8, !dbg !1836
  %205 = load i32, i32* %24, align 4, !dbg !1836
  %206 = add i32 %205, 1, !dbg !1836
  store i32 %206, i32* %24, align 4, !dbg !1836
  %207 = load i32, i32* %24, align 4, !dbg !1836
  call void @llvm.dbg.declare(metadata i64** %35, metadata !1838, metadata !DIExpression()), !dbg !1840
  %208 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1840
  store i64* %208, i64** %35, align 4, !dbg !1840
  call void @llvm.dbg.declare(metadata i64* %36, metadata !1841, metadata !DIExpression()), !dbg !1840
  %209 = load i32, i32* %24, align 4, !dbg !1840
  %210 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i32 0, i32 %209, !dbg !1840
  %211 = load i64, i64* %210, align 8, !dbg !1840
  store i64 %211, i64* %36, align 8, !dbg !1840
  %212 = load i64, i64* %36, align 8, !dbg !1840
  %213 = load i64*, i64** %35, align 4, !dbg !1840
  %214 = load i32, i32* %24, align 4, !dbg !1840
  %215 = getelementptr inbounds i64, i64* %213, i32 %214, !dbg !1840
  store i64 %212, i64* %215, align 8, !dbg !1840
  %216 = load i32, i32* %24, align 4, !dbg !1840
  %217 = add i32 %216, 1, !dbg !1840
  store i32 %217, i32* %24, align 4, !dbg !1840
  %218 = load i32, i32* %24, align 4, !dbg !1840
  call void @llvm.dbg.declare(metadata i64** %37, metadata !1842, metadata !DIExpression()), !dbg !1844
  %219 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1844
  store i64* %219, i64** %37, align 4, !dbg !1844
  call void @llvm.dbg.declare(metadata i64* %38, metadata !1845, metadata !DIExpression()), !dbg !1844
  %220 = load i32, i32* %24, align 4, !dbg !1844
  %221 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i32 0, i32 %220, !dbg !1844
  %222 = load i64, i64* %221, align 8, !dbg !1844
  store i64 %222, i64* %38, align 8, !dbg !1844
  %223 = load i64, i64* %38, align 8, !dbg !1844
  %224 = load i64*, i64** %37, align 4, !dbg !1844
  %225 = load i32, i32* %24, align 4, !dbg !1844
  %226 = getelementptr inbounds i64, i64* %224, i32 %225, !dbg !1844
  store i64 %223, i64* %226, align 8, !dbg !1844
  %227 = load i32, i32* %24, align 4, !dbg !1844
  %228 = add i32 %227, 1, !dbg !1844
  store i32 %228, i32* %24, align 4, !dbg !1844
  %229 = load i32, i32* %24, align 4, !dbg !1844
  call void @llvm.dbg.declare(metadata i64** %39, metadata !1846, metadata !DIExpression()), !dbg !1848
  %230 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1848
  store i64* %230, i64** %39, align 4, !dbg !1848
  call void @llvm.dbg.declare(metadata i64* %40, metadata !1849, metadata !DIExpression()), !dbg !1848
  %231 = load i32, i32* %24, align 4, !dbg !1848
  %232 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i32 0, i32 %231, !dbg !1848
  %233 = load i64, i64* %232, align 8, !dbg !1848
  store i64 %233, i64* %40, align 8, !dbg !1848
  %234 = load i64, i64* %40, align 8, !dbg !1848
  %235 = load i64*, i64** %39, align 4, !dbg !1848
  %236 = load i32, i32* %24, align 4, !dbg !1848
  %237 = getelementptr inbounds i64, i64* %235, i32 %236, !dbg !1848
  store i64 %234, i64* %237, align 8, !dbg !1848
  %238 = load i32, i32* %24, align 4, !dbg !1848
  %239 = add i32 %238, 1, !dbg !1848
  store i32 %239, i32* %24, align 4, !dbg !1848
  %240 = load i32, i32* %24, align 4, !dbg !1848
  br label %241, !dbg !1817

241:                                              ; preds = %152
  call void @llvm.dbg.declare(metadata i64** %41, metadata !1850, metadata !DIExpression()), !dbg !1851
  %242 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i32 0, i32 0, !dbg !1852
  store i64* %242, i64** %41, align 4, !dbg !1851
  call void @llvm.dbg.declare(metadata i8** %42, metadata !1853, metadata !DIExpression()), !dbg !1854
  %243 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1855
  store i8* %243, i8** %42, align 4, !dbg !1854
  %244 = load i32, i32* %10, align 4, !dbg !1856
  %245 = icmp eq i32 %244, 0, !dbg !1858
  br i1 %245, label %246, label %249, !dbg !1859

246:                                              ; preds = %241
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %44, i64 noundef 0), !dbg !1860
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %45, i64 noundef 128), !dbg !1862
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %43, %struct.FStar_UInt128_uint128_s* noundef %44, %struct.FStar_UInt128_uint128_s* noundef %45), !dbg !1863
  %247 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1864
  %248 = load i64*, i64** %41, align 4, !dbg !1865
  call void @Hacl_Hash_SHA2_sha512_update_last(%struct.FStar_UInt128_uint128_s* noundef %43, i32 noundef 128, i8* noundef %247, i64* noundef %248), !dbg !1866
  br label %306, !dbg !1867

249:                                              ; preds = %241
  call void @llvm.dbg.declare(metadata i32* %46, metadata !1868, metadata !DIExpression()), !dbg !1870
  store i32 128, i32* %46, align 4, !dbg !1870
  call void @llvm.dbg.declare(metadata i32* %47, metadata !1871, metadata !DIExpression()), !dbg !1872
  %250 = load i32, i32* %10, align 4, !dbg !1873
  %251 = load i32, i32* %46, align 4, !dbg !1874
  %252 = udiv i32 %250, %251, !dbg !1875
  store i32 %252, i32* %47, align 4, !dbg !1872
  call void @llvm.dbg.declare(metadata i32* %48, metadata !1876, metadata !DIExpression()), !dbg !1877
  %253 = load i32, i32* %10, align 4, !dbg !1878
  %254 = load i32, i32* %46, align 4, !dbg !1879
  %255 = urem i32 %253, %254, !dbg !1880
  store i32 %255, i32* %48, align 4, !dbg !1877
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %49, metadata !1881, metadata !DIExpression()), !dbg !1882
  %256 = load i32, i32* %47, align 4, !dbg !1883
  %257 = icmp ugt i32 %256, 0, !dbg !1885
  br i1 %257, label %258, label %274, !dbg !1886

258:                                              ; preds = %249
  %259 = load i32, i32* %48, align 4, !dbg !1887
  %260 = icmp eq i32 %259, 0, !dbg !1888
  br i1 %260, label %261, label %274, !dbg !1889

261:                                              ; preds = %258
  call void @llvm.dbg.declare(metadata i32* %50, metadata !1890, metadata !DIExpression()), !dbg !1892
  %262 = load i32, i32* %47, align 4, !dbg !1893
  %263 = sub i32 %262, 1, !dbg !1894
  store i32 %263, i32* %50, align 4, !dbg !1892
  %264 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %51, i32 0, i32 0, !dbg !1895
  %265 = load i32, i32* %50, align 4, !dbg !1896
  store i32 %265, i32* %264, align 4, !dbg !1895
  %266 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %51, i32 0, i32 1, !dbg !1895
  %267 = load i32, i32* %10, align 4, !dbg !1897
  %268 = load i32, i32* %50, align 4, !dbg !1898
  %269 = load i32, i32* %46, align 4, !dbg !1899
  %270 = mul i32 %268, %269, !dbg !1900
  %271 = sub i32 %267, %270, !dbg !1901
  store i32 %271, i32* %266, align 4, !dbg !1895
  %272 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !1902
  %273 = bitcast %struct.K___uint32_t_uint32_t_s* %51 to i8*, !dbg !1902
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %272, i8* align 4 %273, i32 8, i1 false), !dbg !1902
  br label %281, !dbg !1903

274:                                              ; preds = %258, %249
  %275 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %52, i32 0, i32 0, !dbg !1904
  %276 = load i32, i32* %47, align 4, !dbg !1906
  store i32 %276, i32* %275, align 4, !dbg !1904
  %277 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %52, i32 0, i32 1, !dbg !1904
  %278 = load i32, i32* %48, align 4, !dbg !1907
  store i32 %278, i32* %277, align 4, !dbg !1904
  %279 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !1908
  %280 = bitcast %struct.K___uint32_t_uint32_t_s* %52 to i8*, !dbg !1908
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %279, i8* align 4 %280, i32 8, i1 false), !dbg !1908
  br label %281

281:                                              ; preds = %274, %261
  call void @llvm.dbg.declare(metadata i32* %53, metadata !1909, metadata !DIExpression()), !dbg !1910
  %282 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !1911
  %283 = load i32, i32* %282, align 4, !dbg !1911
  store i32 %283, i32* %53, align 4, !dbg !1910
  call void @llvm.dbg.declare(metadata i32* %54, metadata !1912, metadata !DIExpression()), !dbg !1913
  %284 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !1914
  %285 = load i32, i32* %284, align 4, !dbg !1914
  store i32 %285, i32* %54, align 4, !dbg !1913
  call void @llvm.dbg.declare(metadata i32* %55, metadata !1915, metadata !DIExpression()), !dbg !1916
  %286 = load i32, i32* %53, align 4, !dbg !1917
  %287 = load i32, i32* %46, align 4, !dbg !1918
  %288 = mul i32 %286, %287, !dbg !1919
  store i32 %288, i32* %55, align 4, !dbg !1916
  call void @llvm.dbg.declare(metadata i8** %56, metadata !1920, metadata !DIExpression()), !dbg !1921
  %289 = load i8*, i8** %9, align 4, !dbg !1922
  store i8* %289, i8** %56, align 4, !dbg !1921
  call void @llvm.dbg.declare(metadata i8** %57, metadata !1923, metadata !DIExpression()), !dbg !1924
  %290 = load i8*, i8** %9, align 4, !dbg !1925
  %291 = load i32, i32* %55, align 4, !dbg !1926
  %292 = getelementptr inbounds i8, i8* %290, i32 %291, !dbg !1927
  store i8* %292, i8** %57, align 4, !dbg !1924
  %293 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1928
  %294 = load i64*, i64** %41, align 4, !dbg !1929
  call void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef 128, i8* noundef %293, i64* noundef %294), !dbg !1930
  %295 = load i32, i32* %53, align 4, !dbg !1931
  %296 = mul i32 %295, 128, !dbg !1932
  %297 = load i8*, i8** %56, align 4, !dbg !1933
  %298 = load i64*, i64** %41, align 4, !dbg !1934
  call void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef %296, i8* noundef %297, i64* noundef %298), !dbg !1935
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %60, i64 noundef 128), !dbg !1936
  %299 = load i32, i32* %55, align 4, !dbg !1937
  %300 = zext i32 %299 to i64, !dbg !1938
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %61, i64 noundef %300), !dbg !1939
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %59, %struct.FStar_UInt128_uint128_s* noundef %60, %struct.FStar_UInt128_uint128_s* noundef %61), !dbg !1940
  %301 = load i32, i32* %54, align 4, !dbg !1941
  %302 = zext i32 %301 to i64, !dbg !1942
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %62, i64 noundef %302), !dbg !1943
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %58, %struct.FStar_UInt128_uint128_s* noundef %59, %struct.FStar_UInt128_uint128_s* noundef %62), !dbg !1944
  %303 = load i32, i32* %54, align 4, !dbg !1945
  %304 = load i8*, i8** %57, align 4, !dbg !1946
  %305 = load i64*, i64** %41, align 4, !dbg !1947
  call void @Hacl_Hash_SHA2_sha512_update_last(%struct.FStar_UInt128_uint128_s* noundef %58, i32 noundef %303, i8* noundef %304, i64* noundef %305), !dbg !1948
  br label %306

306:                                              ; preds = %281, %246
  %307 = load i64*, i64** %41, align 4, !dbg !1949
  %308 = load i8*, i8** %42, align 4, !dbg !1950
  call void @Hacl_Hash_SHA2_sha512_finish(i64* noundef %307, i8* noundef %308), !dbg !1951
  call void @llvm.dbg.declare(metadata i8** %63, metadata !1952, metadata !DIExpression()), !dbg !1953
  %309 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1954
  store i8* %309, i8** %63, align 4, !dbg !1953
  %310 = load i64*, i64** %41, align 4, !dbg !1955
  call void @Hacl_Hash_SHA2_sha512_init(i64* noundef %310), !dbg !1956
  call void @llvm.dbg.declare(metadata i32* %64, metadata !1957, metadata !DIExpression()), !dbg !1958
  store i32 128, i32* %64, align 4, !dbg !1958
  call void @llvm.dbg.declare(metadata i32* %65, metadata !1959, metadata !DIExpression()), !dbg !1960
  %311 = load i32, i32* %64, align 4, !dbg !1961
  %312 = udiv i32 64, %311, !dbg !1962
  store i32 %312, i32* %65, align 4, !dbg !1960
  call void @llvm.dbg.declare(metadata i32* %66, metadata !1963, metadata !DIExpression()), !dbg !1964
  %313 = load i32, i32* %64, align 4, !dbg !1965
  %314 = urem i32 64, %313, !dbg !1966
  store i32 %314, i32* %66, align 4, !dbg !1964
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %67, metadata !1967, metadata !DIExpression()), !dbg !1968
  %315 = load i32, i32* %65, align 4, !dbg !1969
  %316 = icmp ugt i32 %315, 0, !dbg !1971
  br i1 %316, label %317, label %332, !dbg !1972

317:                                              ; preds = %306
  %318 = load i32, i32* %66, align 4, !dbg !1973
  %319 = icmp eq i32 %318, 0, !dbg !1974
  br i1 %319, label %320, label %332, !dbg !1975

320:                                              ; preds = %317
  call void @llvm.dbg.declare(metadata i32* %68, metadata !1976, metadata !DIExpression()), !dbg !1978
  %321 = load i32, i32* %65, align 4, !dbg !1979
  %322 = sub i32 %321, 1, !dbg !1980
  store i32 %322, i32* %68, align 4, !dbg !1978
  %323 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %69, i32 0, i32 0, !dbg !1981
  %324 = load i32, i32* %68, align 4, !dbg !1982
  store i32 %324, i32* %323, align 4, !dbg !1981
  %325 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %69, i32 0, i32 1, !dbg !1981
  %326 = load i32, i32* %68, align 4, !dbg !1983
  %327 = load i32, i32* %64, align 4, !dbg !1984
  %328 = mul i32 %326, %327, !dbg !1985
  %329 = sub i32 64, %328, !dbg !1986
  store i32 %329, i32* %325, align 4, !dbg !1981
  %330 = bitcast %struct.K___uint32_t_uint32_t_s* %67 to i8*, !dbg !1987
  %331 = bitcast %struct.K___uint32_t_uint32_t_s* %69 to i8*, !dbg !1987
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %330, i8* align 4 %331, i32 8, i1 false), !dbg !1987
  br label %339, !dbg !1988

332:                                              ; preds = %317, %306
  %333 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %70, i32 0, i32 0, !dbg !1989
  %334 = load i32, i32* %65, align 4, !dbg !1991
  store i32 %334, i32* %333, align 4, !dbg !1989
  %335 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %70, i32 0, i32 1, !dbg !1989
  %336 = load i32, i32* %66, align 4, !dbg !1992
  store i32 %336, i32* %335, align 4, !dbg !1989
  %337 = bitcast %struct.K___uint32_t_uint32_t_s* %67 to i8*, !dbg !1993
  %338 = bitcast %struct.K___uint32_t_uint32_t_s* %70 to i8*, !dbg !1993
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %337, i8* align 4 %338, i32 8, i1 false), !dbg !1993
  br label %339

339:                                              ; preds = %332, %320
  call void @llvm.dbg.declare(metadata i32* %71, metadata !1994, metadata !DIExpression()), !dbg !1995
  %340 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %67, i32 0, i32 0, !dbg !1996
  %341 = load i32, i32* %340, align 4, !dbg !1996
  store i32 %341, i32* %71, align 4, !dbg !1995
  call void @llvm.dbg.declare(metadata i32* %72, metadata !1997, metadata !DIExpression()), !dbg !1998
  %342 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %67, i32 0, i32 1, !dbg !1999
  %343 = load i32, i32* %342, align 4, !dbg !1999
  store i32 %343, i32* %72, align 4, !dbg !1998
  call void @llvm.dbg.declare(metadata i32* %73, metadata !2000, metadata !DIExpression()), !dbg !2001
  %344 = load i32, i32* %71, align 4, !dbg !2002
  %345 = load i32, i32* %64, align 4, !dbg !2003
  %346 = mul i32 %344, %345, !dbg !2004
  store i32 %346, i32* %73, align 4, !dbg !2001
  call void @llvm.dbg.declare(metadata i8** %74, metadata !2005, metadata !DIExpression()), !dbg !2006
  %347 = load i8*, i8** %63, align 4, !dbg !2007
  store i8* %347, i8** %74, align 4, !dbg !2006
  call void @llvm.dbg.declare(metadata i8** %75, metadata !2008, metadata !DIExpression()), !dbg !2009
  %348 = load i8*, i8** %63, align 4, !dbg !2010
  %349 = load i32, i32* %73, align 4, !dbg !2011
  %350 = getelementptr inbounds i8, i8* %348, i32 %349, !dbg !2012
  store i8* %350, i8** %75, align 4, !dbg !2009
  %351 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !2013
  %352 = load i64*, i64** %41, align 4, !dbg !2014
  call void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef 128, i8* noundef %351, i64* noundef %352), !dbg !2015
  %353 = load i32, i32* %71, align 4, !dbg !2016
  %354 = mul i32 %353, 128, !dbg !2017
  %355 = load i8*, i8** %74, align 4, !dbg !2018
  %356 = load i64*, i64** %41, align 4, !dbg !2019
  call void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef %354, i8* noundef %355, i64* noundef %356), !dbg !2020
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %78, i64 noundef 128), !dbg !2021
  %357 = load i32, i32* %73, align 4, !dbg !2022
  %358 = zext i32 %357 to i64, !dbg !2023
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %79, i64 noundef %358), !dbg !2024
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %77, %struct.FStar_UInt128_uint128_s* noundef %78, %struct.FStar_UInt128_uint128_s* noundef %79), !dbg !2025
  %359 = load i32, i32* %72, align 4, !dbg !2026
  %360 = zext i32 %359 to i64, !dbg !2027
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %80, i64 noundef %360), !dbg !2028
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %76, %struct.FStar_UInt128_uint128_s* noundef %77, %struct.FStar_UInt128_uint128_s* noundef %80), !dbg !2029
  %361 = load i32, i32* %72, align 4, !dbg !2030
  %362 = load i8*, i8** %75, align 4, !dbg !2031
  %363 = load i64*, i64** %41, align 4, !dbg !2032
  call void @Hacl_Hash_SHA2_sha512_update_last(%struct.FStar_UInt128_uint128_s* noundef %76, i32 noundef %361, i8* noundef %362, i64* noundef %363), !dbg !2033
  %364 = load i64*, i64** %41, align 4, !dbg !2034
  %365 = load i8*, i8** %6, align 4, !dbg !2035
  call void @Hacl_Hash_SHA2_sha512_finish(i64* noundef %364, i8* noundef %365), !dbg !2036
  ret void, !dbg !2037
}

declare dso_local void @Hacl_Hash_SHA2_hash_512(i8* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha512_update_last(%struct.FStar_UInt128_uint128_s* noundef, i32 noundef, i8* noundef, i64* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef, i8* noundef, i64* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha512_finish(i64* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha512_init(i64* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha3_224(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !2038 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [144 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [144 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [144 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [25 x i64], align 8
  %24 = alloca i8*, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %31 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 4
  %36 = alloca i8*, align 4
  %37 = alloca i32, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca [32 x i64], align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %46 = alloca i32, align 4
  %47 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %48 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i8*, align 4
  %53 = alloca i8*, align 4
  %54 = alloca i32, align 4
  %55 = alloca [256 x i8], align 1
  %56 = alloca [32 x i64], align 8
  %57 = alloca i32, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2039, metadata !DIExpression()), !dbg !2040
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2041, metadata !DIExpression()), !dbg !2042
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2043, metadata !DIExpression()), !dbg !2044
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2045, metadata !DIExpression()), !dbg !2046
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2047, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.declare(metadata [144 x i8]* %11, metadata !2049, metadata !DIExpression()), !dbg !2053
  %58 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i32 0, i32 0, !dbg !2054
  call void @llvm.memset.p0i8.i32(i8* align 1 %58, i8 0, i32 144, i1 false), !dbg !2054
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2055, metadata !DIExpression()), !dbg !2056
  %59 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i32 0, i32 0, !dbg !2057
  store i8* %59, i8** %12, align 4, !dbg !2056
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2058, metadata !DIExpression()), !dbg !2059
  %60 = load i32, i32* %8, align 4, !dbg !2060
  %61 = icmp ule i32 %60, 144, !dbg !2062
  br i1 %61, label %62, label %64, !dbg !2063

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !2064
  store i32 %63, i32* %13, align 4, !dbg !2066
  br label %65, !dbg !2067

64:                                               ; preds = %5
  store i32 28, i32* %13, align 4, !dbg !2068
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2070, metadata !DIExpression()), !dbg !2071
  %66 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i32 0, i32 0, !dbg !2072
  %67 = load i32, i32* %13, align 4, !dbg !2073
  %68 = getelementptr inbounds i8, i8* %66, i32 %67, !dbg !2074
  store i8* %68, i8** %14, align 4, !dbg !2071
  %69 = load i8*, i8** %14, align 4, !dbg !2075
  %70 = load i32, i32* %8, align 4, !dbg !2076
  %71 = icmp ule i32 %70, 144, !dbg !2078
  br i1 %71, label %72, label %77, !dbg !2079

72:                                               ; preds = %65
  %73 = load i8*, i8** %12, align 4, !dbg !2080
  %74 = load i8*, i8** %7, align 4, !dbg !2082
  %75 = load i32, i32* %8, align 4, !dbg !2083
  %76 = mul i32 %75, 1, !dbg !2084
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %73, i8* align 1 %74, i32 %76, i1 false), !dbg !2085
  br label %81, !dbg !2086

77:                                               ; preds = %65
  %78 = load i8*, i8** %12, align 4, !dbg !2087
  %79 = load i8*, i8** %7, align 4, !dbg !2089
  %80 = load i32, i32* %8, align 4, !dbg !2090
  call void @Hacl_Hash_SHA3_sha3_224(i8* noundef %78, i8* noundef %79, i32 noundef %80), !dbg !2091
  br label %81

81:                                               ; preds = %77, %72
  call void @llvm.dbg.declare(metadata [144 x i8]* %15, metadata !2092, metadata !DIExpression()), !dbg !2093
  %82 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i32 0, i32 0, !dbg !2094
  call void @llvm.memset.p0i8.i32(i8* align 1 %82, i8 54, i32 144, i1 false), !dbg !2094
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2095, metadata !DIExpression()), !dbg !2097
  store i32 0, i32* %16, align 4, !dbg !2097
  br label %83, !dbg !2098

83:                                               ; preds = %101, %81
  %84 = load i32, i32* %16, align 4, !dbg !2099
  %85 = icmp ult i32 %84, 144, !dbg !2101
  br i1 %85, label %86, label %104, !dbg !2102

86:                                               ; preds = %83
  call void @llvm.dbg.declare(metadata i8* %17, metadata !2103, metadata !DIExpression()), !dbg !2105
  %87 = load i32, i32* %16, align 4, !dbg !2106
  %88 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i32 0, i32 %87, !dbg !2107
  %89 = load i8, i8* %88, align 1, !dbg !2107
  store i8 %89, i8* %17, align 1, !dbg !2105
  call void @llvm.dbg.declare(metadata i8* %18, metadata !2108, metadata !DIExpression()), !dbg !2109
  %90 = load i32, i32* %16, align 4, !dbg !2110
  %91 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i32 0, i32 %90, !dbg !2111
  %92 = load i8, i8* %91, align 1, !dbg !2111
  store i8 %92, i8* %18, align 1, !dbg !2109
  %93 = load i8, i8* %17, align 1, !dbg !2112
  %94 = zext i8 %93 to i32, !dbg !2113
  %95 = load i8, i8* %18, align 1, !dbg !2114
  %96 = zext i8 %95 to i32, !dbg !2115
  %97 = xor i32 %94, %96, !dbg !2116
  %98 = trunc i32 %97 to i8, !dbg !2113
  %99 = load i32, i32* %16, align 4, !dbg !2117
  %100 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i32 0, i32 %99, !dbg !2118
  store i8 %98, i8* %100, align 1, !dbg !2119
  br label %101, !dbg !2120

101:                                              ; preds = %86
  %102 = load i32, i32* %16, align 4, !dbg !2121
  %103 = add i32 %102, 1, !dbg !2121
  store i32 %103, i32* %16, align 4, !dbg !2121
  br label %83, !dbg !2122, !llvm.loop !2123

104:                                              ; preds = %83
  call void @llvm.dbg.declare(metadata [144 x i8]* %19, metadata !2125, metadata !DIExpression()), !dbg !2126
  %105 = getelementptr inbounds [144 x i8], [144 x i8]* %19, i32 0, i32 0, !dbg !2127
  call void @llvm.memset.p0i8.i32(i8* align 1 %105, i8 92, i32 144, i1 false), !dbg !2127
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2128, metadata !DIExpression()), !dbg !2130
  store i32 0, i32* %20, align 4, !dbg !2130
  br label %106, !dbg !2131

106:                                              ; preds = %124, %104
  %107 = load i32, i32* %20, align 4, !dbg !2132
  %108 = icmp ult i32 %107, 144, !dbg !2134
  br i1 %108, label %109, label %127, !dbg !2135

109:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata i8* %21, metadata !2136, metadata !DIExpression()), !dbg !2138
  %110 = load i32, i32* %20, align 4, !dbg !2139
  %111 = getelementptr inbounds [144 x i8], [144 x i8]* %19, i32 0, i32 %110, !dbg !2140
  %112 = load i8, i8* %111, align 1, !dbg !2140
  store i8 %112, i8* %21, align 1, !dbg !2138
  call void @llvm.dbg.declare(metadata i8* %22, metadata !2141, metadata !DIExpression()), !dbg !2142
  %113 = load i32, i32* %20, align 4, !dbg !2143
  %114 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i32 0, i32 %113, !dbg !2144
  %115 = load i8, i8* %114, align 1, !dbg !2144
  store i8 %115, i8* %22, align 1, !dbg !2142
  %116 = load i8, i8* %21, align 1, !dbg !2145
  %117 = zext i8 %116 to i32, !dbg !2146
  %118 = load i8, i8* %22, align 1, !dbg !2147
  %119 = zext i8 %118 to i32, !dbg !2148
  %120 = xor i32 %117, %119, !dbg !2149
  %121 = trunc i32 %120 to i8, !dbg !2146
  %122 = load i32, i32* %20, align 4, !dbg !2150
  %123 = getelementptr inbounds [144 x i8], [144 x i8]* %19, i32 0, i32 %122, !dbg !2151
  store i8 %121, i8* %123, align 1, !dbg !2152
  br label %124, !dbg !2153

124:                                              ; preds = %109
  %125 = load i32, i32* %20, align 4, !dbg !2154
  %126 = add i32 %125, 1, !dbg !2154
  store i32 %126, i32* %20, align 4, !dbg !2154
  br label %106, !dbg !2155, !llvm.loop !2156

127:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata [25 x i64]* %23, metadata !2158, metadata !DIExpression()), !dbg !2162
  %128 = bitcast [25 x i64]* %23 to i8*, !dbg !2162
  call void @llvm.memset.p0i8.i32(i8* align 8 %128, i8 0, i32 200, i1 false), !dbg !2162
  call void @llvm.dbg.declare(metadata i8** %24, metadata !2163, metadata !DIExpression()), !dbg !2164
  %129 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i32 0, i32 0, !dbg !2165
  store i8* %129, i8** %24, align 4, !dbg !2164
  %130 = load i32, i32* %10, align 4, !dbg !2166
  %131 = icmp eq i32 %130, 0, !dbg !2168
  br i1 %131, label %132, label %135, !dbg !2169

132:                                              ; preds = %127
  %133 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2170
  %134 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i32 0, i32 0, !dbg !2172
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 9, i64* noundef %133, i8* noundef %134, i32 noundef 144), !dbg !2173
  br label %187, !dbg !2174

135:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2175, metadata !DIExpression()), !dbg !2177
  store i32 144, i32* %25, align 4, !dbg !2177
  call void @llvm.dbg.declare(metadata i32* %26, metadata !2178, metadata !DIExpression()), !dbg !2179
  %136 = load i32, i32* %10, align 4, !dbg !2180
  %137 = load i32, i32* %25, align 4, !dbg !2181
  %138 = udiv i32 %136, %137, !dbg !2182
  store i32 %138, i32* %26, align 4, !dbg !2179
  call void @llvm.dbg.declare(metadata i32* %27, metadata !2183, metadata !DIExpression()), !dbg !2184
  %139 = load i32, i32* %10, align 4, !dbg !2185
  %140 = load i32, i32* %25, align 4, !dbg !2186
  %141 = urem i32 %139, %140, !dbg !2187
  store i32 %141, i32* %27, align 4, !dbg !2184
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !2188, metadata !DIExpression()), !dbg !2189
  %142 = load i32, i32* %26, align 4, !dbg !2190
  %143 = icmp ugt i32 %142, 0, !dbg !2192
  br i1 %143, label %144, label %160, !dbg !2193

144:                                              ; preds = %135
  %145 = load i32, i32* %27, align 4, !dbg !2194
  %146 = icmp eq i32 %145, 0, !dbg !2195
  br i1 %146, label %147, label %160, !dbg !2196

147:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata i32* %29, metadata !2197, metadata !DIExpression()), !dbg !2199
  %148 = load i32, i32* %26, align 4, !dbg !2200
  %149 = sub i32 %148, 1, !dbg !2201
  store i32 %149, i32* %29, align 4, !dbg !2199
  %150 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !2202
  %151 = load i32, i32* %29, align 4, !dbg !2203
  store i32 %151, i32* %150, align 4, !dbg !2202
  %152 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !2202
  %153 = load i32, i32* %10, align 4, !dbg !2204
  %154 = load i32, i32* %29, align 4, !dbg !2205
  %155 = load i32, i32* %25, align 4, !dbg !2206
  %156 = mul i32 %154, %155, !dbg !2207
  %157 = sub i32 %153, %156, !dbg !2208
  store i32 %157, i32* %152, align 4, !dbg !2202
  %158 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2209
  %159 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !2209
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %158, i8* align 4 %159, i32 8, i1 false), !dbg !2209
  br label %167, !dbg !2210

160:                                              ; preds = %144, %135
  %161 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !2211
  %162 = load i32, i32* %26, align 4, !dbg !2213
  store i32 %162, i32* %161, align 4, !dbg !2211
  %163 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !2211
  %164 = load i32, i32* %27, align 4, !dbg !2214
  store i32 %164, i32* %163, align 4, !dbg !2211
  %165 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2215
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !2215
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %165, i8* align 4 %166, i32 8, i1 false), !dbg !2215
  br label %167

167:                                              ; preds = %160, %147
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2216, metadata !DIExpression()), !dbg !2217
  %168 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !2218
  %169 = load i32, i32* %168, align 4, !dbg !2218
  store i32 %169, i32* %32, align 4, !dbg !2217
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2219, metadata !DIExpression()), !dbg !2220
  %170 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !2221
  %171 = load i32, i32* %170, align 4, !dbg !2221
  store i32 %171, i32* %33, align 4, !dbg !2220
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2222, metadata !DIExpression()), !dbg !2223
  %172 = load i32, i32* %32, align 4, !dbg !2224
  %173 = load i32, i32* %25, align 4, !dbg !2225
  %174 = mul i32 %172, %173, !dbg !2226
  store i32 %174, i32* %34, align 4, !dbg !2223
  call void @llvm.dbg.declare(metadata i8** %35, metadata !2227, metadata !DIExpression()), !dbg !2228
  %175 = load i8*, i8** %9, align 4, !dbg !2229
  store i8* %175, i8** %35, align 4, !dbg !2228
  call void @llvm.dbg.declare(metadata i8** %36, metadata !2230, metadata !DIExpression()), !dbg !2231
  %176 = load i8*, i8** %9, align 4, !dbg !2232
  %177 = load i32, i32* %34, align 4, !dbg !2233
  %178 = getelementptr inbounds i8, i8* %176, i32 %177, !dbg !2234
  store i8* %178, i8** %36, align 4, !dbg !2231
  %179 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2235
  %180 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i32 0, i32 0, !dbg !2236
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, i64* noundef %179, i8* noundef %180, i32 noundef 1), !dbg !2237
  %181 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2238
  %182 = load i8*, i8** %35, align 4, !dbg !2239
  %183 = load i32, i32* %32, align 4, !dbg !2240
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, i64* noundef %181, i8* noundef %182, i32 noundef %183), !dbg !2241
  %184 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2242
  %185 = load i8*, i8** %36, align 4, !dbg !2243
  %186 = load i32, i32* %33, align 4, !dbg !2244
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 9, i64* noundef %184, i8* noundef %185, i32 noundef %186), !dbg !2245
  br label %187

187:                                              ; preds = %167, %132
  call void @llvm.dbg.declare(metadata i32* %37, metadata !2246, metadata !DIExpression()), !dbg !2247
  store i32 28, i32* %37, align 4, !dbg !2247
  call void @llvm.dbg.declare(metadata [256 x i8]* %38, metadata !2248, metadata !DIExpression()), !dbg !2252
  %188 = bitcast [256 x i8]* %38 to i8*, !dbg !2252
  call void @llvm.memset.p0i8.i32(i8* align 1 %188, i8 0, i32 256, i1 false), !dbg !2252
  call void @llvm.dbg.declare(metadata [32 x i64]* %39, metadata !2253, metadata !DIExpression()), !dbg !2257
  %189 = bitcast [32 x i64]* %39 to i8*, !dbg !2257
  call void @llvm.memset.p0i8.i32(i8* align 8 %189, i8 0, i32 256, i1 false), !dbg !2257
  %190 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i32 0, i32 0, !dbg !2258
  %191 = bitcast i64* %190 to i8*, !dbg !2258
  %192 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2258
  %193 = bitcast i64* %192 to i8*, !dbg !2258
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %191, i8* align 8 %193, i32 200, i1 false), !dbg !2258
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2259, metadata !DIExpression()), !dbg !2261
  store i32 0, i32* %40, align 4, !dbg !2261
  br label %194, !dbg !2262

194:                                              ; preds = %205, %187
  %195 = load i32, i32* %40, align 4, !dbg !2263
  %196 = icmp ult i32 %195, 32, !dbg !2265
  br i1 %196, label %197, label %208, !dbg !2266

197:                                              ; preds = %194
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !2267
  %199 = load i32, i32* %40, align 4, !dbg !2267
  %200 = mul i32 %199, 8, !dbg !2267
  %201 = getelementptr inbounds i8, i8* %198, i32 %200, !dbg !2267
  %202 = load i32, i32* %40, align 4, !dbg !2267
  %203 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i32 0, i32 %202, !dbg !2267
  %204 = load i64, i64* %203, align 8, !dbg !2267
  call void @store64(i8* noundef %201, i64 noundef %204), !dbg !2267
  br label %205, !dbg !2269

205:                                              ; preds = %197
  %206 = load i32, i32* %40, align 4, !dbg !2270
  %207 = add i32 %206, 1, !dbg !2270
  store i32 %207, i32* %40, align 4, !dbg !2270
  br label %194, !dbg !2271, !llvm.loop !2272

208:                                              ; preds = %194
  %209 = load i8*, i8** %24, align 4, !dbg !2274
  %210 = getelementptr inbounds i8, i8* %209, i32 28, !dbg !2275
  %211 = load i32, i32* %37, align 4, !dbg !2276
  %212 = sub i32 0, %211, !dbg !2277
  %213 = getelementptr inbounds i8, i8* %210, i32 %212, !dbg !2277
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !2278
  %215 = load i32, i32* %37, align 4, !dbg !2279
  %216 = mul i32 %215, 1, !dbg !2280
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %213, i8* align 1 %214, i32 %216, i1 false), !dbg !2278
  call void @llvm.dbg.declare(metadata i8** %41, metadata !2281, metadata !DIExpression()), !dbg !2282
  %217 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i32 0, i32 0, !dbg !2283
  store i8* %217, i8** %41, align 4, !dbg !2282
  %218 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2284
  call void @Hacl_Hash_SHA3_init_(i8 noundef zeroext 9, i64* noundef %218), !dbg !2285
  call void @llvm.dbg.declare(metadata i32* %42, metadata !2286, metadata !DIExpression()), !dbg !2287
  store i32 144, i32* %42, align 4, !dbg !2287
  call void @llvm.dbg.declare(metadata i32* %43, metadata !2288, metadata !DIExpression()), !dbg !2289
  %219 = load i32, i32* %42, align 4, !dbg !2290
  %220 = udiv i32 28, %219, !dbg !2291
  store i32 %220, i32* %43, align 4, !dbg !2289
  call void @llvm.dbg.declare(metadata i32* %44, metadata !2292, metadata !DIExpression()), !dbg !2293
  %221 = load i32, i32* %42, align 4, !dbg !2294
  %222 = urem i32 28, %221, !dbg !2295
  store i32 %222, i32* %44, align 4, !dbg !2293
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %45, metadata !2296, metadata !DIExpression()), !dbg !2297
  %223 = load i32, i32* %43, align 4, !dbg !2298
  %224 = icmp ugt i32 %223, 0, !dbg !2300
  br i1 %224, label %225, label %240, !dbg !2301

225:                                              ; preds = %208
  %226 = load i32, i32* %44, align 4, !dbg !2302
  %227 = icmp eq i32 %226, 0, !dbg !2303
  br i1 %227, label %228, label %240, !dbg !2304

228:                                              ; preds = %225
  call void @llvm.dbg.declare(metadata i32* %46, metadata !2305, metadata !DIExpression()), !dbg !2307
  %229 = load i32, i32* %43, align 4, !dbg !2308
  %230 = sub i32 %229, 1, !dbg !2309
  store i32 %230, i32* %46, align 4, !dbg !2307
  %231 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 0, !dbg !2310
  %232 = load i32, i32* %46, align 4, !dbg !2311
  store i32 %232, i32* %231, align 4, !dbg !2310
  %233 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 1, !dbg !2310
  %234 = load i32, i32* %46, align 4, !dbg !2312
  %235 = load i32, i32* %42, align 4, !dbg !2313
  %236 = mul i32 %234, %235, !dbg !2314
  %237 = sub i32 28, %236, !dbg !2315
  store i32 %237, i32* %233, align 4, !dbg !2310
  %238 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2316
  %239 = bitcast %struct.K___uint32_t_uint32_t_s* %47 to i8*, !dbg !2316
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %238, i8* align 4 %239, i32 8, i1 false), !dbg !2316
  br label %247, !dbg !2317

240:                                              ; preds = %225, %208
  %241 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !2318
  %242 = load i32, i32* %43, align 4, !dbg !2320
  store i32 %242, i32* %241, align 4, !dbg !2318
  %243 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !2318
  %244 = load i32, i32* %44, align 4, !dbg !2321
  store i32 %244, i32* %243, align 4, !dbg !2318
  %245 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2322
  %246 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !2322
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %245, i8* align 4 %246, i32 8, i1 false), !dbg !2322
  br label %247

247:                                              ; preds = %240, %228
  call void @llvm.dbg.declare(metadata i32* %49, metadata !2323, metadata !DIExpression()), !dbg !2324
  %248 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 0, !dbg !2325
  %249 = load i32, i32* %248, align 4, !dbg !2325
  store i32 %249, i32* %49, align 4, !dbg !2324
  call void @llvm.dbg.declare(metadata i32* %50, metadata !2326, metadata !DIExpression()), !dbg !2327
  %250 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 1, !dbg !2328
  %251 = load i32, i32* %250, align 4, !dbg !2328
  store i32 %251, i32* %50, align 4, !dbg !2327
  call void @llvm.dbg.declare(metadata i32* %51, metadata !2329, metadata !DIExpression()), !dbg !2330
  %252 = load i32, i32* %49, align 4, !dbg !2331
  %253 = load i32, i32* %42, align 4, !dbg !2332
  %254 = mul i32 %252, %253, !dbg !2333
  store i32 %254, i32* %51, align 4, !dbg !2330
  call void @llvm.dbg.declare(metadata i8** %52, metadata !2334, metadata !DIExpression()), !dbg !2335
  %255 = load i8*, i8** %41, align 4, !dbg !2336
  store i8* %255, i8** %52, align 4, !dbg !2335
  call void @llvm.dbg.declare(metadata i8** %53, metadata !2337, metadata !DIExpression()), !dbg !2338
  %256 = load i8*, i8** %41, align 4, !dbg !2339
  %257 = load i32, i32* %51, align 4, !dbg !2340
  %258 = getelementptr inbounds i8, i8* %256, i32 %257, !dbg !2341
  store i8* %258, i8** %53, align 4, !dbg !2338
  %259 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2342
  %260 = getelementptr inbounds [144 x i8], [144 x i8]* %19, i32 0, i32 0, !dbg !2343
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, i64* noundef %259, i8* noundef %260, i32 noundef 1), !dbg !2344
  %261 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2345
  %262 = load i8*, i8** %52, align 4, !dbg !2346
  %263 = load i32, i32* %49, align 4, !dbg !2347
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, i64* noundef %261, i8* noundef %262, i32 noundef %263), !dbg !2348
  %264 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2349
  %265 = load i8*, i8** %53, align 4, !dbg !2350
  %266 = load i32, i32* %50, align 4, !dbg !2351
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 9, i64* noundef %264, i8* noundef %265, i32 noundef %266), !dbg !2352
  call void @llvm.dbg.declare(metadata i32* %54, metadata !2353, metadata !DIExpression()), !dbg !2354
  store i32 28, i32* %54, align 4, !dbg !2354
  call void @llvm.dbg.declare(metadata [256 x i8]* %55, metadata !2355, metadata !DIExpression()), !dbg !2356
  %267 = bitcast [256 x i8]* %55 to i8*, !dbg !2356
  call void @llvm.memset.p0i8.i32(i8* align 1 %267, i8 0, i32 256, i1 false), !dbg !2356
  call void @llvm.dbg.declare(metadata [32 x i64]* %56, metadata !2357, metadata !DIExpression()), !dbg !2358
  %268 = bitcast [32 x i64]* %56 to i8*, !dbg !2358
  call void @llvm.memset.p0i8.i32(i8* align 8 %268, i8 0, i32 256, i1 false), !dbg !2358
  %269 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i32 0, i32 0, !dbg !2359
  %270 = bitcast i64* %269 to i8*, !dbg !2359
  %271 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2359
  %272 = bitcast i64* %271 to i8*, !dbg !2359
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %270, i8* align 8 %272, i32 200, i1 false), !dbg !2359
  call void @llvm.dbg.declare(metadata i32* %57, metadata !2360, metadata !DIExpression()), !dbg !2362
  store i32 0, i32* %57, align 4, !dbg !2362
  br label %273, !dbg !2363

273:                                              ; preds = %284, %247
  %274 = load i32, i32* %57, align 4, !dbg !2364
  %275 = icmp ult i32 %274, 32, !dbg !2366
  br i1 %275, label %276, label %287, !dbg !2367

276:                                              ; preds = %273
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i32 0, i32 0, !dbg !2368
  %278 = load i32, i32* %57, align 4, !dbg !2368
  %279 = mul i32 %278, 8, !dbg !2368
  %280 = getelementptr inbounds i8, i8* %277, i32 %279, !dbg !2368
  %281 = load i32, i32* %57, align 4, !dbg !2368
  %282 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i32 0, i32 %281, !dbg !2368
  %283 = load i64, i64* %282, align 8, !dbg !2368
  call void @store64(i8* noundef %280, i64 noundef %283), !dbg !2368
  br label %284, !dbg !2370

284:                                              ; preds = %276
  %285 = load i32, i32* %57, align 4, !dbg !2371
  %286 = add i32 %285, 1, !dbg !2371
  store i32 %286, i32* %57, align 4, !dbg !2371
  br label %273, !dbg !2372, !llvm.loop !2373

287:                                              ; preds = %273
  %288 = load i8*, i8** %6, align 4, !dbg !2375
  %289 = getelementptr inbounds i8, i8* %288, i32 28, !dbg !2376
  %290 = load i32, i32* %54, align 4, !dbg !2377
  %291 = sub i32 0, %290, !dbg !2378
  %292 = getelementptr inbounds i8, i8* %289, i32 %291, !dbg !2378
  %293 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i32 0, i32 0, !dbg !2379
  %294 = load i32, i32* %54, align 4, !dbg !2380
  %295 = mul i32 %294, 1, !dbg !2381
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %292, i8* align 1 %293, i32 %295, i1 false), !dbg !2379
  ret void, !dbg !2382
}

declare dso_local void @Hacl_Hash_SHA3_sha3_224(i8* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext, i64* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext, i64* noundef, i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @store64(i8* noundef %0, i64 noundef %1) #0 !dbg !2383 {
  %3 = alloca i8*, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2387, metadata !DIExpression()), !dbg !2388
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2389, metadata !DIExpression()), !dbg !2390
  %5 = load i8*, i8** %3, align 4, !dbg !2391
  %6 = bitcast i64* %4 to i8*, !dbg !2392
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %5, i8* align 8 %6, i32 8, i1 false), !dbg !2392
  ret void, !dbg !2393
}

declare dso_local void @Hacl_Hash_SHA3_init_(i8 noundef zeroext, i64* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha3_256(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !2394 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [136 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [136 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [136 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [25 x i64], align 8
  %24 = alloca i8*, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %31 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 4
  %36 = alloca i8*, align 4
  %37 = alloca i32, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca [32 x i64], align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %46 = alloca i32, align 4
  %47 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %48 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i8*, align 4
  %53 = alloca i8*, align 4
  %54 = alloca i32, align 4
  %55 = alloca [256 x i8], align 1
  %56 = alloca [32 x i64], align 8
  %57 = alloca i32, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2395, metadata !DIExpression()), !dbg !2396
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2397, metadata !DIExpression()), !dbg !2398
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2399, metadata !DIExpression()), !dbg !2400
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2401, metadata !DIExpression()), !dbg !2402
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.declare(metadata [136 x i8]* %11, metadata !2405, metadata !DIExpression()), !dbg !2409
  %58 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i32 0, i32 0, !dbg !2410
  call void @llvm.memset.p0i8.i32(i8* align 1 %58, i8 0, i32 136, i1 false), !dbg !2410
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2411, metadata !DIExpression()), !dbg !2412
  %59 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i32 0, i32 0, !dbg !2413
  store i8* %59, i8** %12, align 4, !dbg !2412
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2414, metadata !DIExpression()), !dbg !2415
  %60 = load i32, i32* %8, align 4, !dbg !2416
  %61 = icmp ule i32 %60, 136, !dbg !2418
  br i1 %61, label %62, label %64, !dbg !2419

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !2420
  store i32 %63, i32* %13, align 4, !dbg !2422
  br label %65, !dbg !2423

64:                                               ; preds = %5
  store i32 32, i32* %13, align 4, !dbg !2424
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2426, metadata !DIExpression()), !dbg !2427
  %66 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i32 0, i32 0, !dbg !2428
  %67 = load i32, i32* %13, align 4, !dbg !2429
  %68 = getelementptr inbounds i8, i8* %66, i32 %67, !dbg !2430
  store i8* %68, i8** %14, align 4, !dbg !2427
  %69 = load i8*, i8** %14, align 4, !dbg !2431
  %70 = load i32, i32* %8, align 4, !dbg !2432
  %71 = icmp ule i32 %70, 136, !dbg !2434
  br i1 %71, label %72, label %77, !dbg !2435

72:                                               ; preds = %65
  %73 = load i8*, i8** %12, align 4, !dbg !2436
  %74 = load i8*, i8** %7, align 4, !dbg !2438
  %75 = load i32, i32* %8, align 4, !dbg !2439
  %76 = mul i32 %75, 1, !dbg !2440
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %73, i8* align 1 %74, i32 %76, i1 false), !dbg !2441
  br label %81, !dbg !2442

77:                                               ; preds = %65
  %78 = load i8*, i8** %12, align 4, !dbg !2443
  %79 = load i8*, i8** %7, align 4, !dbg !2445
  %80 = load i32, i32* %8, align 4, !dbg !2446
  call void @Hacl_Hash_SHA3_sha3_256(i8* noundef %78, i8* noundef %79, i32 noundef %80), !dbg !2447
  br label %81

81:                                               ; preds = %77, %72
  call void @llvm.dbg.declare(metadata [136 x i8]* %15, metadata !2448, metadata !DIExpression()), !dbg !2449
  %82 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i32 0, i32 0, !dbg !2450
  call void @llvm.memset.p0i8.i32(i8* align 1 %82, i8 54, i32 136, i1 false), !dbg !2450
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2451, metadata !DIExpression()), !dbg !2453
  store i32 0, i32* %16, align 4, !dbg !2453
  br label %83, !dbg !2454

83:                                               ; preds = %101, %81
  %84 = load i32, i32* %16, align 4, !dbg !2455
  %85 = icmp ult i32 %84, 136, !dbg !2457
  br i1 %85, label %86, label %104, !dbg !2458

86:                                               ; preds = %83
  call void @llvm.dbg.declare(metadata i8* %17, metadata !2459, metadata !DIExpression()), !dbg !2461
  %87 = load i32, i32* %16, align 4, !dbg !2462
  %88 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i32 0, i32 %87, !dbg !2463
  %89 = load i8, i8* %88, align 1, !dbg !2463
  store i8 %89, i8* %17, align 1, !dbg !2461
  call void @llvm.dbg.declare(metadata i8* %18, metadata !2464, metadata !DIExpression()), !dbg !2465
  %90 = load i32, i32* %16, align 4, !dbg !2466
  %91 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i32 0, i32 %90, !dbg !2467
  %92 = load i8, i8* %91, align 1, !dbg !2467
  store i8 %92, i8* %18, align 1, !dbg !2465
  %93 = load i8, i8* %17, align 1, !dbg !2468
  %94 = zext i8 %93 to i32, !dbg !2469
  %95 = load i8, i8* %18, align 1, !dbg !2470
  %96 = zext i8 %95 to i32, !dbg !2471
  %97 = xor i32 %94, %96, !dbg !2472
  %98 = trunc i32 %97 to i8, !dbg !2469
  %99 = load i32, i32* %16, align 4, !dbg !2473
  %100 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i32 0, i32 %99, !dbg !2474
  store i8 %98, i8* %100, align 1, !dbg !2475
  br label %101, !dbg !2476

101:                                              ; preds = %86
  %102 = load i32, i32* %16, align 4, !dbg !2477
  %103 = add i32 %102, 1, !dbg !2477
  store i32 %103, i32* %16, align 4, !dbg !2477
  br label %83, !dbg !2478, !llvm.loop !2479

104:                                              ; preds = %83
  call void @llvm.dbg.declare(metadata [136 x i8]* %19, metadata !2481, metadata !DIExpression()), !dbg !2482
  %105 = getelementptr inbounds [136 x i8], [136 x i8]* %19, i32 0, i32 0, !dbg !2483
  call void @llvm.memset.p0i8.i32(i8* align 1 %105, i8 92, i32 136, i1 false), !dbg !2483
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2484, metadata !DIExpression()), !dbg !2486
  store i32 0, i32* %20, align 4, !dbg !2486
  br label %106, !dbg !2487

106:                                              ; preds = %124, %104
  %107 = load i32, i32* %20, align 4, !dbg !2488
  %108 = icmp ult i32 %107, 136, !dbg !2490
  br i1 %108, label %109, label %127, !dbg !2491

109:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata i8* %21, metadata !2492, metadata !DIExpression()), !dbg !2494
  %110 = load i32, i32* %20, align 4, !dbg !2495
  %111 = getelementptr inbounds [136 x i8], [136 x i8]* %19, i32 0, i32 %110, !dbg !2496
  %112 = load i8, i8* %111, align 1, !dbg !2496
  store i8 %112, i8* %21, align 1, !dbg !2494
  call void @llvm.dbg.declare(metadata i8* %22, metadata !2497, metadata !DIExpression()), !dbg !2498
  %113 = load i32, i32* %20, align 4, !dbg !2499
  %114 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i32 0, i32 %113, !dbg !2500
  %115 = load i8, i8* %114, align 1, !dbg !2500
  store i8 %115, i8* %22, align 1, !dbg !2498
  %116 = load i8, i8* %21, align 1, !dbg !2501
  %117 = zext i8 %116 to i32, !dbg !2502
  %118 = load i8, i8* %22, align 1, !dbg !2503
  %119 = zext i8 %118 to i32, !dbg !2504
  %120 = xor i32 %117, %119, !dbg !2505
  %121 = trunc i32 %120 to i8, !dbg !2502
  %122 = load i32, i32* %20, align 4, !dbg !2506
  %123 = getelementptr inbounds [136 x i8], [136 x i8]* %19, i32 0, i32 %122, !dbg !2507
  store i8 %121, i8* %123, align 1, !dbg !2508
  br label %124, !dbg !2509

124:                                              ; preds = %109
  %125 = load i32, i32* %20, align 4, !dbg !2510
  %126 = add i32 %125, 1, !dbg !2510
  store i32 %126, i32* %20, align 4, !dbg !2510
  br label %106, !dbg !2511, !llvm.loop !2512

127:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata [25 x i64]* %23, metadata !2514, metadata !DIExpression()), !dbg !2515
  %128 = bitcast [25 x i64]* %23 to i8*, !dbg !2515
  call void @llvm.memset.p0i8.i32(i8* align 8 %128, i8 0, i32 200, i1 false), !dbg !2515
  call void @llvm.dbg.declare(metadata i8** %24, metadata !2516, metadata !DIExpression()), !dbg !2517
  %129 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i32 0, i32 0, !dbg !2518
  store i8* %129, i8** %24, align 4, !dbg !2517
  %130 = load i32, i32* %10, align 4, !dbg !2519
  %131 = icmp eq i32 %130, 0, !dbg !2521
  br i1 %131, label %132, label %135, !dbg !2522

132:                                              ; preds = %127
  %133 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2523
  %134 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i32 0, i32 0, !dbg !2525
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 8, i64* noundef %133, i8* noundef %134, i32 noundef 136), !dbg !2526
  br label %187, !dbg !2527

135:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2528, metadata !DIExpression()), !dbg !2530
  store i32 136, i32* %25, align 4, !dbg !2530
  call void @llvm.dbg.declare(metadata i32* %26, metadata !2531, metadata !DIExpression()), !dbg !2532
  %136 = load i32, i32* %10, align 4, !dbg !2533
  %137 = load i32, i32* %25, align 4, !dbg !2534
  %138 = udiv i32 %136, %137, !dbg !2535
  store i32 %138, i32* %26, align 4, !dbg !2532
  call void @llvm.dbg.declare(metadata i32* %27, metadata !2536, metadata !DIExpression()), !dbg !2537
  %139 = load i32, i32* %10, align 4, !dbg !2538
  %140 = load i32, i32* %25, align 4, !dbg !2539
  %141 = urem i32 %139, %140, !dbg !2540
  store i32 %141, i32* %27, align 4, !dbg !2537
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !2541, metadata !DIExpression()), !dbg !2542
  %142 = load i32, i32* %26, align 4, !dbg !2543
  %143 = icmp ugt i32 %142, 0, !dbg !2545
  br i1 %143, label %144, label %160, !dbg !2546

144:                                              ; preds = %135
  %145 = load i32, i32* %27, align 4, !dbg !2547
  %146 = icmp eq i32 %145, 0, !dbg !2548
  br i1 %146, label %147, label %160, !dbg !2549

147:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata i32* %29, metadata !2550, metadata !DIExpression()), !dbg !2552
  %148 = load i32, i32* %26, align 4, !dbg !2553
  %149 = sub i32 %148, 1, !dbg !2554
  store i32 %149, i32* %29, align 4, !dbg !2552
  %150 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !2555
  %151 = load i32, i32* %29, align 4, !dbg !2556
  store i32 %151, i32* %150, align 4, !dbg !2555
  %152 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !2555
  %153 = load i32, i32* %10, align 4, !dbg !2557
  %154 = load i32, i32* %29, align 4, !dbg !2558
  %155 = load i32, i32* %25, align 4, !dbg !2559
  %156 = mul i32 %154, %155, !dbg !2560
  %157 = sub i32 %153, %156, !dbg !2561
  store i32 %157, i32* %152, align 4, !dbg !2555
  %158 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2562
  %159 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !2562
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %158, i8* align 4 %159, i32 8, i1 false), !dbg !2562
  br label %167, !dbg !2563

160:                                              ; preds = %144, %135
  %161 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !2564
  %162 = load i32, i32* %26, align 4, !dbg !2566
  store i32 %162, i32* %161, align 4, !dbg !2564
  %163 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !2564
  %164 = load i32, i32* %27, align 4, !dbg !2567
  store i32 %164, i32* %163, align 4, !dbg !2564
  %165 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2568
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !2568
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %165, i8* align 4 %166, i32 8, i1 false), !dbg !2568
  br label %167

167:                                              ; preds = %160, %147
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2569, metadata !DIExpression()), !dbg !2570
  %168 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !2571
  %169 = load i32, i32* %168, align 4, !dbg !2571
  store i32 %169, i32* %32, align 4, !dbg !2570
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2572, metadata !DIExpression()), !dbg !2573
  %170 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !2574
  %171 = load i32, i32* %170, align 4, !dbg !2574
  store i32 %171, i32* %33, align 4, !dbg !2573
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2575, metadata !DIExpression()), !dbg !2576
  %172 = load i32, i32* %32, align 4, !dbg !2577
  %173 = load i32, i32* %25, align 4, !dbg !2578
  %174 = mul i32 %172, %173, !dbg !2579
  store i32 %174, i32* %34, align 4, !dbg !2576
  call void @llvm.dbg.declare(metadata i8** %35, metadata !2580, metadata !DIExpression()), !dbg !2581
  %175 = load i8*, i8** %9, align 4, !dbg !2582
  store i8* %175, i8** %35, align 4, !dbg !2581
  call void @llvm.dbg.declare(metadata i8** %36, metadata !2583, metadata !DIExpression()), !dbg !2584
  %176 = load i8*, i8** %9, align 4, !dbg !2585
  %177 = load i32, i32* %34, align 4, !dbg !2586
  %178 = getelementptr inbounds i8, i8* %176, i32 %177, !dbg !2587
  store i8* %178, i8** %36, align 4, !dbg !2584
  %179 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2588
  %180 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i32 0, i32 0, !dbg !2589
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, i64* noundef %179, i8* noundef %180, i32 noundef 1), !dbg !2590
  %181 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2591
  %182 = load i8*, i8** %35, align 4, !dbg !2592
  %183 = load i32, i32* %32, align 4, !dbg !2593
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, i64* noundef %181, i8* noundef %182, i32 noundef %183), !dbg !2594
  %184 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2595
  %185 = load i8*, i8** %36, align 4, !dbg !2596
  %186 = load i32, i32* %33, align 4, !dbg !2597
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 8, i64* noundef %184, i8* noundef %185, i32 noundef %186), !dbg !2598
  br label %187

187:                                              ; preds = %167, %132
  call void @llvm.dbg.declare(metadata i32* %37, metadata !2599, metadata !DIExpression()), !dbg !2600
  store i32 32, i32* %37, align 4, !dbg !2600
  call void @llvm.dbg.declare(metadata [256 x i8]* %38, metadata !2601, metadata !DIExpression()), !dbg !2602
  %188 = bitcast [256 x i8]* %38 to i8*, !dbg !2602
  call void @llvm.memset.p0i8.i32(i8* align 1 %188, i8 0, i32 256, i1 false), !dbg !2602
  call void @llvm.dbg.declare(metadata [32 x i64]* %39, metadata !2603, metadata !DIExpression()), !dbg !2604
  %189 = bitcast [32 x i64]* %39 to i8*, !dbg !2604
  call void @llvm.memset.p0i8.i32(i8* align 8 %189, i8 0, i32 256, i1 false), !dbg !2604
  %190 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i32 0, i32 0, !dbg !2605
  %191 = bitcast i64* %190 to i8*, !dbg !2605
  %192 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2605
  %193 = bitcast i64* %192 to i8*, !dbg !2605
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %191, i8* align 8 %193, i32 200, i1 false), !dbg !2605
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2606, metadata !DIExpression()), !dbg !2608
  store i32 0, i32* %40, align 4, !dbg !2608
  br label %194, !dbg !2609

194:                                              ; preds = %205, %187
  %195 = load i32, i32* %40, align 4, !dbg !2610
  %196 = icmp ult i32 %195, 32, !dbg !2612
  br i1 %196, label %197, label %208, !dbg !2613

197:                                              ; preds = %194
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !2614
  %199 = load i32, i32* %40, align 4, !dbg !2614
  %200 = mul i32 %199, 8, !dbg !2614
  %201 = getelementptr inbounds i8, i8* %198, i32 %200, !dbg !2614
  %202 = load i32, i32* %40, align 4, !dbg !2614
  %203 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i32 0, i32 %202, !dbg !2614
  %204 = load i64, i64* %203, align 8, !dbg !2614
  call void @store64(i8* noundef %201, i64 noundef %204), !dbg !2614
  br label %205, !dbg !2616

205:                                              ; preds = %197
  %206 = load i32, i32* %40, align 4, !dbg !2617
  %207 = add i32 %206, 1, !dbg !2617
  store i32 %207, i32* %40, align 4, !dbg !2617
  br label %194, !dbg !2618, !llvm.loop !2619

208:                                              ; preds = %194
  %209 = load i8*, i8** %24, align 4, !dbg !2621
  %210 = getelementptr inbounds i8, i8* %209, i32 32, !dbg !2622
  %211 = load i32, i32* %37, align 4, !dbg !2623
  %212 = sub i32 0, %211, !dbg !2624
  %213 = getelementptr inbounds i8, i8* %210, i32 %212, !dbg !2624
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !2625
  %215 = load i32, i32* %37, align 4, !dbg !2626
  %216 = mul i32 %215, 1, !dbg !2627
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %213, i8* align 1 %214, i32 %216, i1 false), !dbg !2625
  call void @llvm.dbg.declare(metadata i8** %41, metadata !2628, metadata !DIExpression()), !dbg !2629
  %217 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i32 0, i32 0, !dbg !2630
  store i8* %217, i8** %41, align 4, !dbg !2629
  %218 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2631
  call void @Hacl_Hash_SHA3_init_(i8 noundef zeroext 8, i64* noundef %218), !dbg !2632
  call void @llvm.dbg.declare(metadata i32* %42, metadata !2633, metadata !DIExpression()), !dbg !2634
  store i32 136, i32* %42, align 4, !dbg !2634
  call void @llvm.dbg.declare(metadata i32* %43, metadata !2635, metadata !DIExpression()), !dbg !2636
  %219 = load i32, i32* %42, align 4, !dbg !2637
  %220 = udiv i32 32, %219, !dbg !2638
  store i32 %220, i32* %43, align 4, !dbg !2636
  call void @llvm.dbg.declare(metadata i32* %44, metadata !2639, metadata !DIExpression()), !dbg !2640
  %221 = load i32, i32* %42, align 4, !dbg !2641
  %222 = urem i32 32, %221, !dbg !2642
  store i32 %222, i32* %44, align 4, !dbg !2640
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %45, metadata !2643, metadata !DIExpression()), !dbg !2644
  %223 = load i32, i32* %43, align 4, !dbg !2645
  %224 = icmp ugt i32 %223, 0, !dbg !2647
  br i1 %224, label %225, label %240, !dbg !2648

225:                                              ; preds = %208
  %226 = load i32, i32* %44, align 4, !dbg !2649
  %227 = icmp eq i32 %226, 0, !dbg !2650
  br i1 %227, label %228, label %240, !dbg !2651

228:                                              ; preds = %225
  call void @llvm.dbg.declare(metadata i32* %46, metadata !2652, metadata !DIExpression()), !dbg !2654
  %229 = load i32, i32* %43, align 4, !dbg !2655
  %230 = sub i32 %229, 1, !dbg !2656
  store i32 %230, i32* %46, align 4, !dbg !2654
  %231 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 0, !dbg !2657
  %232 = load i32, i32* %46, align 4, !dbg !2658
  store i32 %232, i32* %231, align 4, !dbg !2657
  %233 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 1, !dbg !2657
  %234 = load i32, i32* %46, align 4, !dbg !2659
  %235 = load i32, i32* %42, align 4, !dbg !2660
  %236 = mul i32 %234, %235, !dbg !2661
  %237 = sub i32 32, %236, !dbg !2662
  store i32 %237, i32* %233, align 4, !dbg !2657
  %238 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2663
  %239 = bitcast %struct.K___uint32_t_uint32_t_s* %47 to i8*, !dbg !2663
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %238, i8* align 4 %239, i32 8, i1 false), !dbg !2663
  br label %247, !dbg !2664

240:                                              ; preds = %225, %208
  %241 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !2665
  %242 = load i32, i32* %43, align 4, !dbg !2667
  store i32 %242, i32* %241, align 4, !dbg !2665
  %243 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !2665
  %244 = load i32, i32* %44, align 4, !dbg !2668
  store i32 %244, i32* %243, align 4, !dbg !2665
  %245 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2669
  %246 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !2669
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %245, i8* align 4 %246, i32 8, i1 false), !dbg !2669
  br label %247

247:                                              ; preds = %240, %228
  call void @llvm.dbg.declare(metadata i32* %49, metadata !2670, metadata !DIExpression()), !dbg !2671
  %248 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 0, !dbg !2672
  %249 = load i32, i32* %248, align 4, !dbg !2672
  store i32 %249, i32* %49, align 4, !dbg !2671
  call void @llvm.dbg.declare(metadata i32* %50, metadata !2673, metadata !DIExpression()), !dbg !2674
  %250 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 1, !dbg !2675
  %251 = load i32, i32* %250, align 4, !dbg !2675
  store i32 %251, i32* %50, align 4, !dbg !2674
  call void @llvm.dbg.declare(metadata i32* %51, metadata !2676, metadata !DIExpression()), !dbg !2677
  %252 = load i32, i32* %49, align 4, !dbg !2678
  %253 = load i32, i32* %42, align 4, !dbg !2679
  %254 = mul i32 %252, %253, !dbg !2680
  store i32 %254, i32* %51, align 4, !dbg !2677
  call void @llvm.dbg.declare(metadata i8** %52, metadata !2681, metadata !DIExpression()), !dbg !2682
  %255 = load i8*, i8** %41, align 4, !dbg !2683
  store i8* %255, i8** %52, align 4, !dbg !2682
  call void @llvm.dbg.declare(metadata i8** %53, metadata !2684, metadata !DIExpression()), !dbg !2685
  %256 = load i8*, i8** %41, align 4, !dbg !2686
  %257 = load i32, i32* %51, align 4, !dbg !2687
  %258 = getelementptr inbounds i8, i8* %256, i32 %257, !dbg !2688
  store i8* %258, i8** %53, align 4, !dbg !2685
  %259 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2689
  %260 = getelementptr inbounds [136 x i8], [136 x i8]* %19, i32 0, i32 0, !dbg !2690
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, i64* noundef %259, i8* noundef %260, i32 noundef 1), !dbg !2691
  %261 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2692
  %262 = load i8*, i8** %52, align 4, !dbg !2693
  %263 = load i32, i32* %49, align 4, !dbg !2694
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, i64* noundef %261, i8* noundef %262, i32 noundef %263), !dbg !2695
  %264 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2696
  %265 = load i8*, i8** %53, align 4, !dbg !2697
  %266 = load i32, i32* %50, align 4, !dbg !2698
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 8, i64* noundef %264, i8* noundef %265, i32 noundef %266), !dbg !2699
  call void @llvm.dbg.declare(metadata i32* %54, metadata !2700, metadata !DIExpression()), !dbg !2701
  store i32 32, i32* %54, align 4, !dbg !2701
  call void @llvm.dbg.declare(metadata [256 x i8]* %55, metadata !2702, metadata !DIExpression()), !dbg !2703
  %267 = bitcast [256 x i8]* %55 to i8*, !dbg !2703
  call void @llvm.memset.p0i8.i32(i8* align 1 %267, i8 0, i32 256, i1 false), !dbg !2703
  call void @llvm.dbg.declare(metadata [32 x i64]* %56, metadata !2704, metadata !DIExpression()), !dbg !2705
  %268 = bitcast [32 x i64]* %56 to i8*, !dbg !2705
  call void @llvm.memset.p0i8.i32(i8* align 8 %268, i8 0, i32 256, i1 false), !dbg !2705
  %269 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i32 0, i32 0, !dbg !2706
  %270 = bitcast i64* %269 to i8*, !dbg !2706
  %271 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2706
  %272 = bitcast i64* %271 to i8*, !dbg !2706
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %270, i8* align 8 %272, i32 200, i1 false), !dbg !2706
  call void @llvm.dbg.declare(metadata i32* %57, metadata !2707, metadata !DIExpression()), !dbg !2709
  store i32 0, i32* %57, align 4, !dbg !2709
  br label %273, !dbg !2710

273:                                              ; preds = %284, %247
  %274 = load i32, i32* %57, align 4, !dbg !2711
  %275 = icmp ult i32 %274, 32, !dbg !2713
  br i1 %275, label %276, label %287, !dbg !2714

276:                                              ; preds = %273
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i32 0, i32 0, !dbg !2715
  %278 = load i32, i32* %57, align 4, !dbg !2715
  %279 = mul i32 %278, 8, !dbg !2715
  %280 = getelementptr inbounds i8, i8* %277, i32 %279, !dbg !2715
  %281 = load i32, i32* %57, align 4, !dbg !2715
  %282 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i32 0, i32 %281, !dbg !2715
  %283 = load i64, i64* %282, align 8, !dbg !2715
  call void @store64(i8* noundef %280, i64 noundef %283), !dbg !2715
  br label %284, !dbg !2717

284:                                              ; preds = %276
  %285 = load i32, i32* %57, align 4, !dbg !2718
  %286 = add i32 %285, 1, !dbg !2718
  store i32 %286, i32* %57, align 4, !dbg !2718
  br label %273, !dbg !2719, !llvm.loop !2720

287:                                              ; preds = %273
  %288 = load i8*, i8** %6, align 4, !dbg !2722
  %289 = getelementptr inbounds i8, i8* %288, i32 32, !dbg !2723
  %290 = load i32, i32* %54, align 4, !dbg !2724
  %291 = sub i32 0, %290, !dbg !2725
  %292 = getelementptr inbounds i8, i8* %289, i32 %291, !dbg !2725
  %293 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i32 0, i32 0, !dbg !2726
  %294 = load i32, i32* %54, align 4, !dbg !2727
  %295 = mul i32 %294, 1, !dbg !2728
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %292, i8* align 1 %293, i32 %295, i1 false), !dbg !2726
  ret void, !dbg !2729
}

declare dso_local void @Hacl_Hash_SHA3_sha3_256(i8* noundef, i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha3_384(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !2730 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [104 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [104 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [104 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [25 x i64], align 8
  %24 = alloca i8*, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %31 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 4
  %36 = alloca i8*, align 4
  %37 = alloca i32, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca [32 x i64], align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %46 = alloca i32, align 4
  %47 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %48 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i8*, align 4
  %53 = alloca i8*, align 4
  %54 = alloca i32, align 4
  %55 = alloca [256 x i8], align 1
  %56 = alloca [32 x i64], align 8
  %57 = alloca i32, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2731, metadata !DIExpression()), !dbg !2732
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2733, metadata !DIExpression()), !dbg !2734
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2735, metadata !DIExpression()), !dbg !2736
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2737, metadata !DIExpression()), !dbg !2738
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.declare(metadata [104 x i8]* %11, metadata !2741, metadata !DIExpression()), !dbg !2745
  %58 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i32 0, i32 0, !dbg !2746
  call void @llvm.memset.p0i8.i32(i8* align 1 %58, i8 0, i32 104, i1 false), !dbg !2746
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2747, metadata !DIExpression()), !dbg !2748
  %59 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i32 0, i32 0, !dbg !2749
  store i8* %59, i8** %12, align 4, !dbg !2748
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2750, metadata !DIExpression()), !dbg !2751
  %60 = load i32, i32* %8, align 4, !dbg !2752
  %61 = icmp ule i32 %60, 104, !dbg !2754
  br i1 %61, label %62, label %64, !dbg !2755

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !2756
  store i32 %63, i32* %13, align 4, !dbg !2758
  br label %65, !dbg !2759

64:                                               ; preds = %5
  store i32 48, i32* %13, align 4, !dbg !2760
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2762, metadata !DIExpression()), !dbg !2763
  %66 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i32 0, i32 0, !dbg !2764
  %67 = load i32, i32* %13, align 4, !dbg !2765
  %68 = getelementptr inbounds i8, i8* %66, i32 %67, !dbg !2766
  store i8* %68, i8** %14, align 4, !dbg !2763
  %69 = load i8*, i8** %14, align 4, !dbg !2767
  %70 = load i32, i32* %8, align 4, !dbg !2768
  %71 = icmp ule i32 %70, 104, !dbg !2770
  br i1 %71, label %72, label %77, !dbg !2771

72:                                               ; preds = %65
  %73 = load i8*, i8** %12, align 4, !dbg !2772
  %74 = load i8*, i8** %7, align 4, !dbg !2774
  %75 = load i32, i32* %8, align 4, !dbg !2775
  %76 = mul i32 %75, 1, !dbg !2776
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %73, i8* align 1 %74, i32 %76, i1 false), !dbg !2777
  br label %81, !dbg !2778

77:                                               ; preds = %65
  %78 = load i8*, i8** %12, align 4, !dbg !2779
  %79 = load i8*, i8** %7, align 4, !dbg !2781
  %80 = load i32, i32* %8, align 4, !dbg !2782
  call void @Hacl_Hash_SHA3_sha3_384(i8* noundef %78, i8* noundef %79, i32 noundef %80), !dbg !2783
  br label %81

81:                                               ; preds = %77, %72
  call void @llvm.dbg.declare(metadata [104 x i8]* %15, metadata !2784, metadata !DIExpression()), !dbg !2785
  %82 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i32 0, i32 0, !dbg !2786
  call void @llvm.memset.p0i8.i32(i8* align 1 %82, i8 54, i32 104, i1 false), !dbg !2786
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2787, metadata !DIExpression()), !dbg !2789
  store i32 0, i32* %16, align 4, !dbg !2789
  br label %83, !dbg !2790

83:                                               ; preds = %101, %81
  %84 = load i32, i32* %16, align 4, !dbg !2791
  %85 = icmp ult i32 %84, 104, !dbg !2793
  br i1 %85, label %86, label %104, !dbg !2794

86:                                               ; preds = %83
  call void @llvm.dbg.declare(metadata i8* %17, metadata !2795, metadata !DIExpression()), !dbg !2797
  %87 = load i32, i32* %16, align 4, !dbg !2798
  %88 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i32 0, i32 %87, !dbg !2799
  %89 = load i8, i8* %88, align 1, !dbg !2799
  store i8 %89, i8* %17, align 1, !dbg !2797
  call void @llvm.dbg.declare(metadata i8* %18, metadata !2800, metadata !DIExpression()), !dbg !2801
  %90 = load i32, i32* %16, align 4, !dbg !2802
  %91 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i32 0, i32 %90, !dbg !2803
  %92 = load i8, i8* %91, align 1, !dbg !2803
  store i8 %92, i8* %18, align 1, !dbg !2801
  %93 = load i8, i8* %17, align 1, !dbg !2804
  %94 = zext i8 %93 to i32, !dbg !2805
  %95 = load i8, i8* %18, align 1, !dbg !2806
  %96 = zext i8 %95 to i32, !dbg !2807
  %97 = xor i32 %94, %96, !dbg !2808
  %98 = trunc i32 %97 to i8, !dbg !2805
  %99 = load i32, i32* %16, align 4, !dbg !2809
  %100 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i32 0, i32 %99, !dbg !2810
  store i8 %98, i8* %100, align 1, !dbg !2811
  br label %101, !dbg !2812

101:                                              ; preds = %86
  %102 = load i32, i32* %16, align 4, !dbg !2813
  %103 = add i32 %102, 1, !dbg !2813
  store i32 %103, i32* %16, align 4, !dbg !2813
  br label %83, !dbg !2814, !llvm.loop !2815

104:                                              ; preds = %83
  call void @llvm.dbg.declare(metadata [104 x i8]* %19, metadata !2817, metadata !DIExpression()), !dbg !2818
  %105 = getelementptr inbounds [104 x i8], [104 x i8]* %19, i32 0, i32 0, !dbg !2819
  call void @llvm.memset.p0i8.i32(i8* align 1 %105, i8 92, i32 104, i1 false), !dbg !2819
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2820, metadata !DIExpression()), !dbg !2822
  store i32 0, i32* %20, align 4, !dbg !2822
  br label %106, !dbg !2823

106:                                              ; preds = %124, %104
  %107 = load i32, i32* %20, align 4, !dbg !2824
  %108 = icmp ult i32 %107, 104, !dbg !2826
  br i1 %108, label %109, label %127, !dbg !2827

109:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata i8* %21, metadata !2828, metadata !DIExpression()), !dbg !2830
  %110 = load i32, i32* %20, align 4, !dbg !2831
  %111 = getelementptr inbounds [104 x i8], [104 x i8]* %19, i32 0, i32 %110, !dbg !2832
  %112 = load i8, i8* %111, align 1, !dbg !2832
  store i8 %112, i8* %21, align 1, !dbg !2830
  call void @llvm.dbg.declare(metadata i8* %22, metadata !2833, metadata !DIExpression()), !dbg !2834
  %113 = load i32, i32* %20, align 4, !dbg !2835
  %114 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i32 0, i32 %113, !dbg !2836
  %115 = load i8, i8* %114, align 1, !dbg !2836
  store i8 %115, i8* %22, align 1, !dbg !2834
  %116 = load i8, i8* %21, align 1, !dbg !2837
  %117 = zext i8 %116 to i32, !dbg !2838
  %118 = load i8, i8* %22, align 1, !dbg !2839
  %119 = zext i8 %118 to i32, !dbg !2840
  %120 = xor i32 %117, %119, !dbg !2841
  %121 = trunc i32 %120 to i8, !dbg !2838
  %122 = load i32, i32* %20, align 4, !dbg !2842
  %123 = getelementptr inbounds [104 x i8], [104 x i8]* %19, i32 0, i32 %122, !dbg !2843
  store i8 %121, i8* %123, align 1, !dbg !2844
  br label %124, !dbg !2845

124:                                              ; preds = %109
  %125 = load i32, i32* %20, align 4, !dbg !2846
  %126 = add i32 %125, 1, !dbg !2846
  store i32 %126, i32* %20, align 4, !dbg !2846
  br label %106, !dbg !2847, !llvm.loop !2848

127:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata [25 x i64]* %23, metadata !2850, metadata !DIExpression()), !dbg !2851
  %128 = bitcast [25 x i64]* %23 to i8*, !dbg !2851
  call void @llvm.memset.p0i8.i32(i8* align 8 %128, i8 0, i32 200, i1 false), !dbg !2851
  call void @llvm.dbg.declare(metadata i8** %24, metadata !2852, metadata !DIExpression()), !dbg !2853
  %129 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i32 0, i32 0, !dbg !2854
  store i8* %129, i8** %24, align 4, !dbg !2853
  %130 = load i32, i32* %10, align 4, !dbg !2855
  %131 = icmp eq i32 %130, 0, !dbg !2857
  br i1 %131, label %132, label %135, !dbg !2858

132:                                              ; preds = %127
  %133 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2859
  %134 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i32 0, i32 0, !dbg !2861
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 10, i64* noundef %133, i8* noundef %134, i32 noundef 104), !dbg !2862
  br label %187, !dbg !2863

135:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2864, metadata !DIExpression()), !dbg !2866
  store i32 104, i32* %25, align 4, !dbg !2866
  call void @llvm.dbg.declare(metadata i32* %26, metadata !2867, metadata !DIExpression()), !dbg !2868
  %136 = load i32, i32* %10, align 4, !dbg !2869
  %137 = load i32, i32* %25, align 4, !dbg !2870
  %138 = udiv i32 %136, %137, !dbg !2871
  store i32 %138, i32* %26, align 4, !dbg !2868
  call void @llvm.dbg.declare(metadata i32* %27, metadata !2872, metadata !DIExpression()), !dbg !2873
  %139 = load i32, i32* %10, align 4, !dbg !2874
  %140 = load i32, i32* %25, align 4, !dbg !2875
  %141 = urem i32 %139, %140, !dbg !2876
  store i32 %141, i32* %27, align 4, !dbg !2873
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !2877, metadata !DIExpression()), !dbg !2878
  %142 = load i32, i32* %26, align 4, !dbg !2879
  %143 = icmp ugt i32 %142, 0, !dbg !2881
  br i1 %143, label %144, label %160, !dbg !2882

144:                                              ; preds = %135
  %145 = load i32, i32* %27, align 4, !dbg !2883
  %146 = icmp eq i32 %145, 0, !dbg !2884
  br i1 %146, label %147, label %160, !dbg !2885

147:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata i32* %29, metadata !2886, metadata !DIExpression()), !dbg !2888
  %148 = load i32, i32* %26, align 4, !dbg !2889
  %149 = sub i32 %148, 1, !dbg !2890
  store i32 %149, i32* %29, align 4, !dbg !2888
  %150 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !2891
  %151 = load i32, i32* %29, align 4, !dbg !2892
  store i32 %151, i32* %150, align 4, !dbg !2891
  %152 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !2891
  %153 = load i32, i32* %10, align 4, !dbg !2893
  %154 = load i32, i32* %29, align 4, !dbg !2894
  %155 = load i32, i32* %25, align 4, !dbg !2895
  %156 = mul i32 %154, %155, !dbg !2896
  %157 = sub i32 %153, %156, !dbg !2897
  store i32 %157, i32* %152, align 4, !dbg !2891
  %158 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2898
  %159 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !2898
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %158, i8* align 4 %159, i32 8, i1 false), !dbg !2898
  br label %167, !dbg !2899

160:                                              ; preds = %144, %135
  %161 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !2900
  %162 = load i32, i32* %26, align 4, !dbg !2902
  store i32 %162, i32* %161, align 4, !dbg !2900
  %163 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !2900
  %164 = load i32, i32* %27, align 4, !dbg !2903
  store i32 %164, i32* %163, align 4, !dbg !2900
  %165 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2904
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !2904
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %165, i8* align 4 %166, i32 8, i1 false), !dbg !2904
  br label %167

167:                                              ; preds = %160, %147
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2905, metadata !DIExpression()), !dbg !2906
  %168 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !2907
  %169 = load i32, i32* %168, align 4, !dbg !2907
  store i32 %169, i32* %32, align 4, !dbg !2906
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2908, metadata !DIExpression()), !dbg !2909
  %170 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !2910
  %171 = load i32, i32* %170, align 4, !dbg !2910
  store i32 %171, i32* %33, align 4, !dbg !2909
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2911, metadata !DIExpression()), !dbg !2912
  %172 = load i32, i32* %32, align 4, !dbg !2913
  %173 = load i32, i32* %25, align 4, !dbg !2914
  %174 = mul i32 %172, %173, !dbg !2915
  store i32 %174, i32* %34, align 4, !dbg !2912
  call void @llvm.dbg.declare(metadata i8** %35, metadata !2916, metadata !DIExpression()), !dbg !2917
  %175 = load i8*, i8** %9, align 4, !dbg !2918
  store i8* %175, i8** %35, align 4, !dbg !2917
  call void @llvm.dbg.declare(metadata i8** %36, metadata !2919, metadata !DIExpression()), !dbg !2920
  %176 = load i8*, i8** %9, align 4, !dbg !2921
  %177 = load i32, i32* %34, align 4, !dbg !2922
  %178 = getelementptr inbounds i8, i8* %176, i32 %177, !dbg !2923
  store i8* %178, i8** %36, align 4, !dbg !2920
  %179 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2924
  %180 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i32 0, i32 0, !dbg !2925
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, i64* noundef %179, i8* noundef %180, i32 noundef 1), !dbg !2926
  %181 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2927
  %182 = load i8*, i8** %35, align 4, !dbg !2928
  %183 = load i32, i32* %32, align 4, !dbg !2929
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, i64* noundef %181, i8* noundef %182, i32 noundef %183), !dbg !2930
  %184 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2931
  %185 = load i8*, i8** %36, align 4, !dbg !2932
  %186 = load i32, i32* %33, align 4, !dbg !2933
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 10, i64* noundef %184, i8* noundef %185, i32 noundef %186), !dbg !2934
  br label %187

187:                                              ; preds = %167, %132
  call void @llvm.dbg.declare(metadata i32* %37, metadata !2935, metadata !DIExpression()), !dbg !2936
  store i32 48, i32* %37, align 4, !dbg !2936
  call void @llvm.dbg.declare(metadata [256 x i8]* %38, metadata !2937, metadata !DIExpression()), !dbg !2938
  %188 = bitcast [256 x i8]* %38 to i8*, !dbg !2938
  call void @llvm.memset.p0i8.i32(i8* align 1 %188, i8 0, i32 256, i1 false), !dbg !2938
  call void @llvm.dbg.declare(metadata [32 x i64]* %39, metadata !2939, metadata !DIExpression()), !dbg !2940
  %189 = bitcast [32 x i64]* %39 to i8*, !dbg !2940
  call void @llvm.memset.p0i8.i32(i8* align 8 %189, i8 0, i32 256, i1 false), !dbg !2940
  %190 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i32 0, i32 0, !dbg !2941
  %191 = bitcast i64* %190 to i8*, !dbg !2941
  %192 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2941
  %193 = bitcast i64* %192 to i8*, !dbg !2941
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %191, i8* align 8 %193, i32 200, i1 false), !dbg !2941
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2942, metadata !DIExpression()), !dbg !2944
  store i32 0, i32* %40, align 4, !dbg !2944
  br label %194, !dbg !2945

194:                                              ; preds = %205, %187
  %195 = load i32, i32* %40, align 4, !dbg !2946
  %196 = icmp ult i32 %195, 32, !dbg !2948
  br i1 %196, label %197, label %208, !dbg !2949

197:                                              ; preds = %194
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !2950
  %199 = load i32, i32* %40, align 4, !dbg !2950
  %200 = mul i32 %199, 8, !dbg !2950
  %201 = getelementptr inbounds i8, i8* %198, i32 %200, !dbg !2950
  %202 = load i32, i32* %40, align 4, !dbg !2950
  %203 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i32 0, i32 %202, !dbg !2950
  %204 = load i64, i64* %203, align 8, !dbg !2950
  call void @store64(i8* noundef %201, i64 noundef %204), !dbg !2950
  br label %205, !dbg !2952

205:                                              ; preds = %197
  %206 = load i32, i32* %40, align 4, !dbg !2953
  %207 = add i32 %206, 1, !dbg !2953
  store i32 %207, i32* %40, align 4, !dbg !2953
  br label %194, !dbg !2954, !llvm.loop !2955

208:                                              ; preds = %194
  %209 = load i8*, i8** %24, align 4, !dbg !2957
  %210 = getelementptr inbounds i8, i8* %209, i32 48, !dbg !2958
  %211 = load i32, i32* %37, align 4, !dbg !2959
  %212 = sub i32 0, %211, !dbg !2960
  %213 = getelementptr inbounds i8, i8* %210, i32 %212, !dbg !2960
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !2961
  %215 = load i32, i32* %37, align 4, !dbg !2962
  %216 = mul i32 %215, 1, !dbg !2963
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %213, i8* align 1 %214, i32 %216, i1 false), !dbg !2961
  call void @llvm.dbg.declare(metadata i8** %41, metadata !2964, metadata !DIExpression()), !dbg !2965
  %217 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i32 0, i32 0, !dbg !2966
  store i8* %217, i8** %41, align 4, !dbg !2965
  %218 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !2967
  call void @Hacl_Hash_SHA3_init_(i8 noundef zeroext 10, i64* noundef %218), !dbg !2968
  call void @llvm.dbg.declare(metadata i32* %42, metadata !2969, metadata !DIExpression()), !dbg !2970
  store i32 104, i32* %42, align 4, !dbg !2970
  call void @llvm.dbg.declare(metadata i32* %43, metadata !2971, metadata !DIExpression()), !dbg !2972
  %219 = load i32, i32* %42, align 4, !dbg !2973
  %220 = udiv i32 48, %219, !dbg !2974
  store i32 %220, i32* %43, align 4, !dbg !2972
  call void @llvm.dbg.declare(metadata i32* %44, metadata !2975, metadata !DIExpression()), !dbg !2976
  %221 = load i32, i32* %42, align 4, !dbg !2977
  %222 = urem i32 48, %221, !dbg !2978
  store i32 %222, i32* %44, align 4, !dbg !2976
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %45, metadata !2979, metadata !DIExpression()), !dbg !2980
  %223 = load i32, i32* %43, align 4, !dbg !2981
  %224 = icmp ugt i32 %223, 0, !dbg !2983
  br i1 %224, label %225, label %240, !dbg !2984

225:                                              ; preds = %208
  %226 = load i32, i32* %44, align 4, !dbg !2985
  %227 = icmp eq i32 %226, 0, !dbg !2986
  br i1 %227, label %228, label %240, !dbg !2987

228:                                              ; preds = %225
  call void @llvm.dbg.declare(metadata i32* %46, metadata !2988, metadata !DIExpression()), !dbg !2990
  %229 = load i32, i32* %43, align 4, !dbg !2991
  %230 = sub i32 %229, 1, !dbg !2992
  store i32 %230, i32* %46, align 4, !dbg !2990
  %231 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 0, !dbg !2993
  %232 = load i32, i32* %46, align 4, !dbg !2994
  store i32 %232, i32* %231, align 4, !dbg !2993
  %233 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 1, !dbg !2993
  %234 = load i32, i32* %46, align 4, !dbg !2995
  %235 = load i32, i32* %42, align 4, !dbg !2996
  %236 = mul i32 %234, %235, !dbg !2997
  %237 = sub i32 48, %236, !dbg !2998
  store i32 %237, i32* %233, align 4, !dbg !2993
  %238 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2999
  %239 = bitcast %struct.K___uint32_t_uint32_t_s* %47 to i8*, !dbg !2999
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %238, i8* align 4 %239, i32 8, i1 false), !dbg !2999
  br label %247, !dbg !3000

240:                                              ; preds = %225, %208
  %241 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !3001
  %242 = load i32, i32* %43, align 4, !dbg !3003
  store i32 %242, i32* %241, align 4, !dbg !3001
  %243 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !3001
  %244 = load i32, i32* %44, align 4, !dbg !3004
  store i32 %244, i32* %243, align 4, !dbg !3001
  %245 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !3005
  %246 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !3005
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %245, i8* align 4 %246, i32 8, i1 false), !dbg !3005
  br label %247

247:                                              ; preds = %240, %228
  call void @llvm.dbg.declare(metadata i32* %49, metadata !3006, metadata !DIExpression()), !dbg !3007
  %248 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 0, !dbg !3008
  %249 = load i32, i32* %248, align 4, !dbg !3008
  store i32 %249, i32* %49, align 4, !dbg !3007
  call void @llvm.dbg.declare(metadata i32* %50, metadata !3009, metadata !DIExpression()), !dbg !3010
  %250 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 1, !dbg !3011
  %251 = load i32, i32* %250, align 4, !dbg !3011
  store i32 %251, i32* %50, align 4, !dbg !3010
  call void @llvm.dbg.declare(metadata i32* %51, metadata !3012, metadata !DIExpression()), !dbg !3013
  %252 = load i32, i32* %49, align 4, !dbg !3014
  %253 = load i32, i32* %42, align 4, !dbg !3015
  %254 = mul i32 %252, %253, !dbg !3016
  store i32 %254, i32* %51, align 4, !dbg !3013
  call void @llvm.dbg.declare(metadata i8** %52, metadata !3017, metadata !DIExpression()), !dbg !3018
  %255 = load i8*, i8** %41, align 4, !dbg !3019
  store i8* %255, i8** %52, align 4, !dbg !3018
  call void @llvm.dbg.declare(metadata i8** %53, metadata !3020, metadata !DIExpression()), !dbg !3021
  %256 = load i8*, i8** %41, align 4, !dbg !3022
  %257 = load i32, i32* %51, align 4, !dbg !3023
  %258 = getelementptr inbounds i8, i8* %256, i32 %257, !dbg !3024
  store i8* %258, i8** %53, align 4, !dbg !3021
  %259 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3025
  %260 = getelementptr inbounds [104 x i8], [104 x i8]* %19, i32 0, i32 0, !dbg !3026
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, i64* noundef %259, i8* noundef %260, i32 noundef 1), !dbg !3027
  %261 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3028
  %262 = load i8*, i8** %52, align 4, !dbg !3029
  %263 = load i32, i32* %49, align 4, !dbg !3030
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, i64* noundef %261, i8* noundef %262, i32 noundef %263), !dbg !3031
  %264 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3032
  %265 = load i8*, i8** %53, align 4, !dbg !3033
  %266 = load i32, i32* %50, align 4, !dbg !3034
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 10, i64* noundef %264, i8* noundef %265, i32 noundef %266), !dbg !3035
  call void @llvm.dbg.declare(metadata i32* %54, metadata !3036, metadata !DIExpression()), !dbg !3037
  store i32 48, i32* %54, align 4, !dbg !3037
  call void @llvm.dbg.declare(metadata [256 x i8]* %55, metadata !3038, metadata !DIExpression()), !dbg !3039
  %267 = bitcast [256 x i8]* %55 to i8*, !dbg !3039
  call void @llvm.memset.p0i8.i32(i8* align 1 %267, i8 0, i32 256, i1 false), !dbg !3039
  call void @llvm.dbg.declare(metadata [32 x i64]* %56, metadata !3040, metadata !DIExpression()), !dbg !3041
  %268 = bitcast [32 x i64]* %56 to i8*, !dbg !3041
  call void @llvm.memset.p0i8.i32(i8* align 8 %268, i8 0, i32 256, i1 false), !dbg !3041
  %269 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i32 0, i32 0, !dbg !3042
  %270 = bitcast i64* %269 to i8*, !dbg !3042
  %271 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3042
  %272 = bitcast i64* %271 to i8*, !dbg !3042
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %270, i8* align 8 %272, i32 200, i1 false), !dbg !3042
  call void @llvm.dbg.declare(metadata i32* %57, metadata !3043, metadata !DIExpression()), !dbg !3045
  store i32 0, i32* %57, align 4, !dbg !3045
  br label %273, !dbg !3046

273:                                              ; preds = %284, %247
  %274 = load i32, i32* %57, align 4, !dbg !3047
  %275 = icmp ult i32 %274, 32, !dbg !3049
  br i1 %275, label %276, label %287, !dbg !3050

276:                                              ; preds = %273
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i32 0, i32 0, !dbg !3051
  %278 = load i32, i32* %57, align 4, !dbg !3051
  %279 = mul i32 %278, 8, !dbg !3051
  %280 = getelementptr inbounds i8, i8* %277, i32 %279, !dbg !3051
  %281 = load i32, i32* %57, align 4, !dbg !3051
  %282 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i32 0, i32 %281, !dbg !3051
  %283 = load i64, i64* %282, align 8, !dbg !3051
  call void @store64(i8* noundef %280, i64 noundef %283), !dbg !3051
  br label %284, !dbg !3053

284:                                              ; preds = %276
  %285 = load i32, i32* %57, align 4, !dbg !3054
  %286 = add i32 %285, 1, !dbg !3054
  store i32 %286, i32* %57, align 4, !dbg !3054
  br label %273, !dbg !3055, !llvm.loop !3056

287:                                              ; preds = %273
  %288 = load i8*, i8** %6, align 4, !dbg !3058
  %289 = getelementptr inbounds i8, i8* %288, i32 48, !dbg !3059
  %290 = load i32, i32* %54, align 4, !dbg !3060
  %291 = sub i32 0, %290, !dbg !3061
  %292 = getelementptr inbounds i8, i8* %289, i32 %291, !dbg !3061
  %293 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i32 0, i32 0, !dbg !3062
  %294 = load i32, i32* %54, align 4, !dbg !3063
  %295 = mul i32 %294, 1, !dbg !3064
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %292, i8* align 1 %293, i32 %295, i1 false), !dbg !3062
  ret void, !dbg !3065
}

declare dso_local void @Hacl_Hash_SHA3_sha3_384(i8* noundef, i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha3_512(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !3066 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [72 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [72 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [72 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [25 x i64], align 8
  %24 = alloca i8*, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %31 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 4
  %36 = alloca i8*, align 4
  %37 = alloca i32, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca [32 x i64], align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %46 = alloca i32, align 4
  %47 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %48 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i8*, align 4
  %53 = alloca i8*, align 4
  %54 = alloca i32, align 4
  %55 = alloca [256 x i8], align 1
  %56 = alloca [32 x i64], align 8
  %57 = alloca i32, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3067, metadata !DIExpression()), !dbg !3068
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3069, metadata !DIExpression()), !dbg !3070
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3071, metadata !DIExpression()), !dbg !3072
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3073, metadata !DIExpression()), !dbg !3074
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.declare(metadata [72 x i8]* %11, metadata !3077, metadata !DIExpression()), !dbg !3081
  %58 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i32 0, i32 0, !dbg !3082
  call void @llvm.memset.p0i8.i32(i8* align 1 %58, i8 0, i32 72, i1 false), !dbg !3082
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3083, metadata !DIExpression()), !dbg !3084
  %59 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i32 0, i32 0, !dbg !3085
  store i8* %59, i8** %12, align 4, !dbg !3084
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3086, metadata !DIExpression()), !dbg !3087
  %60 = load i32, i32* %8, align 4, !dbg !3088
  %61 = icmp ule i32 %60, 72, !dbg !3090
  br i1 %61, label %62, label %64, !dbg !3091

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !3092
  store i32 %63, i32* %13, align 4, !dbg !3094
  br label %65, !dbg !3095

64:                                               ; preds = %5
  store i32 64, i32* %13, align 4, !dbg !3096
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3098, metadata !DIExpression()), !dbg !3099
  %66 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i32 0, i32 0, !dbg !3100
  %67 = load i32, i32* %13, align 4, !dbg !3101
  %68 = getelementptr inbounds i8, i8* %66, i32 %67, !dbg !3102
  store i8* %68, i8** %14, align 4, !dbg !3099
  %69 = load i8*, i8** %14, align 4, !dbg !3103
  %70 = load i32, i32* %8, align 4, !dbg !3104
  %71 = icmp ule i32 %70, 72, !dbg !3106
  br i1 %71, label %72, label %77, !dbg !3107

72:                                               ; preds = %65
  %73 = load i8*, i8** %12, align 4, !dbg !3108
  %74 = load i8*, i8** %7, align 4, !dbg !3110
  %75 = load i32, i32* %8, align 4, !dbg !3111
  %76 = mul i32 %75, 1, !dbg !3112
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %73, i8* align 1 %74, i32 %76, i1 false), !dbg !3113
  br label %81, !dbg !3114

77:                                               ; preds = %65
  %78 = load i8*, i8** %12, align 4, !dbg !3115
  %79 = load i8*, i8** %7, align 4, !dbg !3117
  %80 = load i32, i32* %8, align 4, !dbg !3118
  call void @Hacl_Hash_SHA3_sha3_512(i8* noundef %78, i8* noundef %79, i32 noundef %80), !dbg !3119
  br label %81

81:                                               ; preds = %77, %72
  call void @llvm.dbg.declare(metadata [72 x i8]* %15, metadata !3120, metadata !DIExpression()), !dbg !3121
  %82 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i32 0, i32 0, !dbg !3122
  call void @llvm.memset.p0i8.i32(i8* align 1 %82, i8 54, i32 72, i1 false), !dbg !3122
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3123, metadata !DIExpression()), !dbg !3125
  store i32 0, i32* %16, align 4, !dbg !3125
  br label %83, !dbg !3126

83:                                               ; preds = %101, %81
  %84 = load i32, i32* %16, align 4, !dbg !3127
  %85 = icmp ult i32 %84, 72, !dbg !3129
  br i1 %85, label %86, label %104, !dbg !3130

86:                                               ; preds = %83
  call void @llvm.dbg.declare(metadata i8* %17, metadata !3131, metadata !DIExpression()), !dbg !3133
  %87 = load i32, i32* %16, align 4, !dbg !3134
  %88 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i32 0, i32 %87, !dbg !3135
  %89 = load i8, i8* %88, align 1, !dbg !3135
  store i8 %89, i8* %17, align 1, !dbg !3133
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3136, metadata !DIExpression()), !dbg !3137
  %90 = load i32, i32* %16, align 4, !dbg !3138
  %91 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i32 0, i32 %90, !dbg !3139
  %92 = load i8, i8* %91, align 1, !dbg !3139
  store i8 %92, i8* %18, align 1, !dbg !3137
  %93 = load i8, i8* %17, align 1, !dbg !3140
  %94 = zext i8 %93 to i32, !dbg !3141
  %95 = load i8, i8* %18, align 1, !dbg !3142
  %96 = zext i8 %95 to i32, !dbg !3143
  %97 = xor i32 %94, %96, !dbg !3144
  %98 = trunc i32 %97 to i8, !dbg !3141
  %99 = load i32, i32* %16, align 4, !dbg !3145
  %100 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i32 0, i32 %99, !dbg !3146
  store i8 %98, i8* %100, align 1, !dbg !3147
  br label %101, !dbg !3148

101:                                              ; preds = %86
  %102 = load i32, i32* %16, align 4, !dbg !3149
  %103 = add i32 %102, 1, !dbg !3149
  store i32 %103, i32* %16, align 4, !dbg !3149
  br label %83, !dbg !3150, !llvm.loop !3151

104:                                              ; preds = %83
  call void @llvm.dbg.declare(metadata [72 x i8]* %19, metadata !3153, metadata !DIExpression()), !dbg !3154
  %105 = getelementptr inbounds [72 x i8], [72 x i8]* %19, i32 0, i32 0, !dbg !3155
  call void @llvm.memset.p0i8.i32(i8* align 1 %105, i8 92, i32 72, i1 false), !dbg !3155
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3156, metadata !DIExpression()), !dbg !3158
  store i32 0, i32* %20, align 4, !dbg !3158
  br label %106, !dbg !3159

106:                                              ; preds = %124, %104
  %107 = load i32, i32* %20, align 4, !dbg !3160
  %108 = icmp ult i32 %107, 72, !dbg !3162
  br i1 %108, label %109, label %127, !dbg !3163

109:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata i8* %21, metadata !3164, metadata !DIExpression()), !dbg !3166
  %110 = load i32, i32* %20, align 4, !dbg !3167
  %111 = getelementptr inbounds [72 x i8], [72 x i8]* %19, i32 0, i32 %110, !dbg !3168
  %112 = load i8, i8* %111, align 1, !dbg !3168
  store i8 %112, i8* %21, align 1, !dbg !3166
  call void @llvm.dbg.declare(metadata i8* %22, metadata !3169, metadata !DIExpression()), !dbg !3170
  %113 = load i32, i32* %20, align 4, !dbg !3171
  %114 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i32 0, i32 %113, !dbg !3172
  %115 = load i8, i8* %114, align 1, !dbg !3172
  store i8 %115, i8* %22, align 1, !dbg !3170
  %116 = load i8, i8* %21, align 1, !dbg !3173
  %117 = zext i8 %116 to i32, !dbg !3174
  %118 = load i8, i8* %22, align 1, !dbg !3175
  %119 = zext i8 %118 to i32, !dbg !3176
  %120 = xor i32 %117, %119, !dbg !3177
  %121 = trunc i32 %120 to i8, !dbg !3174
  %122 = load i32, i32* %20, align 4, !dbg !3178
  %123 = getelementptr inbounds [72 x i8], [72 x i8]* %19, i32 0, i32 %122, !dbg !3179
  store i8 %121, i8* %123, align 1, !dbg !3180
  br label %124, !dbg !3181

124:                                              ; preds = %109
  %125 = load i32, i32* %20, align 4, !dbg !3182
  %126 = add i32 %125, 1, !dbg !3182
  store i32 %126, i32* %20, align 4, !dbg !3182
  br label %106, !dbg !3183, !llvm.loop !3184

127:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata [25 x i64]* %23, metadata !3186, metadata !DIExpression()), !dbg !3187
  %128 = bitcast [25 x i64]* %23 to i8*, !dbg !3187
  call void @llvm.memset.p0i8.i32(i8* align 8 %128, i8 0, i32 200, i1 false), !dbg !3187
  call void @llvm.dbg.declare(metadata i8** %24, metadata !3188, metadata !DIExpression()), !dbg !3189
  %129 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i32 0, i32 0, !dbg !3190
  store i8* %129, i8** %24, align 4, !dbg !3189
  %130 = load i32, i32* %10, align 4, !dbg !3191
  %131 = icmp eq i32 %130, 0, !dbg !3193
  br i1 %131, label %132, label %135, !dbg !3194

132:                                              ; preds = %127
  %133 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3195
  %134 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i32 0, i32 0, !dbg !3197
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 11, i64* noundef %133, i8* noundef %134, i32 noundef 72), !dbg !3198
  br label %187, !dbg !3199

135:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata i32* %25, metadata !3200, metadata !DIExpression()), !dbg !3202
  store i32 72, i32* %25, align 4, !dbg !3202
  call void @llvm.dbg.declare(metadata i32* %26, metadata !3203, metadata !DIExpression()), !dbg !3204
  %136 = load i32, i32* %10, align 4, !dbg !3205
  %137 = load i32, i32* %25, align 4, !dbg !3206
  %138 = udiv i32 %136, %137, !dbg !3207
  store i32 %138, i32* %26, align 4, !dbg !3204
  call void @llvm.dbg.declare(metadata i32* %27, metadata !3208, metadata !DIExpression()), !dbg !3209
  %139 = load i32, i32* %10, align 4, !dbg !3210
  %140 = load i32, i32* %25, align 4, !dbg !3211
  %141 = urem i32 %139, %140, !dbg !3212
  store i32 %141, i32* %27, align 4, !dbg !3209
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !3213, metadata !DIExpression()), !dbg !3214
  %142 = load i32, i32* %26, align 4, !dbg !3215
  %143 = icmp ugt i32 %142, 0, !dbg !3217
  br i1 %143, label %144, label %160, !dbg !3218

144:                                              ; preds = %135
  %145 = load i32, i32* %27, align 4, !dbg !3219
  %146 = icmp eq i32 %145, 0, !dbg !3220
  br i1 %146, label %147, label %160, !dbg !3221

147:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata i32* %29, metadata !3222, metadata !DIExpression()), !dbg !3224
  %148 = load i32, i32* %26, align 4, !dbg !3225
  %149 = sub i32 %148, 1, !dbg !3226
  store i32 %149, i32* %29, align 4, !dbg !3224
  %150 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !3227
  %151 = load i32, i32* %29, align 4, !dbg !3228
  store i32 %151, i32* %150, align 4, !dbg !3227
  %152 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !3227
  %153 = load i32, i32* %10, align 4, !dbg !3229
  %154 = load i32, i32* %29, align 4, !dbg !3230
  %155 = load i32, i32* %25, align 4, !dbg !3231
  %156 = mul i32 %154, %155, !dbg !3232
  %157 = sub i32 %153, %156, !dbg !3233
  store i32 %157, i32* %152, align 4, !dbg !3227
  %158 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !3234
  %159 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !3234
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %158, i8* align 4 %159, i32 8, i1 false), !dbg !3234
  br label %167, !dbg !3235

160:                                              ; preds = %144, %135
  %161 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !3236
  %162 = load i32, i32* %26, align 4, !dbg !3238
  store i32 %162, i32* %161, align 4, !dbg !3236
  %163 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !3236
  %164 = load i32, i32* %27, align 4, !dbg !3239
  store i32 %164, i32* %163, align 4, !dbg !3236
  %165 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !3240
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !3240
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %165, i8* align 4 %166, i32 8, i1 false), !dbg !3240
  br label %167

167:                                              ; preds = %160, %147
  call void @llvm.dbg.declare(metadata i32* %32, metadata !3241, metadata !DIExpression()), !dbg !3242
  %168 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !3243
  %169 = load i32, i32* %168, align 4, !dbg !3243
  store i32 %169, i32* %32, align 4, !dbg !3242
  call void @llvm.dbg.declare(metadata i32* %33, metadata !3244, metadata !DIExpression()), !dbg !3245
  %170 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !3246
  %171 = load i32, i32* %170, align 4, !dbg !3246
  store i32 %171, i32* %33, align 4, !dbg !3245
  call void @llvm.dbg.declare(metadata i32* %34, metadata !3247, metadata !DIExpression()), !dbg !3248
  %172 = load i32, i32* %32, align 4, !dbg !3249
  %173 = load i32, i32* %25, align 4, !dbg !3250
  %174 = mul i32 %172, %173, !dbg !3251
  store i32 %174, i32* %34, align 4, !dbg !3248
  call void @llvm.dbg.declare(metadata i8** %35, metadata !3252, metadata !DIExpression()), !dbg !3253
  %175 = load i8*, i8** %9, align 4, !dbg !3254
  store i8* %175, i8** %35, align 4, !dbg !3253
  call void @llvm.dbg.declare(metadata i8** %36, metadata !3255, metadata !DIExpression()), !dbg !3256
  %176 = load i8*, i8** %9, align 4, !dbg !3257
  %177 = load i32, i32* %34, align 4, !dbg !3258
  %178 = getelementptr inbounds i8, i8* %176, i32 %177, !dbg !3259
  store i8* %178, i8** %36, align 4, !dbg !3256
  %179 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3260
  %180 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i32 0, i32 0, !dbg !3261
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, i64* noundef %179, i8* noundef %180, i32 noundef 1), !dbg !3262
  %181 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3263
  %182 = load i8*, i8** %35, align 4, !dbg !3264
  %183 = load i32, i32* %32, align 4, !dbg !3265
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, i64* noundef %181, i8* noundef %182, i32 noundef %183), !dbg !3266
  %184 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3267
  %185 = load i8*, i8** %36, align 4, !dbg !3268
  %186 = load i32, i32* %33, align 4, !dbg !3269
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 11, i64* noundef %184, i8* noundef %185, i32 noundef %186), !dbg !3270
  br label %187

187:                                              ; preds = %167, %132
  call void @llvm.dbg.declare(metadata i32* %37, metadata !3271, metadata !DIExpression()), !dbg !3272
  store i32 64, i32* %37, align 4, !dbg !3272
  call void @llvm.dbg.declare(metadata [256 x i8]* %38, metadata !3273, metadata !DIExpression()), !dbg !3274
  %188 = bitcast [256 x i8]* %38 to i8*, !dbg !3274
  call void @llvm.memset.p0i8.i32(i8* align 1 %188, i8 0, i32 256, i1 false), !dbg !3274
  call void @llvm.dbg.declare(metadata [32 x i64]* %39, metadata !3275, metadata !DIExpression()), !dbg !3276
  %189 = bitcast [32 x i64]* %39 to i8*, !dbg !3276
  call void @llvm.memset.p0i8.i32(i8* align 8 %189, i8 0, i32 256, i1 false), !dbg !3276
  %190 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i32 0, i32 0, !dbg !3277
  %191 = bitcast i64* %190 to i8*, !dbg !3277
  %192 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3277
  %193 = bitcast i64* %192 to i8*, !dbg !3277
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %191, i8* align 8 %193, i32 200, i1 false), !dbg !3277
  call void @llvm.dbg.declare(metadata i32* %40, metadata !3278, metadata !DIExpression()), !dbg !3280
  store i32 0, i32* %40, align 4, !dbg !3280
  br label %194, !dbg !3281

194:                                              ; preds = %205, %187
  %195 = load i32, i32* %40, align 4, !dbg !3282
  %196 = icmp ult i32 %195, 32, !dbg !3284
  br i1 %196, label %197, label %208, !dbg !3285

197:                                              ; preds = %194
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !3286
  %199 = load i32, i32* %40, align 4, !dbg !3286
  %200 = mul i32 %199, 8, !dbg !3286
  %201 = getelementptr inbounds i8, i8* %198, i32 %200, !dbg !3286
  %202 = load i32, i32* %40, align 4, !dbg !3286
  %203 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i32 0, i32 %202, !dbg !3286
  %204 = load i64, i64* %203, align 8, !dbg !3286
  call void @store64(i8* noundef %201, i64 noundef %204), !dbg !3286
  br label %205, !dbg !3288

205:                                              ; preds = %197
  %206 = load i32, i32* %40, align 4, !dbg !3289
  %207 = add i32 %206, 1, !dbg !3289
  store i32 %207, i32* %40, align 4, !dbg !3289
  br label %194, !dbg !3290, !llvm.loop !3291

208:                                              ; preds = %194
  %209 = load i8*, i8** %24, align 4, !dbg !3293
  %210 = getelementptr inbounds i8, i8* %209, i32 64, !dbg !3294
  %211 = load i32, i32* %37, align 4, !dbg !3295
  %212 = sub i32 0, %211, !dbg !3296
  %213 = getelementptr inbounds i8, i8* %210, i32 %212, !dbg !3296
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !3297
  %215 = load i32, i32* %37, align 4, !dbg !3298
  %216 = mul i32 %215, 1, !dbg !3299
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %213, i8* align 1 %214, i32 %216, i1 false), !dbg !3297
  call void @llvm.dbg.declare(metadata i8** %41, metadata !3300, metadata !DIExpression()), !dbg !3301
  %217 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i32 0, i32 0, !dbg !3302
  store i8* %217, i8** %41, align 4, !dbg !3301
  %218 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3303
  call void @Hacl_Hash_SHA3_init_(i8 noundef zeroext 11, i64* noundef %218), !dbg !3304
  call void @llvm.dbg.declare(metadata i32* %42, metadata !3305, metadata !DIExpression()), !dbg !3306
  store i32 72, i32* %42, align 4, !dbg !3306
  call void @llvm.dbg.declare(metadata i32* %43, metadata !3307, metadata !DIExpression()), !dbg !3308
  %219 = load i32, i32* %42, align 4, !dbg !3309
  %220 = udiv i32 64, %219, !dbg !3310
  store i32 %220, i32* %43, align 4, !dbg !3308
  call void @llvm.dbg.declare(metadata i32* %44, metadata !3311, metadata !DIExpression()), !dbg !3312
  %221 = load i32, i32* %42, align 4, !dbg !3313
  %222 = urem i32 64, %221, !dbg !3314
  store i32 %222, i32* %44, align 4, !dbg !3312
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %45, metadata !3315, metadata !DIExpression()), !dbg !3316
  %223 = load i32, i32* %43, align 4, !dbg !3317
  %224 = icmp ugt i32 %223, 0, !dbg !3319
  br i1 %224, label %225, label %240, !dbg !3320

225:                                              ; preds = %208
  %226 = load i32, i32* %44, align 4, !dbg !3321
  %227 = icmp eq i32 %226, 0, !dbg !3322
  br i1 %227, label %228, label %240, !dbg !3323

228:                                              ; preds = %225
  call void @llvm.dbg.declare(metadata i32* %46, metadata !3324, metadata !DIExpression()), !dbg !3326
  %229 = load i32, i32* %43, align 4, !dbg !3327
  %230 = sub i32 %229, 1, !dbg !3328
  store i32 %230, i32* %46, align 4, !dbg !3326
  %231 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 0, !dbg !3329
  %232 = load i32, i32* %46, align 4, !dbg !3330
  store i32 %232, i32* %231, align 4, !dbg !3329
  %233 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 1, !dbg !3329
  %234 = load i32, i32* %46, align 4, !dbg !3331
  %235 = load i32, i32* %42, align 4, !dbg !3332
  %236 = mul i32 %234, %235, !dbg !3333
  %237 = sub i32 64, %236, !dbg !3334
  store i32 %237, i32* %233, align 4, !dbg !3329
  %238 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !3335
  %239 = bitcast %struct.K___uint32_t_uint32_t_s* %47 to i8*, !dbg !3335
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %238, i8* align 4 %239, i32 8, i1 false), !dbg !3335
  br label %247, !dbg !3336

240:                                              ; preds = %225, %208
  %241 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !3337
  %242 = load i32, i32* %43, align 4, !dbg !3339
  store i32 %242, i32* %241, align 4, !dbg !3337
  %243 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !3337
  %244 = load i32, i32* %44, align 4, !dbg !3340
  store i32 %244, i32* %243, align 4, !dbg !3337
  %245 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !3341
  %246 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !3341
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %245, i8* align 4 %246, i32 8, i1 false), !dbg !3341
  br label %247

247:                                              ; preds = %240, %228
  call void @llvm.dbg.declare(metadata i32* %49, metadata !3342, metadata !DIExpression()), !dbg !3343
  %248 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 0, !dbg !3344
  %249 = load i32, i32* %248, align 4, !dbg !3344
  store i32 %249, i32* %49, align 4, !dbg !3343
  call void @llvm.dbg.declare(metadata i32* %50, metadata !3345, metadata !DIExpression()), !dbg !3346
  %250 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 1, !dbg !3347
  %251 = load i32, i32* %250, align 4, !dbg !3347
  store i32 %251, i32* %50, align 4, !dbg !3346
  call void @llvm.dbg.declare(metadata i32* %51, metadata !3348, metadata !DIExpression()), !dbg !3349
  %252 = load i32, i32* %49, align 4, !dbg !3350
  %253 = load i32, i32* %42, align 4, !dbg !3351
  %254 = mul i32 %252, %253, !dbg !3352
  store i32 %254, i32* %51, align 4, !dbg !3349
  call void @llvm.dbg.declare(metadata i8** %52, metadata !3353, metadata !DIExpression()), !dbg !3354
  %255 = load i8*, i8** %41, align 4, !dbg !3355
  store i8* %255, i8** %52, align 4, !dbg !3354
  call void @llvm.dbg.declare(metadata i8** %53, metadata !3356, metadata !DIExpression()), !dbg !3357
  %256 = load i8*, i8** %41, align 4, !dbg !3358
  %257 = load i32, i32* %51, align 4, !dbg !3359
  %258 = getelementptr inbounds i8, i8* %256, i32 %257, !dbg !3360
  store i8* %258, i8** %53, align 4, !dbg !3357
  %259 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3361
  %260 = getelementptr inbounds [72 x i8], [72 x i8]* %19, i32 0, i32 0, !dbg !3362
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, i64* noundef %259, i8* noundef %260, i32 noundef 1), !dbg !3363
  %261 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3364
  %262 = load i8*, i8** %52, align 4, !dbg !3365
  %263 = load i32, i32* %49, align 4, !dbg !3366
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, i64* noundef %261, i8* noundef %262, i32 noundef %263), !dbg !3367
  %264 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3368
  %265 = load i8*, i8** %53, align 4, !dbg !3369
  %266 = load i32, i32* %50, align 4, !dbg !3370
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 11, i64* noundef %264, i8* noundef %265, i32 noundef %266), !dbg !3371
  call void @llvm.dbg.declare(metadata i32* %54, metadata !3372, metadata !DIExpression()), !dbg !3373
  store i32 64, i32* %54, align 4, !dbg !3373
  call void @llvm.dbg.declare(metadata [256 x i8]* %55, metadata !3374, metadata !DIExpression()), !dbg !3375
  %267 = bitcast [256 x i8]* %55 to i8*, !dbg !3375
  call void @llvm.memset.p0i8.i32(i8* align 1 %267, i8 0, i32 256, i1 false), !dbg !3375
  call void @llvm.dbg.declare(metadata [32 x i64]* %56, metadata !3376, metadata !DIExpression()), !dbg !3377
  %268 = bitcast [32 x i64]* %56 to i8*, !dbg !3377
  call void @llvm.memset.p0i8.i32(i8* align 8 %268, i8 0, i32 256, i1 false), !dbg !3377
  %269 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i32 0, i32 0, !dbg !3378
  %270 = bitcast i64* %269 to i8*, !dbg !3378
  %271 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i32 0, i32 0, !dbg !3378
  %272 = bitcast i64* %271 to i8*, !dbg !3378
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %270, i8* align 8 %272, i32 200, i1 false), !dbg !3378
  call void @llvm.dbg.declare(metadata i32* %57, metadata !3379, metadata !DIExpression()), !dbg !3381
  store i32 0, i32* %57, align 4, !dbg !3381
  br label %273, !dbg !3382

273:                                              ; preds = %284, %247
  %274 = load i32, i32* %57, align 4, !dbg !3383
  %275 = icmp ult i32 %274, 32, !dbg !3385
  br i1 %275, label %276, label %287, !dbg !3386

276:                                              ; preds = %273
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i32 0, i32 0, !dbg !3387
  %278 = load i32, i32* %57, align 4, !dbg !3387
  %279 = mul i32 %278, 8, !dbg !3387
  %280 = getelementptr inbounds i8, i8* %277, i32 %279, !dbg !3387
  %281 = load i32, i32* %57, align 4, !dbg !3387
  %282 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i32 0, i32 %281, !dbg !3387
  %283 = load i64, i64* %282, align 8, !dbg !3387
  call void @store64(i8* noundef %280, i64 noundef %283), !dbg !3387
  br label %284, !dbg !3389

284:                                              ; preds = %276
  %285 = load i32, i32* %57, align 4, !dbg !3390
  %286 = add i32 %285, 1, !dbg !3390
  store i32 %286, i32* %57, align 4, !dbg !3390
  br label %273, !dbg !3391, !llvm.loop !3392

287:                                              ; preds = %273
  %288 = load i8*, i8** %6, align 4, !dbg !3394
  %289 = getelementptr inbounds i8, i8* %288, i32 64, !dbg !3395
  %290 = load i32, i32* %54, align 4, !dbg !3396
  %291 = sub i32 0, %290, !dbg !3397
  %292 = getelementptr inbounds i8, i8* %289, i32 %291, !dbg !3397
  %293 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i32 0, i32 0, !dbg !3398
  %294 = load i32, i32* %54, align 4, !dbg !3399
  %295 = mul i32 %294, 1, !dbg !3400
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %292, i8* align 1 %293, i32 %295, i1 false), !dbg !3398
  ret void, !dbg !3401
}

declare dso_local void @Hacl_Hash_SHA3_sha3_512(i8* noundef, i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_blake2s_32(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !3402 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [64 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [16 x i32], align 4
  %24 = alloca i32*, align 4
  %25 = alloca i8*, align 4
  %26 = alloca [16 x i32], align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %33 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 4
  %38 = alloca i8*, align 4
  %39 = alloca [16 x i32], align 4
  %40 = alloca [16 x i32], align 4
  %41 = alloca [16 x i32], align 4
  %42 = alloca i8*, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %47 = alloca i32, align 4
  %48 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %49 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i8*, align 4
  %54 = alloca i8*, align 4
  %55 = alloca [16 x i32], align 4
  %56 = alloca [16 x i32], align 4
  %57 = alloca [16 x i32], align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3403, metadata !DIExpression()), !dbg !3404
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3405, metadata !DIExpression()), !dbg !3406
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3407, metadata !DIExpression()), !dbg !3408
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3409, metadata !DIExpression()), !dbg !3410
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3411, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !3413, metadata !DIExpression()), !dbg !3414
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !3415
  call void @llvm.memset.p0i8.i32(i8* align 1 %58, i8 0, i32 64, i1 false), !dbg !3415
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3416, metadata !DIExpression()), !dbg !3417
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !3418
  store i8* %59, i8** %12, align 4, !dbg !3417
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3419, metadata !DIExpression()), !dbg !3420
  %60 = load i32, i32* %8, align 4, !dbg !3421
  %61 = icmp ule i32 %60, 64, !dbg !3423
  br i1 %61, label %62, label %64, !dbg !3424

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !3425
  store i32 %63, i32* %13, align 4, !dbg !3427
  br label %65, !dbg !3428

64:                                               ; preds = %5
  store i32 32, i32* %13, align 4, !dbg !3429
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3431, metadata !DIExpression()), !dbg !3432
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !3433
  %67 = load i32, i32* %13, align 4, !dbg !3434
  %68 = getelementptr inbounds i8, i8* %66, i32 %67, !dbg !3435
  store i8* %68, i8** %14, align 4, !dbg !3432
  %69 = load i8*, i8** %14, align 4, !dbg !3436
  %70 = load i32, i32* %8, align 4, !dbg !3437
  %71 = icmp ule i32 %70, 64, !dbg !3439
  br i1 %71, label %72, label %77, !dbg !3440

72:                                               ; preds = %65
  %73 = load i8*, i8** %12, align 4, !dbg !3441
  %74 = load i8*, i8** %7, align 4, !dbg !3443
  %75 = load i32, i32* %8, align 4, !dbg !3444
  %76 = mul i32 %75, 1, !dbg !3445
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %73, i8* align 1 %74, i32 %76, i1 false), !dbg !3446
  br label %81, !dbg !3447

77:                                               ; preds = %65
  %78 = load i8*, i8** %12, align 4, !dbg !3448
  %79 = load i8*, i8** %7, align 4, !dbg !3450
  %80 = load i32, i32* %8, align 4, !dbg !3451
  call void @Hacl_Hash_Blake2s_hash_with_key(i8* noundef %78, i32 noundef 32, i8* noundef %79, i32 noundef %80, i8* noundef null, i32 noundef 0), !dbg !3452
  br label %81

81:                                               ; preds = %77, %72
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !3453, metadata !DIExpression()), !dbg !3454
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !3455
  call void @llvm.memset.p0i8.i32(i8* align 1 %82, i8 54, i32 64, i1 false), !dbg !3455
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3456, metadata !DIExpression()), !dbg !3458
  store i32 0, i32* %16, align 4, !dbg !3458
  br label %83, !dbg !3459

83:                                               ; preds = %101, %81
  %84 = load i32, i32* %16, align 4, !dbg !3460
  %85 = icmp ult i32 %84, 64, !dbg !3462
  br i1 %85, label %86, label %104, !dbg !3463

86:                                               ; preds = %83
  call void @llvm.dbg.declare(metadata i8* %17, metadata !3464, metadata !DIExpression()), !dbg !3466
  %87 = load i32, i32* %16, align 4, !dbg !3467
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %87, !dbg !3468
  %89 = load i8, i8* %88, align 1, !dbg !3468
  store i8 %89, i8* %17, align 1, !dbg !3466
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3469, metadata !DIExpression()), !dbg !3470
  %90 = load i32, i32* %16, align 4, !dbg !3471
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %90, !dbg !3472
  %92 = load i8, i8* %91, align 1, !dbg !3472
  store i8 %92, i8* %18, align 1, !dbg !3470
  %93 = load i8, i8* %17, align 1, !dbg !3473
  %94 = zext i8 %93 to i32, !dbg !3474
  %95 = load i8, i8* %18, align 1, !dbg !3475
  %96 = zext i8 %95 to i32, !dbg !3476
  %97 = xor i32 %94, %96, !dbg !3477
  %98 = trunc i32 %97 to i8, !dbg !3474
  %99 = load i32, i32* %16, align 4, !dbg !3478
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 %99, !dbg !3479
  store i8 %98, i8* %100, align 1, !dbg !3480
  br label %101, !dbg !3481

101:                                              ; preds = %86
  %102 = load i32, i32* %16, align 4, !dbg !3482
  %103 = add i32 %102, 1, !dbg !3482
  store i32 %103, i32* %16, align 4, !dbg !3482
  br label %83, !dbg !3483, !llvm.loop !3484

104:                                              ; preds = %83
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !3486, metadata !DIExpression()), !dbg !3487
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !3488
  call void @llvm.memset.p0i8.i32(i8* align 1 %105, i8 92, i32 64, i1 false), !dbg !3488
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3489, metadata !DIExpression()), !dbg !3491
  store i32 0, i32* %20, align 4, !dbg !3491
  br label %106, !dbg !3492

106:                                              ; preds = %124, %104
  %107 = load i32, i32* %20, align 4, !dbg !3493
  %108 = icmp ult i32 %107, 64, !dbg !3495
  br i1 %108, label %109, label %127, !dbg !3496

109:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata i8* %21, metadata !3497, metadata !DIExpression()), !dbg !3499
  %110 = load i32, i32* %20, align 4, !dbg !3500
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %110, !dbg !3501
  %112 = load i8, i8* %111, align 1, !dbg !3501
  store i8 %112, i8* %21, align 1, !dbg !3499
  call void @llvm.dbg.declare(metadata i8* %22, metadata !3502, metadata !DIExpression()), !dbg !3503
  %113 = load i32, i32* %20, align 4, !dbg !3504
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 %113, !dbg !3505
  %115 = load i8, i8* %114, align 1, !dbg !3505
  store i8 %115, i8* %22, align 1, !dbg !3503
  %116 = load i8, i8* %21, align 1, !dbg !3506
  %117 = zext i8 %116 to i32, !dbg !3507
  %118 = load i8, i8* %22, align 1, !dbg !3508
  %119 = zext i8 %118 to i32, !dbg !3509
  %120 = xor i32 %117, %119, !dbg !3510
  %121 = trunc i32 %120 to i8, !dbg !3507
  %122 = load i32, i32* %20, align 4, !dbg !3511
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 %122, !dbg !3512
  store i8 %121, i8* %123, align 1, !dbg !3513
  br label %124, !dbg !3514

124:                                              ; preds = %109
  %125 = load i32, i32* %20, align 4, !dbg !3515
  %126 = add i32 %125, 1, !dbg !3515
  store i32 %126, i32* %20, align 4, !dbg !3515
  br label %106, !dbg !3516, !llvm.loop !3517

127:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata [16 x i32]* %23, metadata !3519, metadata !DIExpression()), !dbg !3523
  %128 = bitcast [16 x i32]* %23 to i8*, !dbg !3523
  call void @llvm.memset.p0i8.i32(i8* align 4 %128, i8 0, i32 64, i1 false), !dbg !3523
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i32 0, i32 0, !dbg !3524
  call void @Hacl_Hash_Blake2s_init(i32* noundef %129, i32 noundef 0, i32 noundef 32), !dbg !3525
  call void @llvm.dbg.declare(metadata i32** %24, metadata !3526, metadata !DIExpression()), !dbg !3527
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i32 0, i32 0, !dbg !3528
  store i32* %130, i32** %24, align 4, !dbg !3527
  call void @llvm.dbg.declare(metadata i8** %25, metadata !3529, metadata !DIExpression()), !dbg !3530
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !3531
  store i8* %131, i8** %25, align 4, !dbg !3530
  %132 = load i32, i32* %10, align 4, !dbg !3532
  %133 = icmp eq i32 %132, 0, !dbg !3534
  br i1 %133, label %134, label %139, !dbg !3535

134:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata [16 x i32]* %26, metadata !3536, metadata !DIExpression()), !dbg !3538
  %135 = bitcast [16 x i32]* %26 to i8*, !dbg !3538
  call void @llvm.memset.p0i8.i32(i8* align 4 %135, i8 0, i32 64, i1 false), !dbg !3538
  %136 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i32 0, i32 0, !dbg !3539
  %137 = load i32*, i32** %24, align 4, !dbg !3540
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !3541
  call void @Hacl_Hash_Blake2s_update_last(i32 noundef 64, i32* noundef %136, i32* noundef %137, i1 noundef zeroext false, i64 noundef 0, i32 noundef 64, i8* noundef %138), !dbg !3542
  br label %205, !dbg !3543

139:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata i32* %27, metadata !3544, metadata !DIExpression()), !dbg !3546
  store i32 64, i32* %27, align 4, !dbg !3546
  call void @llvm.dbg.declare(metadata i32* %28, metadata !3547, metadata !DIExpression()), !dbg !3548
  %140 = load i32, i32* %10, align 4, !dbg !3549
  %141 = load i32, i32* %27, align 4, !dbg !3550
  %142 = udiv i32 %140, %141, !dbg !3551
  store i32 %142, i32* %28, align 4, !dbg !3548
  call void @llvm.dbg.declare(metadata i32* %29, metadata !3552, metadata !DIExpression()), !dbg !3553
  %143 = load i32, i32* %10, align 4, !dbg !3554
  %144 = load i32, i32* %27, align 4, !dbg !3555
  %145 = urem i32 %143, %144, !dbg !3556
  store i32 %145, i32* %29, align 4, !dbg !3553
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %30, metadata !3557, metadata !DIExpression()), !dbg !3558
  %146 = load i32, i32* %28, align 4, !dbg !3559
  %147 = icmp ugt i32 %146, 0, !dbg !3561
  br i1 %147, label %148, label %164, !dbg !3562

148:                                              ; preds = %139
  %149 = load i32, i32* %29, align 4, !dbg !3563
  %150 = icmp eq i32 %149, 0, !dbg !3564
  br i1 %150, label %151, label %164, !dbg !3565

151:                                              ; preds = %148
  call void @llvm.dbg.declare(metadata i32* %31, metadata !3566, metadata !DIExpression()), !dbg !3568
  %152 = load i32, i32* %28, align 4, !dbg !3569
  %153 = sub i32 %152, 1, !dbg !3570
  store i32 %153, i32* %31, align 4, !dbg !3568
  %154 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %32, i32 0, i32 0, !dbg !3571
  %155 = load i32, i32* %31, align 4, !dbg !3572
  store i32 %155, i32* %154, align 4, !dbg !3571
  %156 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %32, i32 0, i32 1, !dbg !3571
  %157 = load i32, i32* %10, align 4, !dbg !3573
  %158 = load i32, i32* %31, align 4, !dbg !3574
  %159 = load i32, i32* %27, align 4, !dbg !3575
  %160 = mul i32 %158, %159, !dbg !3576
  %161 = sub i32 %157, %160, !dbg !3577
  store i32 %161, i32* %156, align 4, !dbg !3571
  %162 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !3578
  %163 = bitcast %struct.K___uint32_t_uint32_t_s* %32 to i8*, !dbg !3578
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %162, i8* align 4 %163, i32 8, i1 false), !dbg !3578
  br label %171, !dbg !3579

164:                                              ; preds = %148, %139
  %165 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %33, i32 0, i32 0, !dbg !3580
  %166 = load i32, i32* %28, align 4, !dbg !3582
  store i32 %166, i32* %165, align 4, !dbg !3580
  %167 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %33, i32 0, i32 1, !dbg !3580
  %168 = load i32, i32* %29, align 4, !dbg !3583
  store i32 %168, i32* %167, align 4, !dbg !3580
  %169 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !3584
  %170 = bitcast %struct.K___uint32_t_uint32_t_s* %33 to i8*, !dbg !3584
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %169, i8* align 4 %170, i32 8, i1 false), !dbg !3584
  br label %171

171:                                              ; preds = %164, %151
  call void @llvm.dbg.declare(metadata i32* %34, metadata !3585, metadata !DIExpression()), !dbg !3586
  %172 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !3587
  %173 = load i32, i32* %172, align 4, !dbg !3587
  store i32 %173, i32* %34, align 4, !dbg !3586
  call void @llvm.dbg.declare(metadata i32* %35, metadata !3588, metadata !DIExpression()), !dbg !3589
  %174 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !3590
  %175 = load i32, i32* %174, align 4, !dbg !3590
  store i32 %175, i32* %35, align 4, !dbg !3589
  call void @llvm.dbg.declare(metadata i32* %36, metadata !3591, metadata !DIExpression()), !dbg !3592
  %176 = load i32, i32* %34, align 4, !dbg !3593
  %177 = load i32, i32* %27, align 4, !dbg !3594
  %178 = mul i32 %176, %177, !dbg !3595
  store i32 %178, i32* %36, align 4, !dbg !3592
  call void @llvm.dbg.declare(metadata i8** %37, metadata !3596, metadata !DIExpression()), !dbg !3597
  %179 = load i8*, i8** %9, align 4, !dbg !3598
  store i8* %179, i8** %37, align 4, !dbg !3597
  call void @llvm.dbg.declare(metadata i8** %38, metadata !3599, metadata !DIExpression()), !dbg !3600
  %180 = load i8*, i8** %9, align 4, !dbg !3601
  %181 = load i32, i32* %36, align 4, !dbg !3602
  %182 = getelementptr inbounds i8, i8* %180, i32 %181, !dbg !3603
  store i8* %182, i8** %38, align 4, !dbg !3600
  call void @llvm.dbg.declare(metadata [16 x i32]* %39, metadata !3604, metadata !DIExpression()), !dbg !3605
  %183 = bitcast [16 x i32]* %39 to i8*, !dbg !3605
  call void @llvm.memset.p0i8.i32(i8* align 4 %183, i8 0, i32 64, i1 false), !dbg !3605
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i32 0, i32 0, !dbg !3606
  %185 = load i32*, i32** %24, align 4, !dbg !3607
  %186 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !3608
  call void @Hacl_Hash_Blake2s_update_multi(i32 noundef 64, i32* noundef %184, i32* noundef %185, i64 noundef 0, i8* noundef %186, i32 noundef 1), !dbg !3609
  call void @llvm.dbg.declare(metadata [16 x i32]* %40, metadata !3610, metadata !DIExpression()), !dbg !3611
  %187 = bitcast [16 x i32]* %40 to i8*, !dbg !3611
  call void @llvm.memset.p0i8.i32(i8* align 4 %187, i8 0, i32 64, i1 false), !dbg !3611
  %188 = load i32, i32* %34, align 4, !dbg !3612
  %189 = mul i32 %188, 64, !dbg !3613
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i32 0, i32 0, !dbg !3614
  %191 = load i32*, i32** %24, align 4, !dbg !3615
  %192 = load i32, i32* %27, align 4, !dbg !3616
  %193 = zext i32 %192 to i64, !dbg !3617
  %194 = load i8*, i8** %37, align 4, !dbg !3618
  %195 = load i32, i32* %34, align 4, !dbg !3619
  call void @Hacl_Hash_Blake2s_update_multi(i32 noundef %189, i32* noundef %190, i32* noundef %191, i64 noundef %193, i8* noundef %194, i32 noundef %195), !dbg !3620
  call void @llvm.dbg.declare(metadata [16 x i32]* %41, metadata !3621, metadata !DIExpression()), !dbg !3622
  %196 = bitcast [16 x i32]* %41 to i8*, !dbg !3622
  call void @llvm.memset.p0i8.i32(i8* align 4 %196, i8 0, i32 64, i1 false), !dbg !3622
  %197 = load i32, i32* %35, align 4, !dbg !3623
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %41, i32 0, i32 0, !dbg !3624
  %199 = load i32*, i32** %24, align 4, !dbg !3625
  %200 = load i32, i32* %36, align 4, !dbg !3626
  %201 = zext i32 %200 to i64, !dbg !3627
  %202 = add i64 64, %201, !dbg !3628
  %203 = load i32, i32* %35, align 4, !dbg !3629
  %204 = load i8*, i8** %38, align 4, !dbg !3630
  call void @Hacl_Hash_Blake2s_update_last(i32 noundef %197, i32* noundef %198, i32* noundef %199, i1 noundef zeroext false, i64 noundef %202, i32 noundef %203, i8* noundef %204), !dbg !3631
  br label %205

205:                                              ; preds = %171, %134
  %206 = load i8*, i8** %25, align 4, !dbg !3632
  %207 = load i32*, i32** %24, align 4, !dbg !3633
  call void @Hacl_Hash_Blake2s_finish(i32 noundef 32, i8* noundef %206, i32* noundef %207), !dbg !3634
  call void @llvm.dbg.declare(metadata i8** %42, metadata !3635, metadata !DIExpression()), !dbg !3636
  %208 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !3637
  store i8* %208, i8** %42, align 4, !dbg !3636
  %209 = load i32*, i32** %24, align 4, !dbg !3638
  call void @Hacl_Hash_Blake2s_init(i32* noundef %209, i32 noundef 0, i32 noundef 32), !dbg !3639
  call void @llvm.dbg.declare(metadata i32* %43, metadata !3640, metadata !DIExpression()), !dbg !3641
  store i32 64, i32* %43, align 4, !dbg !3641
  call void @llvm.dbg.declare(metadata i32* %44, metadata !3642, metadata !DIExpression()), !dbg !3643
  %210 = load i32, i32* %43, align 4, !dbg !3644
  %211 = udiv i32 32, %210, !dbg !3645
  store i32 %211, i32* %44, align 4, !dbg !3643
  call void @llvm.dbg.declare(metadata i32* %45, metadata !3646, metadata !DIExpression()), !dbg !3647
  %212 = load i32, i32* %43, align 4, !dbg !3648
  %213 = urem i32 32, %212, !dbg !3649
  store i32 %213, i32* %45, align 4, !dbg !3647
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %46, metadata !3650, metadata !DIExpression()), !dbg !3651
  %214 = load i32, i32* %44, align 4, !dbg !3652
  %215 = icmp ugt i32 %214, 0, !dbg !3654
  br i1 %215, label %216, label %231, !dbg !3655

216:                                              ; preds = %205
  %217 = load i32, i32* %45, align 4, !dbg !3656
  %218 = icmp eq i32 %217, 0, !dbg !3657
  br i1 %218, label %219, label %231, !dbg !3658

219:                                              ; preds = %216
  call void @llvm.dbg.declare(metadata i32* %47, metadata !3659, metadata !DIExpression()), !dbg !3661
  %220 = load i32, i32* %44, align 4, !dbg !3662
  %221 = sub i32 %220, 1, !dbg !3663
  store i32 %221, i32* %47, align 4, !dbg !3661
  %222 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !3664
  %223 = load i32, i32* %47, align 4, !dbg !3665
  store i32 %223, i32* %222, align 4, !dbg !3664
  %224 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !3664
  %225 = load i32, i32* %47, align 4, !dbg !3666
  %226 = load i32, i32* %43, align 4, !dbg !3667
  %227 = mul i32 %225, %226, !dbg !3668
  %228 = sub i32 32, %227, !dbg !3669
  store i32 %228, i32* %224, align 4, !dbg !3664
  %229 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !3670
  %230 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !3670
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %229, i8* align 4 %230, i32 8, i1 false), !dbg !3670
  br label %238, !dbg !3671

231:                                              ; preds = %216, %205
  %232 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !3672
  %233 = load i32, i32* %44, align 4, !dbg !3674
  store i32 %233, i32* %232, align 4, !dbg !3672
  %234 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !3672
  %235 = load i32, i32* %45, align 4, !dbg !3675
  store i32 %235, i32* %234, align 4, !dbg !3672
  %236 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !3676
  %237 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !3676
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %236, i8* align 4 %237, i32 8, i1 false), !dbg !3676
  br label %238

238:                                              ; preds = %231, %219
  call void @llvm.dbg.declare(metadata i32* %50, metadata !3677, metadata !DIExpression()), !dbg !3678
  %239 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 0, !dbg !3679
  %240 = load i32, i32* %239, align 4, !dbg !3679
  store i32 %240, i32* %50, align 4, !dbg !3678
  call void @llvm.dbg.declare(metadata i32* %51, metadata !3680, metadata !DIExpression()), !dbg !3681
  %241 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 1, !dbg !3682
  %242 = load i32, i32* %241, align 4, !dbg !3682
  store i32 %242, i32* %51, align 4, !dbg !3681
  call void @llvm.dbg.declare(metadata i32* %52, metadata !3683, metadata !DIExpression()), !dbg !3684
  %243 = load i32, i32* %50, align 4, !dbg !3685
  %244 = load i32, i32* %43, align 4, !dbg !3686
  %245 = mul i32 %243, %244, !dbg !3687
  store i32 %245, i32* %52, align 4, !dbg !3684
  call void @llvm.dbg.declare(metadata i8** %53, metadata !3688, metadata !DIExpression()), !dbg !3689
  %246 = load i8*, i8** %42, align 4, !dbg !3690
  store i8* %246, i8** %53, align 4, !dbg !3689
  call void @llvm.dbg.declare(metadata i8** %54, metadata !3691, metadata !DIExpression()), !dbg !3692
  %247 = load i8*, i8** %42, align 4, !dbg !3693
  %248 = load i32, i32* %52, align 4, !dbg !3694
  %249 = getelementptr inbounds i8, i8* %247, i32 %248, !dbg !3695
  store i8* %249, i8** %54, align 4, !dbg !3692
  call void @llvm.dbg.declare(metadata [16 x i32]* %55, metadata !3696, metadata !DIExpression()), !dbg !3697
  %250 = bitcast [16 x i32]* %55 to i8*, !dbg !3697
  call void @llvm.memset.p0i8.i32(i8* align 4 %250, i8 0, i32 64, i1 false), !dbg !3697
  %251 = getelementptr inbounds [16 x i32], [16 x i32]* %55, i32 0, i32 0, !dbg !3698
  %252 = load i32*, i32** %24, align 4, !dbg !3699
  %253 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i32 0, i32 0, !dbg !3700
  call void @Hacl_Hash_Blake2s_update_multi(i32 noundef 64, i32* noundef %251, i32* noundef %252, i64 noundef 0, i8* noundef %253, i32 noundef 1), !dbg !3701
  call void @llvm.dbg.declare(metadata [16 x i32]* %56, metadata !3702, metadata !DIExpression()), !dbg !3703
  %254 = bitcast [16 x i32]* %56 to i8*, !dbg !3703
  call void @llvm.memset.p0i8.i32(i8* align 4 %254, i8 0, i32 64, i1 false), !dbg !3703
  %255 = load i32, i32* %50, align 4, !dbg !3704
  %256 = mul i32 %255, 64, !dbg !3705
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %56, i32 0, i32 0, !dbg !3706
  %258 = load i32*, i32** %24, align 4, !dbg !3707
  %259 = load i32, i32* %43, align 4, !dbg !3708
  %260 = zext i32 %259 to i64, !dbg !3709
  %261 = load i8*, i8** %53, align 4, !dbg !3710
  %262 = load i32, i32* %50, align 4, !dbg !3711
  call void @Hacl_Hash_Blake2s_update_multi(i32 noundef %256, i32* noundef %257, i32* noundef %258, i64 noundef %260, i8* noundef %261, i32 noundef %262), !dbg !3712
  call void @llvm.dbg.declare(metadata [16 x i32]* %57, metadata !3713, metadata !DIExpression()), !dbg !3714
  %263 = bitcast [16 x i32]* %57 to i8*, !dbg !3714
  call void @llvm.memset.p0i8.i32(i8* align 4 %263, i8 0, i32 64, i1 false), !dbg !3714
  %264 = load i32, i32* %51, align 4, !dbg !3715
  %265 = getelementptr inbounds [16 x i32], [16 x i32]* %57, i32 0, i32 0, !dbg !3716
  %266 = load i32*, i32** %24, align 4, !dbg !3717
  %267 = load i32, i32* %52, align 4, !dbg !3718
  %268 = zext i32 %267 to i64, !dbg !3719
  %269 = add i64 64, %268, !dbg !3720
  %270 = load i32, i32* %51, align 4, !dbg !3721
  %271 = load i8*, i8** %54, align 4, !dbg !3722
  call void @Hacl_Hash_Blake2s_update_last(i32 noundef %264, i32* noundef %265, i32* noundef %266, i1 noundef zeroext false, i64 noundef %269, i32 noundef %270, i8* noundef %271), !dbg !3723
  %272 = load i8*, i8** %6, align 4, !dbg !3724
  %273 = load i32*, i32** %24, align 4, !dbg !3725
  call void @Hacl_Hash_Blake2s_finish(i32 noundef 32, i8* noundef %272, i32* noundef %273), !dbg !3726
  ret void, !dbg !3727
}

declare dso_local void @Hacl_Hash_Blake2s_hash_with_key(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_Blake2s_init(i32* noundef, i32 noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_Blake2s_update_last(i32 noundef, i32* noundef, i32* noundef, i1 noundef zeroext, i64 noundef, i32 noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_Blake2s_update_multi(i32 noundef, i32* noundef, i32* noundef, i64 noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_Blake2s_finish(i32 noundef, i8* noundef, i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_blake2b_32(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !3728 {
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 1
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 4
  %15 = alloca [128 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [128 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [16 x i64], align 8
  %24 = alloca i64*, align 4
  %25 = alloca i8*, align 4
  %26 = alloca [16 x i64], align 8
  %27 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %34 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 4
  %39 = alloca i8*, align 4
  %40 = alloca [16 x i64], align 8
  %41 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %42 = alloca [16 x i64], align 8
  %43 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %44 = alloca [16 x i64], align 8
  %45 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %46 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %47 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %48 = alloca i8*, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %53 = alloca i32, align 4
  %54 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %55 = alloca %struct.K___uint32_t_uint32_t_s, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i8*, align 4
  %60 = alloca i8*, align 4
  %61 = alloca [16 x i64], align 8
  %62 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %63 = alloca [16 x i64], align 8
  %64 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %65 = alloca [16 x i64], align 8
  %66 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %67 = alloca %struct.FStar_UInt128_uint128_s, align 8
  %68 = alloca %struct.FStar_UInt128_uint128_s, align 8
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3729, metadata !DIExpression()), !dbg !3730
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3731, metadata !DIExpression()), !dbg !3732
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3733, metadata !DIExpression()), !dbg !3734
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3735, metadata !DIExpression()), !dbg !3736
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3737, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.declare(metadata [128 x i8]* %11, metadata !3739, metadata !DIExpression()), !dbg !3740
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0, !dbg !3741
  call void @llvm.memset.p0i8.i32(i8* align 1 %69, i8 0, i32 128, i1 false), !dbg !3741
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3742, metadata !DIExpression()), !dbg !3743
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0, !dbg !3744
  store i8* %70, i8** %12, align 4, !dbg !3743
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3745, metadata !DIExpression()), !dbg !3746
  %71 = load i32, i32* %8, align 4, !dbg !3747
  %72 = icmp ule i32 %71, 128, !dbg !3749
  br i1 %72, label %73, label %75, !dbg !3750

73:                                               ; preds = %5
  %74 = load i32, i32* %8, align 4, !dbg !3751
  store i32 %74, i32* %13, align 4, !dbg !3753
  br label %76, !dbg !3754

75:                                               ; preds = %5
  store i32 64, i32* %13, align 4, !dbg !3755
  br label %76

76:                                               ; preds = %75, %73
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3757, metadata !DIExpression()), !dbg !3758
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0, !dbg !3759
  %78 = load i32, i32* %13, align 4, !dbg !3760
  %79 = getelementptr inbounds i8, i8* %77, i32 %78, !dbg !3761
  store i8* %79, i8** %14, align 4, !dbg !3758
  %80 = load i8*, i8** %14, align 4, !dbg !3762
  %81 = load i32, i32* %8, align 4, !dbg !3763
  %82 = icmp ule i32 %81, 128, !dbg !3765
  br i1 %82, label %83, label %88, !dbg !3766

83:                                               ; preds = %76
  %84 = load i8*, i8** %12, align 4, !dbg !3767
  %85 = load i8*, i8** %7, align 4, !dbg !3769
  %86 = load i32, i32* %8, align 4, !dbg !3770
  %87 = mul i32 %86, 1, !dbg !3771
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %84, i8* align 1 %85, i32 %87, i1 false), !dbg !3772
  br label %92, !dbg !3773

88:                                               ; preds = %76
  %89 = load i8*, i8** %12, align 4, !dbg !3774
  %90 = load i8*, i8** %7, align 4, !dbg !3776
  %91 = load i32, i32* %8, align 4, !dbg !3777
  call void @Hacl_Hash_Blake2b_hash_with_key(i8* noundef %89, i32 noundef 64, i8* noundef %90, i32 noundef %91, i8* noundef null, i32 noundef 0), !dbg !3778
  br label %92

92:                                               ; preds = %88, %83
  call void @llvm.dbg.declare(metadata [128 x i8]* %15, metadata !3779, metadata !DIExpression()), !dbg !3780
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !3781
  call void @llvm.memset.p0i8.i32(i8* align 1 %93, i8 54, i32 128, i1 false), !dbg !3781
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3782, metadata !DIExpression()), !dbg !3784
  store i32 0, i32* %16, align 4, !dbg !3784
  br label %94, !dbg !3785

94:                                               ; preds = %112, %92
  %95 = load i32, i32* %16, align 4, !dbg !3786
  %96 = icmp ult i32 %95, 128, !dbg !3788
  br i1 %96, label %97, label %115, !dbg !3789

97:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata i8* %17, metadata !3790, metadata !DIExpression()), !dbg !3792
  %98 = load i32, i32* %16, align 4, !dbg !3793
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 %98, !dbg !3794
  %100 = load i8, i8* %99, align 1, !dbg !3794
  store i8 %100, i8* %17, align 1, !dbg !3792
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3795, metadata !DIExpression()), !dbg !3796
  %101 = load i32, i32* %16, align 4, !dbg !3797
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 %101, !dbg !3798
  %103 = load i8, i8* %102, align 1, !dbg !3798
  store i8 %103, i8* %18, align 1, !dbg !3796
  %104 = load i8, i8* %17, align 1, !dbg !3799
  %105 = zext i8 %104 to i32, !dbg !3800
  %106 = load i8, i8* %18, align 1, !dbg !3801
  %107 = zext i8 %106 to i32, !dbg !3802
  %108 = xor i32 %105, %107, !dbg !3803
  %109 = trunc i32 %108 to i8, !dbg !3800
  %110 = load i32, i32* %16, align 4, !dbg !3804
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 %110, !dbg !3805
  store i8 %109, i8* %111, align 1, !dbg !3806
  br label %112, !dbg !3807

112:                                              ; preds = %97
  %113 = load i32, i32* %16, align 4, !dbg !3808
  %114 = add i32 %113, 1, !dbg !3808
  store i32 %114, i32* %16, align 4, !dbg !3808
  br label %94, !dbg !3809, !llvm.loop !3810

115:                                              ; preds = %94
  call void @llvm.dbg.declare(metadata [128 x i8]* %19, metadata !3812, metadata !DIExpression()), !dbg !3813
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !3814
  call void @llvm.memset.p0i8.i32(i8* align 1 %116, i8 92, i32 128, i1 false), !dbg !3814
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3815, metadata !DIExpression()), !dbg !3817
  store i32 0, i32* %20, align 4, !dbg !3817
  br label %117, !dbg !3818

117:                                              ; preds = %135, %115
  %118 = load i32, i32* %20, align 4, !dbg !3819
  %119 = icmp ult i32 %118, 128, !dbg !3821
  br i1 %119, label %120, label %138, !dbg !3822

120:                                              ; preds = %117
  call void @llvm.dbg.declare(metadata i8* %21, metadata !3823, metadata !DIExpression()), !dbg !3825
  %121 = load i32, i32* %20, align 4, !dbg !3826
  %122 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 %121, !dbg !3827
  %123 = load i8, i8* %122, align 1, !dbg !3827
  store i8 %123, i8* %21, align 1, !dbg !3825
  call void @llvm.dbg.declare(metadata i8* %22, metadata !3828, metadata !DIExpression()), !dbg !3829
  %124 = load i32, i32* %20, align 4, !dbg !3830
  %125 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 %124, !dbg !3831
  %126 = load i8, i8* %125, align 1, !dbg !3831
  store i8 %126, i8* %22, align 1, !dbg !3829
  %127 = load i8, i8* %21, align 1, !dbg !3832
  %128 = zext i8 %127 to i32, !dbg !3833
  %129 = load i8, i8* %22, align 1, !dbg !3834
  %130 = zext i8 %129 to i32, !dbg !3835
  %131 = xor i32 %128, %130, !dbg !3836
  %132 = trunc i32 %131 to i8, !dbg !3833
  %133 = load i32, i32* %20, align 4, !dbg !3837
  %134 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 %133, !dbg !3838
  store i8 %132, i8* %134, align 1, !dbg !3839
  br label %135, !dbg !3840

135:                                              ; preds = %120
  %136 = load i32, i32* %20, align 4, !dbg !3841
  %137 = add i32 %136, 1, !dbg !3841
  store i32 %137, i32* %20, align 4, !dbg !3841
  br label %117, !dbg !3842, !llvm.loop !3843

138:                                              ; preds = %117
  call void @llvm.dbg.declare(metadata [16 x i64]* %23, metadata !3845, metadata !DIExpression()), !dbg !3847
  %139 = bitcast [16 x i64]* %23 to i8*, !dbg !3847
  call void @llvm.memset.p0i8.i32(i8* align 8 %139, i8 0, i32 128, i1 false), !dbg !3847
  %140 = getelementptr inbounds [16 x i64], [16 x i64]* %23, i32 0, i32 0, !dbg !3848
  call void @Hacl_Hash_Blake2b_init(i64* noundef %140, i32 noundef 0, i32 noundef 64), !dbg !3849
  call void @llvm.dbg.declare(metadata i64** %24, metadata !3850, metadata !DIExpression()), !dbg !3851
  %141 = getelementptr inbounds [16 x i64], [16 x i64]* %23, i32 0, i32 0, !dbg !3852
  store i64* %141, i64** %24, align 4, !dbg !3851
  call void @llvm.dbg.declare(metadata i8** %25, metadata !3853, metadata !DIExpression()), !dbg !3854
  %142 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !3855
  store i8* %142, i8** %25, align 4, !dbg !3854
  %143 = load i32, i32* %10, align 4, !dbg !3856
  %144 = icmp eq i32 %143, 0, !dbg !3858
  br i1 %144, label %145, label %150, !dbg !3859

145:                                              ; preds = %138
  call void @llvm.dbg.declare(metadata [16 x i64]* %26, metadata !3860, metadata !DIExpression()), !dbg !3862
  %146 = bitcast [16 x i64]* %26 to i8*, !dbg !3862
  call void @llvm.memset.p0i8.i32(i8* align 8 %146, i8 0, i32 128, i1 false), !dbg !3862
  %147 = getelementptr inbounds [16 x i64], [16 x i64]* %26, i32 0, i32 0, !dbg !3863
  %148 = load i64*, i64** %24, align 4, !dbg !3864
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %27, i64 noundef 0), !dbg !3865
  %149 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !3866
  call void @Hacl_Hash_Blake2b_update_last(i32 noundef 128, i64* noundef %147, i64* noundef %148, i1 noundef zeroext false, %struct.FStar_UInt128_uint128_s* noundef %27, i32 noundef 128, i8* noundef %149), !dbg !3867
  br label %215, !dbg !3868

150:                                              ; preds = %138
  call void @llvm.dbg.declare(metadata i32* %28, metadata !3869, metadata !DIExpression()), !dbg !3871
  store i32 128, i32* %28, align 4, !dbg !3871
  call void @llvm.dbg.declare(metadata i32* %29, metadata !3872, metadata !DIExpression()), !dbg !3873
  %151 = load i32, i32* %10, align 4, !dbg !3874
  %152 = load i32, i32* %28, align 4, !dbg !3875
  %153 = udiv i32 %151, %152, !dbg !3876
  store i32 %153, i32* %29, align 4, !dbg !3873
  call void @llvm.dbg.declare(metadata i32* %30, metadata !3877, metadata !DIExpression()), !dbg !3878
  %154 = load i32, i32* %10, align 4, !dbg !3879
  %155 = load i32, i32* %28, align 4, !dbg !3880
  %156 = urem i32 %154, %155, !dbg !3881
  store i32 %156, i32* %30, align 4, !dbg !3878
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %31, metadata !3882, metadata !DIExpression()), !dbg !3883
  %157 = load i32, i32* %29, align 4, !dbg !3884
  %158 = icmp ugt i32 %157, 0, !dbg !3886
  br i1 %158, label %159, label %175, !dbg !3887

159:                                              ; preds = %150
  %160 = load i32, i32* %30, align 4, !dbg !3888
  %161 = icmp eq i32 %160, 0, !dbg !3889
  br i1 %161, label %162, label %175, !dbg !3890

162:                                              ; preds = %159
  call void @llvm.dbg.declare(metadata i32* %32, metadata !3891, metadata !DIExpression()), !dbg !3893
  %163 = load i32, i32* %29, align 4, !dbg !3894
  %164 = sub i32 %163, 1, !dbg !3895
  store i32 %164, i32* %32, align 4, !dbg !3893
  %165 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %33, i32 0, i32 0, !dbg !3896
  %166 = load i32, i32* %32, align 4, !dbg !3897
  store i32 %166, i32* %165, align 4, !dbg !3896
  %167 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %33, i32 0, i32 1, !dbg !3896
  %168 = load i32, i32* %10, align 4, !dbg !3898
  %169 = load i32, i32* %32, align 4, !dbg !3899
  %170 = load i32, i32* %28, align 4, !dbg !3900
  %171 = mul i32 %169, %170, !dbg !3901
  %172 = sub i32 %168, %171, !dbg !3902
  store i32 %172, i32* %167, align 4, !dbg !3896
  %173 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !3903
  %174 = bitcast %struct.K___uint32_t_uint32_t_s* %33 to i8*, !dbg !3903
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %173, i8* align 4 %174, i32 8, i1 false), !dbg !3903
  br label %182, !dbg !3904

175:                                              ; preds = %159, %150
  %176 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %34, i32 0, i32 0, !dbg !3905
  %177 = load i32, i32* %29, align 4, !dbg !3907
  store i32 %177, i32* %176, align 4, !dbg !3905
  %178 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %34, i32 0, i32 1, !dbg !3905
  %179 = load i32, i32* %30, align 4, !dbg !3908
  store i32 %179, i32* %178, align 4, !dbg !3905
  %180 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !3909
  %181 = bitcast %struct.K___uint32_t_uint32_t_s* %34 to i8*, !dbg !3909
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %180, i8* align 4 %181, i32 8, i1 false), !dbg !3909
  br label %182

182:                                              ; preds = %175, %162
  call void @llvm.dbg.declare(metadata i32* %35, metadata !3910, metadata !DIExpression()), !dbg !3911
  %183 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !3912
  %184 = load i32, i32* %183, align 4, !dbg !3912
  store i32 %184, i32* %35, align 4, !dbg !3911
  call void @llvm.dbg.declare(metadata i32* %36, metadata !3913, metadata !DIExpression()), !dbg !3914
  %185 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !3915
  %186 = load i32, i32* %185, align 4, !dbg !3915
  store i32 %186, i32* %36, align 4, !dbg !3914
  call void @llvm.dbg.declare(metadata i32* %37, metadata !3916, metadata !DIExpression()), !dbg !3917
  %187 = load i32, i32* %35, align 4, !dbg !3918
  %188 = load i32, i32* %28, align 4, !dbg !3919
  %189 = mul i32 %187, %188, !dbg !3920
  store i32 %189, i32* %37, align 4, !dbg !3917
  call void @llvm.dbg.declare(metadata i8** %38, metadata !3921, metadata !DIExpression()), !dbg !3922
  %190 = load i8*, i8** %9, align 4, !dbg !3923
  store i8* %190, i8** %38, align 4, !dbg !3922
  call void @llvm.dbg.declare(metadata i8** %39, metadata !3924, metadata !DIExpression()), !dbg !3925
  %191 = load i8*, i8** %9, align 4, !dbg !3926
  %192 = load i32, i32* %37, align 4, !dbg !3927
  %193 = getelementptr inbounds i8, i8* %191, i32 %192, !dbg !3928
  store i8* %193, i8** %39, align 4, !dbg !3925
  call void @llvm.dbg.declare(metadata [16 x i64]* %40, metadata !3929, metadata !DIExpression()), !dbg !3930
  %194 = bitcast [16 x i64]* %40 to i8*, !dbg !3930
  call void @llvm.memset.p0i8.i32(i8* align 8 %194, i8 0, i32 128, i1 false), !dbg !3930
  %195 = getelementptr inbounds [16 x i64], [16 x i64]* %40, i32 0, i32 0, !dbg !3931
  %196 = load i64*, i64** %24, align 4, !dbg !3932
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %41, i64 noundef 0), !dbg !3933
  %197 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !3934
  call void @Hacl_Hash_Blake2b_update_multi(i32 noundef 128, i64* noundef %195, i64* noundef %196, %struct.FStar_UInt128_uint128_s* noundef %41, i8* noundef %197, i32 noundef 1), !dbg !3935
  call void @llvm.dbg.declare(metadata [16 x i64]* %42, metadata !3936, metadata !DIExpression()), !dbg !3937
  %198 = bitcast [16 x i64]* %42 to i8*, !dbg !3937
  call void @llvm.memset.p0i8.i32(i8* align 8 %198, i8 0, i32 128, i1 false), !dbg !3937
  %199 = load i32, i32* %35, align 4, !dbg !3938
  %200 = mul i32 %199, 128, !dbg !3939
  %201 = getelementptr inbounds [16 x i64], [16 x i64]* %42, i32 0, i32 0, !dbg !3940
  %202 = load i64*, i64** %24, align 4, !dbg !3941
  %203 = load i32, i32* %28, align 4, !dbg !3942
  %204 = zext i32 %203 to i64, !dbg !3943
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %43, i64 noundef %204), !dbg !3944
  %205 = load i8*, i8** %38, align 4, !dbg !3945
  %206 = load i32, i32* %35, align 4, !dbg !3946
  call void @Hacl_Hash_Blake2b_update_multi(i32 noundef %200, i64* noundef %201, i64* noundef %202, %struct.FStar_UInt128_uint128_s* noundef %43, i8* noundef %205, i32 noundef %206), !dbg !3947
  call void @llvm.dbg.declare(metadata [16 x i64]* %44, metadata !3948, metadata !DIExpression()), !dbg !3949
  %207 = bitcast [16 x i64]* %44 to i8*, !dbg !3949
  call void @llvm.memset.p0i8.i32(i8* align 8 %207, i8 0, i32 128, i1 false), !dbg !3949
  %208 = load i32, i32* %36, align 4, !dbg !3950
  %209 = getelementptr inbounds [16 x i64], [16 x i64]* %44, i32 0, i32 0, !dbg !3951
  %210 = load i64*, i64** %24, align 4, !dbg !3952
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %46, i64 noundef 128), !dbg !3953
  %211 = load i32, i32* %37, align 4, !dbg !3954
  %212 = zext i32 %211 to i64, !dbg !3955
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %47, i64 noundef %212), !dbg !3956
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %45, %struct.FStar_UInt128_uint128_s* noundef %46, %struct.FStar_UInt128_uint128_s* noundef %47), !dbg !3957
  %213 = load i32, i32* %36, align 4, !dbg !3958
  %214 = load i8*, i8** %39, align 4, !dbg !3959
  call void @Hacl_Hash_Blake2b_update_last(i32 noundef %208, i64* noundef %209, i64* noundef %210, i1 noundef zeroext false, %struct.FStar_UInt128_uint128_s* noundef %45, i32 noundef %213, i8* noundef %214), !dbg !3960
  br label %215

215:                                              ; preds = %182, %145
  %216 = load i8*, i8** %25, align 4, !dbg !3961
  %217 = load i64*, i64** %24, align 4, !dbg !3962
  call void @Hacl_Hash_Blake2b_finish(i32 noundef 64, i8* noundef %216, i64* noundef %217), !dbg !3963
  call void @llvm.dbg.declare(metadata i8** %48, metadata !3964, metadata !DIExpression()), !dbg !3965
  %218 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !3966
  store i8* %218, i8** %48, align 4, !dbg !3965
  %219 = load i64*, i64** %24, align 4, !dbg !3967
  call void @Hacl_Hash_Blake2b_init(i64* noundef %219, i32 noundef 0, i32 noundef 64), !dbg !3968
  call void @llvm.dbg.declare(metadata i32* %49, metadata !3969, metadata !DIExpression()), !dbg !3970
  store i32 128, i32* %49, align 4, !dbg !3970
  call void @llvm.dbg.declare(metadata i32* %50, metadata !3971, metadata !DIExpression()), !dbg !3972
  %220 = load i32, i32* %49, align 4, !dbg !3973
  %221 = udiv i32 64, %220, !dbg !3974
  store i32 %221, i32* %50, align 4, !dbg !3972
  call void @llvm.dbg.declare(metadata i32* %51, metadata !3975, metadata !DIExpression()), !dbg !3976
  %222 = load i32, i32* %49, align 4, !dbg !3977
  %223 = urem i32 64, %222, !dbg !3978
  store i32 %223, i32* %51, align 4, !dbg !3976
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %52, metadata !3979, metadata !DIExpression()), !dbg !3980
  %224 = load i32, i32* %50, align 4, !dbg !3981
  %225 = icmp ugt i32 %224, 0, !dbg !3983
  br i1 %225, label %226, label %241, !dbg !3984

226:                                              ; preds = %215
  %227 = load i32, i32* %51, align 4, !dbg !3985
  %228 = icmp eq i32 %227, 0, !dbg !3986
  br i1 %228, label %229, label %241, !dbg !3987

229:                                              ; preds = %226
  call void @llvm.dbg.declare(metadata i32* %53, metadata !3988, metadata !DIExpression()), !dbg !3990
  %230 = load i32, i32* %50, align 4, !dbg !3991
  %231 = sub i32 %230, 1, !dbg !3992
  store i32 %231, i32* %53, align 4, !dbg !3990
  %232 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %54, i32 0, i32 0, !dbg !3993
  %233 = load i32, i32* %53, align 4, !dbg !3994
  store i32 %233, i32* %232, align 4, !dbg !3993
  %234 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %54, i32 0, i32 1, !dbg !3993
  %235 = load i32, i32* %53, align 4, !dbg !3995
  %236 = load i32, i32* %49, align 4, !dbg !3996
  %237 = mul i32 %235, %236, !dbg !3997
  %238 = sub i32 64, %237, !dbg !3998
  store i32 %238, i32* %234, align 4, !dbg !3993
  %239 = bitcast %struct.K___uint32_t_uint32_t_s* %52 to i8*, !dbg !3999
  %240 = bitcast %struct.K___uint32_t_uint32_t_s* %54 to i8*, !dbg !3999
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %239, i8* align 4 %240, i32 8, i1 false), !dbg !3999
  br label %248, !dbg !4000

241:                                              ; preds = %226, %215
  %242 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %55, i32 0, i32 0, !dbg !4001
  %243 = load i32, i32* %50, align 4, !dbg !4003
  store i32 %243, i32* %242, align 4, !dbg !4001
  %244 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %55, i32 0, i32 1, !dbg !4001
  %245 = load i32, i32* %51, align 4, !dbg !4004
  store i32 %245, i32* %244, align 4, !dbg !4001
  %246 = bitcast %struct.K___uint32_t_uint32_t_s* %52 to i8*, !dbg !4005
  %247 = bitcast %struct.K___uint32_t_uint32_t_s* %55 to i8*, !dbg !4005
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %246, i8* align 4 %247, i32 8, i1 false), !dbg !4005
  br label %248

248:                                              ; preds = %241, %229
  call void @llvm.dbg.declare(metadata i32* %56, metadata !4006, metadata !DIExpression()), !dbg !4007
  %249 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %52, i32 0, i32 0, !dbg !4008
  %250 = load i32, i32* %249, align 4, !dbg !4008
  store i32 %250, i32* %56, align 4, !dbg !4007
  call void @llvm.dbg.declare(metadata i32* %57, metadata !4009, metadata !DIExpression()), !dbg !4010
  %251 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %52, i32 0, i32 1, !dbg !4011
  %252 = load i32, i32* %251, align 4, !dbg !4011
  store i32 %252, i32* %57, align 4, !dbg !4010
  call void @llvm.dbg.declare(metadata i32* %58, metadata !4012, metadata !DIExpression()), !dbg !4013
  %253 = load i32, i32* %56, align 4, !dbg !4014
  %254 = load i32, i32* %49, align 4, !dbg !4015
  %255 = mul i32 %253, %254, !dbg !4016
  store i32 %255, i32* %58, align 4, !dbg !4013
  call void @llvm.dbg.declare(metadata i8** %59, metadata !4017, metadata !DIExpression()), !dbg !4018
  %256 = load i8*, i8** %48, align 4, !dbg !4019
  store i8* %256, i8** %59, align 4, !dbg !4018
  call void @llvm.dbg.declare(metadata i8** %60, metadata !4020, metadata !DIExpression()), !dbg !4021
  %257 = load i8*, i8** %48, align 4, !dbg !4022
  %258 = load i32, i32* %58, align 4, !dbg !4023
  %259 = getelementptr inbounds i8, i8* %257, i32 %258, !dbg !4024
  store i8* %259, i8** %60, align 4, !dbg !4021
  call void @llvm.dbg.declare(metadata [16 x i64]* %61, metadata !4025, metadata !DIExpression()), !dbg !4026
  %260 = bitcast [16 x i64]* %61 to i8*, !dbg !4026
  call void @llvm.memset.p0i8.i32(i8* align 8 %260, i8 0, i32 128, i1 false), !dbg !4026
  %261 = getelementptr inbounds [16 x i64], [16 x i64]* %61, i32 0, i32 0, !dbg !4027
  %262 = load i64*, i64** %24, align 4, !dbg !4028
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %62, i64 noundef 0), !dbg !4029
  %263 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0, !dbg !4030
  call void @Hacl_Hash_Blake2b_update_multi(i32 noundef 128, i64* noundef %261, i64* noundef %262, %struct.FStar_UInt128_uint128_s* noundef %62, i8* noundef %263, i32 noundef 1), !dbg !4031
  call void @llvm.dbg.declare(metadata [16 x i64]* %63, metadata !4032, metadata !DIExpression()), !dbg !4033
  %264 = bitcast [16 x i64]* %63 to i8*, !dbg !4033
  call void @llvm.memset.p0i8.i32(i8* align 8 %264, i8 0, i32 128, i1 false), !dbg !4033
  %265 = load i32, i32* %56, align 4, !dbg !4034
  %266 = mul i32 %265, 128, !dbg !4035
  %267 = getelementptr inbounds [16 x i64], [16 x i64]* %63, i32 0, i32 0, !dbg !4036
  %268 = load i64*, i64** %24, align 4, !dbg !4037
  %269 = load i32, i32* %49, align 4, !dbg !4038
  %270 = zext i32 %269 to i64, !dbg !4039
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %64, i64 noundef %270), !dbg !4040
  %271 = load i8*, i8** %59, align 4, !dbg !4041
  %272 = load i32, i32* %56, align 4, !dbg !4042
  call void @Hacl_Hash_Blake2b_update_multi(i32 noundef %266, i64* noundef %267, i64* noundef %268, %struct.FStar_UInt128_uint128_s* noundef %64, i8* noundef %271, i32 noundef %272), !dbg !4043
  call void @llvm.dbg.declare(metadata [16 x i64]* %65, metadata !4044, metadata !DIExpression()), !dbg !4045
  %273 = bitcast [16 x i64]* %65 to i8*, !dbg !4045
  call void @llvm.memset.p0i8.i32(i8* align 8 %273, i8 0, i32 128, i1 false), !dbg !4045
  %274 = load i32, i32* %57, align 4, !dbg !4046
  %275 = getelementptr inbounds [16 x i64], [16 x i64]* %65, i32 0, i32 0, !dbg !4047
  %276 = load i64*, i64** %24, align 4, !dbg !4048
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %67, i64 noundef 128), !dbg !4049
  %277 = load i32, i32* %58, align 4, !dbg !4050
  %278 = zext i32 %277 to i64, !dbg !4051
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %68, i64 noundef %278), !dbg !4052
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128_s* sret(%struct.FStar_UInt128_uint128_s) align 8 %66, %struct.FStar_UInt128_uint128_s* noundef %67, %struct.FStar_UInt128_uint128_s* noundef %68), !dbg !4053
  %279 = load i32, i32* %57, align 4, !dbg !4054
  %280 = load i8*, i8** %60, align 4, !dbg !4055
  call void @Hacl_Hash_Blake2b_update_last(i32 noundef %274, i64* noundef %275, i64* noundef %276, i1 noundef zeroext false, %struct.FStar_UInt128_uint128_s* noundef %66, i32 noundef %279, i8* noundef %280), !dbg !4056
  %281 = load i8*, i8** %6, align 4, !dbg !4057
  %282 = load i64*, i64** %24, align 4, !dbg !4058
  call void @Hacl_Hash_Blake2b_finish(i32 noundef 64, i8* noundef %281, i64* noundef %282), !dbg !4059
  ret void, !dbg !4060
}

declare dso_local void @Hacl_Hash_Blake2b_hash_with_key(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_Blake2b_init(i64* noundef, i32 noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_Blake2b_update_last(i32 noundef, i64* noundef, i64* noundef, i1 noundef zeroext, %struct.FStar_UInt128_uint128_s* noundef, i32 noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_Blake2b_update_multi(i32 noundef, i64* noundef, i64* noundef, %struct.FStar_UInt128_uint128_s* noundef, i8* noundef, i32 noundef) #4

declare dso_local void @Hacl_Hash_Blake2b_finish(i32 noundef, i8* noundef, i64* noundef) #4

; Function Attrs: noinline nounwind optnone
define internal i64 @FStar_UInt128_carry(i64 noundef %0, i64 noundef %1) #0 !dbg !4061 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4064, metadata !DIExpression()), !dbg !4065
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4066, metadata !DIExpression()), !dbg !4067
  %5 = load i64, i64* %3, align 8, !dbg !4068
  %6 = load i64, i64* %4, align 8, !dbg !4069
  %7 = call i64 @FStar_UInt128_constant_time_carry(i64 noundef %5, i64 noundef %6), !dbg !4070
  ret i64 %7, !dbg !4071
}

; Function Attrs: noinline nounwind optnone
define internal i64 @FStar_UInt128_constant_time_carry(i64 noundef %0, i64 noundef %1) #0 !dbg !4072 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4073, metadata !DIExpression()), !dbg !4074
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4075, metadata !DIExpression()), !dbg !4076
  %5 = load i64, i64* %3, align 8, !dbg !4077
  %6 = load i64, i64* %3, align 8, !dbg !4078
  %7 = load i64, i64* %4, align 8, !dbg !4079
  %8 = xor i64 %6, %7, !dbg !4080
  %9 = load i64, i64* %3, align 8, !dbg !4081
  %10 = load i64, i64* %4, align 8, !dbg !4082
  %11 = sub i64 %9, %10, !dbg !4083
  %12 = load i64, i64* %4, align 8, !dbg !4084
  %13 = xor i64 %11, %12, !dbg !4085
  %14 = or i64 %8, %13, !dbg !4086
  %15 = xor i64 %5, %14, !dbg !4087
  %16 = lshr i64 %15, 63, !dbg !4088
  ret i64 %16, !dbg !4089
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Hacl_Hash_SHA2_h224", scope: !2, file: !16, line: 42, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Hacl_HMAC.c", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "ee4266a4db6ab8b95c12b5b9e18cc37f")
!4 = !{!5, !10}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 48, baseType: !7)
!6 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/_stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "ab914e287601b2385e57880e6599aa6b")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 79, baseType: !9)
!8 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/machine/_default_types.h", directory: "", checksumkind: CSK_MD5, checksum: "f7024d0682a918b41f94e8be9cd90461")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 60, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 105, baseType: !12)
!12 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!13 = !{!0, !14, !21, !25}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "Hacl_Hash_SHA2_h256", scope: !2, file: !16, line: 50, type: !17, isLocal: true, isDefinition: true)
!16 = !DIFile(filename: "./internal/Hacl_Hash_SHA2.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "e95aba83a0c40e931fc47f7c28acc617")
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !19)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!19 = !{!20}
!20 = !DISubrange(count: 8)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "Hacl_Hash_SHA2_h384", scope: !2, file: !16, line: 58, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, elements: !19)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "Hacl_Hash_SHA2_h512", scope: !2, file: !16, line: 66, type: !23, isLocal: true, isDefinition: true)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 1, !"target-abi", !"ilp32d"}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{i32 1, !"SmallDataLimit", i32 8}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "Hacl_HMAC_compute_md5", scope: !3, file: !3, line: 52, type: !35, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37, !5, !37, !5}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 43, baseType: !40)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{}
!42 = !DILocalVariable(name: "dst", arg: 1, scope: !34, file: !3, line: 53, type: !37)
!43 = !DILocation(line: 53, column: 12, scope: !34)
!44 = !DILocalVariable(name: "key", arg: 2, scope: !34, file: !3, line: 54, type: !37)
!45 = !DILocation(line: 54, column: 12, scope: !34)
!46 = !DILocalVariable(name: "key_len", arg: 3, scope: !34, file: !3, line: 55, type: !5)
!47 = !DILocation(line: 55, column: 12, scope: !34)
!48 = !DILocalVariable(name: "data", arg: 4, scope: !34, file: !3, line: 56, type: !37)
!49 = !DILocation(line: 56, column: 12, scope: !34)
!50 = !DILocalVariable(name: "data_len", arg: 5, scope: !34, file: !3, line: 57, type: !5)
!51 = !DILocation(line: 57, column: 12, scope: !34)
!52 = !DILocalVariable(name: "key_block", scope: !34, file: !3, line: 60, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 64)
!56 = !DILocation(line: 60, column: 11, scope: !34)
!57 = !DILocation(line: 61, column: 3, scope: !34)
!58 = !DILocalVariable(name: "nkey", scope: !34, file: !3, line: 62, type: !37)
!59 = !DILocation(line: 62, column: 12, scope: !34)
!60 = !DILocation(line: 62, column: 19, scope: !34)
!61 = !DILocalVariable(name: "ite", scope: !34, file: !3, line: 63, type: !5)
!62 = !DILocation(line: 63, column: 12, scope: !34)
!63 = !DILocation(line: 64, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !34, file: !3, line: 64, column: 7)
!65 = !DILocation(line: 64, column: 15, scope: !64)
!66 = !DILocation(line: 64, column: 7, scope: !34)
!67 = !DILocation(line: 66, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !3, line: 65, column: 3)
!69 = !DILocation(line: 66, column: 9, scope: !68)
!70 = !DILocation(line: 67, column: 3, scope: !68)
!71 = !DILocation(line: 70, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !3, line: 69, column: 3)
!73 = !DILocalVariable(name: "zeroes", scope: !34, file: !3, line: 72, type: !37)
!74 = !DILocation(line: 72, column: 12, scope: !34)
!75 = !DILocation(line: 72, column: 21, scope: !34)
!76 = !DILocation(line: 72, column: 33, scope: !34)
!77 = !DILocation(line: 72, column: 31, scope: !34)
!78 = !DILocation(line: 73, column: 3, scope: !34)
!79 = !DILocation(line: 74, column: 7, scope: !80)
!80 = distinct !DILexicalBlock(scope: !34, file: !3, line: 74, column: 7)
!81 = !DILocation(line: 74, column: 15, scope: !80)
!82 = !DILocation(line: 74, column: 7, scope: !34)
!83 = !DILocation(line: 76, column: 12, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !3, line: 75, column: 3)
!85 = !DILocation(line: 76, column: 18, scope: !84)
!86 = !DILocation(line: 76, column: 23, scope: !84)
!87 = !DILocation(line: 76, column: 31, scope: !84)
!88 = !DILocation(line: 76, column: 5, scope: !84)
!89 = !DILocation(line: 77, column: 3, scope: !84)
!90 = !DILocation(line: 80, column: 32, scope: !91)
!91 = distinct !DILexicalBlock(scope: !80, file: !3, line: 79, column: 3)
!92 = !DILocation(line: 80, column: 38, scope: !91)
!93 = !DILocation(line: 80, column: 43, scope: !91)
!94 = !DILocation(line: 80, column: 5, scope: !91)
!95 = !DILocalVariable(name: "ipad", scope: !34, file: !3, line: 82, type: !53)
!96 = !DILocation(line: 82, column: 11, scope: !34)
!97 = !DILocation(line: 83, column: 3, scope: !34)
!98 = !DILocalVariable(name: "i", scope: !99, file: !3, line: 84, type: !5)
!99 = distinct !DILexicalBlock(scope: !34, file: !3, line: 84, column: 3)
!100 = !DILocation(line: 84, column: 17, scope: !99)
!101 = !DILocation(line: 84, column: 8, scope: !99)
!102 = !DILocation(line: 84, column: 25, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 84, column: 3)
!104 = !DILocation(line: 84, column: 27, scope: !103)
!105 = !DILocation(line: 84, column: 3, scope: !99)
!106 = !DILocalVariable(name: "xi", scope: !107, file: !3, line: 86, type: !38)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 85, column: 3)
!108 = !DILocation(line: 86, column: 13, scope: !107)
!109 = !DILocation(line: 86, column: 23, scope: !107)
!110 = !DILocation(line: 86, column: 18, scope: !107)
!111 = !DILocalVariable(name: "yi", scope: !107, file: !3, line: 87, type: !38)
!112 = !DILocation(line: 87, column: 13, scope: !107)
!113 = !DILocation(line: 87, column: 28, scope: !107)
!114 = !DILocation(line: 87, column: 18, scope: !107)
!115 = !DILocation(line: 88, column: 25, scope: !107)
!116 = !DILocation(line: 88, column: 15, scope: !107)
!117 = !DILocation(line: 88, column: 40, scope: !107)
!118 = !DILocation(line: 88, column: 30, scope: !107)
!119 = !DILocation(line: 88, column: 28, scope: !107)
!120 = !DILocation(line: 88, column: 10, scope: !107)
!121 = !DILocation(line: 88, column: 5, scope: !107)
!122 = !DILocation(line: 88, column: 13, scope: !107)
!123 = !DILocation(line: 89, column: 3, scope: !107)
!124 = !DILocation(line: 84, column: 35, scope: !103)
!125 = !DILocation(line: 84, column: 3, scope: !103)
!126 = distinct !{!126, !105, !127, !128}
!127 = !DILocation(line: 89, column: 3, scope: !99)
!128 = !{!"llvm.loop.mustprogress"}
!129 = !DILocalVariable(name: "opad", scope: !34, file: !3, line: 90, type: !53)
!130 = !DILocation(line: 90, column: 11, scope: !34)
!131 = !DILocation(line: 91, column: 3, scope: !34)
!132 = !DILocalVariable(name: "i", scope: !133, file: !3, line: 92, type: !5)
!133 = distinct !DILexicalBlock(scope: !34, file: !3, line: 92, column: 3)
!134 = !DILocation(line: 92, column: 17, scope: !133)
!135 = !DILocation(line: 92, column: 8, scope: !133)
!136 = !DILocation(line: 92, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !3, line: 92, column: 3)
!138 = !DILocation(line: 92, column: 27, scope: !137)
!139 = !DILocation(line: 92, column: 3, scope: !133)
!140 = !DILocalVariable(name: "xi", scope: !141, file: !3, line: 94, type: !38)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 93, column: 3)
!142 = !DILocation(line: 94, column: 13, scope: !141)
!143 = !DILocation(line: 94, column: 23, scope: !141)
!144 = !DILocation(line: 94, column: 18, scope: !141)
!145 = !DILocalVariable(name: "yi", scope: !141, file: !3, line: 95, type: !38)
!146 = !DILocation(line: 95, column: 13, scope: !141)
!147 = !DILocation(line: 95, column: 28, scope: !141)
!148 = !DILocation(line: 95, column: 18, scope: !141)
!149 = !DILocation(line: 96, column: 25, scope: !141)
!150 = !DILocation(line: 96, column: 15, scope: !141)
!151 = !DILocation(line: 96, column: 40, scope: !141)
!152 = !DILocation(line: 96, column: 30, scope: !141)
!153 = !DILocation(line: 96, column: 28, scope: !141)
!154 = !DILocation(line: 96, column: 10, scope: !141)
!155 = !DILocation(line: 96, column: 5, scope: !141)
!156 = !DILocation(line: 96, column: 13, scope: !141)
!157 = !DILocation(line: 97, column: 3, scope: !141)
!158 = !DILocation(line: 92, column: 35, scope: !137)
!159 = !DILocation(line: 92, column: 3, scope: !137)
!160 = distinct !{!160, !139, !161, !128}
!161 = !DILocation(line: 97, column: 3, scope: !133)
!162 = !DILocalVariable(name: "s", scope: !34, file: !3, line: 98, type: !163)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 4)
!166 = !DILocation(line: 98, column: 12, scope: !34)
!167 = !DILocalVariable(name: "dst1", scope: !34, file: !3, line: 99, type: !37)
!168 = !DILocation(line: 99, column: 12, scope: !34)
!169 = !DILocation(line: 99, column: 19, scope: !34)
!170 = !DILocation(line: 100, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !34, file: !3, line: 100, column: 7)
!172 = !DILocation(line: 100, column: 16, scope: !171)
!173 = !DILocation(line: 100, column: 7, scope: !34)
!174 = !DILocation(line: 102, column: 31, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 101, column: 3)
!176 = !DILocation(line: 102, column: 40, scope: !175)
!177 = !DILocation(line: 102, column: 5, scope: !175)
!178 = !DILocation(line: 103, column: 3, scope: !175)
!179 = !DILocalVariable(name: "block_len", scope: !180, file: !3, line: 106, type: !5)
!180 = distinct !DILexicalBlock(scope: !171, file: !3, line: 105, column: 3)
!181 = !DILocation(line: 106, column: 14, scope: !180)
!182 = !DILocalVariable(name: "n_blocks0", scope: !180, file: !3, line: 107, type: !5)
!183 = !DILocation(line: 107, column: 14, scope: !180)
!184 = !DILocation(line: 107, column: 26, scope: !180)
!185 = !DILocation(line: 107, column: 37, scope: !180)
!186 = !DILocation(line: 107, column: 35, scope: !180)
!187 = !DILocalVariable(name: "rem0", scope: !180, file: !3, line: 108, type: !5)
!188 = !DILocation(line: 108, column: 14, scope: !180)
!189 = !DILocation(line: 108, column: 21, scope: !180)
!190 = !DILocation(line: 108, column: 32, scope: !180)
!191 = !DILocation(line: 108, column: 30, scope: !180)
!192 = !DILocalVariable(name: "scrut", scope: !180, file: !3, line: 109, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "K___uint32_t_uint32_t", file: !194, line: 45, baseType: !195)
!194 = !DIFile(filename: "./internal/Hacl_HMAC.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "c99c99854ae8222401a0cd2894238174")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "K___uint32_t_uint32_t_s", file: !194, line: 40, size: 64, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "fst", scope: !195, file: !194, line: 42, baseType: !5, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !195, file: !194, line: 43, baseType: !5, size: 32, offset: 32)
!199 = !DILocation(line: 109, column: 27, scope: !180)
!200 = !DILocation(line: 110, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !180, file: !3, line: 110, column: 9)
!202 = !DILocation(line: 110, column: 19, scope: !201)
!203 = !DILocation(line: 110, column: 24, scope: !201)
!204 = !DILocation(line: 110, column: 27, scope: !201)
!205 = !DILocation(line: 110, column: 32, scope: !201)
!206 = !DILocation(line: 110, column: 9, scope: !180)
!207 = !DILocalVariable(name: "n_blocks_", scope: !208, file: !3, line: 112, type: !5)
!208 = distinct !DILexicalBlock(scope: !201, file: !3, line: 111, column: 5)
!209 = !DILocation(line: 112, column: 16, scope: !208)
!210 = !DILocation(line: 112, column: 28, scope: !208)
!211 = !DILocation(line: 112, column: 38, scope: !208)
!212 = !DILocation(line: 113, column: 39, scope: !208)
!213 = !DILocation(line: 113, column: 48, scope: !208)
!214 = !DILocation(line: 113, column: 66, scope: !208)
!215 = !DILocation(line: 113, column: 77, scope: !208)
!216 = !DILocation(line: 113, column: 89, scope: !208)
!217 = !DILocation(line: 113, column: 87, scope: !208)
!218 = !DILocation(line: 113, column: 75, scope: !208)
!219 = !DILocation(line: 113, column: 16, scope: !208)
!220 = !DILocation(line: 114, column: 5, scope: !208)
!221 = !DILocation(line: 117, column: 39, scope: !222)
!222 = distinct !DILexicalBlock(scope: !201, file: !3, line: 116, column: 5)
!223 = !DILocation(line: 117, column: 48, scope: !222)
!224 = !DILocation(line: 117, column: 66, scope: !222)
!225 = !DILocation(line: 117, column: 16, scope: !222)
!226 = !DILocalVariable(name: "n_blocks", scope: !180, file: !3, line: 119, type: !5)
!227 = !DILocation(line: 119, column: 14, scope: !180)
!228 = !DILocation(line: 119, column: 31, scope: !180)
!229 = !DILocalVariable(name: "rem_len", scope: !180, file: !3, line: 120, type: !5)
!230 = !DILocation(line: 120, column: 14, scope: !180)
!231 = !DILocation(line: 120, column: 30, scope: !180)
!232 = !DILocalVariable(name: "full_blocks_len", scope: !180, file: !3, line: 121, type: !5)
!233 = !DILocation(line: 121, column: 14, scope: !180)
!234 = !DILocation(line: 121, column: 32, scope: !180)
!235 = !DILocation(line: 121, column: 43, scope: !180)
!236 = !DILocation(line: 121, column: 41, scope: !180)
!237 = !DILocalVariable(name: "full_blocks", scope: !180, file: !3, line: 122, type: !37)
!238 = !DILocation(line: 122, column: 14, scope: !180)
!239 = !DILocation(line: 122, column: 28, scope: !180)
!240 = !DILocalVariable(name: "rem", scope: !180, file: !3, line: 123, type: !37)
!241 = !DILocation(line: 123, column: 14, scope: !180)
!242 = !DILocation(line: 123, column: 20, scope: !180)
!243 = !DILocation(line: 123, column: 27, scope: !180)
!244 = !DILocation(line: 123, column: 25, scope: !180)
!245 = !DILocation(line: 124, column: 32, scope: !180)
!246 = !DILocation(line: 124, column: 35, scope: !180)
!247 = !DILocation(line: 124, column: 5, scope: !180)
!248 = !DILocation(line: 125, column: 32, scope: !180)
!249 = !DILocation(line: 125, column: 35, scope: !180)
!250 = !DILocation(line: 125, column: 48, scope: !180)
!251 = !DILocation(line: 125, column: 5, scope: !180)
!252 = !DILocation(line: 126, column: 31, scope: !180)
!253 = !DILocation(line: 126, column: 60, scope: !180)
!254 = !DILocation(line: 126, column: 50, scope: !180)
!255 = !DILocation(line: 126, column: 48, scope: !180)
!256 = !DILocation(line: 126, column: 77, scope: !180)
!257 = !DILocation(line: 126, column: 82, scope: !180)
!258 = !DILocation(line: 126, column: 5, scope: !180)
!259 = !DILocation(line: 128, column: 24, scope: !34)
!260 = !DILocation(line: 128, column: 27, scope: !34)
!261 = !DILocation(line: 128, column: 3, scope: !34)
!262 = !DILocalVariable(name: "hash1", scope: !34, file: !3, line: 129, type: !37)
!263 = !DILocation(line: 129, column: 12, scope: !34)
!264 = !DILocation(line: 129, column: 20, scope: !34)
!265 = !DILocation(line: 130, column: 22, scope: !34)
!266 = !DILocation(line: 130, column: 3, scope: !34)
!267 = !DILocalVariable(name: "block_len", scope: !34, file: !3, line: 131, type: !5)
!268 = !DILocation(line: 131, column: 12, scope: !34)
!269 = !DILocalVariable(name: "n_blocks0", scope: !34, file: !3, line: 132, type: !5)
!270 = !DILocation(line: 132, column: 12, scope: !34)
!271 = !DILocation(line: 132, column: 30, scope: !34)
!272 = !DILocation(line: 132, column: 28, scope: !34)
!273 = !DILocalVariable(name: "rem0", scope: !34, file: !3, line: 133, type: !5)
!274 = !DILocation(line: 133, column: 12, scope: !34)
!275 = !DILocation(line: 133, column: 25, scope: !34)
!276 = !DILocation(line: 133, column: 23, scope: !34)
!277 = !DILocalVariable(name: "scrut", scope: !34, file: !3, line: 134, type: !193)
!278 = !DILocation(line: 134, column: 25, scope: !34)
!279 = !DILocation(line: 135, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !34, file: !3, line: 135, column: 7)
!281 = !DILocation(line: 135, column: 17, scope: !280)
!282 = !DILocation(line: 135, column: 22, scope: !280)
!283 = !DILocation(line: 135, column: 25, scope: !280)
!284 = !DILocation(line: 135, column: 30, scope: !280)
!285 = !DILocation(line: 135, column: 7, scope: !34)
!286 = !DILocalVariable(name: "n_blocks_", scope: !287, file: !3, line: 137, type: !5)
!287 = distinct !DILexicalBlock(scope: !280, file: !3, line: 136, column: 3)
!288 = !DILocation(line: 137, column: 14, scope: !287)
!289 = !DILocation(line: 137, column: 26, scope: !287)
!290 = !DILocation(line: 137, column: 36, scope: !287)
!291 = !DILocation(line: 138, column: 37, scope: !287)
!292 = !DILocation(line: 138, column: 46, scope: !287)
!293 = !DILocation(line: 138, column: 70, scope: !287)
!294 = !DILocation(line: 138, column: 82, scope: !287)
!295 = !DILocation(line: 138, column: 80, scope: !287)
!296 = !DILocation(line: 138, column: 68, scope: !287)
!297 = !DILocation(line: 138, column: 14, scope: !287)
!298 = !DILocation(line: 139, column: 3, scope: !287)
!299 = !DILocation(line: 142, column: 37, scope: !300)
!300 = distinct !DILexicalBlock(scope: !280, file: !3, line: 141, column: 3)
!301 = !DILocation(line: 142, column: 46, scope: !300)
!302 = !DILocation(line: 142, column: 64, scope: !300)
!303 = !DILocation(line: 142, column: 14, scope: !300)
!304 = !DILocalVariable(name: "n_blocks", scope: !34, file: !3, line: 144, type: !5)
!305 = !DILocation(line: 144, column: 12, scope: !34)
!306 = !DILocation(line: 144, column: 29, scope: !34)
!307 = !DILocalVariable(name: "rem_len", scope: !34, file: !3, line: 145, type: !5)
!308 = !DILocation(line: 145, column: 12, scope: !34)
!309 = !DILocation(line: 145, column: 28, scope: !34)
!310 = !DILocalVariable(name: "full_blocks_len", scope: !34, file: !3, line: 146, type: !5)
!311 = !DILocation(line: 146, column: 12, scope: !34)
!312 = !DILocation(line: 146, column: 30, scope: !34)
!313 = !DILocation(line: 146, column: 41, scope: !34)
!314 = !DILocation(line: 146, column: 39, scope: !34)
!315 = !DILocalVariable(name: "full_blocks", scope: !34, file: !3, line: 147, type: !37)
!316 = !DILocation(line: 147, column: 12, scope: !34)
!317 = !DILocation(line: 147, column: 26, scope: !34)
!318 = !DILocalVariable(name: "rem", scope: !34, file: !3, line: 148, type: !37)
!319 = !DILocation(line: 148, column: 12, scope: !34)
!320 = !DILocation(line: 148, column: 18, scope: !34)
!321 = !DILocation(line: 148, column: 26, scope: !34)
!322 = !DILocation(line: 148, column: 24, scope: !34)
!323 = !DILocation(line: 149, column: 30, scope: !34)
!324 = !DILocation(line: 149, column: 33, scope: !34)
!325 = !DILocation(line: 149, column: 3, scope: !34)
!326 = !DILocation(line: 150, column: 30, scope: !34)
!327 = !DILocation(line: 150, column: 33, scope: !34)
!328 = !DILocation(line: 150, column: 46, scope: !34)
!329 = !DILocation(line: 150, column: 3, scope: !34)
!330 = !DILocation(line: 151, column: 29, scope: !34)
!331 = !DILocation(line: 151, column: 58, scope: !34)
!332 = !DILocation(line: 151, column: 48, scope: !34)
!333 = !DILocation(line: 151, column: 46, scope: !34)
!334 = !DILocation(line: 151, column: 75, scope: !34)
!335 = !DILocation(line: 151, column: 80, scope: !34)
!336 = !DILocation(line: 151, column: 3, scope: !34)
!337 = !DILocation(line: 152, column: 24, scope: !34)
!338 = !DILocation(line: 152, column: 27, scope: !34)
!339 = !DILocation(line: 152, column: 3, scope: !34)
!340 = !DILocation(line: 153, column: 1, scope: !34)
!341 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha1", scope: !3, file: !3, line: 162, type: !35, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!342 = !DILocalVariable(name: "dst", arg: 1, scope: !341, file: !3, line: 163, type: !37)
!343 = !DILocation(line: 163, column: 12, scope: !341)
!344 = !DILocalVariable(name: "key", arg: 2, scope: !341, file: !3, line: 164, type: !37)
!345 = !DILocation(line: 164, column: 12, scope: !341)
!346 = !DILocalVariable(name: "key_len", arg: 3, scope: !341, file: !3, line: 165, type: !5)
!347 = !DILocation(line: 165, column: 12, scope: !341)
!348 = !DILocalVariable(name: "data", arg: 4, scope: !341, file: !3, line: 166, type: !37)
!349 = !DILocation(line: 166, column: 12, scope: !341)
!350 = !DILocalVariable(name: "data_len", arg: 5, scope: !341, file: !3, line: 167, type: !5)
!351 = !DILocation(line: 167, column: 12, scope: !341)
!352 = !DILocalVariable(name: "key_block", scope: !341, file: !3, line: 170, type: !53)
!353 = !DILocation(line: 170, column: 11, scope: !341)
!354 = !DILocation(line: 171, column: 3, scope: !341)
!355 = !DILocalVariable(name: "nkey", scope: !341, file: !3, line: 172, type: !37)
!356 = !DILocation(line: 172, column: 12, scope: !341)
!357 = !DILocation(line: 172, column: 19, scope: !341)
!358 = !DILocalVariable(name: "ite", scope: !341, file: !3, line: 173, type: !5)
!359 = !DILocation(line: 173, column: 12, scope: !341)
!360 = !DILocation(line: 174, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !341, file: !3, line: 174, column: 7)
!362 = !DILocation(line: 174, column: 15, scope: !361)
!363 = !DILocation(line: 174, column: 7, scope: !341)
!364 = !DILocation(line: 176, column: 11, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !3, line: 175, column: 3)
!366 = !DILocation(line: 176, column: 9, scope: !365)
!367 = !DILocation(line: 177, column: 3, scope: !365)
!368 = !DILocation(line: 180, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !3, line: 179, column: 3)
!370 = !DILocalVariable(name: "zeroes", scope: !341, file: !3, line: 182, type: !37)
!371 = !DILocation(line: 182, column: 12, scope: !341)
!372 = !DILocation(line: 182, column: 21, scope: !341)
!373 = !DILocation(line: 182, column: 33, scope: !341)
!374 = !DILocation(line: 182, column: 31, scope: !341)
!375 = !DILocation(line: 183, column: 3, scope: !341)
!376 = !DILocation(line: 184, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !341, file: !3, line: 184, column: 7)
!378 = !DILocation(line: 184, column: 15, scope: !377)
!379 = !DILocation(line: 184, column: 7, scope: !341)
!380 = !DILocation(line: 186, column: 12, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !3, line: 185, column: 3)
!382 = !DILocation(line: 186, column: 18, scope: !381)
!383 = !DILocation(line: 186, column: 23, scope: !381)
!384 = !DILocation(line: 186, column: 31, scope: !381)
!385 = !DILocation(line: 186, column: 5, scope: !381)
!386 = !DILocation(line: 187, column: 3, scope: !381)
!387 = !DILocation(line: 190, column: 33, scope: !388)
!388 = distinct !DILexicalBlock(scope: !377, file: !3, line: 189, column: 3)
!389 = !DILocation(line: 190, column: 39, scope: !388)
!390 = !DILocation(line: 190, column: 44, scope: !388)
!391 = !DILocation(line: 190, column: 5, scope: !388)
!392 = !DILocalVariable(name: "ipad", scope: !341, file: !3, line: 192, type: !53)
!393 = !DILocation(line: 192, column: 11, scope: !341)
!394 = !DILocation(line: 193, column: 3, scope: !341)
!395 = !DILocalVariable(name: "i", scope: !396, file: !3, line: 194, type: !5)
!396 = distinct !DILexicalBlock(scope: !341, file: !3, line: 194, column: 3)
!397 = !DILocation(line: 194, column: 17, scope: !396)
!398 = !DILocation(line: 194, column: 8, scope: !396)
!399 = !DILocation(line: 194, column: 25, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !3, line: 194, column: 3)
!401 = !DILocation(line: 194, column: 27, scope: !400)
!402 = !DILocation(line: 194, column: 3, scope: !396)
!403 = !DILocalVariable(name: "xi", scope: !404, file: !3, line: 196, type: !38)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 195, column: 3)
!405 = !DILocation(line: 196, column: 13, scope: !404)
!406 = !DILocation(line: 196, column: 23, scope: !404)
!407 = !DILocation(line: 196, column: 18, scope: !404)
!408 = !DILocalVariable(name: "yi", scope: !404, file: !3, line: 197, type: !38)
!409 = !DILocation(line: 197, column: 13, scope: !404)
!410 = !DILocation(line: 197, column: 28, scope: !404)
!411 = !DILocation(line: 197, column: 18, scope: !404)
!412 = !DILocation(line: 198, column: 25, scope: !404)
!413 = !DILocation(line: 198, column: 15, scope: !404)
!414 = !DILocation(line: 198, column: 40, scope: !404)
!415 = !DILocation(line: 198, column: 30, scope: !404)
!416 = !DILocation(line: 198, column: 28, scope: !404)
!417 = !DILocation(line: 198, column: 10, scope: !404)
!418 = !DILocation(line: 198, column: 5, scope: !404)
!419 = !DILocation(line: 198, column: 13, scope: !404)
!420 = !DILocation(line: 199, column: 3, scope: !404)
!421 = !DILocation(line: 194, column: 35, scope: !400)
!422 = !DILocation(line: 194, column: 3, scope: !400)
!423 = distinct !{!423, !402, !424, !128}
!424 = !DILocation(line: 199, column: 3, scope: !396)
!425 = !DILocalVariable(name: "opad", scope: !341, file: !3, line: 200, type: !53)
!426 = !DILocation(line: 200, column: 11, scope: !341)
!427 = !DILocation(line: 201, column: 3, scope: !341)
!428 = !DILocalVariable(name: "i", scope: !429, file: !3, line: 202, type: !5)
!429 = distinct !DILexicalBlock(scope: !341, file: !3, line: 202, column: 3)
!430 = !DILocation(line: 202, column: 17, scope: !429)
!431 = !DILocation(line: 202, column: 8, scope: !429)
!432 = !DILocation(line: 202, column: 25, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !3, line: 202, column: 3)
!434 = !DILocation(line: 202, column: 27, scope: !433)
!435 = !DILocation(line: 202, column: 3, scope: !429)
!436 = !DILocalVariable(name: "xi", scope: !437, file: !3, line: 204, type: !38)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 203, column: 3)
!438 = !DILocation(line: 204, column: 13, scope: !437)
!439 = !DILocation(line: 204, column: 23, scope: !437)
!440 = !DILocation(line: 204, column: 18, scope: !437)
!441 = !DILocalVariable(name: "yi", scope: !437, file: !3, line: 205, type: !38)
!442 = !DILocation(line: 205, column: 13, scope: !437)
!443 = !DILocation(line: 205, column: 28, scope: !437)
!444 = !DILocation(line: 205, column: 18, scope: !437)
!445 = !DILocation(line: 206, column: 25, scope: !437)
!446 = !DILocation(line: 206, column: 15, scope: !437)
!447 = !DILocation(line: 206, column: 40, scope: !437)
!448 = !DILocation(line: 206, column: 30, scope: !437)
!449 = !DILocation(line: 206, column: 28, scope: !437)
!450 = !DILocation(line: 206, column: 10, scope: !437)
!451 = !DILocation(line: 206, column: 5, scope: !437)
!452 = !DILocation(line: 206, column: 13, scope: !437)
!453 = !DILocation(line: 207, column: 3, scope: !437)
!454 = !DILocation(line: 202, column: 35, scope: !433)
!455 = !DILocation(line: 202, column: 3, scope: !433)
!456 = distinct !{!456, !435, !457, !128}
!457 = !DILocation(line: 207, column: 3, scope: !429)
!458 = !DILocalVariable(name: "s", scope: !341, file: !3, line: 208, type: !459)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 5)
!462 = !DILocation(line: 208, column: 12, scope: !341)
!463 = !DILocalVariable(name: "dst1", scope: !341, file: !3, line: 209, type: !37)
!464 = !DILocation(line: 209, column: 12, scope: !341)
!465 = !DILocation(line: 209, column: 19, scope: !341)
!466 = !DILocation(line: 210, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !341, file: !3, line: 210, column: 7)
!468 = !DILocation(line: 210, column: 16, scope: !467)
!469 = !DILocation(line: 210, column: 7, scope: !341)
!470 = !DILocation(line: 212, column: 32, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !3, line: 211, column: 3)
!472 = !DILocation(line: 212, column: 41, scope: !471)
!473 = !DILocation(line: 212, column: 5, scope: !471)
!474 = !DILocation(line: 213, column: 3, scope: !471)
!475 = !DILocalVariable(name: "block_len", scope: !476, file: !3, line: 216, type: !5)
!476 = distinct !DILexicalBlock(scope: !467, file: !3, line: 215, column: 3)
!477 = !DILocation(line: 216, column: 14, scope: !476)
!478 = !DILocalVariable(name: "n_blocks0", scope: !476, file: !3, line: 217, type: !5)
!479 = !DILocation(line: 217, column: 14, scope: !476)
!480 = !DILocation(line: 217, column: 26, scope: !476)
!481 = !DILocation(line: 217, column: 37, scope: !476)
!482 = !DILocation(line: 217, column: 35, scope: !476)
!483 = !DILocalVariable(name: "rem0", scope: !476, file: !3, line: 218, type: !5)
!484 = !DILocation(line: 218, column: 14, scope: !476)
!485 = !DILocation(line: 218, column: 21, scope: !476)
!486 = !DILocation(line: 218, column: 32, scope: !476)
!487 = !DILocation(line: 218, column: 30, scope: !476)
!488 = !DILocalVariable(name: "scrut", scope: !476, file: !3, line: 219, type: !193)
!489 = !DILocation(line: 219, column: 27, scope: !476)
!490 = !DILocation(line: 220, column: 9, scope: !491)
!491 = distinct !DILexicalBlock(scope: !476, file: !3, line: 220, column: 9)
!492 = !DILocation(line: 220, column: 19, scope: !491)
!493 = !DILocation(line: 220, column: 24, scope: !491)
!494 = !DILocation(line: 220, column: 27, scope: !491)
!495 = !DILocation(line: 220, column: 32, scope: !491)
!496 = !DILocation(line: 220, column: 9, scope: !476)
!497 = !DILocalVariable(name: "n_blocks_", scope: !498, file: !3, line: 222, type: !5)
!498 = distinct !DILexicalBlock(scope: !491, file: !3, line: 221, column: 5)
!499 = !DILocation(line: 222, column: 16, scope: !498)
!500 = !DILocation(line: 222, column: 28, scope: !498)
!501 = !DILocation(line: 222, column: 38, scope: !498)
!502 = !DILocation(line: 223, column: 39, scope: !498)
!503 = !DILocation(line: 223, column: 48, scope: !498)
!504 = !DILocation(line: 223, column: 66, scope: !498)
!505 = !DILocation(line: 223, column: 77, scope: !498)
!506 = !DILocation(line: 223, column: 89, scope: !498)
!507 = !DILocation(line: 223, column: 87, scope: !498)
!508 = !DILocation(line: 223, column: 75, scope: !498)
!509 = !DILocation(line: 223, column: 16, scope: !498)
!510 = !DILocation(line: 224, column: 5, scope: !498)
!511 = !DILocation(line: 227, column: 39, scope: !512)
!512 = distinct !DILexicalBlock(scope: !491, file: !3, line: 226, column: 5)
!513 = !DILocation(line: 227, column: 48, scope: !512)
!514 = !DILocation(line: 227, column: 66, scope: !512)
!515 = !DILocation(line: 227, column: 16, scope: !512)
!516 = !DILocalVariable(name: "n_blocks", scope: !476, file: !3, line: 229, type: !5)
!517 = !DILocation(line: 229, column: 14, scope: !476)
!518 = !DILocation(line: 229, column: 31, scope: !476)
!519 = !DILocalVariable(name: "rem_len", scope: !476, file: !3, line: 230, type: !5)
!520 = !DILocation(line: 230, column: 14, scope: !476)
!521 = !DILocation(line: 230, column: 30, scope: !476)
!522 = !DILocalVariable(name: "full_blocks_len", scope: !476, file: !3, line: 231, type: !5)
!523 = !DILocation(line: 231, column: 14, scope: !476)
!524 = !DILocation(line: 231, column: 32, scope: !476)
!525 = !DILocation(line: 231, column: 43, scope: !476)
!526 = !DILocation(line: 231, column: 41, scope: !476)
!527 = !DILocalVariable(name: "full_blocks", scope: !476, file: !3, line: 232, type: !37)
!528 = !DILocation(line: 232, column: 14, scope: !476)
!529 = !DILocation(line: 232, column: 28, scope: !476)
!530 = !DILocalVariable(name: "rem", scope: !476, file: !3, line: 233, type: !37)
!531 = !DILocation(line: 233, column: 14, scope: !476)
!532 = !DILocation(line: 233, column: 20, scope: !476)
!533 = !DILocation(line: 233, column: 27, scope: !476)
!534 = !DILocation(line: 233, column: 25, scope: !476)
!535 = !DILocation(line: 234, column: 33, scope: !476)
!536 = !DILocation(line: 234, column: 36, scope: !476)
!537 = !DILocation(line: 234, column: 5, scope: !476)
!538 = !DILocation(line: 235, column: 33, scope: !476)
!539 = !DILocation(line: 235, column: 36, scope: !476)
!540 = !DILocation(line: 235, column: 49, scope: !476)
!541 = !DILocation(line: 235, column: 5, scope: !476)
!542 = !DILocation(line: 236, column: 32, scope: !476)
!543 = !DILocation(line: 236, column: 61, scope: !476)
!544 = !DILocation(line: 236, column: 51, scope: !476)
!545 = !DILocation(line: 236, column: 49, scope: !476)
!546 = !DILocation(line: 236, column: 78, scope: !476)
!547 = !DILocation(line: 236, column: 83, scope: !476)
!548 = !DILocation(line: 236, column: 5, scope: !476)
!549 = !DILocation(line: 238, column: 25, scope: !341)
!550 = !DILocation(line: 238, column: 28, scope: !341)
!551 = !DILocation(line: 238, column: 3, scope: !341)
!552 = !DILocalVariable(name: "hash1", scope: !341, file: !3, line: 239, type: !37)
!553 = !DILocation(line: 239, column: 12, scope: !341)
!554 = !DILocation(line: 239, column: 20, scope: !341)
!555 = !DILocation(line: 240, column: 23, scope: !341)
!556 = !DILocation(line: 240, column: 3, scope: !341)
!557 = !DILocalVariable(name: "block_len", scope: !341, file: !3, line: 241, type: !5)
!558 = !DILocation(line: 241, column: 12, scope: !341)
!559 = !DILocalVariable(name: "n_blocks0", scope: !341, file: !3, line: 242, type: !5)
!560 = !DILocation(line: 242, column: 12, scope: !341)
!561 = !DILocation(line: 242, column: 30, scope: !341)
!562 = !DILocation(line: 242, column: 28, scope: !341)
!563 = !DILocalVariable(name: "rem0", scope: !341, file: !3, line: 243, type: !5)
!564 = !DILocation(line: 243, column: 12, scope: !341)
!565 = !DILocation(line: 243, column: 25, scope: !341)
!566 = !DILocation(line: 243, column: 23, scope: !341)
!567 = !DILocalVariable(name: "scrut", scope: !341, file: !3, line: 244, type: !193)
!568 = !DILocation(line: 244, column: 25, scope: !341)
!569 = !DILocation(line: 245, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !341, file: !3, line: 245, column: 7)
!571 = !DILocation(line: 245, column: 17, scope: !570)
!572 = !DILocation(line: 245, column: 22, scope: !570)
!573 = !DILocation(line: 245, column: 25, scope: !570)
!574 = !DILocation(line: 245, column: 30, scope: !570)
!575 = !DILocation(line: 245, column: 7, scope: !341)
!576 = !DILocalVariable(name: "n_blocks_", scope: !577, file: !3, line: 247, type: !5)
!577 = distinct !DILexicalBlock(scope: !570, file: !3, line: 246, column: 3)
!578 = !DILocation(line: 247, column: 14, scope: !577)
!579 = !DILocation(line: 247, column: 26, scope: !577)
!580 = !DILocation(line: 247, column: 36, scope: !577)
!581 = !DILocation(line: 248, column: 37, scope: !577)
!582 = !DILocation(line: 248, column: 46, scope: !577)
!583 = !DILocation(line: 248, column: 70, scope: !577)
!584 = !DILocation(line: 248, column: 82, scope: !577)
!585 = !DILocation(line: 248, column: 80, scope: !577)
!586 = !DILocation(line: 248, column: 68, scope: !577)
!587 = !DILocation(line: 248, column: 14, scope: !577)
!588 = !DILocation(line: 249, column: 3, scope: !577)
!589 = !DILocation(line: 252, column: 37, scope: !590)
!590 = distinct !DILexicalBlock(scope: !570, file: !3, line: 251, column: 3)
!591 = !DILocation(line: 252, column: 46, scope: !590)
!592 = !DILocation(line: 252, column: 64, scope: !590)
!593 = !DILocation(line: 252, column: 14, scope: !590)
!594 = !DILocalVariable(name: "n_blocks", scope: !341, file: !3, line: 254, type: !5)
!595 = !DILocation(line: 254, column: 12, scope: !341)
!596 = !DILocation(line: 254, column: 29, scope: !341)
!597 = !DILocalVariable(name: "rem_len", scope: !341, file: !3, line: 255, type: !5)
!598 = !DILocation(line: 255, column: 12, scope: !341)
!599 = !DILocation(line: 255, column: 28, scope: !341)
!600 = !DILocalVariable(name: "full_blocks_len", scope: !341, file: !3, line: 256, type: !5)
!601 = !DILocation(line: 256, column: 12, scope: !341)
!602 = !DILocation(line: 256, column: 30, scope: !341)
!603 = !DILocation(line: 256, column: 41, scope: !341)
!604 = !DILocation(line: 256, column: 39, scope: !341)
!605 = !DILocalVariable(name: "full_blocks", scope: !341, file: !3, line: 257, type: !37)
!606 = !DILocation(line: 257, column: 12, scope: !341)
!607 = !DILocation(line: 257, column: 26, scope: !341)
!608 = !DILocalVariable(name: "rem", scope: !341, file: !3, line: 258, type: !37)
!609 = !DILocation(line: 258, column: 12, scope: !341)
!610 = !DILocation(line: 258, column: 18, scope: !341)
!611 = !DILocation(line: 258, column: 26, scope: !341)
!612 = !DILocation(line: 258, column: 24, scope: !341)
!613 = !DILocation(line: 259, column: 31, scope: !341)
!614 = !DILocation(line: 259, column: 34, scope: !341)
!615 = !DILocation(line: 259, column: 3, scope: !341)
!616 = !DILocation(line: 260, column: 31, scope: !341)
!617 = !DILocation(line: 260, column: 34, scope: !341)
!618 = !DILocation(line: 260, column: 47, scope: !341)
!619 = !DILocation(line: 260, column: 3, scope: !341)
!620 = !DILocation(line: 261, column: 30, scope: !341)
!621 = !DILocation(line: 261, column: 59, scope: !341)
!622 = !DILocation(line: 261, column: 49, scope: !341)
!623 = !DILocation(line: 261, column: 47, scope: !341)
!624 = !DILocation(line: 261, column: 76, scope: !341)
!625 = !DILocation(line: 261, column: 81, scope: !341)
!626 = !DILocation(line: 261, column: 3, scope: !341)
!627 = !DILocation(line: 262, column: 25, scope: !341)
!628 = !DILocation(line: 262, column: 28, scope: !341)
!629 = !DILocation(line: 262, column: 3, scope: !341)
!630 = !DILocation(line: 263, column: 1, scope: !341)
!631 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha2_224", scope: !3, file: !3, line: 272, type: !35, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!632 = !DILocalVariable(name: "dst", arg: 1, scope: !631, file: !3, line: 273, type: !37)
!633 = !DILocation(line: 273, column: 12, scope: !631)
!634 = !DILocalVariable(name: "key", arg: 2, scope: !631, file: !3, line: 274, type: !37)
!635 = !DILocation(line: 274, column: 12, scope: !631)
!636 = !DILocalVariable(name: "key_len", arg: 3, scope: !631, file: !3, line: 275, type: !5)
!637 = !DILocation(line: 275, column: 12, scope: !631)
!638 = !DILocalVariable(name: "data", arg: 4, scope: !631, file: !3, line: 276, type: !37)
!639 = !DILocation(line: 276, column: 12, scope: !631)
!640 = !DILocalVariable(name: "data_len", arg: 5, scope: !631, file: !3, line: 277, type: !5)
!641 = !DILocation(line: 277, column: 12, scope: !631)
!642 = !DILocalVariable(name: "key_block", scope: !631, file: !3, line: 280, type: !53)
!643 = !DILocation(line: 280, column: 11, scope: !631)
!644 = !DILocation(line: 281, column: 3, scope: !631)
!645 = !DILocalVariable(name: "nkey", scope: !631, file: !3, line: 282, type: !37)
!646 = !DILocation(line: 282, column: 12, scope: !631)
!647 = !DILocation(line: 282, column: 19, scope: !631)
!648 = !DILocalVariable(name: "ite", scope: !631, file: !3, line: 283, type: !5)
!649 = !DILocation(line: 283, column: 12, scope: !631)
!650 = !DILocation(line: 284, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !631, file: !3, line: 284, column: 7)
!652 = !DILocation(line: 284, column: 15, scope: !651)
!653 = !DILocation(line: 284, column: 7, scope: !631)
!654 = !DILocation(line: 286, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !651, file: !3, line: 285, column: 3)
!656 = !DILocation(line: 286, column: 9, scope: !655)
!657 = !DILocation(line: 287, column: 3, scope: !655)
!658 = !DILocation(line: 290, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !651, file: !3, line: 289, column: 3)
!660 = !DILocalVariable(name: "zeroes", scope: !631, file: !3, line: 292, type: !37)
!661 = !DILocation(line: 292, column: 12, scope: !631)
!662 = !DILocation(line: 292, column: 21, scope: !631)
!663 = !DILocation(line: 292, column: 33, scope: !631)
!664 = !DILocation(line: 292, column: 31, scope: !631)
!665 = !DILocation(line: 293, column: 3, scope: !631)
!666 = !DILocation(line: 294, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !631, file: !3, line: 294, column: 7)
!668 = !DILocation(line: 294, column: 15, scope: !667)
!669 = !DILocation(line: 294, column: 7, scope: !631)
!670 = !DILocation(line: 296, column: 12, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !3, line: 295, column: 3)
!672 = !DILocation(line: 296, column: 18, scope: !671)
!673 = !DILocation(line: 296, column: 23, scope: !671)
!674 = !DILocation(line: 296, column: 31, scope: !671)
!675 = !DILocation(line: 296, column: 5, scope: !671)
!676 = !DILocation(line: 297, column: 3, scope: !671)
!677 = !DILocation(line: 300, column: 29, scope: !678)
!678 = distinct !DILexicalBlock(scope: !667, file: !3, line: 299, column: 3)
!679 = !DILocation(line: 300, column: 35, scope: !678)
!680 = !DILocation(line: 300, column: 40, scope: !678)
!681 = !DILocation(line: 300, column: 5, scope: !678)
!682 = !DILocalVariable(name: "ipad", scope: !631, file: !3, line: 302, type: !53)
!683 = !DILocation(line: 302, column: 11, scope: !631)
!684 = !DILocation(line: 303, column: 3, scope: !631)
!685 = !DILocalVariable(name: "i", scope: !686, file: !3, line: 304, type: !5)
!686 = distinct !DILexicalBlock(scope: !631, file: !3, line: 304, column: 3)
!687 = !DILocation(line: 304, column: 17, scope: !686)
!688 = !DILocation(line: 304, column: 8, scope: !686)
!689 = !DILocation(line: 304, column: 25, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !3, line: 304, column: 3)
!691 = !DILocation(line: 304, column: 27, scope: !690)
!692 = !DILocation(line: 304, column: 3, scope: !686)
!693 = !DILocalVariable(name: "xi", scope: !694, file: !3, line: 306, type: !38)
!694 = distinct !DILexicalBlock(scope: !690, file: !3, line: 305, column: 3)
!695 = !DILocation(line: 306, column: 13, scope: !694)
!696 = !DILocation(line: 306, column: 23, scope: !694)
!697 = !DILocation(line: 306, column: 18, scope: !694)
!698 = !DILocalVariable(name: "yi", scope: !694, file: !3, line: 307, type: !38)
!699 = !DILocation(line: 307, column: 13, scope: !694)
!700 = !DILocation(line: 307, column: 28, scope: !694)
!701 = !DILocation(line: 307, column: 18, scope: !694)
!702 = !DILocation(line: 308, column: 25, scope: !694)
!703 = !DILocation(line: 308, column: 15, scope: !694)
!704 = !DILocation(line: 308, column: 40, scope: !694)
!705 = !DILocation(line: 308, column: 30, scope: !694)
!706 = !DILocation(line: 308, column: 28, scope: !694)
!707 = !DILocation(line: 308, column: 10, scope: !694)
!708 = !DILocation(line: 308, column: 5, scope: !694)
!709 = !DILocation(line: 308, column: 13, scope: !694)
!710 = !DILocation(line: 309, column: 3, scope: !694)
!711 = !DILocation(line: 304, column: 35, scope: !690)
!712 = !DILocation(line: 304, column: 3, scope: !690)
!713 = distinct !{!713, !692, !714, !128}
!714 = !DILocation(line: 309, column: 3, scope: !686)
!715 = !DILocalVariable(name: "opad", scope: !631, file: !3, line: 310, type: !53)
!716 = !DILocation(line: 310, column: 11, scope: !631)
!717 = !DILocation(line: 311, column: 3, scope: !631)
!718 = !DILocalVariable(name: "i", scope: !719, file: !3, line: 312, type: !5)
!719 = distinct !DILexicalBlock(scope: !631, file: !3, line: 312, column: 3)
!720 = !DILocation(line: 312, column: 17, scope: !719)
!721 = !DILocation(line: 312, column: 8, scope: !719)
!722 = !DILocation(line: 312, column: 25, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !3, line: 312, column: 3)
!724 = !DILocation(line: 312, column: 27, scope: !723)
!725 = !DILocation(line: 312, column: 3, scope: !719)
!726 = !DILocalVariable(name: "xi", scope: !727, file: !3, line: 314, type: !38)
!727 = distinct !DILexicalBlock(scope: !723, file: !3, line: 313, column: 3)
!728 = !DILocation(line: 314, column: 13, scope: !727)
!729 = !DILocation(line: 314, column: 23, scope: !727)
!730 = !DILocation(line: 314, column: 18, scope: !727)
!731 = !DILocalVariable(name: "yi", scope: !727, file: !3, line: 315, type: !38)
!732 = !DILocation(line: 315, column: 13, scope: !727)
!733 = !DILocation(line: 315, column: 28, scope: !727)
!734 = !DILocation(line: 315, column: 18, scope: !727)
!735 = !DILocation(line: 316, column: 25, scope: !727)
!736 = !DILocation(line: 316, column: 15, scope: !727)
!737 = !DILocation(line: 316, column: 40, scope: !727)
!738 = !DILocation(line: 316, column: 30, scope: !727)
!739 = !DILocation(line: 316, column: 28, scope: !727)
!740 = !DILocation(line: 316, column: 10, scope: !727)
!741 = !DILocation(line: 316, column: 5, scope: !727)
!742 = !DILocation(line: 316, column: 13, scope: !727)
!743 = !DILocation(line: 317, column: 3, scope: !727)
!744 = !DILocation(line: 312, column: 35, scope: !723)
!745 = !DILocation(line: 312, column: 3, scope: !723)
!746 = distinct !{!746, !725, !747, !128}
!747 = !DILocation(line: 317, column: 3, scope: !719)
!748 = !DILocalVariable(name: "st", scope: !631, file: !3, line: 318, type: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !19)
!750 = !DILocation(line: 318, column: 12, scope: !631)
!751 = !DILocation(line: 319, column: 3, scope: !631)
!752 = !DILocalVariable(name: "i", scope: !753, file: !3, line: 319, type: !5)
!753 = distinct !DILexicalBlock(scope: !631, file: !3, line: 319, column: 3)
!754 = !DILocation(line: 319, column: 3, scope: !753)
!755 = !DILocalVariable(name: "os", scope: !756, file: !3, line: 319, type: !757)
!756 = distinct !DILexicalBlock(scope: !753, file: !3, line: 319, column: 3)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!758 = !DILocation(line: 319, column: 3, scope: !756)
!759 = !DILocalVariable(name: "x", scope: !756, file: !3, line: 319, type: !5)
!760 = !DILocalVariable(name: "os", scope: !761, file: !3, line: 319, type: !757)
!761 = distinct !DILexicalBlock(scope: !753, file: !3, line: 319, column: 3)
!762 = !DILocation(line: 319, column: 3, scope: !761)
!763 = !DILocalVariable(name: "x", scope: !761, file: !3, line: 319, type: !5)
!764 = !DILocalVariable(name: "os", scope: !765, file: !3, line: 319, type: !757)
!765 = distinct !DILexicalBlock(scope: !753, file: !3, line: 319, column: 3)
!766 = !DILocation(line: 319, column: 3, scope: !765)
!767 = !DILocalVariable(name: "x", scope: !765, file: !3, line: 319, type: !5)
!768 = !DILocalVariable(name: "os", scope: !769, file: !3, line: 319, type: !757)
!769 = distinct !DILexicalBlock(scope: !753, file: !3, line: 319, column: 3)
!770 = !DILocation(line: 319, column: 3, scope: !769)
!771 = !DILocalVariable(name: "x", scope: !769, file: !3, line: 319, type: !5)
!772 = !DILocalVariable(name: "os", scope: !773, file: !3, line: 319, type: !757)
!773 = distinct !DILexicalBlock(scope: !753, file: !3, line: 319, column: 3)
!774 = !DILocation(line: 319, column: 3, scope: !773)
!775 = !DILocalVariable(name: "x", scope: !773, file: !3, line: 319, type: !5)
!776 = !DILocalVariable(name: "os", scope: !777, file: !3, line: 319, type: !757)
!777 = distinct !DILexicalBlock(scope: !753, file: !3, line: 319, column: 3)
!778 = !DILocation(line: 319, column: 3, scope: !777)
!779 = !DILocalVariable(name: "x", scope: !777, file: !3, line: 319, type: !5)
!780 = !DILocalVariable(name: "os", scope: !781, file: !3, line: 319, type: !757)
!781 = distinct !DILexicalBlock(scope: !753, file: !3, line: 319, column: 3)
!782 = !DILocation(line: 319, column: 3, scope: !781)
!783 = !DILocalVariable(name: "x", scope: !781, file: !3, line: 319, type: !5)
!784 = !DILocalVariable(name: "os", scope: !785, file: !3, line: 319, type: !757)
!785 = distinct !DILexicalBlock(scope: !753, file: !3, line: 319, column: 3)
!786 = !DILocation(line: 319, column: 3, scope: !785)
!787 = !DILocalVariable(name: "x", scope: !785, file: !3, line: 319, type: !5)
!788 = !DILocalVariable(name: "s", scope: !631, file: !3, line: 326, type: !757)
!789 = !DILocation(line: 326, column: 13, scope: !631)
!790 = !DILocation(line: 326, column: 17, scope: !631)
!791 = !DILocalVariable(name: "dst1", scope: !631, file: !3, line: 327, type: !37)
!792 = !DILocation(line: 327, column: 12, scope: !631)
!793 = !DILocation(line: 327, column: 19, scope: !631)
!794 = !DILocation(line: 328, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !631, file: !3, line: 328, column: 7)
!796 = !DILocation(line: 328, column: 16, scope: !795)
!797 = !DILocation(line: 328, column: 7, scope: !631)
!798 = !DILocation(line: 330, column: 66, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !3, line: 329, column: 3)
!800 = !DILocation(line: 330, column: 72, scope: !799)
!801 = !DILocation(line: 330, column: 5, scope: !799)
!802 = !DILocation(line: 331, column: 3, scope: !799)
!803 = !DILocalVariable(name: "block_len", scope: !804, file: !3, line: 334, type: !5)
!804 = distinct !DILexicalBlock(scope: !795, file: !3, line: 333, column: 3)
!805 = !DILocation(line: 334, column: 14, scope: !804)
!806 = !DILocalVariable(name: "n_blocks0", scope: !804, file: !3, line: 335, type: !5)
!807 = !DILocation(line: 335, column: 14, scope: !804)
!808 = !DILocation(line: 335, column: 26, scope: !804)
!809 = !DILocation(line: 335, column: 37, scope: !804)
!810 = !DILocation(line: 335, column: 35, scope: !804)
!811 = !DILocalVariable(name: "rem0", scope: !804, file: !3, line: 336, type: !5)
!812 = !DILocation(line: 336, column: 14, scope: !804)
!813 = !DILocation(line: 336, column: 21, scope: !804)
!814 = !DILocation(line: 336, column: 32, scope: !804)
!815 = !DILocation(line: 336, column: 30, scope: !804)
!816 = !DILocalVariable(name: "scrut", scope: !804, file: !3, line: 337, type: !193)
!817 = !DILocation(line: 337, column: 27, scope: !804)
!818 = !DILocation(line: 338, column: 9, scope: !819)
!819 = distinct !DILexicalBlock(scope: !804, file: !3, line: 338, column: 9)
!820 = !DILocation(line: 338, column: 19, scope: !819)
!821 = !DILocation(line: 338, column: 24, scope: !819)
!822 = !DILocation(line: 338, column: 27, scope: !819)
!823 = !DILocation(line: 338, column: 32, scope: !819)
!824 = !DILocation(line: 338, column: 9, scope: !804)
!825 = !DILocalVariable(name: "n_blocks_", scope: !826, file: !3, line: 340, type: !5)
!826 = distinct !DILexicalBlock(scope: !819, file: !3, line: 339, column: 5)
!827 = !DILocation(line: 340, column: 16, scope: !826)
!828 = !DILocation(line: 340, column: 28, scope: !826)
!829 = !DILocation(line: 340, column: 38, scope: !826)
!830 = !DILocation(line: 341, column: 39, scope: !826)
!831 = !DILocation(line: 341, column: 48, scope: !826)
!832 = !DILocation(line: 341, column: 66, scope: !826)
!833 = !DILocation(line: 341, column: 77, scope: !826)
!834 = !DILocation(line: 341, column: 89, scope: !826)
!835 = !DILocation(line: 341, column: 87, scope: !826)
!836 = !DILocation(line: 341, column: 75, scope: !826)
!837 = !DILocation(line: 341, column: 16, scope: !826)
!838 = !DILocation(line: 342, column: 5, scope: !826)
!839 = !DILocation(line: 345, column: 39, scope: !840)
!840 = distinct !DILexicalBlock(scope: !819, file: !3, line: 344, column: 5)
!841 = !DILocation(line: 345, column: 48, scope: !840)
!842 = !DILocation(line: 345, column: 66, scope: !840)
!843 = !DILocation(line: 345, column: 16, scope: !840)
!844 = !DILocalVariable(name: "n_blocks", scope: !804, file: !3, line: 347, type: !5)
!845 = !DILocation(line: 347, column: 14, scope: !804)
!846 = !DILocation(line: 347, column: 31, scope: !804)
!847 = !DILocalVariable(name: "rem_len", scope: !804, file: !3, line: 348, type: !5)
!848 = !DILocation(line: 348, column: 14, scope: !804)
!849 = !DILocation(line: 348, column: 30, scope: !804)
!850 = !DILocalVariable(name: "full_blocks_len", scope: !804, file: !3, line: 349, type: !5)
!851 = !DILocation(line: 349, column: 14, scope: !804)
!852 = !DILocation(line: 349, column: 32, scope: !804)
!853 = !DILocation(line: 349, column: 43, scope: !804)
!854 = !DILocation(line: 349, column: 41, scope: !804)
!855 = !DILocalVariable(name: "full_blocks", scope: !804, file: !3, line: 350, type: !37)
!856 = !DILocation(line: 350, column: 14, scope: !804)
!857 = !DILocation(line: 350, column: 28, scope: !804)
!858 = !DILocalVariable(name: "rem", scope: !804, file: !3, line: 351, type: !37)
!859 = !DILocation(line: 351, column: 14, scope: !804)
!860 = !DILocation(line: 351, column: 20, scope: !804)
!861 = !DILocation(line: 351, column: 27, scope: !804)
!862 = !DILocation(line: 351, column: 25, scope: !804)
!863 = !DILocation(line: 352, column: 47, scope: !804)
!864 = !DILocation(line: 352, column: 53, scope: !804)
!865 = !DILocation(line: 352, column: 5, scope: !804)
!866 = !DILocation(line: 353, column: 42, scope: !804)
!867 = !DILocation(line: 353, column: 51, scope: !804)
!868 = !DILocation(line: 353, column: 58, scope: !804)
!869 = !DILocation(line: 353, column: 71, scope: !804)
!870 = !DILocation(line: 353, column: 5, scope: !804)
!871 = !DILocation(line: 354, column: 65, scope: !804)
!872 = !DILocation(line: 354, column: 55, scope: !804)
!873 = !DILocation(line: 354, column: 53, scope: !804)
!874 = !DILocation(line: 354, column: 93, scope: !804)
!875 = !DILocation(line: 354, column: 83, scope: !804)
!876 = !DILocation(line: 354, column: 81, scope: !804)
!877 = !DILocation(line: 355, column: 7, scope: !804)
!878 = !DILocation(line: 356, column: 7, scope: !804)
!879 = !DILocation(line: 357, column: 7, scope: !804)
!880 = !DILocation(line: 354, column: 5, scope: !804)
!881 = !DILocation(line: 359, column: 32, scope: !631)
!882 = !DILocation(line: 359, column: 35, scope: !631)
!883 = !DILocation(line: 359, column: 3, scope: !631)
!884 = !DILocalVariable(name: "hash1", scope: !631, file: !3, line: 360, type: !37)
!885 = !DILocation(line: 360, column: 12, scope: !631)
!886 = !DILocation(line: 360, column: 20, scope: !631)
!887 = !DILocation(line: 361, column: 30, scope: !631)
!888 = !DILocation(line: 361, column: 3, scope: !631)
!889 = !DILocalVariable(name: "block_len", scope: !631, file: !3, line: 362, type: !5)
!890 = !DILocation(line: 362, column: 12, scope: !631)
!891 = !DILocalVariable(name: "n_blocks0", scope: !631, file: !3, line: 363, type: !5)
!892 = !DILocation(line: 363, column: 12, scope: !631)
!893 = !DILocation(line: 363, column: 30, scope: !631)
!894 = !DILocation(line: 363, column: 28, scope: !631)
!895 = !DILocalVariable(name: "rem0", scope: !631, file: !3, line: 364, type: !5)
!896 = !DILocation(line: 364, column: 12, scope: !631)
!897 = !DILocation(line: 364, column: 25, scope: !631)
!898 = !DILocation(line: 364, column: 23, scope: !631)
!899 = !DILocalVariable(name: "scrut", scope: !631, file: !3, line: 365, type: !193)
!900 = !DILocation(line: 365, column: 25, scope: !631)
!901 = !DILocation(line: 366, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !631, file: !3, line: 366, column: 7)
!903 = !DILocation(line: 366, column: 17, scope: !902)
!904 = !DILocation(line: 366, column: 22, scope: !902)
!905 = !DILocation(line: 366, column: 25, scope: !902)
!906 = !DILocation(line: 366, column: 30, scope: !902)
!907 = !DILocation(line: 366, column: 7, scope: !631)
!908 = !DILocalVariable(name: "n_blocks_", scope: !909, file: !3, line: 368, type: !5)
!909 = distinct !DILexicalBlock(scope: !902, file: !3, line: 367, column: 3)
!910 = !DILocation(line: 368, column: 14, scope: !909)
!911 = !DILocation(line: 368, column: 26, scope: !909)
!912 = !DILocation(line: 368, column: 36, scope: !909)
!913 = !DILocation(line: 369, column: 37, scope: !909)
!914 = !DILocation(line: 369, column: 46, scope: !909)
!915 = !DILocation(line: 369, column: 70, scope: !909)
!916 = !DILocation(line: 369, column: 82, scope: !909)
!917 = !DILocation(line: 369, column: 80, scope: !909)
!918 = !DILocation(line: 369, column: 68, scope: !909)
!919 = !DILocation(line: 369, column: 14, scope: !909)
!920 = !DILocation(line: 370, column: 3, scope: !909)
!921 = !DILocation(line: 373, column: 37, scope: !922)
!922 = distinct !DILexicalBlock(scope: !902, file: !3, line: 372, column: 3)
!923 = !DILocation(line: 373, column: 46, scope: !922)
!924 = !DILocation(line: 373, column: 64, scope: !922)
!925 = !DILocation(line: 373, column: 14, scope: !922)
!926 = !DILocalVariable(name: "n_blocks", scope: !631, file: !3, line: 375, type: !5)
!927 = !DILocation(line: 375, column: 12, scope: !631)
!928 = !DILocation(line: 375, column: 29, scope: !631)
!929 = !DILocalVariable(name: "rem_len", scope: !631, file: !3, line: 376, type: !5)
!930 = !DILocation(line: 376, column: 12, scope: !631)
!931 = !DILocation(line: 376, column: 28, scope: !631)
!932 = !DILocalVariable(name: "full_blocks_len", scope: !631, file: !3, line: 377, type: !5)
!933 = !DILocation(line: 377, column: 12, scope: !631)
!934 = !DILocation(line: 377, column: 30, scope: !631)
!935 = !DILocation(line: 377, column: 41, scope: !631)
!936 = !DILocation(line: 377, column: 39, scope: !631)
!937 = !DILocalVariable(name: "full_blocks", scope: !631, file: !3, line: 378, type: !37)
!938 = !DILocation(line: 378, column: 12, scope: !631)
!939 = !DILocation(line: 378, column: 26, scope: !631)
!940 = !DILocalVariable(name: "rem", scope: !631, file: !3, line: 379, type: !37)
!941 = !DILocation(line: 379, column: 12, scope: !631)
!942 = !DILocation(line: 379, column: 18, scope: !631)
!943 = !DILocation(line: 379, column: 26, scope: !631)
!944 = !DILocation(line: 379, column: 24, scope: !631)
!945 = !DILocation(line: 380, column: 45, scope: !631)
!946 = !DILocation(line: 380, column: 51, scope: !631)
!947 = !DILocation(line: 380, column: 3, scope: !631)
!948 = !DILocation(line: 381, column: 40, scope: !631)
!949 = !DILocation(line: 381, column: 49, scope: !631)
!950 = !DILocation(line: 381, column: 56, scope: !631)
!951 = !DILocation(line: 381, column: 69, scope: !631)
!952 = !DILocation(line: 381, column: 3, scope: !631)
!953 = !DILocation(line: 382, column: 63, scope: !631)
!954 = !DILocation(line: 382, column: 53, scope: !631)
!955 = !DILocation(line: 382, column: 51, scope: !631)
!956 = !DILocation(line: 382, column: 91, scope: !631)
!957 = !DILocation(line: 382, column: 81, scope: !631)
!958 = !DILocation(line: 382, column: 79, scope: !631)
!959 = !DILocation(line: 383, column: 5, scope: !631)
!960 = !DILocation(line: 384, column: 5, scope: !631)
!961 = !DILocation(line: 385, column: 5, scope: !631)
!962 = !DILocation(line: 382, column: 3, scope: !631)
!963 = !DILocation(line: 386, column: 32, scope: !631)
!964 = !DILocation(line: 386, column: 35, scope: !631)
!965 = !DILocation(line: 386, column: 3, scope: !631)
!966 = !DILocation(line: 387, column: 1, scope: !631)
!967 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha2_256", scope: !3, file: !3, line: 396, type: !35, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!968 = !DILocalVariable(name: "dst", arg: 1, scope: !967, file: !3, line: 397, type: !37)
!969 = !DILocation(line: 397, column: 12, scope: !967)
!970 = !DILocalVariable(name: "key", arg: 2, scope: !967, file: !3, line: 398, type: !37)
!971 = !DILocation(line: 398, column: 12, scope: !967)
!972 = !DILocalVariable(name: "key_len", arg: 3, scope: !967, file: !3, line: 399, type: !5)
!973 = !DILocation(line: 399, column: 12, scope: !967)
!974 = !DILocalVariable(name: "data", arg: 4, scope: !967, file: !3, line: 400, type: !37)
!975 = !DILocation(line: 400, column: 12, scope: !967)
!976 = !DILocalVariable(name: "data_len", arg: 5, scope: !967, file: !3, line: 401, type: !5)
!977 = !DILocation(line: 401, column: 12, scope: !967)
!978 = !DILocalVariable(name: "key_block", scope: !967, file: !3, line: 404, type: !53)
!979 = !DILocation(line: 404, column: 11, scope: !967)
!980 = !DILocation(line: 405, column: 3, scope: !967)
!981 = !DILocalVariable(name: "nkey", scope: !967, file: !3, line: 406, type: !37)
!982 = !DILocation(line: 406, column: 12, scope: !967)
!983 = !DILocation(line: 406, column: 19, scope: !967)
!984 = !DILocalVariable(name: "ite", scope: !967, file: !3, line: 407, type: !5)
!985 = !DILocation(line: 407, column: 12, scope: !967)
!986 = !DILocation(line: 408, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !967, file: !3, line: 408, column: 7)
!988 = !DILocation(line: 408, column: 15, scope: !987)
!989 = !DILocation(line: 408, column: 7, scope: !967)
!990 = !DILocation(line: 410, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !3, line: 409, column: 3)
!992 = !DILocation(line: 410, column: 9, scope: !991)
!993 = !DILocation(line: 411, column: 3, scope: !991)
!994 = !DILocation(line: 414, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !987, file: !3, line: 413, column: 3)
!996 = !DILocalVariable(name: "zeroes", scope: !967, file: !3, line: 416, type: !37)
!997 = !DILocation(line: 416, column: 12, scope: !967)
!998 = !DILocation(line: 416, column: 21, scope: !967)
!999 = !DILocation(line: 416, column: 33, scope: !967)
!1000 = !DILocation(line: 416, column: 31, scope: !967)
!1001 = !DILocation(line: 417, column: 3, scope: !967)
!1002 = !DILocation(line: 418, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !967, file: !3, line: 418, column: 7)
!1004 = !DILocation(line: 418, column: 15, scope: !1003)
!1005 = !DILocation(line: 418, column: 7, scope: !967)
!1006 = !DILocation(line: 420, column: 12, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 419, column: 3)
!1008 = !DILocation(line: 420, column: 18, scope: !1007)
!1009 = !DILocation(line: 420, column: 23, scope: !1007)
!1010 = !DILocation(line: 420, column: 31, scope: !1007)
!1011 = !DILocation(line: 420, column: 5, scope: !1007)
!1012 = !DILocation(line: 421, column: 3, scope: !1007)
!1013 = !DILocation(line: 424, column: 29, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 423, column: 3)
!1015 = !DILocation(line: 424, column: 35, scope: !1014)
!1016 = !DILocation(line: 424, column: 40, scope: !1014)
!1017 = !DILocation(line: 424, column: 5, scope: !1014)
!1018 = !DILocalVariable(name: "ipad", scope: !967, file: !3, line: 426, type: !53)
!1019 = !DILocation(line: 426, column: 11, scope: !967)
!1020 = !DILocation(line: 427, column: 3, scope: !967)
!1021 = !DILocalVariable(name: "i", scope: !1022, file: !3, line: 428, type: !5)
!1022 = distinct !DILexicalBlock(scope: !967, file: !3, line: 428, column: 3)
!1023 = !DILocation(line: 428, column: 17, scope: !1022)
!1024 = !DILocation(line: 428, column: 8, scope: !1022)
!1025 = !DILocation(line: 428, column: 25, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 428, column: 3)
!1027 = !DILocation(line: 428, column: 27, scope: !1026)
!1028 = !DILocation(line: 428, column: 3, scope: !1022)
!1029 = !DILocalVariable(name: "xi", scope: !1030, file: !3, line: 430, type: !38)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 429, column: 3)
!1031 = !DILocation(line: 430, column: 13, scope: !1030)
!1032 = !DILocation(line: 430, column: 23, scope: !1030)
!1033 = !DILocation(line: 430, column: 18, scope: !1030)
!1034 = !DILocalVariable(name: "yi", scope: !1030, file: !3, line: 431, type: !38)
!1035 = !DILocation(line: 431, column: 13, scope: !1030)
!1036 = !DILocation(line: 431, column: 28, scope: !1030)
!1037 = !DILocation(line: 431, column: 18, scope: !1030)
!1038 = !DILocation(line: 432, column: 25, scope: !1030)
!1039 = !DILocation(line: 432, column: 15, scope: !1030)
!1040 = !DILocation(line: 432, column: 40, scope: !1030)
!1041 = !DILocation(line: 432, column: 30, scope: !1030)
!1042 = !DILocation(line: 432, column: 28, scope: !1030)
!1043 = !DILocation(line: 432, column: 10, scope: !1030)
!1044 = !DILocation(line: 432, column: 5, scope: !1030)
!1045 = !DILocation(line: 432, column: 13, scope: !1030)
!1046 = !DILocation(line: 433, column: 3, scope: !1030)
!1047 = !DILocation(line: 428, column: 35, scope: !1026)
!1048 = !DILocation(line: 428, column: 3, scope: !1026)
!1049 = distinct !{!1049, !1028, !1050, !128}
!1050 = !DILocation(line: 433, column: 3, scope: !1022)
!1051 = !DILocalVariable(name: "opad", scope: !967, file: !3, line: 434, type: !53)
!1052 = !DILocation(line: 434, column: 11, scope: !967)
!1053 = !DILocation(line: 435, column: 3, scope: !967)
!1054 = !DILocalVariable(name: "i", scope: !1055, file: !3, line: 436, type: !5)
!1055 = distinct !DILexicalBlock(scope: !967, file: !3, line: 436, column: 3)
!1056 = !DILocation(line: 436, column: 17, scope: !1055)
!1057 = !DILocation(line: 436, column: 8, scope: !1055)
!1058 = !DILocation(line: 436, column: 25, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 436, column: 3)
!1060 = !DILocation(line: 436, column: 27, scope: !1059)
!1061 = !DILocation(line: 436, column: 3, scope: !1055)
!1062 = !DILocalVariable(name: "xi", scope: !1063, file: !3, line: 438, type: !38)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 437, column: 3)
!1064 = !DILocation(line: 438, column: 13, scope: !1063)
!1065 = !DILocation(line: 438, column: 23, scope: !1063)
!1066 = !DILocation(line: 438, column: 18, scope: !1063)
!1067 = !DILocalVariable(name: "yi", scope: !1063, file: !3, line: 439, type: !38)
!1068 = !DILocation(line: 439, column: 13, scope: !1063)
!1069 = !DILocation(line: 439, column: 28, scope: !1063)
!1070 = !DILocation(line: 439, column: 18, scope: !1063)
!1071 = !DILocation(line: 440, column: 25, scope: !1063)
!1072 = !DILocation(line: 440, column: 15, scope: !1063)
!1073 = !DILocation(line: 440, column: 40, scope: !1063)
!1074 = !DILocation(line: 440, column: 30, scope: !1063)
!1075 = !DILocation(line: 440, column: 28, scope: !1063)
!1076 = !DILocation(line: 440, column: 10, scope: !1063)
!1077 = !DILocation(line: 440, column: 5, scope: !1063)
!1078 = !DILocation(line: 440, column: 13, scope: !1063)
!1079 = !DILocation(line: 441, column: 3, scope: !1063)
!1080 = !DILocation(line: 436, column: 35, scope: !1059)
!1081 = !DILocation(line: 436, column: 3, scope: !1059)
!1082 = distinct !{!1082, !1061, !1083, !128}
!1083 = !DILocation(line: 441, column: 3, scope: !1055)
!1084 = !DILocalVariable(name: "st", scope: !967, file: !3, line: 442, type: !749)
!1085 = !DILocation(line: 442, column: 12, scope: !967)
!1086 = !DILocation(line: 443, column: 3, scope: !967)
!1087 = !DILocalVariable(name: "i", scope: !1088, file: !3, line: 443, type: !5)
!1088 = distinct !DILexicalBlock(scope: !967, file: !3, line: 443, column: 3)
!1089 = !DILocation(line: 443, column: 3, scope: !1088)
!1090 = !DILocalVariable(name: "os", scope: !1091, file: !3, line: 443, type: !757)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 443, column: 3)
!1092 = !DILocation(line: 443, column: 3, scope: !1091)
!1093 = !DILocalVariable(name: "x", scope: !1091, file: !3, line: 443, type: !5)
!1094 = !DILocalVariable(name: "os", scope: !1095, file: !3, line: 443, type: !757)
!1095 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 443, column: 3)
!1096 = !DILocation(line: 443, column: 3, scope: !1095)
!1097 = !DILocalVariable(name: "x", scope: !1095, file: !3, line: 443, type: !5)
!1098 = !DILocalVariable(name: "os", scope: !1099, file: !3, line: 443, type: !757)
!1099 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 443, column: 3)
!1100 = !DILocation(line: 443, column: 3, scope: !1099)
!1101 = !DILocalVariable(name: "x", scope: !1099, file: !3, line: 443, type: !5)
!1102 = !DILocalVariable(name: "os", scope: !1103, file: !3, line: 443, type: !757)
!1103 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 443, column: 3)
!1104 = !DILocation(line: 443, column: 3, scope: !1103)
!1105 = !DILocalVariable(name: "x", scope: !1103, file: !3, line: 443, type: !5)
!1106 = !DILocalVariable(name: "os", scope: !1107, file: !3, line: 443, type: !757)
!1107 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 443, column: 3)
!1108 = !DILocation(line: 443, column: 3, scope: !1107)
!1109 = !DILocalVariable(name: "x", scope: !1107, file: !3, line: 443, type: !5)
!1110 = !DILocalVariable(name: "os", scope: !1111, file: !3, line: 443, type: !757)
!1111 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 443, column: 3)
!1112 = !DILocation(line: 443, column: 3, scope: !1111)
!1113 = !DILocalVariable(name: "x", scope: !1111, file: !3, line: 443, type: !5)
!1114 = !DILocalVariable(name: "os", scope: !1115, file: !3, line: 443, type: !757)
!1115 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 443, column: 3)
!1116 = !DILocation(line: 443, column: 3, scope: !1115)
!1117 = !DILocalVariable(name: "x", scope: !1115, file: !3, line: 443, type: !5)
!1118 = !DILocalVariable(name: "os", scope: !1119, file: !3, line: 443, type: !757)
!1119 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 443, column: 3)
!1120 = !DILocation(line: 443, column: 3, scope: !1119)
!1121 = !DILocalVariable(name: "x", scope: !1119, file: !3, line: 443, type: !5)
!1122 = !DILocalVariable(name: "s", scope: !967, file: !3, line: 450, type: !757)
!1123 = !DILocation(line: 450, column: 13, scope: !967)
!1124 = !DILocation(line: 450, column: 17, scope: !967)
!1125 = !DILocalVariable(name: "dst1", scope: !967, file: !3, line: 451, type: !37)
!1126 = !DILocation(line: 451, column: 12, scope: !967)
!1127 = !DILocation(line: 451, column: 19, scope: !967)
!1128 = !DILocation(line: 452, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !967, file: !3, line: 452, column: 7)
!1130 = !DILocation(line: 452, column: 16, scope: !1129)
!1131 = !DILocation(line: 452, column: 7, scope: !967)
!1132 = !DILocation(line: 454, column: 66, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 453, column: 3)
!1134 = !DILocation(line: 454, column: 72, scope: !1133)
!1135 = !DILocation(line: 454, column: 5, scope: !1133)
!1136 = !DILocation(line: 455, column: 3, scope: !1133)
!1137 = !DILocalVariable(name: "block_len", scope: !1138, file: !3, line: 458, type: !5)
!1138 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 457, column: 3)
!1139 = !DILocation(line: 458, column: 14, scope: !1138)
!1140 = !DILocalVariable(name: "n_blocks0", scope: !1138, file: !3, line: 459, type: !5)
!1141 = !DILocation(line: 459, column: 14, scope: !1138)
!1142 = !DILocation(line: 459, column: 26, scope: !1138)
!1143 = !DILocation(line: 459, column: 37, scope: !1138)
!1144 = !DILocation(line: 459, column: 35, scope: !1138)
!1145 = !DILocalVariable(name: "rem0", scope: !1138, file: !3, line: 460, type: !5)
!1146 = !DILocation(line: 460, column: 14, scope: !1138)
!1147 = !DILocation(line: 460, column: 21, scope: !1138)
!1148 = !DILocation(line: 460, column: 32, scope: !1138)
!1149 = !DILocation(line: 460, column: 30, scope: !1138)
!1150 = !DILocalVariable(name: "scrut", scope: !1138, file: !3, line: 461, type: !193)
!1151 = !DILocation(line: 461, column: 27, scope: !1138)
!1152 = !DILocation(line: 462, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 462, column: 9)
!1154 = !DILocation(line: 462, column: 19, scope: !1153)
!1155 = !DILocation(line: 462, column: 24, scope: !1153)
!1156 = !DILocation(line: 462, column: 27, scope: !1153)
!1157 = !DILocation(line: 462, column: 32, scope: !1153)
!1158 = !DILocation(line: 462, column: 9, scope: !1138)
!1159 = !DILocalVariable(name: "n_blocks_", scope: !1160, file: !3, line: 464, type: !5)
!1160 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 463, column: 5)
!1161 = !DILocation(line: 464, column: 16, scope: !1160)
!1162 = !DILocation(line: 464, column: 28, scope: !1160)
!1163 = !DILocation(line: 464, column: 38, scope: !1160)
!1164 = !DILocation(line: 465, column: 39, scope: !1160)
!1165 = !DILocation(line: 465, column: 48, scope: !1160)
!1166 = !DILocation(line: 465, column: 66, scope: !1160)
!1167 = !DILocation(line: 465, column: 77, scope: !1160)
!1168 = !DILocation(line: 465, column: 89, scope: !1160)
!1169 = !DILocation(line: 465, column: 87, scope: !1160)
!1170 = !DILocation(line: 465, column: 75, scope: !1160)
!1171 = !DILocation(line: 465, column: 16, scope: !1160)
!1172 = !DILocation(line: 466, column: 5, scope: !1160)
!1173 = !DILocation(line: 469, column: 39, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 468, column: 5)
!1175 = !DILocation(line: 469, column: 48, scope: !1174)
!1176 = !DILocation(line: 469, column: 66, scope: !1174)
!1177 = !DILocation(line: 469, column: 16, scope: !1174)
!1178 = !DILocalVariable(name: "n_blocks", scope: !1138, file: !3, line: 471, type: !5)
!1179 = !DILocation(line: 471, column: 14, scope: !1138)
!1180 = !DILocation(line: 471, column: 31, scope: !1138)
!1181 = !DILocalVariable(name: "rem_len", scope: !1138, file: !3, line: 472, type: !5)
!1182 = !DILocation(line: 472, column: 14, scope: !1138)
!1183 = !DILocation(line: 472, column: 30, scope: !1138)
!1184 = !DILocalVariable(name: "full_blocks_len", scope: !1138, file: !3, line: 473, type: !5)
!1185 = !DILocation(line: 473, column: 14, scope: !1138)
!1186 = !DILocation(line: 473, column: 32, scope: !1138)
!1187 = !DILocation(line: 473, column: 43, scope: !1138)
!1188 = !DILocation(line: 473, column: 41, scope: !1138)
!1189 = !DILocalVariable(name: "full_blocks", scope: !1138, file: !3, line: 474, type: !37)
!1190 = !DILocation(line: 474, column: 14, scope: !1138)
!1191 = !DILocation(line: 474, column: 28, scope: !1138)
!1192 = !DILocalVariable(name: "rem", scope: !1138, file: !3, line: 475, type: !37)
!1193 = !DILocation(line: 475, column: 14, scope: !1138)
!1194 = !DILocation(line: 475, column: 20, scope: !1138)
!1195 = !DILocation(line: 475, column: 27, scope: !1138)
!1196 = !DILocation(line: 475, column: 25, scope: !1138)
!1197 = !DILocation(line: 476, column: 47, scope: !1138)
!1198 = !DILocation(line: 476, column: 53, scope: !1138)
!1199 = !DILocation(line: 476, column: 5, scope: !1138)
!1200 = !DILocation(line: 477, column: 42, scope: !1138)
!1201 = !DILocation(line: 477, column: 51, scope: !1138)
!1202 = !DILocation(line: 477, column: 58, scope: !1138)
!1203 = !DILocation(line: 477, column: 71, scope: !1138)
!1204 = !DILocation(line: 477, column: 5, scope: !1138)
!1205 = !DILocation(line: 478, column: 65, scope: !1138)
!1206 = !DILocation(line: 478, column: 55, scope: !1138)
!1207 = !DILocation(line: 478, column: 53, scope: !1138)
!1208 = !DILocation(line: 478, column: 93, scope: !1138)
!1209 = !DILocation(line: 478, column: 83, scope: !1138)
!1210 = !DILocation(line: 478, column: 81, scope: !1138)
!1211 = !DILocation(line: 479, column: 7, scope: !1138)
!1212 = !DILocation(line: 480, column: 7, scope: !1138)
!1213 = !DILocation(line: 481, column: 7, scope: !1138)
!1214 = !DILocation(line: 478, column: 5, scope: !1138)
!1215 = !DILocation(line: 483, column: 32, scope: !967)
!1216 = !DILocation(line: 483, column: 35, scope: !967)
!1217 = !DILocation(line: 483, column: 3, scope: !967)
!1218 = !DILocalVariable(name: "hash1", scope: !967, file: !3, line: 484, type: !37)
!1219 = !DILocation(line: 484, column: 12, scope: !967)
!1220 = !DILocation(line: 484, column: 20, scope: !967)
!1221 = !DILocation(line: 485, column: 30, scope: !967)
!1222 = !DILocation(line: 485, column: 3, scope: !967)
!1223 = !DILocalVariable(name: "block_len", scope: !967, file: !3, line: 486, type: !5)
!1224 = !DILocation(line: 486, column: 12, scope: !967)
!1225 = !DILocalVariable(name: "n_blocks0", scope: !967, file: !3, line: 487, type: !5)
!1226 = !DILocation(line: 487, column: 12, scope: !967)
!1227 = !DILocation(line: 487, column: 30, scope: !967)
!1228 = !DILocation(line: 487, column: 28, scope: !967)
!1229 = !DILocalVariable(name: "rem0", scope: !967, file: !3, line: 488, type: !5)
!1230 = !DILocation(line: 488, column: 12, scope: !967)
!1231 = !DILocation(line: 488, column: 25, scope: !967)
!1232 = !DILocation(line: 488, column: 23, scope: !967)
!1233 = !DILocalVariable(name: "scrut", scope: !967, file: !3, line: 489, type: !193)
!1234 = !DILocation(line: 489, column: 25, scope: !967)
!1235 = !DILocation(line: 490, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !967, file: !3, line: 490, column: 7)
!1237 = !DILocation(line: 490, column: 17, scope: !1236)
!1238 = !DILocation(line: 490, column: 22, scope: !1236)
!1239 = !DILocation(line: 490, column: 25, scope: !1236)
!1240 = !DILocation(line: 490, column: 30, scope: !1236)
!1241 = !DILocation(line: 490, column: 7, scope: !967)
!1242 = !DILocalVariable(name: "n_blocks_", scope: !1243, file: !3, line: 492, type: !5)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 491, column: 3)
!1244 = !DILocation(line: 492, column: 14, scope: !1243)
!1245 = !DILocation(line: 492, column: 26, scope: !1243)
!1246 = !DILocation(line: 492, column: 36, scope: !1243)
!1247 = !DILocation(line: 493, column: 37, scope: !1243)
!1248 = !DILocation(line: 493, column: 46, scope: !1243)
!1249 = !DILocation(line: 493, column: 70, scope: !1243)
!1250 = !DILocation(line: 493, column: 82, scope: !1243)
!1251 = !DILocation(line: 493, column: 80, scope: !1243)
!1252 = !DILocation(line: 493, column: 68, scope: !1243)
!1253 = !DILocation(line: 493, column: 14, scope: !1243)
!1254 = !DILocation(line: 494, column: 3, scope: !1243)
!1255 = !DILocation(line: 497, column: 37, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 496, column: 3)
!1257 = !DILocation(line: 497, column: 46, scope: !1256)
!1258 = !DILocation(line: 497, column: 64, scope: !1256)
!1259 = !DILocation(line: 497, column: 14, scope: !1256)
!1260 = !DILocalVariable(name: "n_blocks", scope: !967, file: !3, line: 499, type: !5)
!1261 = !DILocation(line: 499, column: 12, scope: !967)
!1262 = !DILocation(line: 499, column: 29, scope: !967)
!1263 = !DILocalVariable(name: "rem_len", scope: !967, file: !3, line: 500, type: !5)
!1264 = !DILocation(line: 500, column: 12, scope: !967)
!1265 = !DILocation(line: 500, column: 28, scope: !967)
!1266 = !DILocalVariable(name: "full_blocks_len", scope: !967, file: !3, line: 501, type: !5)
!1267 = !DILocation(line: 501, column: 12, scope: !967)
!1268 = !DILocation(line: 501, column: 30, scope: !967)
!1269 = !DILocation(line: 501, column: 41, scope: !967)
!1270 = !DILocation(line: 501, column: 39, scope: !967)
!1271 = !DILocalVariable(name: "full_blocks", scope: !967, file: !3, line: 502, type: !37)
!1272 = !DILocation(line: 502, column: 12, scope: !967)
!1273 = !DILocation(line: 502, column: 26, scope: !967)
!1274 = !DILocalVariable(name: "rem", scope: !967, file: !3, line: 503, type: !37)
!1275 = !DILocation(line: 503, column: 12, scope: !967)
!1276 = !DILocation(line: 503, column: 18, scope: !967)
!1277 = !DILocation(line: 503, column: 26, scope: !967)
!1278 = !DILocation(line: 503, column: 24, scope: !967)
!1279 = !DILocation(line: 504, column: 45, scope: !967)
!1280 = !DILocation(line: 504, column: 51, scope: !967)
!1281 = !DILocation(line: 504, column: 3, scope: !967)
!1282 = !DILocation(line: 505, column: 40, scope: !967)
!1283 = !DILocation(line: 505, column: 49, scope: !967)
!1284 = !DILocation(line: 505, column: 56, scope: !967)
!1285 = !DILocation(line: 505, column: 69, scope: !967)
!1286 = !DILocation(line: 505, column: 3, scope: !967)
!1287 = !DILocation(line: 506, column: 63, scope: !967)
!1288 = !DILocation(line: 506, column: 53, scope: !967)
!1289 = !DILocation(line: 506, column: 51, scope: !967)
!1290 = !DILocation(line: 506, column: 91, scope: !967)
!1291 = !DILocation(line: 506, column: 81, scope: !967)
!1292 = !DILocation(line: 506, column: 79, scope: !967)
!1293 = !DILocation(line: 507, column: 5, scope: !967)
!1294 = !DILocation(line: 508, column: 5, scope: !967)
!1295 = !DILocation(line: 509, column: 5, scope: !967)
!1296 = !DILocation(line: 506, column: 3, scope: !967)
!1297 = !DILocation(line: 510, column: 32, scope: !967)
!1298 = !DILocation(line: 510, column: 35, scope: !967)
!1299 = !DILocation(line: 510, column: 3, scope: !967)
!1300 = !DILocation(line: 511, column: 1, scope: !967)
!1301 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha2_384", scope: !3, file: !3, line: 520, type: !35, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!1302 = !DILocalVariable(name: "dst", arg: 1, scope: !1301, file: !3, line: 521, type: !37)
!1303 = !DILocation(line: 521, column: 12, scope: !1301)
!1304 = !DILocalVariable(name: "key", arg: 2, scope: !1301, file: !3, line: 522, type: !37)
!1305 = !DILocation(line: 522, column: 12, scope: !1301)
!1306 = !DILocalVariable(name: "key_len", arg: 3, scope: !1301, file: !3, line: 523, type: !5)
!1307 = !DILocation(line: 523, column: 12, scope: !1301)
!1308 = !DILocalVariable(name: "data", arg: 4, scope: !1301, file: !3, line: 524, type: !37)
!1309 = !DILocation(line: 524, column: 12, scope: !1301)
!1310 = !DILocalVariable(name: "data_len", arg: 5, scope: !1301, file: !3, line: 525, type: !5)
!1311 = !DILocation(line: 525, column: 12, scope: !1301)
!1312 = !DILocalVariable(name: "key_block", scope: !1301, file: !3, line: 528, type: !1313)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1024, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 128)
!1316 = !DILocation(line: 528, column: 11, scope: !1301)
!1317 = !DILocation(line: 529, column: 3, scope: !1301)
!1318 = !DILocalVariable(name: "nkey", scope: !1301, file: !3, line: 530, type: !37)
!1319 = !DILocation(line: 530, column: 12, scope: !1301)
!1320 = !DILocation(line: 530, column: 19, scope: !1301)
!1321 = !DILocalVariable(name: "ite", scope: !1301, file: !3, line: 531, type: !5)
!1322 = !DILocation(line: 531, column: 12, scope: !1301)
!1323 = !DILocation(line: 532, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 532, column: 7)
!1325 = !DILocation(line: 532, column: 15, scope: !1324)
!1326 = !DILocation(line: 532, column: 7, scope: !1301)
!1327 = !DILocation(line: 534, column: 11, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 533, column: 3)
!1329 = !DILocation(line: 534, column: 9, scope: !1328)
!1330 = !DILocation(line: 535, column: 3, scope: !1328)
!1331 = !DILocation(line: 538, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 537, column: 3)
!1333 = !DILocalVariable(name: "zeroes", scope: !1301, file: !3, line: 540, type: !37)
!1334 = !DILocation(line: 540, column: 12, scope: !1301)
!1335 = !DILocation(line: 540, column: 21, scope: !1301)
!1336 = !DILocation(line: 540, column: 33, scope: !1301)
!1337 = !DILocation(line: 540, column: 31, scope: !1301)
!1338 = !DILocation(line: 541, column: 3, scope: !1301)
!1339 = !DILocation(line: 542, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 542, column: 7)
!1341 = !DILocation(line: 542, column: 15, scope: !1340)
!1342 = !DILocation(line: 542, column: 7, scope: !1301)
!1343 = !DILocation(line: 544, column: 12, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 543, column: 3)
!1345 = !DILocation(line: 544, column: 18, scope: !1344)
!1346 = !DILocation(line: 544, column: 23, scope: !1344)
!1347 = !DILocation(line: 544, column: 31, scope: !1344)
!1348 = !DILocation(line: 544, column: 5, scope: !1344)
!1349 = !DILocation(line: 545, column: 3, scope: !1344)
!1350 = !DILocation(line: 548, column: 29, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 547, column: 3)
!1352 = !DILocation(line: 548, column: 35, scope: !1351)
!1353 = !DILocation(line: 548, column: 40, scope: !1351)
!1354 = !DILocation(line: 548, column: 5, scope: !1351)
!1355 = !DILocalVariable(name: "ipad", scope: !1301, file: !3, line: 550, type: !1313)
!1356 = !DILocation(line: 550, column: 11, scope: !1301)
!1357 = !DILocation(line: 551, column: 3, scope: !1301)
!1358 = !DILocalVariable(name: "i", scope: !1359, file: !3, line: 552, type: !5)
!1359 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 552, column: 3)
!1360 = !DILocation(line: 552, column: 17, scope: !1359)
!1361 = !DILocation(line: 552, column: 8, scope: !1359)
!1362 = !DILocation(line: 552, column: 25, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 552, column: 3)
!1364 = !DILocation(line: 552, column: 27, scope: !1363)
!1365 = !DILocation(line: 552, column: 3, scope: !1359)
!1366 = !DILocalVariable(name: "xi", scope: !1367, file: !3, line: 554, type: !38)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 553, column: 3)
!1368 = !DILocation(line: 554, column: 13, scope: !1367)
!1369 = !DILocation(line: 554, column: 23, scope: !1367)
!1370 = !DILocation(line: 554, column: 18, scope: !1367)
!1371 = !DILocalVariable(name: "yi", scope: !1367, file: !3, line: 555, type: !38)
!1372 = !DILocation(line: 555, column: 13, scope: !1367)
!1373 = !DILocation(line: 555, column: 28, scope: !1367)
!1374 = !DILocation(line: 555, column: 18, scope: !1367)
!1375 = !DILocation(line: 556, column: 25, scope: !1367)
!1376 = !DILocation(line: 556, column: 15, scope: !1367)
!1377 = !DILocation(line: 556, column: 40, scope: !1367)
!1378 = !DILocation(line: 556, column: 30, scope: !1367)
!1379 = !DILocation(line: 556, column: 28, scope: !1367)
!1380 = !DILocation(line: 556, column: 10, scope: !1367)
!1381 = !DILocation(line: 556, column: 5, scope: !1367)
!1382 = !DILocation(line: 556, column: 13, scope: !1367)
!1383 = !DILocation(line: 557, column: 3, scope: !1367)
!1384 = !DILocation(line: 552, column: 36, scope: !1363)
!1385 = !DILocation(line: 552, column: 3, scope: !1363)
!1386 = distinct !{!1386, !1365, !1387, !128}
!1387 = !DILocation(line: 557, column: 3, scope: !1359)
!1388 = !DILocalVariable(name: "opad", scope: !1301, file: !3, line: 558, type: !1313)
!1389 = !DILocation(line: 558, column: 11, scope: !1301)
!1390 = !DILocation(line: 559, column: 3, scope: !1301)
!1391 = !DILocalVariable(name: "i", scope: !1392, file: !3, line: 560, type: !5)
!1392 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 560, column: 3)
!1393 = !DILocation(line: 560, column: 17, scope: !1392)
!1394 = !DILocation(line: 560, column: 8, scope: !1392)
!1395 = !DILocation(line: 560, column: 25, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 560, column: 3)
!1397 = !DILocation(line: 560, column: 27, scope: !1396)
!1398 = !DILocation(line: 560, column: 3, scope: !1392)
!1399 = !DILocalVariable(name: "xi", scope: !1400, file: !3, line: 562, type: !38)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 561, column: 3)
!1401 = !DILocation(line: 562, column: 13, scope: !1400)
!1402 = !DILocation(line: 562, column: 23, scope: !1400)
!1403 = !DILocation(line: 562, column: 18, scope: !1400)
!1404 = !DILocalVariable(name: "yi", scope: !1400, file: !3, line: 563, type: !38)
!1405 = !DILocation(line: 563, column: 13, scope: !1400)
!1406 = !DILocation(line: 563, column: 28, scope: !1400)
!1407 = !DILocation(line: 563, column: 18, scope: !1400)
!1408 = !DILocation(line: 564, column: 25, scope: !1400)
!1409 = !DILocation(line: 564, column: 15, scope: !1400)
!1410 = !DILocation(line: 564, column: 40, scope: !1400)
!1411 = !DILocation(line: 564, column: 30, scope: !1400)
!1412 = !DILocation(line: 564, column: 28, scope: !1400)
!1413 = !DILocation(line: 564, column: 10, scope: !1400)
!1414 = !DILocation(line: 564, column: 5, scope: !1400)
!1415 = !DILocation(line: 564, column: 13, scope: !1400)
!1416 = !DILocation(line: 565, column: 3, scope: !1400)
!1417 = !DILocation(line: 560, column: 36, scope: !1396)
!1418 = !DILocation(line: 560, column: 3, scope: !1396)
!1419 = distinct !{!1419, !1398, !1420, !128}
!1420 = !DILocation(line: 565, column: 3, scope: !1392)
!1421 = !DILocalVariable(name: "st", scope: !1301, file: !3, line: 566, type: !1422)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, elements: !19)
!1423 = !DILocation(line: 566, column: 12, scope: !1301)
!1424 = !DILocation(line: 567, column: 3, scope: !1301)
!1425 = !DILocalVariable(name: "i", scope: !1426, file: !3, line: 567, type: !5)
!1426 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 567, column: 3)
!1427 = !DILocation(line: 567, column: 3, scope: !1426)
!1428 = !DILocalVariable(name: "os", scope: !1429, file: !3, line: 567, type: !1430)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 567, column: 3)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!1431 = !DILocation(line: 567, column: 3, scope: !1429)
!1432 = !DILocalVariable(name: "x", scope: !1429, file: !3, line: 567, type: !10)
!1433 = !DILocalVariable(name: "os", scope: !1434, file: !3, line: 567, type: !1430)
!1434 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 567, column: 3)
!1435 = !DILocation(line: 567, column: 3, scope: !1434)
!1436 = !DILocalVariable(name: "x", scope: !1434, file: !3, line: 567, type: !10)
!1437 = !DILocalVariable(name: "os", scope: !1438, file: !3, line: 567, type: !1430)
!1438 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 567, column: 3)
!1439 = !DILocation(line: 567, column: 3, scope: !1438)
!1440 = !DILocalVariable(name: "x", scope: !1438, file: !3, line: 567, type: !10)
!1441 = !DILocalVariable(name: "os", scope: !1442, file: !3, line: 567, type: !1430)
!1442 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 567, column: 3)
!1443 = !DILocation(line: 567, column: 3, scope: !1442)
!1444 = !DILocalVariable(name: "x", scope: !1442, file: !3, line: 567, type: !10)
!1445 = !DILocalVariable(name: "os", scope: !1446, file: !3, line: 567, type: !1430)
!1446 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 567, column: 3)
!1447 = !DILocation(line: 567, column: 3, scope: !1446)
!1448 = !DILocalVariable(name: "x", scope: !1446, file: !3, line: 567, type: !10)
!1449 = !DILocalVariable(name: "os", scope: !1450, file: !3, line: 567, type: !1430)
!1450 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 567, column: 3)
!1451 = !DILocation(line: 567, column: 3, scope: !1450)
!1452 = !DILocalVariable(name: "x", scope: !1450, file: !3, line: 567, type: !10)
!1453 = !DILocalVariable(name: "os", scope: !1454, file: !3, line: 567, type: !1430)
!1454 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 567, column: 3)
!1455 = !DILocation(line: 567, column: 3, scope: !1454)
!1456 = !DILocalVariable(name: "x", scope: !1454, file: !3, line: 567, type: !10)
!1457 = !DILocalVariable(name: "os", scope: !1458, file: !3, line: 567, type: !1430)
!1458 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 567, column: 3)
!1459 = !DILocation(line: 567, column: 3, scope: !1458)
!1460 = !DILocalVariable(name: "x", scope: !1458, file: !3, line: 567, type: !10)
!1461 = !DILocalVariable(name: "s", scope: !1301, file: !3, line: 574, type: !1430)
!1462 = !DILocation(line: 574, column: 13, scope: !1301)
!1463 = !DILocation(line: 574, column: 17, scope: !1301)
!1464 = !DILocalVariable(name: "dst1", scope: !1301, file: !3, line: 575, type: !37)
!1465 = !DILocation(line: 575, column: 12, scope: !1301)
!1466 = !DILocation(line: 575, column: 19, scope: !1301)
!1467 = !DILocation(line: 576, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 576, column: 7)
!1469 = !DILocation(line: 576, column: 16, scope: !1468)
!1470 = !DILocation(line: 576, column: 7, scope: !1301)
!1471 = !DILocation(line: 578, column: 57, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 577, column: 3)
!1473 = !DILocation(line: 579, column: 9, scope: !1472)
!1474 = !DILocation(line: 578, column: 39, scope: !1472)
!1475 = !DILocation(line: 581, column: 7, scope: !1472)
!1476 = !DILocation(line: 582, column: 7, scope: !1472)
!1477 = !DILocation(line: 578, column: 5, scope: !1472)
!1478 = !DILocation(line: 583, column: 3, scope: !1472)
!1479 = !DILocalVariable(name: "block_len", scope: !1480, file: !3, line: 586, type: !5)
!1480 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 585, column: 3)
!1481 = !DILocation(line: 586, column: 14, scope: !1480)
!1482 = !DILocalVariable(name: "n_blocks0", scope: !1480, file: !3, line: 587, type: !5)
!1483 = !DILocation(line: 587, column: 14, scope: !1480)
!1484 = !DILocation(line: 587, column: 26, scope: !1480)
!1485 = !DILocation(line: 587, column: 37, scope: !1480)
!1486 = !DILocation(line: 587, column: 35, scope: !1480)
!1487 = !DILocalVariable(name: "rem0", scope: !1480, file: !3, line: 588, type: !5)
!1488 = !DILocation(line: 588, column: 14, scope: !1480)
!1489 = !DILocation(line: 588, column: 21, scope: !1480)
!1490 = !DILocation(line: 588, column: 32, scope: !1480)
!1491 = !DILocation(line: 588, column: 30, scope: !1480)
!1492 = !DILocalVariable(name: "scrut", scope: !1480, file: !3, line: 589, type: !193)
!1493 = !DILocation(line: 589, column: 27, scope: !1480)
!1494 = !DILocation(line: 590, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 590, column: 9)
!1496 = !DILocation(line: 590, column: 19, scope: !1495)
!1497 = !DILocation(line: 590, column: 24, scope: !1495)
!1498 = !DILocation(line: 590, column: 27, scope: !1495)
!1499 = !DILocation(line: 590, column: 32, scope: !1495)
!1500 = !DILocation(line: 590, column: 9, scope: !1480)
!1501 = !DILocalVariable(name: "n_blocks_", scope: !1502, file: !3, line: 592, type: !5)
!1502 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 591, column: 5)
!1503 = !DILocation(line: 592, column: 16, scope: !1502)
!1504 = !DILocation(line: 592, column: 28, scope: !1502)
!1505 = !DILocation(line: 592, column: 38, scope: !1502)
!1506 = !DILocation(line: 593, column: 39, scope: !1502)
!1507 = !DILocation(line: 593, column: 48, scope: !1502)
!1508 = !DILocation(line: 593, column: 66, scope: !1502)
!1509 = !DILocation(line: 593, column: 77, scope: !1502)
!1510 = !DILocation(line: 593, column: 89, scope: !1502)
!1511 = !DILocation(line: 593, column: 87, scope: !1502)
!1512 = !DILocation(line: 593, column: 75, scope: !1502)
!1513 = !DILocation(line: 593, column: 16, scope: !1502)
!1514 = !DILocation(line: 594, column: 5, scope: !1502)
!1515 = !DILocation(line: 597, column: 39, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 596, column: 5)
!1517 = !DILocation(line: 597, column: 48, scope: !1516)
!1518 = !DILocation(line: 597, column: 66, scope: !1516)
!1519 = !DILocation(line: 597, column: 16, scope: !1516)
!1520 = !DILocalVariable(name: "n_blocks", scope: !1480, file: !3, line: 599, type: !5)
!1521 = !DILocation(line: 599, column: 14, scope: !1480)
!1522 = !DILocation(line: 599, column: 31, scope: !1480)
!1523 = !DILocalVariable(name: "rem_len", scope: !1480, file: !3, line: 600, type: !5)
!1524 = !DILocation(line: 600, column: 14, scope: !1480)
!1525 = !DILocation(line: 600, column: 30, scope: !1480)
!1526 = !DILocalVariable(name: "full_blocks_len", scope: !1480, file: !3, line: 601, type: !5)
!1527 = !DILocation(line: 601, column: 14, scope: !1480)
!1528 = !DILocation(line: 601, column: 32, scope: !1480)
!1529 = !DILocation(line: 601, column: 43, scope: !1480)
!1530 = !DILocation(line: 601, column: 41, scope: !1480)
!1531 = !DILocalVariable(name: "full_blocks", scope: !1480, file: !3, line: 602, type: !37)
!1532 = !DILocation(line: 602, column: 14, scope: !1480)
!1533 = !DILocation(line: 602, column: 28, scope: !1480)
!1534 = !DILocalVariable(name: "rem", scope: !1480, file: !3, line: 603, type: !37)
!1535 = !DILocation(line: 603, column: 14, scope: !1480)
!1536 = !DILocation(line: 603, column: 20, scope: !1480)
!1537 = !DILocation(line: 603, column: 27, scope: !1480)
!1538 = !DILocation(line: 603, column: 25, scope: !1480)
!1539 = !DILocation(line: 604, column: 48, scope: !1480)
!1540 = !DILocation(line: 604, column: 54, scope: !1480)
!1541 = !DILocation(line: 604, column: 5, scope: !1480)
!1542 = !DILocation(line: 605, column: 42, scope: !1480)
!1543 = !DILocation(line: 605, column: 51, scope: !1480)
!1544 = !DILocation(line: 605, column: 59, scope: !1480)
!1545 = !DILocation(line: 605, column: 72, scope: !1480)
!1546 = !DILocation(line: 605, column: 5, scope: !1480)
!1547 = !DILocation(line: 606, column: 75, scope: !1480)
!1548 = !DILocation(line: 607, column: 53, scope: !1480)
!1549 = !DILocation(line: 607, column: 43, scope: !1480)
!1550 = !DILocation(line: 607, column: 11, scope: !1480)
!1551 = !DILocation(line: 606, column: 57, scope: !1480)
!1552 = !DILocation(line: 608, column: 51, scope: !1480)
!1553 = !DILocation(line: 608, column: 41, scope: !1480)
!1554 = !DILocation(line: 608, column: 9, scope: !1480)
!1555 = !DILocation(line: 606, column: 39, scope: !1480)
!1556 = !DILocation(line: 609, column: 7, scope: !1480)
!1557 = !DILocation(line: 610, column: 7, scope: !1480)
!1558 = !DILocation(line: 611, column: 7, scope: !1480)
!1559 = !DILocation(line: 606, column: 5, scope: !1480)
!1560 = !DILocation(line: 613, column: 32, scope: !1301)
!1561 = !DILocation(line: 613, column: 35, scope: !1301)
!1562 = !DILocation(line: 613, column: 3, scope: !1301)
!1563 = !DILocalVariable(name: "hash1", scope: !1301, file: !3, line: 614, type: !37)
!1564 = !DILocation(line: 614, column: 12, scope: !1301)
!1565 = !DILocation(line: 614, column: 20, scope: !1301)
!1566 = !DILocation(line: 615, column: 30, scope: !1301)
!1567 = !DILocation(line: 615, column: 3, scope: !1301)
!1568 = !DILocalVariable(name: "block_len", scope: !1301, file: !3, line: 616, type: !5)
!1569 = !DILocation(line: 616, column: 12, scope: !1301)
!1570 = !DILocalVariable(name: "n_blocks0", scope: !1301, file: !3, line: 617, type: !5)
!1571 = !DILocation(line: 617, column: 12, scope: !1301)
!1572 = !DILocation(line: 617, column: 30, scope: !1301)
!1573 = !DILocation(line: 617, column: 28, scope: !1301)
!1574 = !DILocalVariable(name: "rem0", scope: !1301, file: !3, line: 618, type: !5)
!1575 = !DILocation(line: 618, column: 12, scope: !1301)
!1576 = !DILocation(line: 618, column: 25, scope: !1301)
!1577 = !DILocation(line: 618, column: 23, scope: !1301)
!1578 = !DILocalVariable(name: "scrut", scope: !1301, file: !3, line: 619, type: !193)
!1579 = !DILocation(line: 619, column: 25, scope: !1301)
!1580 = !DILocation(line: 620, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 620, column: 7)
!1582 = !DILocation(line: 620, column: 17, scope: !1581)
!1583 = !DILocation(line: 620, column: 22, scope: !1581)
!1584 = !DILocation(line: 620, column: 25, scope: !1581)
!1585 = !DILocation(line: 620, column: 30, scope: !1581)
!1586 = !DILocation(line: 620, column: 7, scope: !1301)
!1587 = !DILocalVariable(name: "n_blocks_", scope: !1588, file: !3, line: 622, type: !5)
!1588 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 621, column: 3)
!1589 = !DILocation(line: 622, column: 14, scope: !1588)
!1590 = !DILocation(line: 622, column: 26, scope: !1588)
!1591 = !DILocation(line: 622, column: 36, scope: !1588)
!1592 = !DILocation(line: 623, column: 37, scope: !1588)
!1593 = !DILocation(line: 623, column: 46, scope: !1588)
!1594 = !DILocation(line: 623, column: 70, scope: !1588)
!1595 = !DILocation(line: 623, column: 82, scope: !1588)
!1596 = !DILocation(line: 623, column: 80, scope: !1588)
!1597 = !DILocation(line: 623, column: 68, scope: !1588)
!1598 = !DILocation(line: 623, column: 14, scope: !1588)
!1599 = !DILocation(line: 624, column: 3, scope: !1588)
!1600 = !DILocation(line: 627, column: 37, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 626, column: 3)
!1602 = !DILocation(line: 627, column: 46, scope: !1601)
!1603 = !DILocation(line: 627, column: 64, scope: !1601)
!1604 = !DILocation(line: 627, column: 14, scope: !1601)
!1605 = !DILocalVariable(name: "n_blocks", scope: !1301, file: !3, line: 629, type: !5)
!1606 = !DILocation(line: 629, column: 12, scope: !1301)
!1607 = !DILocation(line: 629, column: 29, scope: !1301)
!1608 = !DILocalVariable(name: "rem_len", scope: !1301, file: !3, line: 630, type: !5)
!1609 = !DILocation(line: 630, column: 12, scope: !1301)
!1610 = !DILocation(line: 630, column: 28, scope: !1301)
!1611 = !DILocalVariable(name: "full_blocks_len", scope: !1301, file: !3, line: 631, type: !5)
!1612 = !DILocation(line: 631, column: 12, scope: !1301)
!1613 = !DILocation(line: 631, column: 30, scope: !1301)
!1614 = !DILocation(line: 631, column: 41, scope: !1301)
!1615 = !DILocation(line: 631, column: 39, scope: !1301)
!1616 = !DILocalVariable(name: "full_blocks", scope: !1301, file: !3, line: 632, type: !37)
!1617 = !DILocation(line: 632, column: 12, scope: !1301)
!1618 = !DILocation(line: 632, column: 26, scope: !1301)
!1619 = !DILocalVariable(name: "rem", scope: !1301, file: !3, line: 633, type: !37)
!1620 = !DILocation(line: 633, column: 12, scope: !1301)
!1621 = !DILocation(line: 633, column: 18, scope: !1301)
!1622 = !DILocation(line: 633, column: 26, scope: !1301)
!1623 = !DILocation(line: 633, column: 24, scope: !1301)
!1624 = !DILocation(line: 634, column: 46, scope: !1301)
!1625 = !DILocation(line: 634, column: 52, scope: !1301)
!1626 = !DILocation(line: 634, column: 3, scope: !1301)
!1627 = !DILocation(line: 635, column: 40, scope: !1301)
!1628 = !DILocation(line: 635, column: 49, scope: !1301)
!1629 = !DILocation(line: 635, column: 57, scope: !1301)
!1630 = !DILocation(line: 635, column: 70, scope: !1301)
!1631 = !DILocation(line: 635, column: 3, scope: !1301)
!1632 = !DILocation(line: 636, column: 73, scope: !1301)
!1633 = !DILocation(line: 637, column: 51, scope: !1301)
!1634 = !DILocation(line: 637, column: 41, scope: !1301)
!1635 = !DILocation(line: 637, column: 9, scope: !1301)
!1636 = !DILocation(line: 636, column: 55, scope: !1301)
!1637 = !DILocation(line: 638, column: 49, scope: !1301)
!1638 = !DILocation(line: 638, column: 39, scope: !1301)
!1639 = !DILocation(line: 638, column: 7, scope: !1301)
!1640 = !DILocation(line: 636, column: 37, scope: !1301)
!1641 = !DILocation(line: 639, column: 5, scope: !1301)
!1642 = !DILocation(line: 640, column: 5, scope: !1301)
!1643 = !DILocation(line: 641, column: 5, scope: !1301)
!1644 = !DILocation(line: 636, column: 3, scope: !1301)
!1645 = !DILocation(line: 642, column: 32, scope: !1301)
!1646 = !DILocation(line: 642, column: 35, scope: !1301)
!1647 = !DILocation(line: 642, column: 3, scope: !1301)
!1648 = !DILocation(line: 643, column: 1, scope: !1301)
!1649 = distinct !DISubprogram(name: "FStar_UInt128_add", scope: !1650, file: !1650, line: 27, type: !1651, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!1650 = !DIFile(filename: "../karamel/krmllib/dist/minimal/FStar_UInt128_Verified.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "a8c36e7f67966c7cb84b18982196abf1")
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1653, !1653, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !1654, line: 81, baseType: !1655)
!1654 = !DIFile(filename: "../karamel/include/krml/internal/types.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "262263da8977e71823dd90291a398eca")
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FStar_UInt128_uint128_s", file: !1654, line: 78, size: 128, elements: !1656)
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1655, file: !1654, line: 79, baseType: !10, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1655, file: !1654, line: 80, baseType: !10, size: 64, offset: 64)
!1659 = !DILocalVariable(name: "a", arg: 1, scope: !1649, file: !1650, line: 27, type: !1653)
!1660 = !DILocation(line: 27, column: 41, scope: !1649)
!1661 = !DILocalVariable(name: "b", arg: 2, scope: !1649, file: !1650, line: 27, type: !1653)
!1662 = !DILocation(line: 27, column: 66, scope: !1649)
!1663 = !DILocalVariable(name: "lit", scope: !1649, file: !1650, line: 29, type: !1653)
!1664 = !DILocation(line: 29, column: 25, scope: !1649)
!1665 = !DILocation(line: 30, column: 15, scope: !1649)
!1666 = !DILocation(line: 30, column: 23, scope: !1649)
!1667 = !DILocation(line: 30, column: 19, scope: !1649)
!1668 = !DILocation(line: 30, column: 7, scope: !1649)
!1669 = !DILocation(line: 30, column: 11, scope: !1649)
!1670 = !DILocation(line: 31, column: 16, scope: !1649)
!1671 = !DILocation(line: 31, column: 25, scope: !1649)
!1672 = !DILocation(line: 31, column: 21, scope: !1649)
!1673 = !DILocation(line: 31, column: 54, scope: !1649)
!1674 = !DILocation(line: 31, column: 62, scope: !1649)
!1675 = !DILocation(line: 31, column: 58, scope: !1649)
!1676 = !DILocation(line: 31, column: 69, scope: !1649)
!1677 = !DILocation(line: 31, column: 32, scope: !1649)
!1678 = !DILocation(line: 31, column: 30, scope: !1649)
!1679 = !DILocation(line: 31, column: 7, scope: !1649)
!1680 = !DILocation(line: 31, column: 12, scope: !1649)
!1681 = !DILocation(line: 32, column: 3, scope: !1649)
!1682 = distinct !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !1650, file: !1650, line: 268, type: !1683, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!1653, !10}
!1685 = !DILocalVariable(name: "a", arg: 1, scope: !1682, file: !1650, line: 268, type: !10)
!1686 = !DILocation(line: 268, column: 78, scope: !1682)
!1687 = !DILocalVariable(name: "lit", scope: !1682, file: !1650, line: 270, type: !1653)
!1688 = !DILocation(line: 270, column: 25, scope: !1682)
!1689 = !DILocation(line: 271, column: 13, scope: !1682)
!1690 = !DILocation(line: 271, column: 7, scope: !1682)
!1691 = !DILocation(line: 271, column: 11, scope: !1682)
!1692 = !DILocation(line: 272, column: 7, scope: !1682)
!1693 = !DILocation(line: 272, column: 12, scope: !1682)
!1694 = !DILocation(line: 273, column: 3, scope: !1682)
!1695 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha2_512", scope: !3, file: !3, line: 652, type: !35, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!1696 = !DILocalVariable(name: "dst", arg: 1, scope: !1695, file: !3, line: 653, type: !37)
!1697 = !DILocation(line: 653, column: 12, scope: !1695)
!1698 = !DILocalVariable(name: "key", arg: 2, scope: !1695, file: !3, line: 654, type: !37)
!1699 = !DILocation(line: 654, column: 12, scope: !1695)
!1700 = !DILocalVariable(name: "key_len", arg: 3, scope: !1695, file: !3, line: 655, type: !5)
!1701 = !DILocation(line: 655, column: 12, scope: !1695)
!1702 = !DILocalVariable(name: "data", arg: 4, scope: !1695, file: !3, line: 656, type: !37)
!1703 = !DILocation(line: 656, column: 12, scope: !1695)
!1704 = !DILocalVariable(name: "data_len", arg: 5, scope: !1695, file: !3, line: 657, type: !5)
!1705 = !DILocation(line: 657, column: 12, scope: !1695)
!1706 = !DILocalVariable(name: "key_block", scope: !1695, file: !3, line: 660, type: !1313)
!1707 = !DILocation(line: 660, column: 11, scope: !1695)
!1708 = !DILocation(line: 661, column: 3, scope: !1695)
!1709 = !DILocalVariable(name: "nkey", scope: !1695, file: !3, line: 662, type: !37)
!1710 = !DILocation(line: 662, column: 12, scope: !1695)
!1711 = !DILocation(line: 662, column: 19, scope: !1695)
!1712 = !DILocalVariable(name: "ite", scope: !1695, file: !3, line: 663, type: !5)
!1713 = !DILocation(line: 663, column: 12, scope: !1695)
!1714 = !DILocation(line: 664, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 664, column: 7)
!1716 = !DILocation(line: 664, column: 15, scope: !1715)
!1717 = !DILocation(line: 664, column: 7, scope: !1695)
!1718 = !DILocation(line: 666, column: 11, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 665, column: 3)
!1720 = !DILocation(line: 666, column: 9, scope: !1719)
!1721 = !DILocation(line: 667, column: 3, scope: !1719)
!1722 = !DILocation(line: 670, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 669, column: 3)
!1724 = !DILocalVariable(name: "zeroes", scope: !1695, file: !3, line: 672, type: !37)
!1725 = !DILocation(line: 672, column: 12, scope: !1695)
!1726 = !DILocation(line: 672, column: 21, scope: !1695)
!1727 = !DILocation(line: 672, column: 33, scope: !1695)
!1728 = !DILocation(line: 672, column: 31, scope: !1695)
!1729 = !DILocation(line: 673, column: 3, scope: !1695)
!1730 = !DILocation(line: 674, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 674, column: 7)
!1732 = !DILocation(line: 674, column: 15, scope: !1731)
!1733 = !DILocation(line: 674, column: 7, scope: !1695)
!1734 = !DILocation(line: 676, column: 12, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 675, column: 3)
!1736 = !DILocation(line: 676, column: 18, scope: !1735)
!1737 = !DILocation(line: 676, column: 23, scope: !1735)
!1738 = !DILocation(line: 676, column: 31, scope: !1735)
!1739 = !DILocation(line: 676, column: 5, scope: !1735)
!1740 = !DILocation(line: 677, column: 3, scope: !1735)
!1741 = !DILocation(line: 680, column: 29, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 679, column: 3)
!1743 = !DILocation(line: 680, column: 35, scope: !1742)
!1744 = !DILocation(line: 680, column: 40, scope: !1742)
!1745 = !DILocation(line: 680, column: 5, scope: !1742)
!1746 = !DILocalVariable(name: "ipad", scope: !1695, file: !3, line: 682, type: !1313)
!1747 = !DILocation(line: 682, column: 11, scope: !1695)
!1748 = !DILocation(line: 683, column: 3, scope: !1695)
!1749 = !DILocalVariable(name: "i", scope: !1750, file: !3, line: 684, type: !5)
!1750 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 684, column: 3)
!1751 = !DILocation(line: 684, column: 17, scope: !1750)
!1752 = !DILocation(line: 684, column: 8, scope: !1750)
!1753 = !DILocation(line: 684, column: 25, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 684, column: 3)
!1755 = !DILocation(line: 684, column: 27, scope: !1754)
!1756 = !DILocation(line: 684, column: 3, scope: !1750)
!1757 = !DILocalVariable(name: "xi", scope: !1758, file: !3, line: 686, type: !38)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 685, column: 3)
!1759 = !DILocation(line: 686, column: 13, scope: !1758)
!1760 = !DILocation(line: 686, column: 23, scope: !1758)
!1761 = !DILocation(line: 686, column: 18, scope: !1758)
!1762 = !DILocalVariable(name: "yi", scope: !1758, file: !3, line: 687, type: !38)
!1763 = !DILocation(line: 687, column: 13, scope: !1758)
!1764 = !DILocation(line: 687, column: 28, scope: !1758)
!1765 = !DILocation(line: 687, column: 18, scope: !1758)
!1766 = !DILocation(line: 688, column: 25, scope: !1758)
!1767 = !DILocation(line: 688, column: 15, scope: !1758)
!1768 = !DILocation(line: 688, column: 40, scope: !1758)
!1769 = !DILocation(line: 688, column: 30, scope: !1758)
!1770 = !DILocation(line: 688, column: 28, scope: !1758)
!1771 = !DILocation(line: 688, column: 10, scope: !1758)
!1772 = !DILocation(line: 688, column: 5, scope: !1758)
!1773 = !DILocation(line: 688, column: 13, scope: !1758)
!1774 = !DILocation(line: 689, column: 3, scope: !1758)
!1775 = !DILocation(line: 684, column: 36, scope: !1754)
!1776 = !DILocation(line: 684, column: 3, scope: !1754)
!1777 = distinct !{!1777, !1756, !1778, !128}
!1778 = !DILocation(line: 689, column: 3, scope: !1750)
!1779 = !DILocalVariable(name: "opad", scope: !1695, file: !3, line: 690, type: !1313)
!1780 = !DILocation(line: 690, column: 11, scope: !1695)
!1781 = !DILocation(line: 691, column: 3, scope: !1695)
!1782 = !DILocalVariable(name: "i", scope: !1783, file: !3, line: 692, type: !5)
!1783 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 692, column: 3)
!1784 = !DILocation(line: 692, column: 17, scope: !1783)
!1785 = !DILocation(line: 692, column: 8, scope: !1783)
!1786 = !DILocation(line: 692, column: 25, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 692, column: 3)
!1788 = !DILocation(line: 692, column: 27, scope: !1787)
!1789 = !DILocation(line: 692, column: 3, scope: !1783)
!1790 = !DILocalVariable(name: "xi", scope: !1791, file: !3, line: 694, type: !38)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 693, column: 3)
!1792 = !DILocation(line: 694, column: 13, scope: !1791)
!1793 = !DILocation(line: 694, column: 23, scope: !1791)
!1794 = !DILocation(line: 694, column: 18, scope: !1791)
!1795 = !DILocalVariable(name: "yi", scope: !1791, file: !3, line: 695, type: !38)
!1796 = !DILocation(line: 695, column: 13, scope: !1791)
!1797 = !DILocation(line: 695, column: 28, scope: !1791)
!1798 = !DILocation(line: 695, column: 18, scope: !1791)
!1799 = !DILocation(line: 696, column: 25, scope: !1791)
!1800 = !DILocation(line: 696, column: 15, scope: !1791)
!1801 = !DILocation(line: 696, column: 40, scope: !1791)
!1802 = !DILocation(line: 696, column: 30, scope: !1791)
!1803 = !DILocation(line: 696, column: 28, scope: !1791)
!1804 = !DILocation(line: 696, column: 10, scope: !1791)
!1805 = !DILocation(line: 696, column: 5, scope: !1791)
!1806 = !DILocation(line: 696, column: 13, scope: !1791)
!1807 = !DILocation(line: 697, column: 3, scope: !1791)
!1808 = !DILocation(line: 692, column: 36, scope: !1787)
!1809 = !DILocation(line: 692, column: 3, scope: !1787)
!1810 = distinct !{!1810, !1789, !1811, !128}
!1811 = !DILocation(line: 697, column: 3, scope: !1783)
!1812 = !DILocalVariable(name: "st", scope: !1695, file: !3, line: 698, type: !1422)
!1813 = !DILocation(line: 698, column: 12, scope: !1695)
!1814 = !DILocation(line: 699, column: 3, scope: !1695)
!1815 = !DILocalVariable(name: "i", scope: !1816, file: !3, line: 699, type: !5)
!1816 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 699, column: 3)
!1817 = !DILocation(line: 699, column: 3, scope: !1816)
!1818 = !DILocalVariable(name: "os", scope: !1819, file: !3, line: 699, type: !1430)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 699, column: 3)
!1820 = !DILocation(line: 699, column: 3, scope: !1819)
!1821 = !DILocalVariable(name: "x", scope: !1819, file: !3, line: 699, type: !10)
!1822 = !DILocalVariable(name: "os", scope: !1823, file: !3, line: 699, type: !1430)
!1823 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 699, column: 3)
!1824 = !DILocation(line: 699, column: 3, scope: !1823)
!1825 = !DILocalVariable(name: "x", scope: !1823, file: !3, line: 699, type: !10)
!1826 = !DILocalVariable(name: "os", scope: !1827, file: !3, line: 699, type: !1430)
!1827 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 699, column: 3)
!1828 = !DILocation(line: 699, column: 3, scope: !1827)
!1829 = !DILocalVariable(name: "x", scope: !1827, file: !3, line: 699, type: !10)
!1830 = !DILocalVariable(name: "os", scope: !1831, file: !3, line: 699, type: !1430)
!1831 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 699, column: 3)
!1832 = !DILocation(line: 699, column: 3, scope: !1831)
!1833 = !DILocalVariable(name: "x", scope: !1831, file: !3, line: 699, type: !10)
!1834 = !DILocalVariable(name: "os", scope: !1835, file: !3, line: 699, type: !1430)
!1835 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 699, column: 3)
!1836 = !DILocation(line: 699, column: 3, scope: !1835)
!1837 = !DILocalVariable(name: "x", scope: !1835, file: !3, line: 699, type: !10)
!1838 = !DILocalVariable(name: "os", scope: !1839, file: !3, line: 699, type: !1430)
!1839 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 699, column: 3)
!1840 = !DILocation(line: 699, column: 3, scope: !1839)
!1841 = !DILocalVariable(name: "x", scope: !1839, file: !3, line: 699, type: !10)
!1842 = !DILocalVariable(name: "os", scope: !1843, file: !3, line: 699, type: !1430)
!1843 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 699, column: 3)
!1844 = !DILocation(line: 699, column: 3, scope: !1843)
!1845 = !DILocalVariable(name: "x", scope: !1843, file: !3, line: 699, type: !10)
!1846 = !DILocalVariable(name: "os", scope: !1847, file: !3, line: 699, type: !1430)
!1847 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 699, column: 3)
!1848 = !DILocation(line: 699, column: 3, scope: !1847)
!1849 = !DILocalVariable(name: "x", scope: !1847, file: !3, line: 699, type: !10)
!1850 = !DILocalVariable(name: "s", scope: !1695, file: !3, line: 706, type: !1430)
!1851 = !DILocation(line: 706, column: 13, scope: !1695)
!1852 = !DILocation(line: 706, column: 17, scope: !1695)
!1853 = !DILocalVariable(name: "dst1", scope: !1695, file: !3, line: 707, type: !37)
!1854 = !DILocation(line: 707, column: 12, scope: !1695)
!1855 = !DILocation(line: 707, column: 19, scope: !1695)
!1856 = !DILocation(line: 708, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 708, column: 7)
!1858 = !DILocation(line: 708, column: 16, scope: !1857)
!1859 = !DILocation(line: 708, column: 7, scope: !1695)
!1860 = !DILocation(line: 710, column: 57, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 709, column: 3)
!1862 = !DILocation(line: 711, column: 9, scope: !1861)
!1863 = !DILocation(line: 710, column: 39, scope: !1861)
!1864 = !DILocation(line: 713, column: 7, scope: !1861)
!1865 = !DILocation(line: 714, column: 7, scope: !1861)
!1866 = !DILocation(line: 710, column: 5, scope: !1861)
!1867 = !DILocation(line: 715, column: 3, scope: !1861)
!1868 = !DILocalVariable(name: "block_len", scope: !1869, file: !3, line: 718, type: !5)
!1869 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 717, column: 3)
!1870 = !DILocation(line: 718, column: 14, scope: !1869)
!1871 = !DILocalVariable(name: "n_blocks0", scope: !1869, file: !3, line: 719, type: !5)
!1872 = !DILocation(line: 719, column: 14, scope: !1869)
!1873 = !DILocation(line: 719, column: 26, scope: !1869)
!1874 = !DILocation(line: 719, column: 37, scope: !1869)
!1875 = !DILocation(line: 719, column: 35, scope: !1869)
!1876 = !DILocalVariable(name: "rem0", scope: !1869, file: !3, line: 720, type: !5)
!1877 = !DILocation(line: 720, column: 14, scope: !1869)
!1878 = !DILocation(line: 720, column: 21, scope: !1869)
!1879 = !DILocation(line: 720, column: 32, scope: !1869)
!1880 = !DILocation(line: 720, column: 30, scope: !1869)
!1881 = !DILocalVariable(name: "scrut", scope: !1869, file: !3, line: 721, type: !193)
!1882 = !DILocation(line: 721, column: 27, scope: !1869)
!1883 = !DILocation(line: 722, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 722, column: 9)
!1885 = !DILocation(line: 722, column: 19, scope: !1884)
!1886 = !DILocation(line: 722, column: 24, scope: !1884)
!1887 = !DILocation(line: 722, column: 27, scope: !1884)
!1888 = !DILocation(line: 722, column: 32, scope: !1884)
!1889 = !DILocation(line: 722, column: 9, scope: !1869)
!1890 = !DILocalVariable(name: "n_blocks_", scope: !1891, file: !3, line: 724, type: !5)
!1891 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 723, column: 5)
!1892 = !DILocation(line: 724, column: 16, scope: !1891)
!1893 = !DILocation(line: 724, column: 28, scope: !1891)
!1894 = !DILocation(line: 724, column: 38, scope: !1891)
!1895 = !DILocation(line: 725, column: 39, scope: !1891)
!1896 = !DILocation(line: 725, column: 48, scope: !1891)
!1897 = !DILocation(line: 725, column: 66, scope: !1891)
!1898 = !DILocation(line: 725, column: 77, scope: !1891)
!1899 = !DILocation(line: 725, column: 89, scope: !1891)
!1900 = !DILocation(line: 725, column: 87, scope: !1891)
!1901 = !DILocation(line: 725, column: 75, scope: !1891)
!1902 = !DILocation(line: 725, column: 16, scope: !1891)
!1903 = !DILocation(line: 726, column: 5, scope: !1891)
!1904 = !DILocation(line: 729, column: 39, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 728, column: 5)
!1906 = !DILocation(line: 729, column: 48, scope: !1905)
!1907 = !DILocation(line: 729, column: 66, scope: !1905)
!1908 = !DILocation(line: 729, column: 16, scope: !1905)
!1909 = !DILocalVariable(name: "n_blocks", scope: !1869, file: !3, line: 731, type: !5)
!1910 = !DILocation(line: 731, column: 14, scope: !1869)
!1911 = !DILocation(line: 731, column: 31, scope: !1869)
!1912 = !DILocalVariable(name: "rem_len", scope: !1869, file: !3, line: 732, type: !5)
!1913 = !DILocation(line: 732, column: 14, scope: !1869)
!1914 = !DILocation(line: 732, column: 30, scope: !1869)
!1915 = !DILocalVariable(name: "full_blocks_len", scope: !1869, file: !3, line: 733, type: !5)
!1916 = !DILocation(line: 733, column: 14, scope: !1869)
!1917 = !DILocation(line: 733, column: 32, scope: !1869)
!1918 = !DILocation(line: 733, column: 43, scope: !1869)
!1919 = !DILocation(line: 733, column: 41, scope: !1869)
!1920 = !DILocalVariable(name: "full_blocks", scope: !1869, file: !3, line: 734, type: !37)
!1921 = !DILocation(line: 734, column: 14, scope: !1869)
!1922 = !DILocation(line: 734, column: 28, scope: !1869)
!1923 = !DILocalVariable(name: "rem", scope: !1869, file: !3, line: 735, type: !37)
!1924 = !DILocation(line: 735, column: 14, scope: !1869)
!1925 = !DILocation(line: 735, column: 20, scope: !1869)
!1926 = !DILocation(line: 735, column: 27, scope: !1869)
!1927 = !DILocation(line: 735, column: 25, scope: !1869)
!1928 = !DILocation(line: 736, column: 48, scope: !1869)
!1929 = !DILocation(line: 736, column: 54, scope: !1869)
!1930 = !DILocation(line: 736, column: 5, scope: !1869)
!1931 = !DILocation(line: 737, column: 42, scope: !1869)
!1932 = !DILocation(line: 737, column: 51, scope: !1869)
!1933 = !DILocation(line: 737, column: 59, scope: !1869)
!1934 = !DILocation(line: 737, column: 72, scope: !1869)
!1935 = !DILocation(line: 737, column: 5, scope: !1869)
!1936 = !DILocation(line: 738, column: 75, scope: !1869)
!1937 = !DILocation(line: 739, column: 53, scope: !1869)
!1938 = !DILocation(line: 739, column: 43, scope: !1869)
!1939 = !DILocation(line: 739, column: 11, scope: !1869)
!1940 = !DILocation(line: 738, column: 57, scope: !1869)
!1941 = !DILocation(line: 740, column: 51, scope: !1869)
!1942 = !DILocation(line: 740, column: 41, scope: !1869)
!1943 = !DILocation(line: 740, column: 9, scope: !1869)
!1944 = !DILocation(line: 738, column: 39, scope: !1869)
!1945 = !DILocation(line: 741, column: 7, scope: !1869)
!1946 = !DILocation(line: 742, column: 7, scope: !1869)
!1947 = !DILocation(line: 743, column: 7, scope: !1869)
!1948 = !DILocation(line: 738, column: 5, scope: !1869)
!1949 = !DILocation(line: 745, column: 32, scope: !1695)
!1950 = !DILocation(line: 745, column: 35, scope: !1695)
!1951 = !DILocation(line: 745, column: 3, scope: !1695)
!1952 = !DILocalVariable(name: "hash1", scope: !1695, file: !3, line: 746, type: !37)
!1953 = !DILocation(line: 746, column: 12, scope: !1695)
!1954 = !DILocation(line: 746, column: 20, scope: !1695)
!1955 = !DILocation(line: 747, column: 30, scope: !1695)
!1956 = !DILocation(line: 747, column: 3, scope: !1695)
!1957 = !DILocalVariable(name: "block_len", scope: !1695, file: !3, line: 748, type: !5)
!1958 = !DILocation(line: 748, column: 12, scope: !1695)
!1959 = !DILocalVariable(name: "n_blocks0", scope: !1695, file: !3, line: 749, type: !5)
!1960 = !DILocation(line: 749, column: 12, scope: !1695)
!1961 = !DILocation(line: 749, column: 30, scope: !1695)
!1962 = !DILocation(line: 749, column: 28, scope: !1695)
!1963 = !DILocalVariable(name: "rem0", scope: !1695, file: !3, line: 750, type: !5)
!1964 = !DILocation(line: 750, column: 12, scope: !1695)
!1965 = !DILocation(line: 750, column: 25, scope: !1695)
!1966 = !DILocation(line: 750, column: 23, scope: !1695)
!1967 = !DILocalVariable(name: "scrut", scope: !1695, file: !3, line: 751, type: !193)
!1968 = !DILocation(line: 751, column: 25, scope: !1695)
!1969 = !DILocation(line: 752, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 752, column: 7)
!1971 = !DILocation(line: 752, column: 17, scope: !1970)
!1972 = !DILocation(line: 752, column: 22, scope: !1970)
!1973 = !DILocation(line: 752, column: 25, scope: !1970)
!1974 = !DILocation(line: 752, column: 30, scope: !1970)
!1975 = !DILocation(line: 752, column: 7, scope: !1695)
!1976 = !DILocalVariable(name: "n_blocks_", scope: !1977, file: !3, line: 754, type: !5)
!1977 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 753, column: 3)
!1978 = !DILocation(line: 754, column: 14, scope: !1977)
!1979 = !DILocation(line: 754, column: 26, scope: !1977)
!1980 = !DILocation(line: 754, column: 36, scope: !1977)
!1981 = !DILocation(line: 755, column: 37, scope: !1977)
!1982 = !DILocation(line: 755, column: 46, scope: !1977)
!1983 = !DILocation(line: 755, column: 70, scope: !1977)
!1984 = !DILocation(line: 755, column: 82, scope: !1977)
!1985 = !DILocation(line: 755, column: 80, scope: !1977)
!1986 = !DILocation(line: 755, column: 68, scope: !1977)
!1987 = !DILocation(line: 755, column: 14, scope: !1977)
!1988 = !DILocation(line: 756, column: 3, scope: !1977)
!1989 = !DILocation(line: 759, column: 37, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 758, column: 3)
!1991 = !DILocation(line: 759, column: 46, scope: !1990)
!1992 = !DILocation(line: 759, column: 64, scope: !1990)
!1993 = !DILocation(line: 759, column: 14, scope: !1990)
!1994 = !DILocalVariable(name: "n_blocks", scope: !1695, file: !3, line: 761, type: !5)
!1995 = !DILocation(line: 761, column: 12, scope: !1695)
!1996 = !DILocation(line: 761, column: 29, scope: !1695)
!1997 = !DILocalVariable(name: "rem_len", scope: !1695, file: !3, line: 762, type: !5)
!1998 = !DILocation(line: 762, column: 12, scope: !1695)
!1999 = !DILocation(line: 762, column: 28, scope: !1695)
!2000 = !DILocalVariable(name: "full_blocks_len", scope: !1695, file: !3, line: 763, type: !5)
!2001 = !DILocation(line: 763, column: 12, scope: !1695)
!2002 = !DILocation(line: 763, column: 30, scope: !1695)
!2003 = !DILocation(line: 763, column: 41, scope: !1695)
!2004 = !DILocation(line: 763, column: 39, scope: !1695)
!2005 = !DILocalVariable(name: "full_blocks", scope: !1695, file: !3, line: 764, type: !37)
!2006 = !DILocation(line: 764, column: 12, scope: !1695)
!2007 = !DILocation(line: 764, column: 26, scope: !1695)
!2008 = !DILocalVariable(name: "rem", scope: !1695, file: !3, line: 765, type: !37)
!2009 = !DILocation(line: 765, column: 12, scope: !1695)
!2010 = !DILocation(line: 765, column: 18, scope: !1695)
!2011 = !DILocation(line: 765, column: 26, scope: !1695)
!2012 = !DILocation(line: 765, column: 24, scope: !1695)
!2013 = !DILocation(line: 766, column: 46, scope: !1695)
!2014 = !DILocation(line: 766, column: 52, scope: !1695)
!2015 = !DILocation(line: 766, column: 3, scope: !1695)
!2016 = !DILocation(line: 767, column: 40, scope: !1695)
!2017 = !DILocation(line: 767, column: 49, scope: !1695)
!2018 = !DILocation(line: 767, column: 57, scope: !1695)
!2019 = !DILocation(line: 767, column: 70, scope: !1695)
!2020 = !DILocation(line: 767, column: 3, scope: !1695)
!2021 = !DILocation(line: 768, column: 73, scope: !1695)
!2022 = !DILocation(line: 769, column: 51, scope: !1695)
!2023 = !DILocation(line: 769, column: 41, scope: !1695)
!2024 = !DILocation(line: 769, column: 9, scope: !1695)
!2025 = !DILocation(line: 768, column: 55, scope: !1695)
!2026 = !DILocation(line: 770, column: 49, scope: !1695)
!2027 = !DILocation(line: 770, column: 39, scope: !1695)
!2028 = !DILocation(line: 770, column: 7, scope: !1695)
!2029 = !DILocation(line: 768, column: 37, scope: !1695)
!2030 = !DILocation(line: 771, column: 5, scope: !1695)
!2031 = !DILocation(line: 772, column: 5, scope: !1695)
!2032 = !DILocation(line: 773, column: 5, scope: !1695)
!2033 = !DILocation(line: 768, column: 3, scope: !1695)
!2034 = !DILocation(line: 774, column: 32, scope: !1695)
!2035 = !DILocation(line: 774, column: 35, scope: !1695)
!2036 = !DILocation(line: 774, column: 3, scope: !1695)
!2037 = !DILocation(line: 775, column: 1, scope: !1695)
!2038 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha3_224", scope: !3, file: !3, line: 784, type: !35, scopeLine: 791, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!2039 = !DILocalVariable(name: "dst", arg: 1, scope: !2038, file: !3, line: 785, type: !37)
!2040 = !DILocation(line: 785, column: 12, scope: !2038)
!2041 = !DILocalVariable(name: "key", arg: 2, scope: !2038, file: !3, line: 786, type: !37)
!2042 = !DILocation(line: 786, column: 12, scope: !2038)
!2043 = !DILocalVariable(name: "key_len", arg: 3, scope: !2038, file: !3, line: 787, type: !5)
!2044 = !DILocation(line: 787, column: 12, scope: !2038)
!2045 = !DILocalVariable(name: "data", arg: 4, scope: !2038, file: !3, line: 788, type: !37)
!2046 = !DILocation(line: 788, column: 12, scope: !2038)
!2047 = !DILocalVariable(name: "data_len", arg: 5, scope: !2038, file: !3, line: 789, type: !5)
!2048 = !DILocation(line: 789, column: 12, scope: !2038)
!2049 = !DILocalVariable(name: "key_block", scope: !2038, file: !3, line: 792, type: !2050)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1152, elements: !2051)
!2051 = !{!2052}
!2052 = !DISubrange(count: 144)
!2053 = !DILocation(line: 792, column: 11, scope: !2038)
!2054 = !DILocation(line: 793, column: 3, scope: !2038)
!2055 = !DILocalVariable(name: "nkey", scope: !2038, file: !3, line: 794, type: !37)
!2056 = !DILocation(line: 794, column: 12, scope: !2038)
!2057 = !DILocation(line: 794, column: 19, scope: !2038)
!2058 = !DILocalVariable(name: "ite", scope: !2038, file: !3, line: 795, type: !5)
!2059 = !DILocation(line: 795, column: 12, scope: !2038)
!2060 = !DILocation(line: 796, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 796, column: 7)
!2062 = !DILocation(line: 796, column: 15, scope: !2061)
!2063 = !DILocation(line: 796, column: 7, scope: !2038)
!2064 = !DILocation(line: 798, column: 11, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 797, column: 3)
!2066 = !DILocation(line: 798, column: 9, scope: !2065)
!2067 = !DILocation(line: 799, column: 3, scope: !2065)
!2068 = !DILocation(line: 802, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 801, column: 3)
!2070 = !DILocalVariable(name: "zeroes", scope: !2038, file: !3, line: 804, type: !37)
!2071 = !DILocation(line: 804, column: 12, scope: !2038)
!2072 = !DILocation(line: 804, column: 21, scope: !2038)
!2073 = !DILocation(line: 804, column: 33, scope: !2038)
!2074 = !DILocation(line: 804, column: 31, scope: !2038)
!2075 = !DILocation(line: 805, column: 3, scope: !2038)
!2076 = !DILocation(line: 806, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 806, column: 7)
!2078 = !DILocation(line: 806, column: 15, scope: !2077)
!2079 = !DILocation(line: 806, column: 7, scope: !2038)
!2080 = !DILocation(line: 808, column: 12, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 807, column: 3)
!2082 = !DILocation(line: 808, column: 18, scope: !2081)
!2083 = !DILocation(line: 808, column: 23, scope: !2081)
!2084 = !DILocation(line: 808, column: 31, scope: !2081)
!2085 = !DILocation(line: 808, column: 5, scope: !2081)
!2086 = !DILocation(line: 809, column: 3, scope: !2081)
!2087 = !DILocation(line: 812, column: 29, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 811, column: 3)
!2089 = !DILocation(line: 812, column: 35, scope: !2088)
!2090 = !DILocation(line: 812, column: 40, scope: !2088)
!2091 = !DILocation(line: 812, column: 5, scope: !2088)
!2092 = !DILocalVariable(name: "ipad", scope: !2038, file: !3, line: 814, type: !2050)
!2093 = !DILocation(line: 814, column: 11, scope: !2038)
!2094 = !DILocation(line: 815, column: 3, scope: !2038)
!2095 = !DILocalVariable(name: "i", scope: !2096, file: !3, line: 816, type: !5)
!2096 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 816, column: 3)
!2097 = !DILocation(line: 816, column: 17, scope: !2096)
!2098 = !DILocation(line: 816, column: 8, scope: !2096)
!2099 = !DILocation(line: 816, column: 25, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 816, column: 3)
!2101 = !DILocation(line: 816, column: 27, scope: !2100)
!2102 = !DILocation(line: 816, column: 3, scope: !2096)
!2103 = !DILocalVariable(name: "xi", scope: !2104, file: !3, line: 818, type: !38)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 817, column: 3)
!2105 = !DILocation(line: 818, column: 13, scope: !2104)
!2106 = !DILocation(line: 818, column: 23, scope: !2104)
!2107 = !DILocation(line: 818, column: 18, scope: !2104)
!2108 = !DILocalVariable(name: "yi", scope: !2104, file: !3, line: 819, type: !38)
!2109 = !DILocation(line: 819, column: 13, scope: !2104)
!2110 = !DILocation(line: 819, column: 28, scope: !2104)
!2111 = !DILocation(line: 819, column: 18, scope: !2104)
!2112 = !DILocation(line: 820, column: 25, scope: !2104)
!2113 = !DILocation(line: 820, column: 15, scope: !2104)
!2114 = !DILocation(line: 820, column: 40, scope: !2104)
!2115 = !DILocation(line: 820, column: 30, scope: !2104)
!2116 = !DILocation(line: 820, column: 28, scope: !2104)
!2117 = !DILocation(line: 820, column: 10, scope: !2104)
!2118 = !DILocation(line: 820, column: 5, scope: !2104)
!2119 = !DILocation(line: 820, column: 13, scope: !2104)
!2120 = !DILocation(line: 821, column: 3, scope: !2104)
!2121 = !DILocation(line: 816, column: 36, scope: !2100)
!2122 = !DILocation(line: 816, column: 3, scope: !2100)
!2123 = distinct !{!2123, !2102, !2124, !128}
!2124 = !DILocation(line: 821, column: 3, scope: !2096)
!2125 = !DILocalVariable(name: "opad", scope: !2038, file: !3, line: 822, type: !2050)
!2126 = !DILocation(line: 822, column: 11, scope: !2038)
!2127 = !DILocation(line: 823, column: 3, scope: !2038)
!2128 = !DILocalVariable(name: "i", scope: !2129, file: !3, line: 824, type: !5)
!2129 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 824, column: 3)
!2130 = !DILocation(line: 824, column: 17, scope: !2129)
!2131 = !DILocation(line: 824, column: 8, scope: !2129)
!2132 = !DILocation(line: 824, column: 25, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 824, column: 3)
!2134 = !DILocation(line: 824, column: 27, scope: !2133)
!2135 = !DILocation(line: 824, column: 3, scope: !2129)
!2136 = !DILocalVariable(name: "xi", scope: !2137, file: !3, line: 826, type: !38)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 825, column: 3)
!2138 = !DILocation(line: 826, column: 13, scope: !2137)
!2139 = !DILocation(line: 826, column: 23, scope: !2137)
!2140 = !DILocation(line: 826, column: 18, scope: !2137)
!2141 = !DILocalVariable(name: "yi", scope: !2137, file: !3, line: 827, type: !38)
!2142 = !DILocation(line: 827, column: 13, scope: !2137)
!2143 = !DILocation(line: 827, column: 28, scope: !2137)
!2144 = !DILocation(line: 827, column: 18, scope: !2137)
!2145 = !DILocation(line: 828, column: 25, scope: !2137)
!2146 = !DILocation(line: 828, column: 15, scope: !2137)
!2147 = !DILocation(line: 828, column: 40, scope: !2137)
!2148 = !DILocation(line: 828, column: 30, scope: !2137)
!2149 = !DILocation(line: 828, column: 28, scope: !2137)
!2150 = !DILocation(line: 828, column: 10, scope: !2137)
!2151 = !DILocation(line: 828, column: 5, scope: !2137)
!2152 = !DILocation(line: 828, column: 13, scope: !2137)
!2153 = !DILocation(line: 829, column: 3, scope: !2137)
!2154 = !DILocation(line: 824, column: 36, scope: !2133)
!2155 = !DILocation(line: 824, column: 3, scope: !2133)
!2156 = distinct !{!2156, !2135, !2157, !128}
!2157 = !DILocation(line: 829, column: 3, scope: !2129)
!2158 = !DILocalVariable(name: "s", scope: !2038, file: !3, line: 830, type: !2159)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1600, elements: !2160)
!2160 = !{!2161}
!2161 = !DISubrange(count: 25)
!2162 = !DILocation(line: 830, column: 12, scope: !2038)
!2163 = !DILocalVariable(name: "dst1", scope: !2038, file: !3, line: 831, type: !37)
!2164 = !DILocation(line: 831, column: 12, scope: !2038)
!2165 = !DILocation(line: 831, column: 19, scope: !2038)
!2166 = !DILocation(line: 832, column: 7, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 832, column: 7)
!2168 = !DILocation(line: 832, column: 16, scope: !2167)
!2169 = !DILocation(line: 832, column: 7, scope: !2038)
!2170 = !DILocation(line: 834, column: 69, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 833, column: 3)
!2172 = !DILocation(line: 834, column: 72, scope: !2171)
!2173 = !DILocation(line: 834, column: 5, scope: !2171)
!2174 = !DILocation(line: 835, column: 3, scope: !2171)
!2175 = !DILocalVariable(name: "block_len", scope: !2176, file: !3, line: 838, type: !5)
!2176 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 837, column: 3)
!2177 = !DILocation(line: 838, column: 14, scope: !2176)
!2178 = !DILocalVariable(name: "n_blocks0", scope: !2176, file: !3, line: 839, type: !5)
!2179 = !DILocation(line: 839, column: 14, scope: !2176)
!2180 = !DILocation(line: 839, column: 26, scope: !2176)
!2181 = !DILocation(line: 839, column: 37, scope: !2176)
!2182 = !DILocation(line: 839, column: 35, scope: !2176)
!2183 = !DILocalVariable(name: "rem0", scope: !2176, file: !3, line: 840, type: !5)
!2184 = !DILocation(line: 840, column: 14, scope: !2176)
!2185 = !DILocation(line: 840, column: 21, scope: !2176)
!2186 = !DILocation(line: 840, column: 32, scope: !2176)
!2187 = !DILocation(line: 840, column: 30, scope: !2176)
!2188 = !DILocalVariable(name: "scrut", scope: !2176, file: !3, line: 841, type: !193)
!2189 = !DILocation(line: 841, column: 27, scope: !2176)
!2190 = !DILocation(line: 842, column: 9, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 842, column: 9)
!2192 = !DILocation(line: 842, column: 19, scope: !2191)
!2193 = !DILocation(line: 842, column: 24, scope: !2191)
!2194 = !DILocation(line: 842, column: 27, scope: !2191)
!2195 = !DILocation(line: 842, column: 32, scope: !2191)
!2196 = !DILocation(line: 842, column: 9, scope: !2176)
!2197 = !DILocalVariable(name: "n_blocks_", scope: !2198, file: !3, line: 844, type: !5)
!2198 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 843, column: 5)
!2199 = !DILocation(line: 844, column: 16, scope: !2198)
!2200 = !DILocation(line: 844, column: 28, scope: !2198)
!2201 = !DILocation(line: 844, column: 38, scope: !2198)
!2202 = !DILocation(line: 845, column: 39, scope: !2198)
!2203 = !DILocation(line: 845, column: 48, scope: !2198)
!2204 = !DILocation(line: 845, column: 66, scope: !2198)
!2205 = !DILocation(line: 845, column: 77, scope: !2198)
!2206 = !DILocation(line: 845, column: 89, scope: !2198)
!2207 = !DILocation(line: 845, column: 87, scope: !2198)
!2208 = !DILocation(line: 845, column: 75, scope: !2198)
!2209 = !DILocation(line: 845, column: 16, scope: !2198)
!2210 = !DILocation(line: 846, column: 5, scope: !2198)
!2211 = !DILocation(line: 849, column: 39, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 848, column: 5)
!2213 = !DILocation(line: 849, column: 48, scope: !2212)
!2214 = !DILocation(line: 849, column: 66, scope: !2212)
!2215 = !DILocation(line: 849, column: 16, scope: !2212)
!2216 = !DILocalVariable(name: "n_blocks", scope: !2176, file: !3, line: 851, type: !5)
!2217 = !DILocation(line: 851, column: 14, scope: !2176)
!2218 = !DILocation(line: 851, column: 31, scope: !2176)
!2219 = !DILocalVariable(name: "rem_len", scope: !2176, file: !3, line: 852, type: !5)
!2220 = !DILocation(line: 852, column: 14, scope: !2176)
!2221 = !DILocation(line: 852, column: 30, scope: !2176)
!2222 = !DILocalVariable(name: "full_blocks_len", scope: !2176, file: !3, line: 853, type: !5)
!2223 = !DILocation(line: 853, column: 14, scope: !2176)
!2224 = !DILocation(line: 853, column: 32, scope: !2176)
!2225 = !DILocation(line: 853, column: 43, scope: !2176)
!2226 = !DILocation(line: 853, column: 41, scope: !2176)
!2227 = !DILocalVariable(name: "full_blocks", scope: !2176, file: !3, line: 854, type: !37)
!2228 = !DILocation(line: 854, column: 14, scope: !2176)
!2229 = !DILocation(line: 854, column: 28, scope: !2176)
!2230 = !DILocalVariable(name: "rem", scope: !2176, file: !3, line: 855, type: !37)
!2231 = !DILocation(line: 855, column: 14, scope: !2176)
!2232 = !DILocation(line: 855, column: 20, scope: !2176)
!2233 = !DILocation(line: 855, column: 27, scope: !2176)
!2234 = !DILocation(line: 855, column: 25, scope: !2176)
!2235 = !DILocation(line: 856, column: 70, scope: !2176)
!2236 = !DILocation(line: 856, column: 73, scope: !2176)
!2237 = !DILocation(line: 856, column: 5, scope: !2176)
!2238 = !DILocation(line: 857, column: 70, scope: !2176)
!2239 = !DILocation(line: 857, column: 73, scope: !2176)
!2240 = !DILocation(line: 857, column: 86, scope: !2176)
!2241 = !DILocation(line: 857, column: 5, scope: !2176)
!2242 = !DILocation(line: 858, column: 69, scope: !2176)
!2243 = !DILocation(line: 858, column: 72, scope: !2176)
!2244 = !DILocation(line: 858, column: 77, scope: !2176)
!2245 = !DILocation(line: 858, column: 5, scope: !2176)
!2246 = !DILocalVariable(name: "remOut", scope: !2038, file: !3, line: 860, type: !5)
!2247 = !DILocation(line: 860, column: 12, scope: !2038)
!2248 = !DILocalVariable(name: "hbuf0", scope: !2038, file: !3, line: 861, type: !2249)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !2250)
!2250 = !{!2251}
!2251 = !DISubrange(count: 256)
!2252 = !DILocation(line: 861, column: 11, scope: !2038)
!2253 = !DILocalVariable(name: "ws0", scope: !2038, file: !3, line: 862, type: !2254)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !2255)
!2255 = !{!2256}
!2256 = !DISubrange(count: 32)
!2257 = !DILocation(line: 862, column: 12, scope: !2038)
!2258 = !DILocation(line: 863, column: 3, scope: !2038)
!2259 = !DILocalVariable(name: "i", scope: !2260, file: !3, line: 864, type: !5)
!2260 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 864, column: 3)
!2261 = !DILocation(line: 864, column: 17, scope: !2260)
!2262 = !DILocation(line: 864, column: 8, scope: !2260)
!2263 = !DILocation(line: 864, column: 25, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 864, column: 3)
!2265 = !DILocation(line: 864, column: 27, scope: !2264)
!2266 = !DILocation(line: 864, column: 3, scope: !2260)
!2267 = !DILocation(line: 866, column: 5, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 865, column: 3)
!2269 = !DILocation(line: 867, column: 3, scope: !2268)
!2270 = !DILocation(line: 864, column: 35, scope: !2264)
!2271 = !DILocation(line: 864, column: 3, scope: !2264)
!2272 = distinct !{!2272, !2266, !2273, !128}
!2273 = !DILocation(line: 867, column: 3, scope: !2260)
!2274 = !DILocation(line: 868, column: 10, scope: !2038)
!2275 = !DILocation(line: 868, column: 15, scope: !2038)
!2276 = !DILocation(line: 868, column: 23, scope: !2038)
!2277 = !DILocation(line: 868, column: 21, scope: !2038)
!2278 = !DILocation(line: 868, column: 3, scope: !2038)
!2279 = !DILocation(line: 868, column: 38, scope: !2038)
!2280 = !DILocation(line: 868, column: 45, scope: !2038)
!2281 = !DILocalVariable(name: "hash1", scope: !2038, file: !3, line: 869, type: !37)
!2282 = !DILocation(line: 869, column: 12, scope: !2038)
!2283 = !DILocation(line: 869, column: 20, scope: !2038)
!2284 = !DILocation(line: 870, column: 56, scope: !2038)
!2285 = !DILocation(line: 870, column: 3, scope: !2038)
!2286 = !DILocalVariable(name: "block_len", scope: !2038, file: !3, line: 871, type: !5)
!2287 = !DILocation(line: 871, column: 12, scope: !2038)
!2288 = !DILocalVariable(name: "n_blocks0", scope: !2038, file: !3, line: 872, type: !5)
!2289 = !DILocation(line: 872, column: 12, scope: !2038)
!2290 = !DILocation(line: 872, column: 30, scope: !2038)
!2291 = !DILocation(line: 872, column: 28, scope: !2038)
!2292 = !DILocalVariable(name: "rem0", scope: !2038, file: !3, line: 873, type: !5)
!2293 = !DILocation(line: 873, column: 12, scope: !2038)
!2294 = !DILocation(line: 873, column: 25, scope: !2038)
!2295 = !DILocation(line: 873, column: 23, scope: !2038)
!2296 = !DILocalVariable(name: "scrut", scope: !2038, file: !3, line: 874, type: !193)
!2297 = !DILocation(line: 874, column: 25, scope: !2038)
!2298 = !DILocation(line: 875, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 875, column: 7)
!2300 = !DILocation(line: 875, column: 17, scope: !2299)
!2301 = !DILocation(line: 875, column: 22, scope: !2299)
!2302 = !DILocation(line: 875, column: 25, scope: !2299)
!2303 = !DILocation(line: 875, column: 30, scope: !2299)
!2304 = !DILocation(line: 875, column: 7, scope: !2038)
!2305 = !DILocalVariable(name: "n_blocks_", scope: !2306, file: !3, line: 877, type: !5)
!2306 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 876, column: 3)
!2307 = !DILocation(line: 877, column: 14, scope: !2306)
!2308 = !DILocation(line: 877, column: 26, scope: !2306)
!2309 = !DILocation(line: 877, column: 36, scope: !2306)
!2310 = !DILocation(line: 878, column: 37, scope: !2306)
!2311 = !DILocation(line: 878, column: 46, scope: !2306)
!2312 = !DILocation(line: 878, column: 70, scope: !2306)
!2313 = !DILocation(line: 878, column: 82, scope: !2306)
!2314 = !DILocation(line: 878, column: 80, scope: !2306)
!2315 = !DILocation(line: 878, column: 68, scope: !2306)
!2316 = !DILocation(line: 878, column: 14, scope: !2306)
!2317 = !DILocation(line: 879, column: 3, scope: !2306)
!2318 = !DILocation(line: 882, column: 37, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 881, column: 3)
!2320 = !DILocation(line: 882, column: 46, scope: !2319)
!2321 = !DILocation(line: 882, column: 64, scope: !2319)
!2322 = !DILocation(line: 882, column: 14, scope: !2319)
!2323 = !DILocalVariable(name: "n_blocks", scope: !2038, file: !3, line: 884, type: !5)
!2324 = !DILocation(line: 884, column: 12, scope: !2038)
!2325 = !DILocation(line: 884, column: 29, scope: !2038)
!2326 = !DILocalVariable(name: "rem_len", scope: !2038, file: !3, line: 885, type: !5)
!2327 = !DILocation(line: 885, column: 12, scope: !2038)
!2328 = !DILocation(line: 885, column: 28, scope: !2038)
!2329 = !DILocalVariable(name: "full_blocks_len", scope: !2038, file: !3, line: 886, type: !5)
!2330 = !DILocation(line: 886, column: 12, scope: !2038)
!2331 = !DILocation(line: 886, column: 30, scope: !2038)
!2332 = !DILocation(line: 886, column: 41, scope: !2038)
!2333 = !DILocation(line: 886, column: 39, scope: !2038)
!2334 = !DILocalVariable(name: "full_blocks", scope: !2038, file: !3, line: 887, type: !37)
!2335 = !DILocation(line: 887, column: 12, scope: !2038)
!2336 = !DILocation(line: 887, column: 26, scope: !2038)
!2337 = !DILocalVariable(name: "rem", scope: !2038, file: !3, line: 888, type: !37)
!2338 = !DILocation(line: 888, column: 12, scope: !2038)
!2339 = !DILocation(line: 888, column: 18, scope: !2038)
!2340 = !DILocation(line: 888, column: 26, scope: !2038)
!2341 = !DILocation(line: 888, column: 24, scope: !2038)
!2342 = !DILocation(line: 889, column: 68, scope: !2038)
!2343 = !DILocation(line: 889, column: 71, scope: !2038)
!2344 = !DILocation(line: 889, column: 3, scope: !2038)
!2345 = !DILocation(line: 890, column: 68, scope: !2038)
!2346 = !DILocation(line: 890, column: 71, scope: !2038)
!2347 = !DILocation(line: 890, column: 84, scope: !2038)
!2348 = !DILocation(line: 890, column: 3, scope: !2038)
!2349 = !DILocation(line: 891, column: 67, scope: !2038)
!2350 = !DILocation(line: 891, column: 70, scope: !2038)
!2351 = !DILocation(line: 891, column: 75, scope: !2038)
!2352 = !DILocation(line: 891, column: 3, scope: !2038)
!2353 = !DILocalVariable(name: "remOut0", scope: !2038, file: !3, line: 892, type: !5)
!2354 = !DILocation(line: 892, column: 12, scope: !2038)
!2355 = !DILocalVariable(name: "hbuf", scope: !2038, file: !3, line: 893, type: !2249)
!2356 = !DILocation(line: 893, column: 11, scope: !2038)
!2357 = !DILocalVariable(name: "ws", scope: !2038, file: !3, line: 894, type: !2254)
!2358 = !DILocation(line: 894, column: 12, scope: !2038)
!2359 = !DILocation(line: 895, column: 3, scope: !2038)
!2360 = !DILocalVariable(name: "i", scope: !2361, file: !3, line: 896, type: !5)
!2361 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 896, column: 3)
!2362 = !DILocation(line: 896, column: 17, scope: !2361)
!2363 = !DILocation(line: 896, column: 8, scope: !2361)
!2364 = !DILocation(line: 896, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 896, column: 3)
!2366 = !DILocation(line: 896, column: 27, scope: !2365)
!2367 = !DILocation(line: 896, column: 3, scope: !2361)
!2368 = !DILocation(line: 898, column: 5, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 897, column: 3)
!2370 = !DILocation(line: 899, column: 3, scope: !2369)
!2371 = !DILocation(line: 896, column: 35, scope: !2365)
!2372 = !DILocation(line: 896, column: 3, scope: !2365)
!2373 = distinct !{!2373, !2367, !2374, !128}
!2374 = !DILocation(line: 899, column: 3, scope: !2361)
!2375 = !DILocation(line: 900, column: 10, scope: !2038)
!2376 = !DILocation(line: 900, column: 14, scope: !2038)
!2377 = !DILocation(line: 900, column: 22, scope: !2038)
!2378 = !DILocation(line: 900, column: 20, scope: !2038)
!2379 = !DILocation(line: 900, column: 3, scope: !2038)
!2380 = !DILocation(line: 900, column: 37, scope: !2038)
!2381 = !DILocation(line: 900, column: 45, scope: !2038)
!2382 = !DILocation(line: 901, column: 1, scope: !2038)
!2383 = distinct !DISubprogram(name: "store64", scope: !2384, file: !2384, line: 186, type: !2385, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!2384 = !DIFile(filename: "../karamel/include/krml/lowstar_endianness.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "3227c7c55ceb07f7a2effbf9fc3a9db8")
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !37, !10}
!2387 = !DILocalVariable(name: "b", arg: 1, scope: !2383, file: !2384, line: 186, type: !37)
!2388 = !DILocation(line: 186, column: 37, scope: !2383)
!2389 = !DILocalVariable(name: "i", arg: 2, scope: !2383, file: !2384, line: 186, type: !10)
!2390 = !DILocation(line: 186, column: 49, scope: !2383)
!2391 = !DILocation(line: 187, column: 10, scope: !2383)
!2392 = !DILocation(line: 187, column: 3, scope: !2383)
!2393 = !DILocation(line: 188, column: 1, scope: !2383)
!2394 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha3_256", scope: !3, file: !3, line: 910, type: !35, scopeLine: 917, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!2395 = !DILocalVariable(name: "dst", arg: 1, scope: !2394, file: !3, line: 911, type: !37)
!2396 = !DILocation(line: 911, column: 12, scope: !2394)
!2397 = !DILocalVariable(name: "key", arg: 2, scope: !2394, file: !3, line: 912, type: !37)
!2398 = !DILocation(line: 912, column: 12, scope: !2394)
!2399 = !DILocalVariable(name: "key_len", arg: 3, scope: !2394, file: !3, line: 913, type: !5)
!2400 = !DILocation(line: 913, column: 12, scope: !2394)
!2401 = !DILocalVariable(name: "data", arg: 4, scope: !2394, file: !3, line: 914, type: !37)
!2402 = !DILocation(line: 914, column: 12, scope: !2394)
!2403 = !DILocalVariable(name: "data_len", arg: 5, scope: !2394, file: !3, line: 915, type: !5)
!2404 = !DILocation(line: 915, column: 12, scope: !2394)
!2405 = !DILocalVariable(name: "key_block", scope: !2394, file: !3, line: 918, type: !2406)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1088, elements: !2407)
!2407 = !{!2408}
!2408 = !DISubrange(count: 136)
!2409 = !DILocation(line: 918, column: 11, scope: !2394)
!2410 = !DILocation(line: 919, column: 3, scope: !2394)
!2411 = !DILocalVariable(name: "nkey", scope: !2394, file: !3, line: 920, type: !37)
!2412 = !DILocation(line: 920, column: 12, scope: !2394)
!2413 = !DILocation(line: 920, column: 19, scope: !2394)
!2414 = !DILocalVariable(name: "ite", scope: !2394, file: !3, line: 921, type: !5)
!2415 = !DILocation(line: 921, column: 12, scope: !2394)
!2416 = !DILocation(line: 922, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 922, column: 7)
!2418 = !DILocation(line: 922, column: 15, scope: !2417)
!2419 = !DILocation(line: 922, column: 7, scope: !2394)
!2420 = !DILocation(line: 924, column: 11, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 923, column: 3)
!2422 = !DILocation(line: 924, column: 9, scope: !2421)
!2423 = !DILocation(line: 925, column: 3, scope: !2421)
!2424 = !DILocation(line: 928, column: 9, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 927, column: 3)
!2426 = !DILocalVariable(name: "zeroes", scope: !2394, file: !3, line: 930, type: !37)
!2427 = !DILocation(line: 930, column: 12, scope: !2394)
!2428 = !DILocation(line: 930, column: 21, scope: !2394)
!2429 = !DILocation(line: 930, column: 33, scope: !2394)
!2430 = !DILocation(line: 930, column: 31, scope: !2394)
!2431 = !DILocation(line: 931, column: 3, scope: !2394)
!2432 = !DILocation(line: 932, column: 7, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 932, column: 7)
!2434 = !DILocation(line: 932, column: 15, scope: !2433)
!2435 = !DILocation(line: 932, column: 7, scope: !2394)
!2436 = !DILocation(line: 934, column: 12, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 933, column: 3)
!2438 = !DILocation(line: 934, column: 18, scope: !2437)
!2439 = !DILocation(line: 934, column: 23, scope: !2437)
!2440 = !DILocation(line: 934, column: 31, scope: !2437)
!2441 = !DILocation(line: 934, column: 5, scope: !2437)
!2442 = !DILocation(line: 935, column: 3, scope: !2437)
!2443 = !DILocation(line: 938, column: 29, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 937, column: 3)
!2445 = !DILocation(line: 938, column: 35, scope: !2444)
!2446 = !DILocation(line: 938, column: 40, scope: !2444)
!2447 = !DILocation(line: 938, column: 5, scope: !2444)
!2448 = !DILocalVariable(name: "ipad", scope: !2394, file: !3, line: 940, type: !2406)
!2449 = !DILocation(line: 940, column: 11, scope: !2394)
!2450 = !DILocation(line: 941, column: 3, scope: !2394)
!2451 = !DILocalVariable(name: "i", scope: !2452, file: !3, line: 942, type: !5)
!2452 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 942, column: 3)
!2453 = !DILocation(line: 942, column: 17, scope: !2452)
!2454 = !DILocation(line: 942, column: 8, scope: !2452)
!2455 = !DILocation(line: 942, column: 25, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 942, column: 3)
!2457 = !DILocation(line: 942, column: 27, scope: !2456)
!2458 = !DILocation(line: 942, column: 3, scope: !2452)
!2459 = !DILocalVariable(name: "xi", scope: !2460, file: !3, line: 944, type: !38)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 943, column: 3)
!2461 = !DILocation(line: 944, column: 13, scope: !2460)
!2462 = !DILocation(line: 944, column: 23, scope: !2460)
!2463 = !DILocation(line: 944, column: 18, scope: !2460)
!2464 = !DILocalVariable(name: "yi", scope: !2460, file: !3, line: 945, type: !38)
!2465 = !DILocation(line: 945, column: 13, scope: !2460)
!2466 = !DILocation(line: 945, column: 28, scope: !2460)
!2467 = !DILocation(line: 945, column: 18, scope: !2460)
!2468 = !DILocation(line: 946, column: 25, scope: !2460)
!2469 = !DILocation(line: 946, column: 15, scope: !2460)
!2470 = !DILocation(line: 946, column: 40, scope: !2460)
!2471 = !DILocation(line: 946, column: 30, scope: !2460)
!2472 = !DILocation(line: 946, column: 28, scope: !2460)
!2473 = !DILocation(line: 946, column: 10, scope: !2460)
!2474 = !DILocation(line: 946, column: 5, scope: !2460)
!2475 = !DILocation(line: 946, column: 13, scope: !2460)
!2476 = !DILocation(line: 947, column: 3, scope: !2460)
!2477 = !DILocation(line: 942, column: 36, scope: !2456)
!2478 = !DILocation(line: 942, column: 3, scope: !2456)
!2479 = distinct !{!2479, !2458, !2480, !128}
!2480 = !DILocation(line: 947, column: 3, scope: !2452)
!2481 = !DILocalVariable(name: "opad", scope: !2394, file: !3, line: 948, type: !2406)
!2482 = !DILocation(line: 948, column: 11, scope: !2394)
!2483 = !DILocation(line: 949, column: 3, scope: !2394)
!2484 = !DILocalVariable(name: "i", scope: !2485, file: !3, line: 950, type: !5)
!2485 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 950, column: 3)
!2486 = !DILocation(line: 950, column: 17, scope: !2485)
!2487 = !DILocation(line: 950, column: 8, scope: !2485)
!2488 = !DILocation(line: 950, column: 25, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 950, column: 3)
!2490 = !DILocation(line: 950, column: 27, scope: !2489)
!2491 = !DILocation(line: 950, column: 3, scope: !2485)
!2492 = !DILocalVariable(name: "xi", scope: !2493, file: !3, line: 952, type: !38)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 951, column: 3)
!2494 = !DILocation(line: 952, column: 13, scope: !2493)
!2495 = !DILocation(line: 952, column: 23, scope: !2493)
!2496 = !DILocation(line: 952, column: 18, scope: !2493)
!2497 = !DILocalVariable(name: "yi", scope: !2493, file: !3, line: 953, type: !38)
!2498 = !DILocation(line: 953, column: 13, scope: !2493)
!2499 = !DILocation(line: 953, column: 28, scope: !2493)
!2500 = !DILocation(line: 953, column: 18, scope: !2493)
!2501 = !DILocation(line: 954, column: 25, scope: !2493)
!2502 = !DILocation(line: 954, column: 15, scope: !2493)
!2503 = !DILocation(line: 954, column: 40, scope: !2493)
!2504 = !DILocation(line: 954, column: 30, scope: !2493)
!2505 = !DILocation(line: 954, column: 28, scope: !2493)
!2506 = !DILocation(line: 954, column: 10, scope: !2493)
!2507 = !DILocation(line: 954, column: 5, scope: !2493)
!2508 = !DILocation(line: 954, column: 13, scope: !2493)
!2509 = !DILocation(line: 955, column: 3, scope: !2493)
!2510 = !DILocation(line: 950, column: 36, scope: !2489)
!2511 = !DILocation(line: 950, column: 3, scope: !2489)
!2512 = distinct !{!2512, !2491, !2513, !128}
!2513 = !DILocation(line: 955, column: 3, scope: !2485)
!2514 = !DILocalVariable(name: "s", scope: !2394, file: !3, line: 956, type: !2159)
!2515 = !DILocation(line: 956, column: 12, scope: !2394)
!2516 = !DILocalVariable(name: "dst1", scope: !2394, file: !3, line: 957, type: !37)
!2517 = !DILocation(line: 957, column: 12, scope: !2394)
!2518 = !DILocation(line: 957, column: 19, scope: !2394)
!2519 = !DILocation(line: 958, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 958, column: 7)
!2521 = !DILocation(line: 958, column: 16, scope: !2520)
!2522 = !DILocation(line: 958, column: 7, scope: !2394)
!2523 = !DILocation(line: 960, column: 69, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 959, column: 3)
!2525 = !DILocation(line: 960, column: 72, scope: !2524)
!2526 = !DILocation(line: 960, column: 5, scope: !2524)
!2527 = !DILocation(line: 961, column: 3, scope: !2524)
!2528 = !DILocalVariable(name: "block_len", scope: !2529, file: !3, line: 964, type: !5)
!2529 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 963, column: 3)
!2530 = !DILocation(line: 964, column: 14, scope: !2529)
!2531 = !DILocalVariable(name: "n_blocks0", scope: !2529, file: !3, line: 965, type: !5)
!2532 = !DILocation(line: 965, column: 14, scope: !2529)
!2533 = !DILocation(line: 965, column: 26, scope: !2529)
!2534 = !DILocation(line: 965, column: 37, scope: !2529)
!2535 = !DILocation(line: 965, column: 35, scope: !2529)
!2536 = !DILocalVariable(name: "rem0", scope: !2529, file: !3, line: 966, type: !5)
!2537 = !DILocation(line: 966, column: 14, scope: !2529)
!2538 = !DILocation(line: 966, column: 21, scope: !2529)
!2539 = !DILocation(line: 966, column: 32, scope: !2529)
!2540 = !DILocation(line: 966, column: 30, scope: !2529)
!2541 = !DILocalVariable(name: "scrut", scope: !2529, file: !3, line: 967, type: !193)
!2542 = !DILocation(line: 967, column: 27, scope: !2529)
!2543 = !DILocation(line: 968, column: 9, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 968, column: 9)
!2545 = !DILocation(line: 968, column: 19, scope: !2544)
!2546 = !DILocation(line: 968, column: 24, scope: !2544)
!2547 = !DILocation(line: 968, column: 27, scope: !2544)
!2548 = !DILocation(line: 968, column: 32, scope: !2544)
!2549 = !DILocation(line: 968, column: 9, scope: !2529)
!2550 = !DILocalVariable(name: "n_blocks_", scope: !2551, file: !3, line: 970, type: !5)
!2551 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 969, column: 5)
!2552 = !DILocation(line: 970, column: 16, scope: !2551)
!2553 = !DILocation(line: 970, column: 28, scope: !2551)
!2554 = !DILocation(line: 970, column: 38, scope: !2551)
!2555 = !DILocation(line: 971, column: 39, scope: !2551)
!2556 = !DILocation(line: 971, column: 48, scope: !2551)
!2557 = !DILocation(line: 971, column: 66, scope: !2551)
!2558 = !DILocation(line: 971, column: 77, scope: !2551)
!2559 = !DILocation(line: 971, column: 89, scope: !2551)
!2560 = !DILocation(line: 971, column: 87, scope: !2551)
!2561 = !DILocation(line: 971, column: 75, scope: !2551)
!2562 = !DILocation(line: 971, column: 16, scope: !2551)
!2563 = !DILocation(line: 972, column: 5, scope: !2551)
!2564 = !DILocation(line: 975, column: 39, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 974, column: 5)
!2566 = !DILocation(line: 975, column: 48, scope: !2565)
!2567 = !DILocation(line: 975, column: 66, scope: !2565)
!2568 = !DILocation(line: 975, column: 16, scope: !2565)
!2569 = !DILocalVariable(name: "n_blocks", scope: !2529, file: !3, line: 977, type: !5)
!2570 = !DILocation(line: 977, column: 14, scope: !2529)
!2571 = !DILocation(line: 977, column: 31, scope: !2529)
!2572 = !DILocalVariable(name: "rem_len", scope: !2529, file: !3, line: 978, type: !5)
!2573 = !DILocation(line: 978, column: 14, scope: !2529)
!2574 = !DILocation(line: 978, column: 30, scope: !2529)
!2575 = !DILocalVariable(name: "full_blocks_len", scope: !2529, file: !3, line: 979, type: !5)
!2576 = !DILocation(line: 979, column: 14, scope: !2529)
!2577 = !DILocation(line: 979, column: 32, scope: !2529)
!2578 = !DILocation(line: 979, column: 43, scope: !2529)
!2579 = !DILocation(line: 979, column: 41, scope: !2529)
!2580 = !DILocalVariable(name: "full_blocks", scope: !2529, file: !3, line: 980, type: !37)
!2581 = !DILocation(line: 980, column: 14, scope: !2529)
!2582 = !DILocation(line: 980, column: 28, scope: !2529)
!2583 = !DILocalVariable(name: "rem", scope: !2529, file: !3, line: 981, type: !37)
!2584 = !DILocation(line: 981, column: 14, scope: !2529)
!2585 = !DILocation(line: 981, column: 20, scope: !2529)
!2586 = !DILocation(line: 981, column: 27, scope: !2529)
!2587 = !DILocation(line: 981, column: 25, scope: !2529)
!2588 = !DILocation(line: 982, column: 70, scope: !2529)
!2589 = !DILocation(line: 982, column: 73, scope: !2529)
!2590 = !DILocation(line: 982, column: 5, scope: !2529)
!2591 = !DILocation(line: 983, column: 70, scope: !2529)
!2592 = !DILocation(line: 983, column: 73, scope: !2529)
!2593 = !DILocation(line: 983, column: 86, scope: !2529)
!2594 = !DILocation(line: 983, column: 5, scope: !2529)
!2595 = !DILocation(line: 984, column: 69, scope: !2529)
!2596 = !DILocation(line: 984, column: 72, scope: !2529)
!2597 = !DILocation(line: 984, column: 77, scope: !2529)
!2598 = !DILocation(line: 984, column: 5, scope: !2529)
!2599 = !DILocalVariable(name: "remOut", scope: !2394, file: !3, line: 986, type: !5)
!2600 = !DILocation(line: 986, column: 12, scope: !2394)
!2601 = !DILocalVariable(name: "hbuf0", scope: !2394, file: !3, line: 987, type: !2249)
!2602 = !DILocation(line: 987, column: 11, scope: !2394)
!2603 = !DILocalVariable(name: "ws0", scope: !2394, file: !3, line: 988, type: !2254)
!2604 = !DILocation(line: 988, column: 12, scope: !2394)
!2605 = !DILocation(line: 989, column: 3, scope: !2394)
!2606 = !DILocalVariable(name: "i", scope: !2607, file: !3, line: 990, type: !5)
!2607 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 990, column: 3)
!2608 = !DILocation(line: 990, column: 17, scope: !2607)
!2609 = !DILocation(line: 990, column: 8, scope: !2607)
!2610 = !DILocation(line: 990, column: 25, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 990, column: 3)
!2612 = !DILocation(line: 990, column: 27, scope: !2611)
!2613 = !DILocation(line: 990, column: 3, scope: !2607)
!2614 = !DILocation(line: 992, column: 5, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 991, column: 3)
!2616 = !DILocation(line: 993, column: 3, scope: !2615)
!2617 = !DILocation(line: 990, column: 35, scope: !2611)
!2618 = !DILocation(line: 990, column: 3, scope: !2611)
!2619 = distinct !{!2619, !2613, !2620, !128}
!2620 = !DILocation(line: 993, column: 3, scope: !2607)
!2621 = !DILocation(line: 994, column: 10, scope: !2394)
!2622 = !DILocation(line: 994, column: 15, scope: !2394)
!2623 = !DILocation(line: 994, column: 23, scope: !2394)
!2624 = !DILocation(line: 994, column: 21, scope: !2394)
!2625 = !DILocation(line: 994, column: 3, scope: !2394)
!2626 = !DILocation(line: 994, column: 38, scope: !2394)
!2627 = !DILocation(line: 994, column: 45, scope: !2394)
!2628 = !DILocalVariable(name: "hash1", scope: !2394, file: !3, line: 995, type: !37)
!2629 = !DILocation(line: 995, column: 12, scope: !2394)
!2630 = !DILocation(line: 995, column: 20, scope: !2394)
!2631 = !DILocation(line: 996, column: 56, scope: !2394)
!2632 = !DILocation(line: 996, column: 3, scope: !2394)
!2633 = !DILocalVariable(name: "block_len", scope: !2394, file: !3, line: 997, type: !5)
!2634 = !DILocation(line: 997, column: 12, scope: !2394)
!2635 = !DILocalVariable(name: "n_blocks0", scope: !2394, file: !3, line: 998, type: !5)
!2636 = !DILocation(line: 998, column: 12, scope: !2394)
!2637 = !DILocation(line: 998, column: 30, scope: !2394)
!2638 = !DILocation(line: 998, column: 28, scope: !2394)
!2639 = !DILocalVariable(name: "rem0", scope: !2394, file: !3, line: 999, type: !5)
!2640 = !DILocation(line: 999, column: 12, scope: !2394)
!2641 = !DILocation(line: 999, column: 25, scope: !2394)
!2642 = !DILocation(line: 999, column: 23, scope: !2394)
!2643 = !DILocalVariable(name: "scrut", scope: !2394, file: !3, line: 1000, type: !193)
!2644 = !DILocation(line: 1000, column: 25, scope: !2394)
!2645 = !DILocation(line: 1001, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1001, column: 7)
!2647 = !DILocation(line: 1001, column: 17, scope: !2646)
!2648 = !DILocation(line: 1001, column: 22, scope: !2646)
!2649 = !DILocation(line: 1001, column: 25, scope: !2646)
!2650 = !DILocation(line: 1001, column: 30, scope: !2646)
!2651 = !DILocation(line: 1001, column: 7, scope: !2394)
!2652 = !DILocalVariable(name: "n_blocks_", scope: !2653, file: !3, line: 1003, type: !5)
!2653 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 1002, column: 3)
!2654 = !DILocation(line: 1003, column: 14, scope: !2653)
!2655 = !DILocation(line: 1003, column: 26, scope: !2653)
!2656 = !DILocation(line: 1003, column: 36, scope: !2653)
!2657 = !DILocation(line: 1004, column: 37, scope: !2653)
!2658 = !DILocation(line: 1004, column: 46, scope: !2653)
!2659 = !DILocation(line: 1004, column: 70, scope: !2653)
!2660 = !DILocation(line: 1004, column: 82, scope: !2653)
!2661 = !DILocation(line: 1004, column: 80, scope: !2653)
!2662 = !DILocation(line: 1004, column: 68, scope: !2653)
!2663 = !DILocation(line: 1004, column: 14, scope: !2653)
!2664 = !DILocation(line: 1005, column: 3, scope: !2653)
!2665 = !DILocation(line: 1008, column: 37, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 1007, column: 3)
!2667 = !DILocation(line: 1008, column: 46, scope: !2666)
!2668 = !DILocation(line: 1008, column: 64, scope: !2666)
!2669 = !DILocation(line: 1008, column: 14, scope: !2666)
!2670 = !DILocalVariable(name: "n_blocks", scope: !2394, file: !3, line: 1010, type: !5)
!2671 = !DILocation(line: 1010, column: 12, scope: !2394)
!2672 = !DILocation(line: 1010, column: 29, scope: !2394)
!2673 = !DILocalVariable(name: "rem_len", scope: !2394, file: !3, line: 1011, type: !5)
!2674 = !DILocation(line: 1011, column: 12, scope: !2394)
!2675 = !DILocation(line: 1011, column: 28, scope: !2394)
!2676 = !DILocalVariable(name: "full_blocks_len", scope: !2394, file: !3, line: 1012, type: !5)
!2677 = !DILocation(line: 1012, column: 12, scope: !2394)
!2678 = !DILocation(line: 1012, column: 30, scope: !2394)
!2679 = !DILocation(line: 1012, column: 41, scope: !2394)
!2680 = !DILocation(line: 1012, column: 39, scope: !2394)
!2681 = !DILocalVariable(name: "full_blocks", scope: !2394, file: !3, line: 1013, type: !37)
!2682 = !DILocation(line: 1013, column: 12, scope: !2394)
!2683 = !DILocation(line: 1013, column: 26, scope: !2394)
!2684 = !DILocalVariable(name: "rem", scope: !2394, file: !3, line: 1014, type: !37)
!2685 = !DILocation(line: 1014, column: 12, scope: !2394)
!2686 = !DILocation(line: 1014, column: 18, scope: !2394)
!2687 = !DILocation(line: 1014, column: 26, scope: !2394)
!2688 = !DILocation(line: 1014, column: 24, scope: !2394)
!2689 = !DILocation(line: 1015, column: 68, scope: !2394)
!2690 = !DILocation(line: 1015, column: 71, scope: !2394)
!2691 = !DILocation(line: 1015, column: 3, scope: !2394)
!2692 = !DILocation(line: 1016, column: 68, scope: !2394)
!2693 = !DILocation(line: 1016, column: 71, scope: !2394)
!2694 = !DILocation(line: 1016, column: 84, scope: !2394)
!2695 = !DILocation(line: 1016, column: 3, scope: !2394)
!2696 = !DILocation(line: 1017, column: 67, scope: !2394)
!2697 = !DILocation(line: 1017, column: 70, scope: !2394)
!2698 = !DILocation(line: 1017, column: 75, scope: !2394)
!2699 = !DILocation(line: 1017, column: 3, scope: !2394)
!2700 = !DILocalVariable(name: "remOut0", scope: !2394, file: !3, line: 1018, type: !5)
!2701 = !DILocation(line: 1018, column: 12, scope: !2394)
!2702 = !DILocalVariable(name: "hbuf", scope: !2394, file: !3, line: 1019, type: !2249)
!2703 = !DILocation(line: 1019, column: 11, scope: !2394)
!2704 = !DILocalVariable(name: "ws", scope: !2394, file: !3, line: 1020, type: !2254)
!2705 = !DILocation(line: 1020, column: 12, scope: !2394)
!2706 = !DILocation(line: 1021, column: 3, scope: !2394)
!2707 = !DILocalVariable(name: "i", scope: !2708, file: !3, line: 1022, type: !5)
!2708 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1022, column: 3)
!2709 = !DILocation(line: 1022, column: 17, scope: !2708)
!2710 = !DILocation(line: 1022, column: 8, scope: !2708)
!2711 = !DILocation(line: 1022, column: 25, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1022, column: 3)
!2713 = !DILocation(line: 1022, column: 27, scope: !2712)
!2714 = !DILocation(line: 1022, column: 3, scope: !2708)
!2715 = !DILocation(line: 1024, column: 5, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1023, column: 3)
!2717 = !DILocation(line: 1025, column: 3, scope: !2716)
!2718 = !DILocation(line: 1022, column: 35, scope: !2712)
!2719 = !DILocation(line: 1022, column: 3, scope: !2712)
!2720 = distinct !{!2720, !2714, !2721, !128}
!2721 = !DILocation(line: 1025, column: 3, scope: !2708)
!2722 = !DILocation(line: 1026, column: 10, scope: !2394)
!2723 = !DILocation(line: 1026, column: 14, scope: !2394)
!2724 = !DILocation(line: 1026, column: 22, scope: !2394)
!2725 = !DILocation(line: 1026, column: 20, scope: !2394)
!2726 = !DILocation(line: 1026, column: 3, scope: !2394)
!2727 = !DILocation(line: 1026, column: 37, scope: !2394)
!2728 = !DILocation(line: 1026, column: 45, scope: !2394)
!2729 = !DILocation(line: 1027, column: 1, scope: !2394)
!2730 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha3_384", scope: !3, file: !3, line: 1036, type: !35, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!2731 = !DILocalVariable(name: "dst", arg: 1, scope: !2730, file: !3, line: 1037, type: !37)
!2732 = !DILocation(line: 1037, column: 12, scope: !2730)
!2733 = !DILocalVariable(name: "key", arg: 2, scope: !2730, file: !3, line: 1038, type: !37)
!2734 = !DILocation(line: 1038, column: 12, scope: !2730)
!2735 = !DILocalVariable(name: "key_len", arg: 3, scope: !2730, file: !3, line: 1039, type: !5)
!2736 = !DILocation(line: 1039, column: 12, scope: !2730)
!2737 = !DILocalVariable(name: "data", arg: 4, scope: !2730, file: !3, line: 1040, type: !37)
!2738 = !DILocation(line: 1040, column: 12, scope: !2730)
!2739 = !DILocalVariable(name: "data_len", arg: 5, scope: !2730, file: !3, line: 1041, type: !5)
!2740 = !DILocation(line: 1041, column: 12, scope: !2730)
!2741 = !DILocalVariable(name: "key_block", scope: !2730, file: !3, line: 1044, type: !2742)
!2742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 832, elements: !2743)
!2743 = !{!2744}
!2744 = !DISubrange(count: 104)
!2745 = !DILocation(line: 1044, column: 11, scope: !2730)
!2746 = !DILocation(line: 1045, column: 3, scope: !2730)
!2747 = !DILocalVariable(name: "nkey", scope: !2730, file: !3, line: 1046, type: !37)
!2748 = !DILocation(line: 1046, column: 12, scope: !2730)
!2749 = !DILocation(line: 1046, column: 19, scope: !2730)
!2750 = !DILocalVariable(name: "ite", scope: !2730, file: !3, line: 1047, type: !5)
!2751 = !DILocation(line: 1047, column: 12, scope: !2730)
!2752 = !DILocation(line: 1048, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1048, column: 7)
!2754 = !DILocation(line: 1048, column: 15, scope: !2753)
!2755 = !DILocation(line: 1048, column: 7, scope: !2730)
!2756 = !DILocation(line: 1050, column: 11, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 1049, column: 3)
!2758 = !DILocation(line: 1050, column: 9, scope: !2757)
!2759 = !DILocation(line: 1051, column: 3, scope: !2757)
!2760 = !DILocation(line: 1054, column: 9, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 1053, column: 3)
!2762 = !DILocalVariable(name: "zeroes", scope: !2730, file: !3, line: 1056, type: !37)
!2763 = !DILocation(line: 1056, column: 12, scope: !2730)
!2764 = !DILocation(line: 1056, column: 21, scope: !2730)
!2765 = !DILocation(line: 1056, column: 33, scope: !2730)
!2766 = !DILocation(line: 1056, column: 31, scope: !2730)
!2767 = !DILocation(line: 1057, column: 3, scope: !2730)
!2768 = !DILocation(line: 1058, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1058, column: 7)
!2770 = !DILocation(line: 1058, column: 15, scope: !2769)
!2771 = !DILocation(line: 1058, column: 7, scope: !2730)
!2772 = !DILocation(line: 1060, column: 12, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1059, column: 3)
!2774 = !DILocation(line: 1060, column: 18, scope: !2773)
!2775 = !DILocation(line: 1060, column: 23, scope: !2773)
!2776 = !DILocation(line: 1060, column: 31, scope: !2773)
!2777 = !DILocation(line: 1060, column: 5, scope: !2773)
!2778 = !DILocation(line: 1061, column: 3, scope: !2773)
!2779 = !DILocation(line: 1064, column: 29, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1063, column: 3)
!2781 = !DILocation(line: 1064, column: 35, scope: !2780)
!2782 = !DILocation(line: 1064, column: 40, scope: !2780)
!2783 = !DILocation(line: 1064, column: 5, scope: !2780)
!2784 = !DILocalVariable(name: "ipad", scope: !2730, file: !3, line: 1066, type: !2742)
!2785 = !DILocation(line: 1066, column: 11, scope: !2730)
!2786 = !DILocation(line: 1067, column: 3, scope: !2730)
!2787 = !DILocalVariable(name: "i", scope: !2788, file: !3, line: 1068, type: !5)
!2788 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1068, column: 3)
!2789 = !DILocation(line: 1068, column: 17, scope: !2788)
!2790 = !DILocation(line: 1068, column: 8, scope: !2788)
!2791 = !DILocation(line: 1068, column: 25, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1068, column: 3)
!2793 = !DILocation(line: 1068, column: 27, scope: !2792)
!2794 = !DILocation(line: 1068, column: 3, scope: !2788)
!2795 = !DILocalVariable(name: "xi", scope: !2796, file: !3, line: 1070, type: !38)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1069, column: 3)
!2797 = !DILocation(line: 1070, column: 13, scope: !2796)
!2798 = !DILocation(line: 1070, column: 23, scope: !2796)
!2799 = !DILocation(line: 1070, column: 18, scope: !2796)
!2800 = !DILocalVariable(name: "yi", scope: !2796, file: !3, line: 1071, type: !38)
!2801 = !DILocation(line: 1071, column: 13, scope: !2796)
!2802 = !DILocation(line: 1071, column: 28, scope: !2796)
!2803 = !DILocation(line: 1071, column: 18, scope: !2796)
!2804 = !DILocation(line: 1072, column: 25, scope: !2796)
!2805 = !DILocation(line: 1072, column: 15, scope: !2796)
!2806 = !DILocation(line: 1072, column: 40, scope: !2796)
!2807 = !DILocation(line: 1072, column: 30, scope: !2796)
!2808 = !DILocation(line: 1072, column: 28, scope: !2796)
!2809 = !DILocation(line: 1072, column: 10, scope: !2796)
!2810 = !DILocation(line: 1072, column: 5, scope: !2796)
!2811 = !DILocation(line: 1072, column: 13, scope: !2796)
!2812 = !DILocation(line: 1073, column: 3, scope: !2796)
!2813 = !DILocation(line: 1068, column: 36, scope: !2792)
!2814 = !DILocation(line: 1068, column: 3, scope: !2792)
!2815 = distinct !{!2815, !2794, !2816, !128}
!2816 = !DILocation(line: 1073, column: 3, scope: !2788)
!2817 = !DILocalVariable(name: "opad", scope: !2730, file: !3, line: 1074, type: !2742)
!2818 = !DILocation(line: 1074, column: 11, scope: !2730)
!2819 = !DILocation(line: 1075, column: 3, scope: !2730)
!2820 = !DILocalVariable(name: "i", scope: !2821, file: !3, line: 1076, type: !5)
!2821 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1076, column: 3)
!2822 = !DILocation(line: 1076, column: 17, scope: !2821)
!2823 = !DILocation(line: 1076, column: 8, scope: !2821)
!2824 = !DILocation(line: 1076, column: 25, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1076, column: 3)
!2826 = !DILocation(line: 1076, column: 27, scope: !2825)
!2827 = !DILocation(line: 1076, column: 3, scope: !2821)
!2828 = !DILocalVariable(name: "xi", scope: !2829, file: !3, line: 1078, type: !38)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 1077, column: 3)
!2830 = !DILocation(line: 1078, column: 13, scope: !2829)
!2831 = !DILocation(line: 1078, column: 23, scope: !2829)
!2832 = !DILocation(line: 1078, column: 18, scope: !2829)
!2833 = !DILocalVariable(name: "yi", scope: !2829, file: !3, line: 1079, type: !38)
!2834 = !DILocation(line: 1079, column: 13, scope: !2829)
!2835 = !DILocation(line: 1079, column: 28, scope: !2829)
!2836 = !DILocation(line: 1079, column: 18, scope: !2829)
!2837 = !DILocation(line: 1080, column: 25, scope: !2829)
!2838 = !DILocation(line: 1080, column: 15, scope: !2829)
!2839 = !DILocation(line: 1080, column: 40, scope: !2829)
!2840 = !DILocation(line: 1080, column: 30, scope: !2829)
!2841 = !DILocation(line: 1080, column: 28, scope: !2829)
!2842 = !DILocation(line: 1080, column: 10, scope: !2829)
!2843 = !DILocation(line: 1080, column: 5, scope: !2829)
!2844 = !DILocation(line: 1080, column: 13, scope: !2829)
!2845 = !DILocation(line: 1081, column: 3, scope: !2829)
!2846 = !DILocation(line: 1076, column: 36, scope: !2825)
!2847 = !DILocation(line: 1076, column: 3, scope: !2825)
!2848 = distinct !{!2848, !2827, !2849, !128}
!2849 = !DILocation(line: 1081, column: 3, scope: !2821)
!2850 = !DILocalVariable(name: "s", scope: !2730, file: !3, line: 1082, type: !2159)
!2851 = !DILocation(line: 1082, column: 12, scope: !2730)
!2852 = !DILocalVariable(name: "dst1", scope: !2730, file: !3, line: 1083, type: !37)
!2853 = !DILocation(line: 1083, column: 12, scope: !2730)
!2854 = !DILocation(line: 1083, column: 19, scope: !2730)
!2855 = !DILocation(line: 1084, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1084, column: 7)
!2857 = !DILocation(line: 1084, column: 16, scope: !2856)
!2858 = !DILocation(line: 1084, column: 7, scope: !2730)
!2859 = !DILocation(line: 1086, column: 69, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1085, column: 3)
!2861 = !DILocation(line: 1086, column: 72, scope: !2860)
!2862 = !DILocation(line: 1086, column: 5, scope: !2860)
!2863 = !DILocation(line: 1087, column: 3, scope: !2860)
!2864 = !DILocalVariable(name: "block_len", scope: !2865, file: !3, line: 1090, type: !5)
!2865 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1089, column: 3)
!2866 = !DILocation(line: 1090, column: 14, scope: !2865)
!2867 = !DILocalVariable(name: "n_blocks0", scope: !2865, file: !3, line: 1091, type: !5)
!2868 = !DILocation(line: 1091, column: 14, scope: !2865)
!2869 = !DILocation(line: 1091, column: 26, scope: !2865)
!2870 = !DILocation(line: 1091, column: 37, scope: !2865)
!2871 = !DILocation(line: 1091, column: 35, scope: !2865)
!2872 = !DILocalVariable(name: "rem0", scope: !2865, file: !3, line: 1092, type: !5)
!2873 = !DILocation(line: 1092, column: 14, scope: !2865)
!2874 = !DILocation(line: 1092, column: 21, scope: !2865)
!2875 = !DILocation(line: 1092, column: 32, scope: !2865)
!2876 = !DILocation(line: 1092, column: 30, scope: !2865)
!2877 = !DILocalVariable(name: "scrut", scope: !2865, file: !3, line: 1093, type: !193)
!2878 = !DILocation(line: 1093, column: 27, scope: !2865)
!2879 = !DILocation(line: 1094, column: 9, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 1094, column: 9)
!2881 = !DILocation(line: 1094, column: 19, scope: !2880)
!2882 = !DILocation(line: 1094, column: 24, scope: !2880)
!2883 = !DILocation(line: 1094, column: 27, scope: !2880)
!2884 = !DILocation(line: 1094, column: 32, scope: !2880)
!2885 = !DILocation(line: 1094, column: 9, scope: !2865)
!2886 = !DILocalVariable(name: "n_blocks_", scope: !2887, file: !3, line: 1096, type: !5)
!2887 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1095, column: 5)
!2888 = !DILocation(line: 1096, column: 16, scope: !2887)
!2889 = !DILocation(line: 1096, column: 28, scope: !2887)
!2890 = !DILocation(line: 1096, column: 38, scope: !2887)
!2891 = !DILocation(line: 1097, column: 39, scope: !2887)
!2892 = !DILocation(line: 1097, column: 48, scope: !2887)
!2893 = !DILocation(line: 1097, column: 66, scope: !2887)
!2894 = !DILocation(line: 1097, column: 77, scope: !2887)
!2895 = !DILocation(line: 1097, column: 89, scope: !2887)
!2896 = !DILocation(line: 1097, column: 87, scope: !2887)
!2897 = !DILocation(line: 1097, column: 75, scope: !2887)
!2898 = !DILocation(line: 1097, column: 16, scope: !2887)
!2899 = !DILocation(line: 1098, column: 5, scope: !2887)
!2900 = !DILocation(line: 1101, column: 39, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1100, column: 5)
!2902 = !DILocation(line: 1101, column: 48, scope: !2901)
!2903 = !DILocation(line: 1101, column: 66, scope: !2901)
!2904 = !DILocation(line: 1101, column: 16, scope: !2901)
!2905 = !DILocalVariable(name: "n_blocks", scope: !2865, file: !3, line: 1103, type: !5)
!2906 = !DILocation(line: 1103, column: 14, scope: !2865)
!2907 = !DILocation(line: 1103, column: 31, scope: !2865)
!2908 = !DILocalVariable(name: "rem_len", scope: !2865, file: !3, line: 1104, type: !5)
!2909 = !DILocation(line: 1104, column: 14, scope: !2865)
!2910 = !DILocation(line: 1104, column: 30, scope: !2865)
!2911 = !DILocalVariable(name: "full_blocks_len", scope: !2865, file: !3, line: 1105, type: !5)
!2912 = !DILocation(line: 1105, column: 14, scope: !2865)
!2913 = !DILocation(line: 1105, column: 32, scope: !2865)
!2914 = !DILocation(line: 1105, column: 43, scope: !2865)
!2915 = !DILocation(line: 1105, column: 41, scope: !2865)
!2916 = !DILocalVariable(name: "full_blocks", scope: !2865, file: !3, line: 1106, type: !37)
!2917 = !DILocation(line: 1106, column: 14, scope: !2865)
!2918 = !DILocation(line: 1106, column: 28, scope: !2865)
!2919 = !DILocalVariable(name: "rem", scope: !2865, file: !3, line: 1107, type: !37)
!2920 = !DILocation(line: 1107, column: 14, scope: !2865)
!2921 = !DILocation(line: 1107, column: 20, scope: !2865)
!2922 = !DILocation(line: 1107, column: 27, scope: !2865)
!2923 = !DILocation(line: 1107, column: 25, scope: !2865)
!2924 = !DILocation(line: 1108, column: 70, scope: !2865)
!2925 = !DILocation(line: 1108, column: 73, scope: !2865)
!2926 = !DILocation(line: 1108, column: 5, scope: !2865)
!2927 = !DILocation(line: 1109, column: 70, scope: !2865)
!2928 = !DILocation(line: 1109, column: 73, scope: !2865)
!2929 = !DILocation(line: 1109, column: 86, scope: !2865)
!2930 = !DILocation(line: 1109, column: 5, scope: !2865)
!2931 = !DILocation(line: 1110, column: 69, scope: !2865)
!2932 = !DILocation(line: 1110, column: 72, scope: !2865)
!2933 = !DILocation(line: 1110, column: 77, scope: !2865)
!2934 = !DILocation(line: 1110, column: 5, scope: !2865)
!2935 = !DILocalVariable(name: "remOut", scope: !2730, file: !3, line: 1112, type: !5)
!2936 = !DILocation(line: 1112, column: 12, scope: !2730)
!2937 = !DILocalVariable(name: "hbuf0", scope: !2730, file: !3, line: 1113, type: !2249)
!2938 = !DILocation(line: 1113, column: 11, scope: !2730)
!2939 = !DILocalVariable(name: "ws0", scope: !2730, file: !3, line: 1114, type: !2254)
!2940 = !DILocation(line: 1114, column: 12, scope: !2730)
!2941 = !DILocation(line: 1115, column: 3, scope: !2730)
!2942 = !DILocalVariable(name: "i", scope: !2943, file: !3, line: 1116, type: !5)
!2943 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1116, column: 3)
!2944 = !DILocation(line: 1116, column: 17, scope: !2943)
!2945 = !DILocation(line: 1116, column: 8, scope: !2943)
!2946 = !DILocation(line: 1116, column: 25, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 1116, column: 3)
!2948 = !DILocation(line: 1116, column: 27, scope: !2947)
!2949 = !DILocation(line: 1116, column: 3, scope: !2943)
!2950 = !DILocation(line: 1118, column: 5, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 1117, column: 3)
!2952 = !DILocation(line: 1119, column: 3, scope: !2951)
!2953 = !DILocation(line: 1116, column: 35, scope: !2947)
!2954 = !DILocation(line: 1116, column: 3, scope: !2947)
!2955 = distinct !{!2955, !2949, !2956, !128}
!2956 = !DILocation(line: 1119, column: 3, scope: !2943)
!2957 = !DILocation(line: 1120, column: 10, scope: !2730)
!2958 = !DILocation(line: 1120, column: 15, scope: !2730)
!2959 = !DILocation(line: 1120, column: 23, scope: !2730)
!2960 = !DILocation(line: 1120, column: 21, scope: !2730)
!2961 = !DILocation(line: 1120, column: 3, scope: !2730)
!2962 = !DILocation(line: 1120, column: 38, scope: !2730)
!2963 = !DILocation(line: 1120, column: 45, scope: !2730)
!2964 = !DILocalVariable(name: "hash1", scope: !2730, file: !3, line: 1121, type: !37)
!2965 = !DILocation(line: 1121, column: 12, scope: !2730)
!2966 = !DILocation(line: 1121, column: 20, scope: !2730)
!2967 = !DILocation(line: 1122, column: 56, scope: !2730)
!2968 = !DILocation(line: 1122, column: 3, scope: !2730)
!2969 = !DILocalVariable(name: "block_len", scope: !2730, file: !3, line: 1123, type: !5)
!2970 = !DILocation(line: 1123, column: 12, scope: !2730)
!2971 = !DILocalVariable(name: "n_blocks0", scope: !2730, file: !3, line: 1124, type: !5)
!2972 = !DILocation(line: 1124, column: 12, scope: !2730)
!2973 = !DILocation(line: 1124, column: 30, scope: !2730)
!2974 = !DILocation(line: 1124, column: 28, scope: !2730)
!2975 = !DILocalVariable(name: "rem0", scope: !2730, file: !3, line: 1125, type: !5)
!2976 = !DILocation(line: 1125, column: 12, scope: !2730)
!2977 = !DILocation(line: 1125, column: 25, scope: !2730)
!2978 = !DILocation(line: 1125, column: 23, scope: !2730)
!2979 = !DILocalVariable(name: "scrut", scope: !2730, file: !3, line: 1126, type: !193)
!2980 = !DILocation(line: 1126, column: 25, scope: !2730)
!2981 = !DILocation(line: 1127, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1127, column: 7)
!2983 = !DILocation(line: 1127, column: 17, scope: !2982)
!2984 = !DILocation(line: 1127, column: 22, scope: !2982)
!2985 = !DILocation(line: 1127, column: 25, scope: !2982)
!2986 = !DILocation(line: 1127, column: 30, scope: !2982)
!2987 = !DILocation(line: 1127, column: 7, scope: !2730)
!2988 = !DILocalVariable(name: "n_blocks_", scope: !2989, file: !3, line: 1129, type: !5)
!2989 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 1128, column: 3)
!2990 = !DILocation(line: 1129, column: 14, scope: !2989)
!2991 = !DILocation(line: 1129, column: 26, scope: !2989)
!2992 = !DILocation(line: 1129, column: 36, scope: !2989)
!2993 = !DILocation(line: 1130, column: 37, scope: !2989)
!2994 = !DILocation(line: 1130, column: 46, scope: !2989)
!2995 = !DILocation(line: 1130, column: 70, scope: !2989)
!2996 = !DILocation(line: 1130, column: 82, scope: !2989)
!2997 = !DILocation(line: 1130, column: 80, scope: !2989)
!2998 = !DILocation(line: 1130, column: 68, scope: !2989)
!2999 = !DILocation(line: 1130, column: 14, scope: !2989)
!3000 = !DILocation(line: 1131, column: 3, scope: !2989)
!3001 = !DILocation(line: 1134, column: 37, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 1133, column: 3)
!3003 = !DILocation(line: 1134, column: 46, scope: !3002)
!3004 = !DILocation(line: 1134, column: 64, scope: !3002)
!3005 = !DILocation(line: 1134, column: 14, scope: !3002)
!3006 = !DILocalVariable(name: "n_blocks", scope: !2730, file: !3, line: 1136, type: !5)
!3007 = !DILocation(line: 1136, column: 12, scope: !2730)
!3008 = !DILocation(line: 1136, column: 29, scope: !2730)
!3009 = !DILocalVariable(name: "rem_len", scope: !2730, file: !3, line: 1137, type: !5)
!3010 = !DILocation(line: 1137, column: 12, scope: !2730)
!3011 = !DILocation(line: 1137, column: 28, scope: !2730)
!3012 = !DILocalVariable(name: "full_blocks_len", scope: !2730, file: !3, line: 1138, type: !5)
!3013 = !DILocation(line: 1138, column: 12, scope: !2730)
!3014 = !DILocation(line: 1138, column: 30, scope: !2730)
!3015 = !DILocation(line: 1138, column: 41, scope: !2730)
!3016 = !DILocation(line: 1138, column: 39, scope: !2730)
!3017 = !DILocalVariable(name: "full_blocks", scope: !2730, file: !3, line: 1139, type: !37)
!3018 = !DILocation(line: 1139, column: 12, scope: !2730)
!3019 = !DILocation(line: 1139, column: 26, scope: !2730)
!3020 = !DILocalVariable(name: "rem", scope: !2730, file: !3, line: 1140, type: !37)
!3021 = !DILocation(line: 1140, column: 12, scope: !2730)
!3022 = !DILocation(line: 1140, column: 18, scope: !2730)
!3023 = !DILocation(line: 1140, column: 26, scope: !2730)
!3024 = !DILocation(line: 1140, column: 24, scope: !2730)
!3025 = !DILocation(line: 1141, column: 68, scope: !2730)
!3026 = !DILocation(line: 1141, column: 71, scope: !2730)
!3027 = !DILocation(line: 1141, column: 3, scope: !2730)
!3028 = !DILocation(line: 1142, column: 68, scope: !2730)
!3029 = !DILocation(line: 1142, column: 71, scope: !2730)
!3030 = !DILocation(line: 1142, column: 84, scope: !2730)
!3031 = !DILocation(line: 1142, column: 3, scope: !2730)
!3032 = !DILocation(line: 1143, column: 67, scope: !2730)
!3033 = !DILocation(line: 1143, column: 70, scope: !2730)
!3034 = !DILocation(line: 1143, column: 75, scope: !2730)
!3035 = !DILocation(line: 1143, column: 3, scope: !2730)
!3036 = !DILocalVariable(name: "remOut0", scope: !2730, file: !3, line: 1144, type: !5)
!3037 = !DILocation(line: 1144, column: 12, scope: !2730)
!3038 = !DILocalVariable(name: "hbuf", scope: !2730, file: !3, line: 1145, type: !2249)
!3039 = !DILocation(line: 1145, column: 11, scope: !2730)
!3040 = !DILocalVariable(name: "ws", scope: !2730, file: !3, line: 1146, type: !2254)
!3041 = !DILocation(line: 1146, column: 12, scope: !2730)
!3042 = !DILocation(line: 1147, column: 3, scope: !2730)
!3043 = !DILocalVariable(name: "i", scope: !3044, file: !3, line: 1148, type: !5)
!3044 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1148, column: 3)
!3045 = !DILocation(line: 1148, column: 17, scope: !3044)
!3046 = !DILocation(line: 1148, column: 8, scope: !3044)
!3047 = !DILocation(line: 1148, column: 25, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 1148, column: 3)
!3049 = !DILocation(line: 1148, column: 27, scope: !3048)
!3050 = !DILocation(line: 1148, column: 3, scope: !3044)
!3051 = !DILocation(line: 1150, column: 5, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 1149, column: 3)
!3053 = !DILocation(line: 1151, column: 3, scope: !3052)
!3054 = !DILocation(line: 1148, column: 35, scope: !3048)
!3055 = !DILocation(line: 1148, column: 3, scope: !3048)
!3056 = distinct !{!3056, !3050, !3057, !128}
!3057 = !DILocation(line: 1151, column: 3, scope: !3044)
!3058 = !DILocation(line: 1152, column: 10, scope: !2730)
!3059 = !DILocation(line: 1152, column: 14, scope: !2730)
!3060 = !DILocation(line: 1152, column: 22, scope: !2730)
!3061 = !DILocation(line: 1152, column: 20, scope: !2730)
!3062 = !DILocation(line: 1152, column: 3, scope: !2730)
!3063 = !DILocation(line: 1152, column: 37, scope: !2730)
!3064 = !DILocation(line: 1152, column: 45, scope: !2730)
!3065 = !DILocation(line: 1153, column: 1, scope: !2730)
!3066 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha3_512", scope: !3, file: !3, line: 1162, type: !35, scopeLine: 1169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!3067 = !DILocalVariable(name: "dst", arg: 1, scope: !3066, file: !3, line: 1163, type: !37)
!3068 = !DILocation(line: 1163, column: 12, scope: !3066)
!3069 = !DILocalVariable(name: "key", arg: 2, scope: !3066, file: !3, line: 1164, type: !37)
!3070 = !DILocation(line: 1164, column: 12, scope: !3066)
!3071 = !DILocalVariable(name: "key_len", arg: 3, scope: !3066, file: !3, line: 1165, type: !5)
!3072 = !DILocation(line: 1165, column: 12, scope: !3066)
!3073 = !DILocalVariable(name: "data", arg: 4, scope: !3066, file: !3, line: 1166, type: !37)
!3074 = !DILocation(line: 1166, column: 12, scope: !3066)
!3075 = !DILocalVariable(name: "data_len", arg: 5, scope: !3066, file: !3, line: 1167, type: !5)
!3076 = !DILocation(line: 1167, column: 12, scope: !3066)
!3077 = !DILocalVariable(name: "key_block", scope: !3066, file: !3, line: 1170, type: !3078)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 576, elements: !3079)
!3079 = !{!3080}
!3080 = !DISubrange(count: 72)
!3081 = !DILocation(line: 1170, column: 11, scope: !3066)
!3082 = !DILocation(line: 1171, column: 3, scope: !3066)
!3083 = !DILocalVariable(name: "nkey", scope: !3066, file: !3, line: 1172, type: !37)
!3084 = !DILocation(line: 1172, column: 12, scope: !3066)
!3085 = !DILocation(line: 1172, column: 19, scope: !3066)
!3086 = !DILocalVariable(name: "ite", scope: !3066, file: !3, line: 1173, type: !5)
!3087 = !DILocation(line: 1173, column: 12, scope: !3066)
!3088 = !DILocation(line: 1174, column: 7, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1174, column: 7)
!3090 = !DILocation(line: 1174, column: 15, scope: !3089)
!3091 = !DILocation(line: 1174, column: 7, scope: !3066)
!3092 = !DILocation(line: 1176, column: 11, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 1175, column: 3)
!3094 = !DILocation(line: 1176, column: 9, scope: !3093)
!3095 = !DILocation(line: 1177, column: 3, scope: !3093)
!3096 = !DILocation(line: 1180, column: 9, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 1179, column: 3)
!3098 = !DILocalVariable(name: "zeroes", scope: !3066, file: !3, line: 1182, type: !37)
!3099 = !DILocation(line: 1182, column: 12, scope: !3066)
!3100 = !DILocation(line: 1182, column: 21, scope: !3066)
!3101 = !DILocation(line: 1182, column: 33, scope: !3066)
!3102 = !DILocation(line: 1182, column: 31, scope: !3066)
!3103 = !DILocation(line: 1183, column: 3, scope: !3066)
!3104 = !DILocation(line: 1184, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1184, column: 7)
!3106 = !DILocation(line: 1184, column: 15, scope: !3105)
!3107 = !DILocation(line: 1184, column: 7, scope: !3066)
!3108 = !DILocation(line: 1186, column: 12, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1185, column: 3)
!3110 = !DILocation(line: 1186, column: 18, scope: !3109)
!3111 = !DILocation(line: 1186, column: 23, scope: !3109)
!3112 = !DILocation(line: 1186, column: 31, scope: !3109)
!3113 = !DILocation(line: 1186, column: 5, scope: !3109)
!3114 = !DILocation(line: 1187, column: 3, scope: !3109)
!3115 = !DILocation(line: 1190, column: 29, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1189, column: 3)
!3117 = !DILocation(line: 1190, column: 35, scope: !3116)
!3118 = !DILocation(line: 1190, column: 40, scope: !3116)
!3119 = !DILocation(line: 1190, column: 5, scope: !3116)
!3120 = !DILocalVariable(name: "ipad", scope: !3066, file: !3, line: 1192, type: !3078)
!3121 = !DILocation(line: 1192, column: 11, scope: !3066)
!3122 = !DILocation(line: 1193, column: 3, scope: !3066)
!3123 = !DILocalVariable(name: "i", scope: !3124, file: !3, line: 1194, type: !5)
!3124 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1194, column: 3)
!3125 = !DILocation(line: 1194, column: 17, scope: !3124)
!3126 = !DILocation(line: 1194, column: 8, scope: !3124)
!3127 = !DILocation(line: 1194, column: 25, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 1194, column: 3)
!3129 = !DILocation(line: 1194, column: 27, scope: !3128)
!3130 = !DILocation(line: 1194, column: 3, scope: !3124)
!3131 = !DILocalVariable(name: "xi", scope: !3132, file: !3, line: 1196, type: !38)
!3132 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1195, column: 3)
!3133 = !DILocation(line: 1196, column: 13, scope: !3132)
!3134 = !DILocation(line: 1196, column: 23, scope: !3132)
!3135 = !DILocation(line: 1196, column: 18, scope: !3132)
!3136 = !DILocalVariable(name: "yi", scope: !3132, file: !3, line: 1197, type: !38)
!3137 = !DILocation(line: 1197, column: 13, scope: !3132)
!3138 = !DILocation(line: 1197, column: 28, scope: !3132)
!3139 = !DILocation(line: 1197, column: 18, scope: !3132)
!3140 = !DILocation(line: 1198, column: 25, scope: !3132)
!3141 = !DILocation(line: 1198, column: 15, scope: !3132)
!3142 = !DILocation(line: 1198, column: 40, scope: !3132)
!3143 = !DILocation(line: 1198, column: 30, scope: !3132)
!3144 = !DILocation(line: 1198, column: 28, scope: !3132)
!3145 = !DILocation(line: 1198, column: 10, scope: !3132)
!3146 = !DILocation(line: 1198, column: 5, scope: !3132)
!3147 = !DILocation(line: 1198, column: 13, scope: !3132)
!3148 = !DILocation(line: 1199, column: 3, scope: !3132)
!3149 = !DILocation(line: 1194, column: 35, scope: !3128)
!3150 = !DILocation(line: 1194, column: 3, scope: !3128)
!3151 = distinct !{!3151, !3130, !3152, !128}
!3152 = !DILocation(line: 1199, column: 3, scope: !3124)
!3153 = !DILocalVariable(name: "opad", scope: !3066, file: !3, line: 1200, type: !3078)
!3154 = !DILocation(line: 1200, column: 11, scope: !3066)
!3155 = !DILocation(line: 1201, column: 3, scope: !3066)
!3156 = !DILocalVariable(name: "i", scope: !3157, file: !3, line: 1202, type: !5)
!3157 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1202, column: 3)
!3158 = !DILocation(line: 1202, column: 17, scope: !3157)
!3159 = !DILocation(line: 1202, column: 8, scope: !3157)
!3160 = !DILocation(line: 1202, column: 25, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1202, column: 3)
!3162 = !DILocation(line: 1202, column: 27, scope: !3161)
!3163 = !DILocation(line: 1202, column: 3, scope: !3157)
!3164 = !DILocalVariable(name: "xi", scope: !3165, file: !3, line: 1204, type: !38)
!3165 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1203, column: 3)
!3166 = !DILocation(line: 1204, column: 13, scope: !3165)
!3167 = !DILocation(line: 1204, column: 23, scope: !3165)
!3168 = !DILocation(line: 1204, column: 18, scope: !3165)
!3169 = !DILocalVariable(name: "yi", scope: !3165, file: !3, line: 1205, type: !38)
!3170 = !DILocation(line: 1205, column: 13, scope: !3165)
!3171 = !DILocation(line: 1205, column: 28, scope: !3165)
!3172 = !DILocation(line: 1205, column: 18, scope: !3165)
!3173 = !DILocation(line: 1206, column: 25, scope: !3165)
!3174 = !DILocation(line: 1206, column: 15, scope: !3165)
!3175 = !DILocation(line: 1206, column: 40, scope: !3165)
!3176 = !DILocation(line: 1206, column: 30, scope: !3165)
!3177 = !DILocation(line: 1206, column: 28, scope: !3165)
!3178 = !DILocation(line: 1206, column: 10, scope: !3165)
!3179 = !DILocation(line: 1206, column: 5, scope: !3165)
!3180 = !DILocation(line: 1206, column: 13, scope: !3165)
!3181 = !DILocation(line: 1207, column: 3, scope: !3165)
!3182 = !DILocation(line: 1202, column: 35, scope: !3161)
!3183 = !DILocation(line: 1202, column: 3, scope: !3161)
!3184 = distinct !{!3184, !3163, !3185, !128}
!3185 = !DILocation(line: 1207, column: 3, scope: !3157)
!3186 = !DILocalVariable(name: "s", scope: !3066, file: !3, line: 1208, type: !2159)
!3187 = !DILocation(line: 1208, column: 12, scope: !3066)
!3188 = !DILocalVariable(name: "dst1", scope: !3066, file: !3, line: 1209, type: !37)
!3189 = !DILocation(line: 1209, column: 12, scope: !3066)
!3190 = !DILocation(line: 1209, column: 19, scope: !3066)
!3191 = !DILocation(line: 1210, column: 7, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1210, column: 7)
!3193 = !DILocation(line: 1210, column: 16, scope: !3192)
!3194 = !DILocation(line: 1210, column: 7, scope: !3066)
!3195 = !DILocation(line: 1212, column: 69, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 1211, column: 3)
!3197 = !DILocation(line: 1212, column: 72, scope: !3196)
!3198 = !DILocation(line: 1212, column: 5, scope: !3196)
!3199 = !DILocation(line: 1213, column: 3, scope: !3196)
!3200 = !DILocalVariable(name: "block_len", scope: !3201, file: !3, line: 1216, type: !5)
!3201 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 1215, column: 3)
!3202 = !DILocation(line: 1216, column: 14, scope: !3201)
!3203 = !DILocalVariable(name: "n_blocks0", scope: !3201, file: !3, line: 1217, type: !5)
!3204 = !DILocation(line: 1217, column: 14, scope: !3201)
!3205 = !DILocation(line: 1217, column: 26, scope: !3201)
!3206 = !DILocation(line: 1217, column: 37, scope: !3201)
!3207 = !DILocation(line: 1217, column: 35, scope: !3201)
!3208 = !DILocalVariable(name: "rem0", scope: !3201, file: !3, line: 1218, type: !5)
!3209 = !DILocation(line: 1218, column: 14, scope: !3201)
!3210 = !DILocation(line: 1218, column: 21, scope: !3201)
!3211 = !DILocation(line: 1218, column: 32, scope: !3201)
!3212 = !DILocation(line: 1218, column: 30, scope: !3201)
!3213 = !DILocalVariable(name: "scrut", scope: !3201, file: !3, line: 1219, type: !193)
!3214 = !DILocation(line: 1219, column: 27, scope: !3201)
!3215 = !DILocation(line: 1220, column: 9, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 1220, column: 9)
!3217 = !DILocation(line: 1220, column: 19, scope: !3216)
!3218 = !DILocation(line: 1220, column: 24, scope: !3216)
!3219 = !DILocation(line: 1220, column: 27, scope: !3216)
!3220 = !DILocation(line: 1220, column: 32, scope: !3216)
!3221 = !DILocation(line: 1220, column: 9, scope: !3201)
!3222 = !DILocalVariable(name: "n_blocks_", scope: !3223, file: !3, line: 1222, type: !5)
!3223 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 1221, column: 5)
!3224 = !DILocation(line: 1222, column: 16, scope: !3223)
!3225 = !DILocation(line: 1222, column: 28, scope: !3223)
!3226 = !DILocation(line: 1222, column: 38, scope: !3223)
!3227 = !DILocation(line: 1223, column: 39, scope: !3223)
!3228 = !DILocation(line: 1223, column: 48, scope: !3223)
!3229 = !DILocation(line: 1223, column: 66, scope: !3223)
!3230 = !DILocation(line: 1223, column: 77, scope: !3223)
!3231 = !DILocation(line: 1223, column: 89, scope: !3223)
!3232 = !DILocation(line: 1223, column: 87, scope: !3223)
!3233 = !DILocation(line: 1223, column: 75, scope: !3223)
!3234 = !DILocation(line: 1223, column: 16, scope: !3223)
!3235 = !DILocation(line: 1224, column: 5, scope: !3223)
!3236 = !DILocation(line: 1227, column: 39, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 1226, column: 5)
!3238 = !DILocation(line: 1227, column: 48, scope: !3237)
!3239 = !DILocation(line: 1227, column: 66, scope: !3237)
!3240 = !DILocation(line: 1227, column: 16, scope: !3237)
!3241 = !DILocalVariable(name: "n_blocks", scope: !3201, file: !3, line: 1229, type: !5)
!3242 = !DILocation(line: 1229, column: 14, scope: !3201)
!3243 = !DILocation(line: 1229, column: 31, scope: !3201)
!3244 = !DILocalVariable(name: "rem_len", scope: !3201, file: !3, line: 1230, type: !5)
!3245 = !DILocation(line: 1230, column: 14, scope: !3201)
!3246 = !DILocation(line: 1230, column: 30, scope: !3201)
!3247 = !DILocalVariable(name: "full_blocks_len", scope: !3201, file: !3, line: 1231, type: !5)
!3248 = !DILocation(line: 1231, column: 14, scope: !3201)
!3249 = !DILocation(line: 1231, column: 32, scope: !3201)
!3250 = !DILocation(line: 1231, column: 43, scope: !3201)
!3251 = !DILocation(line: 1231, column: 41, scope: !3201)
!3252 = !DILocalVariable(name: "full_blocks", scope: !3201, file: !3, line: 1232, type: !37)
!3253 = !DILocation(line: 1232, column: 14, scope: !3201)
!3254 = !DILocation(line: 1232, column: 28, scope: !3201)
!3255 = !DILocalVariable(name: "rem", scope: !3201, file: !3, line: 1233, type: !37)
!3256 = !DILocation(line: 1233, column: 14, scope: !3201)
!3257 = !DILocation(line: 1233, column: 20, scope: !3201)
!3258 = !DILocation(line: 1233, column: 27, scope: !3201)
!3259 = !DILocation(line: 1233, column: 25, scope: !3201)
!3260 = !DILocation(line: 1234, column: 70, scope: !3201)
!3261 = !DILocation(line: 1234, column: 73, scope: !3201)
!3262 = !DILocation(line: 1234, column: 5, scope: !3201)
!3263 = !DILocation(line: 1235, column: 70, scope: !3201)
!3264 = !DILocation(line: 1235, column: 73, scope: !3201)
!3265 = !DILocation(line: 1235, column: 86, scope: !3201)
!3266 = !DILocation(line: 1235, column: 5, scope: !3201)
!3267 = !DILocation(line: 1236, column: 69, scope: !3201)
!3268 = !DILocation(line: 1236, column: 72, scope: !3201)
!3269 = !DILocation(line: 1236, column: 77, scope: !3201)
!3270 = !DILocation(line: 1236, column: 5, scope: !3201)
!3271 = !DILocalVariable(name: "remOut", scope: !3066, file: !3, line: 1238, type: !5)
!3272 = !DILocation(line: 1238, column: 12, scope: !3066)
!3273 = !DILocalVariable(name: "hbuf0", scope: !3066, file: !3, line: 1239, type: !2249)
!3274 = !DILocation(line: 1239, column: 11, scope: !3066)
!3275 = !DILocalVariable(name: "ws0", scope: !3066, file: !3, line: 1240, type: !2254)
!3276 = !DILocation(line: 1240, column: 12, scope: !3066)
!3277 = !DILocation(line: 1241, column: 3, scope: !3066)
!3278 = !DILocalVariable(name: "i", scope: !3279, file: !3, line: 1242, type: !5)
!3279 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1242, column: 3)
!3280 = !DILocation(line: 1242, column: 17, scope: !3279)
!3281 = !DILocation(line: 1242, column: 8, scope: !3279)
!3282 = !DILocation(line: 1242, column: 25, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 1242, column: 3)
!3284 = !DILocation(line: 1242, column: 27, scope: !3283)
!3285 = !DILocation(line: 1242, column: 3, scope: !3279)
!3286 = !DILocation(line: 1244, column: 5, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 1243, column: 3)
!3288 = !DILocation(line: 1245, column: 3, scope: !3287)
!3289 = !DILocation(line: 1242, column: 35, scope: !3283)
!3290 = !DILocation(line: 1242, column: 3, scope: !3283)
!3291 = distinct !{!3291, !3285, !3292, !128}
!3292 = !DILocation(line: 1245, column: 3, scope: !3279)
!3293 = !DILocation(line: 1246, column: 10, scope: !3066)
!3294 = !DILocation(line: 1246, column: 15, scope: !3066)
!3295 = !DILocation(line: 1246, column: 23, scope: !3066)
!3296 = !DILocation(line: 1246, column: 21, scope: !3066)
!3297 = !DILocation(line: 1246, column: 3, scope: !3066)
!3298 = !DILocation(line: 1246, column: 38, scope: !3066)
!3299 = !DILocation(line: 1246, column: 45, scope: !3066)
!3300 = !DILocalVariable(name: "hash1", scope: !3066, file: !3, line: 1247, type: !37)
!3301 = !DILocation(line: 1247, column: 12, scope: !3066)
!3302 = !DILocation(line: 1247, column: 20, scope: !3066)
!3303 = !DILocation(line: 1248, column: 56, scope: !3066)
!3304 = !DILocation(line: 1248, column: 3, scope: !3066)
!3305 = !DILocalVariable(name: "block_len", scope: !3066, file: !3, line: 1249, type: !5)
!3306 = !DILocation(line: 1249, column: 12, scope: !3066)
!3307 = !DILocalVariable(name: "n_blocks0", scope: !3066, file: !3, line: 1250, type: !5)
!3308 = !DILocation(line: 1250, column: 12, scope: !3066)
!3309 = !DILocation(line: 1250, column: 30, scope: !3066)
!3310 = !DILocation(line: 1250, column: 28, scope: !3066)
!3311 = !DILocalVariable(name: "rem0", scope: !3066, file: !3, line: 1251, type: !5)
!3312 = !DILocation(line: 1251, column: 12, scope: !3066)
!3313 = !DILocation(line: 1251, column: 25, scope: !3066)
!3314 = !DILocation(line: 1251, column: 23, scope: !3066)
!3315 = !DILocalVariable(name: "scrut", scope: !3066, file: !3, line: 1252, type: !193)
!3316 = !DILocation(line: 1252, column: 25, scope: !3066)
!3317 = !DILocation(line: 1253, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1253, column: 7)
!3319 = !DILocation(line: 1253, column: 17, scope: !3318)
!3320 = !DILocation(line: 1253, column: 22, scope: !3318)
!3321 = !DILocation(line: 1253, column: 25, scope: !3318)
!3322 = !DILocation(line: 1253, column: 30, scope: !3318)
!3323 = !DILocation(line: 1253, column: 7, scope: !3066)
!3324 = !DILocalVariable(name: "n_blocks_", scope: !3325, file: !3, line: 1255, type: !5)
!3325 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 1254, column: 3)
!3326 = !DILocation(line: 1255, column: 14, scope: !3325)
!3327 = !DILocation(line: 1255, column: 26, scope: !3325)
!3328 = !DILocation(line: 1255, column: 36, scope: !3325)
!3329 = !DILocation(line: 1256, column: 37, scope: !3325)
!3330 = !DILocation(line: 1256, column: 46, scope: !3325)
!3331 = !DILocation(line: 1256, column: 70, scope: !3325)
!3332 = !DILocation(line: 1256, column: 82, scope: !3325)
!3333 = !DILocation(line: 1256, column: 80, scope: !3325)
!3334 = !DILocation(line: 1256, column: 68, scope: !3325)
!3335 = !DILocation(line: 1256, column: 14, scope: !3325)
!3336 = !DILocation(line: 1257, column: 3, scope: !3325)
!3337 = !DILocation(line: 1260, column: 37, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 1259, column: 3)
!3339 = !DILocation(line: 1260, column: 46, scope: !3338)
!3340 = !DILocation(line: 1260, column: 64, scope: !3338)
!3341 = !DILocation(line: 1260, column: 14, scope: !3338)
!3342 = !DILocalVariable(name: "n_blocks", scope: !3066, file: !3, line: 1262, type: !5)
!3343 = !DILocation(line: 1262, column: 12, scope: !3066)
!3344 = !DILocation(line: 1262, column: 29, scope: !3066)
!3345 = !DILocalVariable(name: "rem_len", scope: !3066, file: !3, line: 1263, type: !5)
!3346 = !DILocation(line: 1263, column: 12, scope: !3066)
!3347 = !DILocation(line: 1263, column: 28, scope: !3066)
!3348 = !DILocalVariable(name: "full_blocks_len", scope: !3066, file: !3, line: 1264, type: !5)
!3349 = !DILocation(line: 1264, column: 12, scope: !3066)
!3350 = !DILocation(line: 1264, column: 30, scope: !3066)
!3351 = !DILocation(line: 1264, column: 41, scope: !3066)
!3352 = !DILocation(line: 1264, column: 39, scope: !3066)
!3353 = !DILocalVariable(name: "full_blocks", scope: !3066, file: !3, line: 1265, type: !37)
!3354 = !DILocation(line: 1265, column: 12, scope: !3066)
!3355 = !DILocation(line: 1265, column: 26, scope: !3066)
!3356 = !DILocalVariable(name: "rem", scope: !3066, file: !3, line: 1266, type: !37)
!3357 = !DILocation(line: 1266, column: 12, scope: !3066)
!3358 = !DILocation(line: 1266, column: 18, scope: !3066)
!3359 = !DILocation(line: 1266, column: 26, scope: !3066)
!3360 = !DILocation(line: 1266, column: 24, scope: !3066)
!3361 = !DILocation(line: 1267, column: 68, scope: !3066)
!3362 = !DILocation(line: 1267, column: 71, scope: !3066)
!3363 = !DILocation(line: 1267, column: 3, scope: !3066)
!3364 = !DILocation(line: 1268, column: 68, scope: !3066)
!3365 = !DILocation(line: 1268, column: 71, scope: !3066)
!3366 = !DILocation(line: 1268, column: 84, scope: !3066)
!3367 = !DILocation(line: 1268, column: 3, scope: !3066)
!3368 = !DILocation(line: 1269, column: 67, scope: !3066)
!3369 = !DILocation(line: 1269, column: 70, scope: !3066)
!3370 = !DILocation(line: 1269, column: 75, scope: !3066)
!3371 = !DILocation(line: 1269, column: 3, scope: !3066)
!3372 = !DILocalVariable(name: "remOut0", scope: !3066, file: !3, line: 1270, type: !5)
!3373 = !DILocation(line: 1270, column: 12, scope: !3066)
!3374 = !DILocalVariable(name: "hbuf", scope: !3066, file: !3, line: 1271, type: !2249)
!3375 = !DILocation(line: 1271, column: 11, scope: !3066)
!3376 = !DILocalVariable(name: "ws", scope: !3066, file: !3, line: 1272, type: !2254)
!3377 = !DILocation(line: 1272, column: 12, scope: !3066)
!3378 = !DILocation(line: 1273, column: 3, scope: !3066)
!3379 = !DILocalVariable(name: "i", scope: !3380, file: !3, line: 1274, type: !5)
!3380 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1274, column: 3)
!3381 = !DILocation(line: 1274, column: 17, scope: !3380)
!3382 = !DILocation(line: 1274, column: 8, scope: !3380)
!3383 = !DILocation(line: 1274, column: 25, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1274, column: 3)
!3385 = !DILocation(line: 1274, column: 27, scope: !3384)
!3386 = !DILocation(line: 1274, column: 3, scope: !3380)
!3387 = !DILocation(line: 1276, column: 5, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1275, column: 3)
!3389 = !DILocation(line: 1277, column: 3, scope: !3388)
!3390 = !DILocation(line: 1274, column: 35, scope: !3384)
!3391 = !DILocation(line: 1274, column: 3, scope: !3384)
!3392 = distinct !{!3392, !3386, !3393, !128}
!3393 = !DILocation(line: 1277, column: 3, scope: !3380)
!3394 = !DILocation(line: 1278, column: 10, scope: !3066)
!3395 = !DILocation(line: 1278, column: 14, scope: !3066)
!3396 = !DILocation(line: 1278, column: 22, scope: !3066)
!3397 = !DILocation(line: 1278, column: 20, scope: !3066)
!3398 = !DILocation(line: 1278, column: 3, scope: !3066)
!3399 = !DILocation(line: 1278, column: 37, scope: !3066)
!3400 = !DILocation(line: 1278, column: 45, scope: !3066)
!3401 = !DILocation(line: 1279, column: 1, scope: !3066)
!3402 = distinct !DISubprogram(name: "Hacl_HMAC_compute_blake2s_32", scope: !3, file: !3, line: 1288, type: !35, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!3403 = !DILocalVariable(name: "dst", arg: 1, scope: !3402, file: !3, line: 1289, type: !37)
!3404 = !DILocation(line: 1289, column: 12, scope: !3402)
!3405 = !DILocalVariable(name: "key", arg: 2, scope: !3402, file: !3, line: 1290, type: !37)
!3406 = !DILocation(line: 1290, column: 12, scope: !3402)
!3407 = !DILocalVariable(name: "key_len", arg: 3, scope: !3402, file: !3, line: 1291, type: !5)
!3408 = !DILocation(line: 1291, column: 12, scope: !3402)
!3409 = !DILocalVariable(name: "data", arg: 4, scope: !3402, file: !3, line: 1292, type: !37)
!3410 = !DILocation(line: 1292, column: 12, scope: !3402)
!3411 = !DILocalVariable(name: "data_len", arg: 5, scope: !3402, file: !3, line: 1293, type: !5)
!3412 = !DILocation(line: 1293, column: 12, scope: !3402)
!3413 = !DILocalVariable(name: "key_block", scope: !3402, file: !3, line: 1296, type: !53)
!3414 = !DILocation(line: 1296, column: 11, scope: !3402)
!3415 = !DILocation(line: 1297, column: 3, scope: !3402)
!3416 = !DILocalVariable(name: "nkey", scope: !3402, file: !3, line: 1298, type: !37)
!3417 = !DILocation(line: 1298, column: 12, scope: !3402)
!3418 = !DILocation(line: 1298, column: 19, scope: !3402)
!3419 = !DILocalVariable(name: "ite", scope: !3402, file: !3, line: 1299, type: !5)
!3420 = !DILocation(line: 1299, column: 12, scope: !3402)
!3421 = !DILocation(line: 1300, column: 7, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1300, column: 7)
!3423 = !DILocation(line: 1300, column: 15, scope: !3422)
!3424 = !DILocation(line: 1300, column: 7, scope: !3402)
!3425 = !DILocation(line: 1302, column: 11, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1301, column: 3)
!3427 = !DILocation(line: 1302, column: 9, scope: !3426)
!3428 = !DILocation(line: 1303, column: 3, scope: !3426)
!3429 = !DILocation(line: 1306, column: 9, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1305, column: 3)
!3431 = !DILocalVariable(name: "zeroes", scope: !3402, file: !3, line: 1308, type: !37)
!3432 = !DILocation(line: 1308, column: 12, scope: !3402)
!3433 = !DILocation(line: 1308, column: 21, scope: !3402)
!3434 = !DILocation(line: 1308, column: 33, scope: !3402)
!3435 = !DILocation(line: 1308, column: 31, scope: !3402)
!3436 = !DILocation(line: 1309, column: 3, scope: !3402)
!3437 = !DILocation(line: 1310, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1310, column: 7)
!3439 = !DILocation(line: 1310, column: 15, scope: !3438)
!3440 = !DILocation(line: 1310, column: 7, scope: !3402)
!3441 = !DILocation(line: 1312, column: 12, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 1311, column: 3)
!3443 = !DILocation(line: 1312, column: 18, scope: !3442)
!3444 = !DILocation(line: 1312, column: 23, scope: !3442)
!3445 = !DILocation(line: 1312, column: 31, scope: !3442)
!3446 = !DILocation(line: 1312, column: 5, scope: !3442)
!3447 = !DILocation(line: 1313, column: 3, scope: !3442)
!3448 = !DILocation(line: 1316, column: 37, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 1315, column: 3)
!3450 = !DILocation(line: 1316, column: 48, scope: !3449)
!3451 = !DILocation(line: 1316, column: 53, scope: !3449)
!3452 = !DILocation(line: 1316, column: 5, scope: !3449)
!3453 = !DILocalVariable(name: "ipad", scope: !3402, file: !3, line: 1318, type: !53)
!3454 = !DILocation(line: 1318, column: 11, scope: !3402)
!3455 = !DILocation(line: 1319, column: 3, scope: !3402)
!3456 = !DILocalVariable(name: "i", scope: !3457, file: !3, line: 1320, type: !5)
!3457 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1320, column: 3)
!3458 = !DILocation(line: 1320, column: 17, scope: !3457)
!3459 = !DILocation(line: 1320, column: 8, scope: !3457)
!3460 = !DILocation(line: 1320, column: 25, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1320, column: 3)
!3462 = !DILocation(line: 1320, column: 27, scope: !3461)
!3463 = !DILocation(line: 1320, column: 3, scope: !3457)
!3464 = !DILocalVariable(name: "xi", scope: !3465, file: !3, line: 1322, type: !38)
!3465 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 1321, column: 3)
!3466 = !DILocation(line: 1322, column: 13, scope: !3465)
!3467 = !DILocation(line: 1322, column: 23, scope: !3465)
!3468 = !DILocation(line: 1322, column: 18, scope: !3465)
!3469 = !DILocalVariable(name: "yi", scope: !3465, file: !3, line: 1323, type: !38)
!3470 = !DILocation(line: 1323, column: 13, scope: !3465)
!3471 = !DILocation(line: 1323, column: 28, scope: !3465)
!3472 = !DILocation(line: 1323, column: 18, scope: !3465)
!3473 = !DILocation(line: 1324, column: 25, scope: !3465)
!3474 = !DILocation(line: 1324, column: 15, scope: !3465)
!3475 = !DILocation(line: 1324, column: 40, scope: !3465)
!3476 = !DILocation(line: 1324, column: 30, scope: !3465)
!3477 = !DILocation(line: 1324, column: 28, scope: !3465)
!3478 = !DILocation(line: 1324, column: 10, scope: !3465)
!3479 = !DILocation(line: 1324, column: 5, scope: !3465)
!3480 = !DILocation(line: 1324, column: 13, scope: !3465)
!3481 = !DILocation(line: 1325, column: 3, scope: !3465)
!3482 = !DILocation(line: 1320, column: 35, scope: !3461)
!3483 = !DILocation(line: 1320, column: 3, scope: !3461)
!3484 = distinct !{!3484, !3463, !3485, !128}
!3485 = !DILocation(line: 1325, column: 3, scope: !3457)
!3486 = !DILocalVariable(name: "opad", scope: !3402, file: !3, line: 1326, type: !53)
!3487 = !DILocation(line: 1326, column: 11, scope: !3402)
!3488 = !DILocation(line: 1327, column: 3, scope: !3402)
!3489 = !DILocalVariable(name: "i", scope: !3490, file: !3, line: 1328, type: !5)
!3490 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1328, column: 3)
!3491 = !DILocation(line: 1328, column: 17, scope: !3490)
!3492 = !DILocation(line: 1328, column: 8, scope: !3490)
!3493 = !DILocation(line: 1328, column: 25, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 1328, column: 3)
!3495 = !DILocation(line: 1328, column: 27, scope: !3494)
!3496 = !DILocation(line: 1328, column: 3, scope: !3490)
!3497 = !DILocalVariable(name: "xi", scope: !3498, file: !3, line: 1330, type: !38)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1329, column: 3)
!3499 = !DILocation(line: 1330, column: 13, scope: !3498)
!3500 = !DILocation(line: 1330, column: 23, scope: !3498)
!3501 = !DILocation(line: 1330, column: 18, scope: !3498)
!3502 = !DILocalVariable(name: "yi", scope: !3498, file: !3, line: 1331, type: !38)
!3503 = !DILocation(line: 1331, column: 13, scope: !3498)
!3504 = !DILocation(line: 1331, column: 28, scope: !3498)
!3505 = !DILocation(line: 1331, column: 18, scope: !3498)
!3506 = !DILocation(line: 1332, column: 25, scope: !3498)
!3507 = !DILocation(line: 1332, column: 15, scope: !3498)
!3508 = !DILocation(line: 1332, column: 40, scope: !3498)
!3509 = !DILocation(line: 1332, column: 30, scope: !3498)
!3510 = !DILocation(line: 1332, column: 28, scope: !3498)
!3511 = !DILocation(line: 1332, column: 10, scope: !3498)
!3512 = !DILocation(line: 1332, column: 5, scope: !3498)
!3513 = !DILocation(line: 1332, column: 13, scope: !3498)
!3514 = !DILocation(line: 1333, column: 3, scope: !3498)
!3515 = !DILocation(line: 1328, column: 35, scope: !3494)
!3516 = !DILocation(line: 1328, column: 3, scope: !3494)
!3517 = distinct !{!3517, !3496, !3518, !128}
!3518 = !DILocation(line: 1333, column: 3, scope: !3490)
!3519 = !DILocalVariable(name: "s", scope: !3402, file: !3, line: 1334, type: !3520)
!3520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !3521)
!3521 = !{!3522}
!3522 = !DISubrange(count: 16)
!3523 = !DILocation(line: 1334, column: 12, scope: !3402)
!3524 = !DILocation(line: 1335, column: 26, scope: !3402)
!3525 = !DILocation(line: 1335, column: 3, scope: !3402)
!3526 = !DILocalVariable(name: "s0", scope: !3402, file: !3, line: 1336, type: !757)
!3527 = !DILocation(line: 1336, column: 13, scope: !3402)
!3528 = !DILocation(line: 1336, column: 18, scope: !3402)
!3529 = !DILocalVariable(name: "dst1", scope: !3402, file: !3, line: 1337, type: !37)
!3530 = !DILocation(line: 1337, column: 12, scope: !3402)
!3531 = !DILocation(line: 1337, column: 19, scope: !3402)
!3532 = !DILocation(line: 1338, column: 7, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1338, column: 7)
!3534 = !DILocation(line: 1338, column: 16, scope: !3533)
!3535 = !DILocation(line: 1338, column: 7, scope: !3402)
!3536 = !DILocalVariable(name: "wv", scope: !3537, file: !3, line: 1340, type: !3520)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1339, column: 3)
!3538 = !DILocation(line: 1340, column: 14, scope: !3537)
!3539 = !DILocation(line: 1341, column: 40, scope: !3537)
!3540 = !DILocation(line: 1341, column: 44, scope: !3537)
!3541 = !DILocation(line: 1341, column: 66, scope: !3537)
!3542 = !DILocation(line: 1341, column: 5, scope: !3537)
!3543 = !DILocation(line: 1342, column: 3, scope: !3537)
!3544 = !DILocalVariable(name: "block_len", scope: !3545, file: !3, line: 1345, type: !5)
!3545 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1344, column: 3)
!3546 = !DILocation(line: 1345, column: 14, scope: !3545)
!3547 = !DILocalVariable(name: "n_blocks0", scope: !3545, file: !3, line: 1346, type: !5)
!3548 = !DILocation(line: 1346, column: 14, scope: !3545)
!3549 = !DILocation(line: 1346, column: 26, scope: !3545)
!3550 = !DILocation(line: 1346, column: 37, scope: !3545)
!3551 = !DILocation(line: 1346, column: 35, scope: !3545)
!3552 = !DILocalVariable(name: "rem0", scope: !3545, file: !3, line: 1347, type: !5)
!3553 = !DILocation(line: 1347, column: 14, scope: !3545)
!3554 = !DILocation(line: 1347, column: 21, scope: !3545)
!3555 = !DILocation(line: 1347, column: 32, scope: !3545)
!3556 = !DILocation(line: 1347, column: 30, scope: !3545)
!3557 = !DILocalVariable(name: "scrut", scope: !3545, file: !3, line: 1348, type: !193)
!3558 = !DILocation(line: 1348, column: 27, scope: !3545)
!3559 = !DILocation(line: 1349, column: 9, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 1349, column: 9)
!3561 = !DILocation(line: 1349, column: 19, scope: !3560)
!3562 = !DILocation(line: 1349, column: 24, scope: !3560)
!3563 = !DILocation(line: 1349, column: 27, scope: !3560)
!3564 = !DILocation(line: 1349, column: 32, scope: !3560)
!3565 = !DILocation(line: 1349, column: 9, scope: !3545)
!3566 = !DILocalVariable(name: "n_blocks_", scope: !3567, file: !3, line: 1351, type: !5)
!3567 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 1350, column: 5)
!3568 = !DILocation(line: 1351, column: 16, scope: !3567)
!3569 = !DILocation(line: 1351, column: 28, scope: !3567)
!3570 = !DILocation(line: 1351, column: 38, scope: !3567)
!3571 = !DILocation(line: 1352, column: 39, scope: !3567)
!3572 = !DILocation(line: 1352, column: 48, scope: !3567)
!3573 = !DILocation(line: 1352, column: 66, scope: !3567)
!3574 = !DILocation(line: 1352, column: 77, scope: !3567)
!3575 = !DILocation(line: 1352, column: 89, scope: !3567)
!3576 = !DILocation(line: 1352, column: 87, scope: !3567)
!3577 = !DILocation(line: 1352, column: 75, scope: !3567)
!3578 = !DILocation(line: 1352, column: 16, scope: !3567)
!3579 = !DILocation(line: 1353, column: 5, scope: !3567)
!3580 = !DILocation(line: 1356, column: 39, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 1355, column: 5)
!3582 = !DILocation(line: 1356, column: 48, scope: !3581)
!3583 = !DILocation(line: 1356, column: 66, scope: !3581)
!3584 = !DILocation(line: 1356, column: 16, scope: !3581)
!3585 = !DILocalVariable(name: "n_blocks", scope: !3545, file: !3, line: 1358, type: !5)
!3586 = !DILocation(line: 1358, column: 14, scope: !3545)
!3587 = !DILocation(line: 1358, column: 31, scope: !3545)
!3588 = !DILocalVariable(name: "rem_len", scope: !3545, file: !3, line: 1359, type: !5)
!3589 = !DILocation(line: 1359, column: 14, scope: !3545)
!3590 = !DILocation(line: 1359, column: 30, scope: !3545)
!3591 = !DILocalVariable(name: "full_blocks_len", scope: !3545, file: !3, line: 1360, type: !5)
!3592 = !DILocation(line: 1360, column: 14, scope: !3545)
!3593 = !DILocation(line: 1360, column: 32, scope: !3545)
!3594 = !DILocation(line: 1360, column: 43, scope: !3545)
!3595 = !DILocation(line: 1360, column: 41, scope: !3545)
!3596 = !DILocalVariable(name: "full_blocks", scope: !3545, file: !3, line: 1361, type: !37)
!3597 = !DILocation(line: 1361, column: 14, scope: !3545)
!3598 = !DILocation(line: 1361, column: 28, scope: !3545)
!3599 = !DILocalVariable(name: "rem", scope: !3545, file: !3, line: 1362, type: !37)
!3600 = !DILocation(line: 1362, column: 14, scope: !3545)
!3601 = !DILocation(line: 1362, column: 20, scope: !3545)
!3602 = !DILocation(line: 1362, column: 27, scope: !3545)
!3603 = !DILocation(line: 1362, column: 25, scope: !3545)
!3604 = !DILocalVariable(name: "wv", scope: !3545, file: !3, line: 1363, type: !3520)
!3605 = !DILocation(line: 1363, column: 14, scope: !3545)
!3606 = !DILocation(line: 1364, column: 41, scope: !3545)
!3607 = !DILocation(line: 1364, column: 45, scope: !3545)
!3608 = !DILocation(line: 1364, column: 55, scope: !3545)
!3609 = !DILocation(line: 1364, column: 5, scope: !3545)
!3610 = !DILocalVariable(name: "wv0", scope: !3545, file: !3, line: 1365, type: !3520)
!3611 = !DILocation(line: 1365, column: 14, scope: !3545)
!3612 = !DILocation(line: 1366, column: 36, scope: !3545)
!3613 = !DILocation(line: 1366, column: 45, scope: !3545)
!3614 = !DILocation(line: 1367, column: 7, scope: !3545)
!3615 = !DILocation(line: 1368, column: 7, scope: !3545)
!3616 = !DILocation(line: 1369, column: 17, scope: !3545)
!3617 = !DILocation(line: 1369, column: 7, scope: !3545)
!3618 = !DILocation(line: 1370, column: 7, scope: !3545)
!3619 = !DILocation(line: 1371, column: 7, scope: !3545)
!3620 = !DILocation(line: 1366, column: 5, scope: !3545)
!3621 = !DILocalVariable(name: "wv1", scope: !3545, file: !3, line: 1372, type: !3520)
!3622 = !DILocation(line: 1372, column: 14, scope: !3545)
!3623 = !DILocation(line: 1373, column: 35, scope: !3545)
!3624 = !DILocation(line: 1374, column: 7, scope: !3545)
!3625 = !DILocation(line: 1375, column: 7, scope: !3545)
!3626 = !DILocation(line: 1377, column: 33, scope: !3545)
!3627 = !DILocation(line: 1377, column: 23, scope: !3545)
!3628 = !DILocation(line: 1377, column: 21, scope: !3545)
!3629 = !DILocation(line: 1378, column: 7, scope: !3545)
!3630 = !DILocation(line: 1379, column: 7, scope: !3545)
!3631 = !DILocation(line: 1373, column: 5, scope: !3545)
!3632 = !DILocation(line: 1381, column: 33, scope: !3402)
!3633 = !DILocation(line: 1381, column: 39, scope: !3402)
!3634 = !DILocation(line: 1381, column: 3, scope: !3402)
!3635 = !DILocalVariable(name: "hash1", scope: !3402, file: !3, line: 1382, type: !37)
!3636 = !DILocation(line: 1382, column: 12, scope: !3402)
!3637 = !DILocation(line: 1382, column: 20, scope: !3402)
!3638 = !DILocation(line: 1383, column: 26, scope: !3402)
!3639 = !DILocation(line: 1383, column: 3, scope: !3402)
!3640 = !DILocalVariable(name: "block_len", scope: !3402, file: !3, line: 1384, type: !5)
!3641 = !DILocation(line: 1384, column: 12, scope: !3402)
!3642 = !DILocalVariable(name: "n_blocks0", scope: !3402, file: !3, line: 1385, type: !5)
!3643 = !DILocation(line: 1385, column: 12, scope: !3402)
!3644 = !DILocation(line: 1385, column: 30, scope: !3402)
!3645 = !DILocation(line: 1385, column: 28, scope: !3402)
!3646 = !DILocalVariable(name: "rem0", scope: !3402, file: !3, line: 1386, type: !5)
!3647 = !DILocation(line: 1386, column: 12, scope: !3402)
!3648 = !DILocation(line: 1386, column: 25, scope: !3402)
!3649 = !DILocation(line: 1386, column: 23, scope: !3402)
!3650 = !DILocalVariable(name: "scrut", scope: !3402, file: !3, line: 1387, type: !193)
!3651 = !DILocation(line: 1387, column: 25, scope: !3402)
!3652 = !DILocation(line: 1388, column: 7, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1388, column: 7)
!3654 = !DILocation(line: 1388, column: 17, scope: !3653)
!3655 = !DILocation(line: 1388, column: 22, scope: !3653)
!3656 = !DILocation(line: 1388, column: 25, scope: !3653)
!3657 = !DILocation(line: 1388, column: 30, scope: !3653)
!3658 = !DILocation(line: 1388, column: 7, scope: !3402)
!3659 = !DILocalVariable(name: "n_blocks_", scope: !3660, file: !3, line: 1390, type: !5)
!3660 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 1389, column: 3)
!3661 = !DILocation(line: 1390, column: 14, scope: !3660)
!3662 = !DILocation(line: 1390, column: 26, scope: !3660)
!3663 = !DILocation(line: 1390, column: 36, scope: !3660)
!3664 = !DILocation(line: 1391, column: 37, scope: !3660)
!3665 = !DILocation(line: 1391, column: 46, scope: !3660)
!3666 = !DILocation(line: 1391, column: 70, scope: !3660)
!3667 = !DILocation(line: 1391, column: 82, scope: !3660)
!3668 = !DILocation(line: 1391, column: 80, scope: !3660)
!3669 = !DILocation(line: 1391, column: 68, scope: !3660)
!3670 = !DILocation(line: 1391, column: 14, scope: !3660)
!3671 = !DILocation(line: 1392, column: 3, scope: !3660)
!3672 = !DILocation(line: 1395, column: 37, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 1394, column: 3)
!3674 = !DILocation(line: 1395, column: 46, scope: !3673)
!3675 = !DILocation(line: 1395, column: 64, scope: !3673)
!3676 = !DILocation(line: 1395, column: 14, scope: !3673)
!3677 = !DILocalVariable(name: "n_blocks", scope: !3402, file: !3, line: 1397, type: !5)
!3678 = !DILocation(line: 1397, column: 12, scope: !3402)
!3679 = !DILocation(line: 1397, column: 29, scope: !3402)
!3680 = !DILocalVariable(name: "rem_len", scope: !3402, file: !3, line: 1398, type: !5)
!3681 = !DILocation(line: 1398, column: 12, scope: !3402)
!3682 = !DILocation(line: 1398, column: 28, scope: !3402)
!3683 = !DILocalVariable(name: "full_blocks_len", scope: !3402, file: !3, line: 1399, type: !5)
!3684 = !DILocation(line: 1399, column: 12, scope: !3402)
!3685 = !DILocation(line: 1399, column: 30, scope: !3402)
!3686 = !DILocation(line: 1399, column: 41, scope: !3402)
!3687 = !DILocation(line: 1399, column: 39, scope: !3402)
!3688 = !DILocalVariable(name: "full_blocks", scope: !3402, file: !3, line: 1400, type: !37)
!3689 = !DILocation(line: 1400, column: 12, scope: !3402)
!3690 = !DILocation(line: 1400, column: 26, scope: !3402)
!3691 = !DILocalVariable(name: "rem", scope: !3402, file: !3, line: 1401, type: !37)
!3692 = !DILocation(line: 1401, column: 12, scope: !3402)
!3693 = !DILocation(line: 1401, column: 18, scope: !3402)
!3694 = !DILocation(line: 1401, column: 26, scope: !3402)
!3695 = !DILocation(line: 1401, column: 24, scope: !3402)
!3696 = !DILocalVariable(name: "wv", scope: !3402, file: !3, line: 1402, type: !3520)
!3697 = !DILocation(line: 1402, column: 12, scope: !3402)
!3698 = !DILocation(line: 1403, column: 39, scope: !3402)
!3699 = !DILocation(line: 1403, column: 43, scope: !3402)
!3700 = !DILocation(line: 1403, column: 53, scope: !3402)
!3701 = !DILocation(line: 1403, column: 3, scope: !3402)
!3702 = !DILocalVariable(name: "wv0", scope: !3402, file: !3, line: 1404, type: !3520)
!3703 = !DILocation(line: 1404, column: 12, scope: !3402)
!3704 = !DILocation(line: 1405, column: 34, scope: !3402)
!3705 = !DILocation(line: 1405, column: 43, scope: !3402)
!3706 = !DILocation(line: 1406, column: 5, scope: !3402)
!3707 = !DILocation(line: 1407, column: 5, scope: !3402)
!3708 = !DILocation(line: 1408, column: 15, scope: !3402)
!3709 = !DILocation(line: 1408, column: 5, scope: !3402)
!3710 = !DILocation(line: 1409, column: 5, scope: !3402)
!3711 = !DILocation(line: 1410, column: 5, scope: !3402)
!3712 = !DILocation(line: 1405, column: 3, scope: !3402)
!3713 = !DILocalVariable(name: "wv1", scope: !3402, file: !3, line: 1411, type: !3520)
!3714 = !DILocation(line: 1411, column: 12, scope: !3402)
!3715 = !DILocation(line: 1412, column: 33, scope: !3402)
!3716 = !DILocation(line: 1413, column: 5, scope: !3402)
!3717 = !DILocation(line: 1414, column: 5, scope: !3402)
!3718 = !DILocation(line: 1416, column: 31, scope: !3402)
!3719 = !DILocation(line: 1416, column: 21, scope: !3402)
!3720 = !DILocation(line: 1416, column: 19, scope: !3402)
!3721 = !DILocation(line: 1417, column: 5, scope: !3402)
!3722 = !DILocation(line: 1418, column: 5, scope: !3402)
!3723 = !DILocation(line: 1412, column: 3, scope: !3402)
!3724 = !DILocation(line: 1419, column: 33, scope: !3402)
!3725 = !DILocation(line: 1419, column: 38, scope: !3402)
!3726 = !DILocation(line: 1419, column: 3, scope: !3402)
!3727 = !DILocation(line: 1420, column: 1, scope: !3402)
!3728 = distinct !DISubprogram(name: "Hacl_HMAC_compute_blake2b_32", scope: !3, file: !3, line: 1429, type: !35, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!3729 = !DILocalVariable(name: "dst", arg: 1, scope: !3728, file: !3, line: 1430, type: !37)
!3730 = !DILocation(line: 1430, column: 12, scope: !3728)
!3731 = !DILocalVariable(name: "key", arg: 2, scope: !3728, file: !3, line: 1431, type: !37)
!3732 = !DILocation(line: 1431, column: 12, scope: !3728)
!3733 = !DILocalVariable(name: "key_len", arg: 3, scope: !3728, file: !3, line: 1432, type: !5)
!3734 = !DILocation(line: 1432, column: 12, scope: !3728)
!3735 = !DILocalVariable(name: "data", arg: 4, scope: !3728, file: !3, line: 1433, type: !37)
!3736 = !DILocation(line: 1433, column: 12, scope: !3728)
!3737 = !DILocalVariable(name: "data_len", arg: 5, scope: !3728, file: !3, line: 1434, type: !5)
!3738 = !DILocation(line: 1434, column: 12, scope: !3728)
!3739 = !DILocalVariable(name: "key_block", scope: !3728, file: !3, line: 1437, type: !1313)
!3740 = !DILocation(line: 1437, column: 11, scope: !3728)
!3741 = !DILocation(line: 1438, column: 3, scope: !3728)
!3742 = !DILocalVariable(name: "nkey", scope: !3728, file: !3, line: 1439, type: !37)
!3743 = !DILocation(line: 1439, column: 12, scope: !3728)
!3744 = !DILocation(line: 1439, column: 19, scope: !3728)
!3745 = !DILocalVariable(name: "ite", scope: !3728, file: !3, line: 1440, type: !5)
!3746 = !DILocation(line: 1440, column: 12, scope: !3728)
!3747 = !DILocation(line: 1441, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1441, column: 7)
!3749 = !DILocation(line: 1441, column: 15, scope: !3748)
!3750 = !DILocation(line: 1441, column: 7, scope: !3728)
!3751 = !DILocation(line: 1443, column: 11, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1442, column: 3)
!3753 = !DILocation(line: 1443, column: 9, scope: !3752)
!3754 = !DILocation(line: 1444, column: 3, scope: !3752)
!3755 = !DILocation(line: 1447, column: 9, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1446, column: 3)
!3757 = !DILocalVariable(name: "zeroes", scope: !3728, file: !3, line: 1449, type: !37)
!3758 = !DILocation(line: 1449, column: 12, scope: !3728)
!3759 = !DILocation(line: 1449, column: 21, scope: !3728)
!3760 = !DILocation(line: 1449, column: 33, scope: !3728)
!3761 = !DILocation(line: 1449, column: 31, scope: !3728)
!3762 = !DILocation(line: 1450, column: 3, scope: !3728)
!3763 = !DILocation(line: 1451, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1451, column: 7)
!3765 = !DILocation(line: 1451, column: 15, scope: !3764)
!3766 = !DILocation(line: 1451, column: 7, scope: !3728)
!3767 = !DILocation(line: 1453, column: 12, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 1452, column: 3)
!3769 = !DILocation(line: 1453, column: 18, scope: !3768)
!3770 = !DILocation(line: 1453, column: 23, scope: !3768)
!3771 = !DILocation(line: 1453, column: 31, scope: !3768)
!3772 = !DILocation(line: 1453, column: 5, scope: !3768)
!3773 = !DILocation(line: 1454, column: 3, scope: !3768)
!3774 = !DILocation(line: 1457, column: 37, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 1456, column: 3)
!3776 = !DILocation(line: 1457, column: 48, scope: !3775)
!3777 = !DILocation(line: 1457, column: 53, scope: !3775)
!3778 = !DILocation(line: 1457, column: 5, scope: !3775)
!3779 = !DILocalVariable(name: "ipad", scope: !3728, file: !3, line: 1459, type: !1313)
!3780 = !DILocation(line: 1459, column: 11, scope: !3728)
!3781 = !DILocation(line: 1460, column: 3, scope: !3728)
!3782 = !DILocalVariable(name: "i", scope: !3783, file: !3, line: 1461, type: !5)
!3783 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1461, column: 3)
!3784 = !DILocation(line: 1461, column: 17, scope: !3783)
!3785 = !DILocation(line: 1461, column: 8, scope: !3783)
!3786 = !DILocation(line: 1461, column: 25, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3783, file: !3, line: 1461, column: 3)
!3788 = !DILocation(line: 1461, column: 27, scope: !3787)
!3789 = !DILocation(line: 1461, column: 3, scope: !3783)
!3790 = !DILocalVariable(name: "xi", scope: !3791, file: !3, line: 1463, type: !38)
!3791 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 1462, column: 3)
!3792 = !DILocation(line: 1463, column: 13, scope: !3791)
!3793 = !DILocation(line: 1463, column: 23, scope: !3791)
!3794 = !DILocation(line: 1463, column: 18, scope: !3791)
!3795 = !DILocalVariable(name: "yi", scope: !3791, file: !3, line: 1464, type: !38)
!3796 = !DILocation(line: 1464, column: 13, scope: !3791)
!3797 = !DILocation(line: 1464, column: 28, scope: !3791)
!3798 = !DILocation(line: 1464, column: 18, scope: !3791)
!3799 = !DILocation(line: 1465, column: 25, scope: !3791)
!3800 = !DILocation(line: 1465, column: 15, scope: !3791)
!3801 = !DILocation(line: 1465, column: 40, scope: !3791)
!3802 = !DILocation(line: 1465, column: 30, scope: !3791)
!3803 = !DILocation(line: 1465, column: 28, scope: !3791)
!3804 = !DILocation(line: 1465, column: 10, scope: !3791)
!3805 = !DILocation(line: 1465, column: 5, scope: !3791)
!3806 = !DILocation(line: 1465, column: 13, scope: !3791)
!3807 = !DILocation(line: 1466, column: 3, scope: !3791)
!3808 = !DILocation(line: 1461, column: 36, scope: !3787)
!3809 = !DILocation(line: 1461, column: 3, scope: !3787)
!3810 = distinct !{!3810, !3789, !3811, !128}
!3811 = !DILocation(line: 1466, column: 3, scope: !3783)
!3812 = !DILocalVariable(name: "opad", scope: !3728, file: !3, line: 1467, type: !1313)
!3813 = !DILocation(line: 1467, column: 11, scope: !3728)
!3814 = !DILocation(line: 1468, column: 3, scope: !3728)
!3815 = !DILocalVariable(name: "i", scope: !3816, file: !3, line: 1469, type: !5)
!3816 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1469, column: 3)
!3817 = !DILocation(line: 1469, column: 17, scope: !3816)
!3818 = !DILocation(line: 1469, column: 8, scope: !3816)
!3819 = !DILocation(line: 1469, column: 25, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3816, file: !3, line: 1469, column: 3)
!3821 = !DILocation(line: 1469, column: 27, scope: !3820)
!3822 = !DILocation(line: 1469, column: 3, scope: !3816)
!3823 = !DILocalVariable(name: "xi", scope: !3824, file: !3, line: 1471, type: !38)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 1470, column: 3)
!3825 = !DILocation(line: 1471, column: 13, scope: !3824)
!3826 = !DILocation(line: 1471, column: 23, scope: !3824)
!3827 = !DILocation(line: 1471, column: 18, scope: !3824)
!3828 = !DILocalVariable(name: "yi", scope: !3824, file: !3, line: 1472, type: !38)
!3829 = !DILocation(line: 1472, column: 13, scope: !3824)
!3830 = !DILocation(line: 1472, column: 28, scope: !3824)
!3831 = !DILocation(line: 1472, column: 18, scope: !3824)
!3832 = !DILocation(line: 1473, column: 25, scope: !3824)
!3833 = !DILocation(line: 1473, column: 15, scope: !3824)
!3834 = !DILocation(line: 1473, column: 40, scope: !3824)
!3835 = !DILocation(line: 1473, column: 30, scope: !3824)
!3836 = !DILocation(line: 1473, column: 28, scope: !3824)
!3837 = !DILocation(line: 1473, column: 10, scope: !3824)
!3838 = !DILocation(line: 1473, column: 5, scope: !3824)
!3839 = !DILocation(line: 1473, column: 13, scope: !3824)
!3840 = !DILocation(line: 1474, column: 3, scope: !3824)
!3841 = !DILocation(line: 1469, column: 36, scope: !3820)
!3842 = !DILocation(line: 1469, column: 3, scope: !3820)
!3843 = distinct !{!3843, !3822, !3844, !128}
!3844 = !DILocation(line: 1474, column: 3, scope: !3816)
!3845 = !DILocalVariable(name: "s", scope: !3728, file: !3, line: 1475, type: !3846)
!3846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !3521)
!3847 = !DILocation(line: 1475, column: 12, scope: !3728)
!3848 = !DILocation(line: 1476, column: 26, scope: !3728)
!3849 = !DILocation(line: 1476, column: 3, scope: !3728)
!3850 = !DILocalVariable(name: "s0", scope: !3728, file: !3, line: 1477, type: !1430)
!3851 = !DILocation(line: 1477, column: 13, scope: !3728)
!3852 = !DILocation(line: 1477, column: 18, scope: !3728)
!3853 = !DILocalVariable(name: "dst1", scope: !3728, file: !3, line: 1478, type: !37)
!3854 = !DILocation(line: 1478, column: 12, scope: !3728)
!3855 = !DILocation(line: 1478, column: 19, scope: !3728)
!3856 = !DILocation(line: 1479, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1479, column: 7)
!3858 = !DILocation(line: 1479, column: 16, scope: !3857)
!3859 = !DILocation(line: 1479, column: 7, scope: !3728)
!3860 = !DILocalVariable(name: "wv", scope: !3861, file: !3, line: 1481, type: !3846)
!3861 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 1480, column: 3)
!3862 = !DILocation(line: 1481, column: 14, scope: !3861)
!3863 = !DILocation(line: 1483, column: 7, scope: !3861)
!3864 = !DILocation(line: 1484, column: 7, scope: !3861)
!3865 = !DILocation(line: 1486, column: 7, scope: !3861)
!3866 = !DILocation(line: 1488, column: 7, scope: !3861)
!3867 = !DILocation(line: 1482, column: 5, scope: !3861)
!3868 = !DILocation(line: 1489, column: 3, scope: !3861)
!3869 = !DILocalVariable(name: "block_len", scope: !3870, file: !3, line: 1492, type: !5)
!3870 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 1491, column: 3)
!3871 = !DILocation(line: 1492, column: 14, scope: !3870)
!3872 = !DILocalVariable(name: "n_blocks0", scope: !3870, file: !3, line: 1493, type: !5)
!3873 = !DILocation(line: 1493, column: 14, scope: !3870)
!3874 = !DILocation(line: 1493, column: 26, scope: !3870)
!3875 = !DILocation(line: 1493, column: 37, scope: !3870)
!3876 = !DILocation(line: 1493, column: 35, scope: !3870)
!3877 = !DILocalVariable(name: "rem0", scope: !3870, file: !3, line: 1494, type: !5)
!3878 = !DILocation(line: 1494, column: 14, scope: !3870)
!3879 = !DILocation(line: 1494, column: 21, scope: !3870)
!3880 = !DILocation(line: 1494, column: 32, scope: !3870)
!3881 = !DILocation(line: 1494, column: 30, scope: !3870)
!3882 = !DILocalVariable(name: "scrut", scope: !3870, file: !3, line: 1495, type: !193)
!3883 = !DILocation(line: 1495, column: 27, scope: !3870)
!3884 = !DILocation(line: 1496, column: 9, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 1496, column: 9)
!3886 = !DILocation(line: 1496, column: 19, scope: !3885)
!3887 = !DILocation(line: 1496, column: 24, scope: !3885)
!3888 = !DILocation(line: 1496, column: 27, scope: !3885)
!3889 = !DILocation(line: 1496, column: 32, scope: !3885)
!3890 = !DILocation(line: 1496, column: 9, scope: !3870)
!3891 = !DILocalVariable(name: "n_blocks_", scope: !3892, file: !3, line: 1498, type: !5)
!3892 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 1497, column: 5)
!3893 = !DILocation(line: 1498, column: 16, scope: !3892)
!3894 = !DILocation(line: 1498, column: 28, scope: !3892)
!3895 = !DILocation(line: 1498, column: 38, scope: !3892)
!3896 = !DILocation(line: 1499, column: 39, scope: !3892)
!3897 = !DILocation(line: 1499, column: 48, scope: !3892)
!3898 = !DILocation(line: 1499, column: 66, scope: !3892)
!3899 = !DILocation(line: 1499, column: 77, scope: !3892)
!3900 = !DILocation(line: 1499, column: 89, scope: !3892)
!3901 = !DILocation(line: 1499, column: 87, scope: !3892)
!3902 = !DILocation(line: 1499, column: 75, scope: !3892)
!3903 = !DILocation(line: 1499, column: 16, scope: !3892)
!3904 = !DILocation(line: 1500, column: 5, scope: !3892)
!3905 = !DILocation(line: 1503, column: 39, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 1502, column: 5)
!3907 = !DILocation(line: 1503, column: 48, scope: !3906)
!3908 = !DILocation(line: 1503, column: 66, scope: !3906)
!3909 = !DILocation(line: 1503, column: 16, scope: !3906)
!3910 = !DILocalVariable(name: "n_blocks", scope: !3870, file: !3, line: 1505, type: !5)
!3911 = !DILocation(line: 1505, column: 14, scope: !3870)
!3912 = !DILocation(line: 1505, column: 31, scope: !3870)
!3913 = !DILocalVariable(name: "rem_len", scope: !3870, file: !3, line: 1506, type: !5)
!3914 = !DILocation(line: 1506, column: 14, scope: !3870)
!3915 = !DILocation(line: 1506, column: 30, scope: !3870)
!3916 = !DILocalVariable(name: "full_blocks_len", scope: !3870, file: !3, line: 1507, type: !5)
!3917 = !DILocation(line: 1507, column: 14, scope: !3870)
!3918 = !DILocation(line: 1507, column: 32, scope: !3870)
!3919 = !DILocation(line: 1507, column: 43, scope: !3870)
!3920 = !DILocation(line: 1507, column: 41, scope: !3870)
!3921 = !DILocalVariable(name: "full_blocks", scope: !3870, file: !3, line: 1508, type: !37)
!3922 = !DILocation(line: 1508, column: 14, scope: !3870)
!3923 = !DILocation(line: 1508, column: 28, scope: !3870)
!3924 = !DILocalVariable(name: "rem", scope: !3870, file: !3, line: 1509, type: !37)
!3925 = !DILocation(line: 1509, column: 14, scope: !3870)
!3926 = !DILocation(line: 1509, column: 20, scope: !3870)
!3927 = !DILocation(line: 1509, column: 27, scope: !3870)
!3928 = !DILocation(line: 1509, column: 25, scope: !3870)
!3929 = !DILocalVariable(name: "wv", scope: !3870, file: !3, line: 1510, type: !3846)
!3930 = !DILocation(line: 1510, column: 14, scope: !3870)
!3931 = !DILocation(line: 1511, column: 42, scope: !3870)
!3932 = !DILocation(line: 1511, column: 46, scope: !3870)
!3933 = !DILocation(line: 1511, column: 50, scope: !3870)
!3934 = !DILocation(line: 1511, column: 89, scope: !3870)
!3935 = !DILocation(line: 1511, column: 5, scope: !3870)
!3936 = !DILocalVariable(name: "wv0", scope: !3870, file: !3, line: 1512, type: !3846)
!3937 = !DILocation(line: 1512, column: 14, scope: !3870)
!3938 = !DILocation(line: 1513, column: 36, scope: !3870)
!3939 = !DILocation(line: 1513, column: 45, scope: !3870)
!3940 = !DILocation(line: 1514, column: 7, scope: !3870)
!3941 = !DILocation(line: 1515, column: 7, scope: !3870)
!3942 = !DILocation(line: 1516, column: 49, scope: !3870)
!3943 = !DILocation(line: 1516, column: 39, scope: !3870)
!3944 = !DILocation(line: 1516, column: 7, scope: !3870)
!3945 = !DILocation(line: 1517, column: 7, scope: !3870)
!3946 = !DILocation(line: 1518, column: 7, scope: !3870)
!3947 = !DILocation(line: 1513, column: 5, scope: !3870)
!3948 = !DILocalVariable(name: "wv1", scope: !3870, file: !3, line: 1519, type: !3846)
!3949 = !DILocation(line: 1519, column: 14, scope: !3870)
!3950 = !DILocation(line: 1520, column: 35, scope: !3870)
!3951 = !DILocation(line: 1521, column: 7, scope: !3870)
!3952 = !DILocation(line: 1522, column: 7, scope: !3870)
!3953 = !DILocation(line: 1524, column: 25, scope: !3870)
!3954 = !DILocation(line: 1525, column: 51, scope: !3870)
!3955 = !DILocation(line: 1525, column: 41, scope: !3870)
!3956 = !DILocation(line: 1525, column: 9, scope: !3870)
!3957 = !DILocation(line: 1524, column: 7, scope: !3870)
!3958 = !DILocation(line: 1526, column: 7, scope: !3870)
!3959 = !DILocation(line: 1527, column: 7, scope: !3870)
!3960 = !DILocation(line: 1520, column: 5, scope: !3870)
!3961 = !DILocation(line: 1529, column: 33, scope: !3728)
!3962 = !DILocation(line: 1529, column: 39, scope: !3728)
!3963 = !DILocation(line: 1529, column: 3, scope: !3728)
!3964 = !DILocalVariable(name: "hash1", scope: !3728, file: !3, line: 1530, type: !37)
!3965 = !DILocation(line: 1530, column: 12, scope: !3728)
!3966 = !DILocation(line: 1530, column: 20, scope: !3728)
!3967 = !DILocation(line: 1531, column: 26, scope: !3728)
!3968 = !DILocation(line: 1531, column: 3, scope: !3728)
!3969 = !DILocalVariable(name: "block_len", scope: !3728, file: !3, line: 1532, type: !5)
!3970 = !DILocation(line: 1532, column: 12, scope: !3728)
!3971 = !DILocalVariable(name: "n_blocks0", scope: !3728, file: !3, line: 1533, type: !5)
!3972 = !DILocation(line: 1533, column: 12, scope: !3728)
!3973 = !DILocation(line: 1533, column: 30, scope: !3728)
!3974 = !DILocation(line: 1533, column: 28, scope: !3728)
!3975 = !DILocalVariable(name: "rem0", scope: !3728, file: !3, line: 1534, type: !5)
!3976 = !DILocation(line: 1534, column: 12, scope: !3728)
!3977 = !DILocation(line: 1534, column: 25, scope: !3728)
!3978 = !DILocation(line: 1534, column: 23, scope: !3728)
!3979 = !DILocalVariable(name: "scrut", scope: !3728, file: !3, line: 1535, type: !193)
!3980 = !DILocation(line: 1535, column: 25, scope: !3728)
!3981 = !DILocation(line: 1536, column: 7, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1536, column: 7)
!3983 = !DILocation(line: 1536, column: 17, scope: !3982)
!3984 = !DILocation(line: 1536, column: 22, scope: !3982)
!3985 = !DILocation(line: 1536, column: 25, scope: !3982)
!3986 = !DILocation(line: 1536, column: 30, scope: !3982)
!3987 = !DILocation(line: 1536, column: 7, scope: !3728)
!3988 = !DILocalVariable(name: "n_blocks_", scope: !3989, file: !3, line: 1538, type: !5)
!3989 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 1537, column: 3)
!3990 = !DILocation(line: 1538, column: 14, scope: !3989)
!3991 = !DILocation(line: 1538, column: 26, scope: !3989)
!3992 = !DILocation(line: 1538, column: 36, scope: !3989)
!3993 = !DILocation(line: 1539, column: 37, scope: !3989)
!3994 = !DILocation(line: 1539, column: 46, scope: !3989)
!3995 = !DILocation(line: 1539, column: 70, scope: !3989)
!3996 = !DILocation(line: 1539, column: 82, scope: !3989)
!3997 = !DILocation(line: 1539, column: 80, scope: !3989)
!3998 = !DILocation(line: 1539, column: 68, scope: !3989)
!3999 = !DILocation(line: 1539, column: 14, scope: !3989)
!4000 = !DILocation(line: 1540, column: 3, scope: !3989)
!4001 = !DILocation(line: 1543, column: 37, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 1542, column: 3)
!4003 = !DILocation(line: 1543, column: 46, scope: !4002)
!4004 = !DILocation(line: 1543, column: 64, scope: !4002)
!4005 = !DILocation(line: 1543, column: 14, scope: !4002)
!4006 = !DILocalVariable(name: "n_blocks", scope: !3728, file: !3, line: 1545, type: !5)
!4007 = !DILocation(line: 1545, column: 12, scope: !3728)
!4008 = !DILocation(line: 1545, column: 29, scope: !3728)
!4009 = !DILocalVariable(name: "rem_len", scope: !3728, file: !3, line: 1546, type: !5)
!4010 = !DILocation(line: 1546, column: 12, scope: !3728)
!4011 = !DILocation(line: 1546, column: 28, scope: !3728)
!4012 = !DILocalVariable(name: "full_blocks_len", scope: !3728, file: !3, line: 1547, type: !5)
!4013 = !DILocation(line: 1547, column: 12, scope: !3728)
!4014 = !DILocation(line: 1547, column: 30, scope: !3728)
!4015 = !DILocation(line: 1547, column: 41, scope: !3728)
!4016 = !DILocation(line: 1547, column: 39, scope: !3728)
!4017 = !DILocalVariable(name: "full_blocks", scope: !3728, file: !3, line: 1548, type: !37)
!4018 = !DILocation(line: 1548, column: 12, scope: !3728)
!4019 = !DILocation(line: 1548, column: 26, scope: !3728)
!4020 = !DILocalVariable(name: "rem", scope: !3728, file: !3, line: 1549, type: !37)
!4021 = !DILocation(line: 1549, column: 12, scope: !3728)
!4022 = !DILocation(line: 1549, column: 18, scope: !3728)
!4023 = !DILocation(line: 1549, column: 26, scope: !3728)
!4024 = !DILocation(line: 1549, column: 24, scope: !3728)
!4025 = !DILocalVariable(name: "wv", scope: !3728, file: !3, line: 1550, type: !3846)
!4026 = !DILocation(line: 1550, column: 12, scope: !3728)
!4027 = !DILocation(line: 1551, column: 40, scope: !3728)
!4028 = !DILocation(line: 1551, column: 44, scope: !3728)
!4029 = !DILocation(line: 1551, column: 48, scope: !3728)
!4030 = !DILocation(line: 1551, column: 87, scope: !3728)
!4031 = !DILocation(line: 1551, column: 3, scope: !3728)
!4032 = !DILocalVariable(name: "wv0", scope: !3728, file: !3, line: 1552, type: !3846)
!4033 = !DILocation(line: 1552, column: 12, scope: !3728)
!4034 = !DILocation(line: 1553, column: 34, scope: !3728)
!4035 = !DILocation(line: 1553, column: 43, scope: !3728)
!4036 = !DILocation(line: 1554, column: 5, scope: !3728)
!4037 = !DILocation(line: 1555, column: 5, scope: !3728)
!4038 = !DILocation(line: 1556, column: 47, scope: !3728)
!4039 = !DILocation(line: 1556, column: 37, scope: !3728)
!4040 = !DILocation(line: 1556, column: 5, scope: !3728)
!4041 = !DILocation(line: 1557, column: 5, scope: !3728)
!4042 = !DILocation(line: 1558, column: 5, scope: !3728)
!4043 = !DILocation(line: 1553, column: 3, scope: !3728)
!4044 = !DILocalVariable(name: "wv1", scope: !3728, file: !3, line: 1559, type: !3846)
!4045 = !DILocation(line: 1559, column: 12, scope: !3728)
!4046 = !DILocation(line: 1560, column: 33, scope: !3728)
!4047 = !DILocation(line: 1561, column: 5, scope: !3728)
!4048 = !DILocation(line: 1562, column: 5, scope: !3728)
!4049 = !DILocation(line: 1564, column: 23, scope: !3728)
!4050 = !DILocation(line: 1565, column: 49, scope: !3728)
!4051 = !DILocation(line: 1565, column: 39, scope: !3728)
!4052 = !DILocation(line: 1565, column: 7, scope: !3728)
!4053 = !DILocation(line: 1564, column: 5, scope: !3728)
!4054 = !DILocation(line: 1566, column: 5, scope: !3728)
!4055 = !DILocation(line: 1567, column: 5, scope: !3728)
!4056 = !DILocation(line: 1560, column: 3, scope: !3728)
!4057 = !DILocation(line: 1568, column: 33, scope: !3728)
!4058 = !DILocation(line: 1568, column: 38, scope: !3728)
!4059 = !DILocation(line: 1568, column: 3, scope: !3728)
!4060 = !DILocation(line: 1569, column: 1, scope: !3728)
!4061 = distinct !DISubprogram(name: "FStar_UInt128_carry", scope: !1650, file: !1650, line: 21, type: !4062, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!10, !10, !10}
!4064 = !DILocalVariable(name: "a", arg: 1, scope: !4061, file: !1650, line: 21, type: !10)
!4065 = !DILocation(line: 21, column: 53, scope: !4061)
!4066 = !DILocalVariable(name: "b", arg: 2, scope: !4061, file: !1650, line: 21, type: !10)
!4067 = !DILocation(line: 21, column: 65, scope: !4061)
!4068 = !DILocation(line: 23, column: 44, scope: !4061)
!4069 = !DILocation(line: 23, column: 47, scope: !4061)
!4070 = !DILocation(line: 23, column: 10, scope: !4061)
!4071 = !DILocation(line: 23, column: 3, scope: !4061)
!4072 = distinct !DISubprogram(name: "FStar_UInt128_constant_time_carry", scope: !1650, file: !1650, line: 16, type: !4062, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!4073 = !DILocalVariable(name: "a", arg: 1, scope: !4072, file: !1650, line: 16, type: !10)
!4074 = !DILocation(line: 16, column: 67, scope: !4072)
!4075 = !DILocalVariable(name: "b", arg: 2, scope: !4072, file: !1650, line: 16, type: !10)
!4076 = !DILocation(line: 16, column: 79, scope: !4072)
!4077 = !DILocation(line: 18, column: 11, scope: !4072)
!4078 = !DILocation(line: 18, column: 17, scope: !4072)
!4079 = !DILocation(line: 18, column: 21, scope: !4072)
!4080 = !DILocation(line: 18, column: 19, scope: !4072)
!4081 = !DILocation(line: 18, column: 28, scope: !4072)
!4082 = !DILocation(line: 18, column: 32, scope: !4072)
!4083 = !DILocation(line: 18, column: 30, scope: !4072)
!4084 = !DILocation(line: 18, column: 37, scope: !4072)
!4085 = !DILocation(line: 18, column: 35, scope: !4072)
!4086 = !DILocation(line: 18, column: 24, scope: !4072)
!4087 = !DILocation(line: 18, column: 13, scope: !4072)
!4088 = !DILocation(line: 18, column: 42, scope: !4072)
!4089 = !DILocation(line: 18, column: 3, scope: !4072)
