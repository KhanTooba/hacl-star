; ModuleID = 'Hacl_HMAC.c'
source_filename = "Hacl_HMAC.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-unknown"

%struct.K___uint32_t_uint32_t_s = type { i32, i32 }

@__const.Hacl_HMAC_compute_md5.s = private unnamed_addr constant [4 x i32] [i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878], align 4
@__const.Hacl_HMAC_compute_sha1.s = private unnamed_addr constant [5 x i32] [i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878, i32 -1009589776], align 4
@Hacl_Hash_SHA2_h224 = internal constant [8 x i32] [i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599, i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868], align 4, !dbg !0
@Hacl_Hash_SHA2_h256 = internal constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 4, !dbg !18
@Hacl_Hash_SHA2_h384 = internal constant [8 x i64] [i64 -3766243637369397544, i64 7105036623409894663, i64 -7973340178411365097, i64 1526699215303891257, i64 7436329637833083697, i64 -8163818279084223215, i64 -2662702644619276377, i64 5167115440072839076], align 8, !dbg !25
@Hacl_Hash_SHA2_h512 = internal constant [8 x i64] [i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809], align 8, !dbg !29

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_md5(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !38 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [64 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [4 x i32], align 4
  %24 = alloca i8*, align 8
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
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
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
  %48 = alloca i8*, align 8
  %49 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !52, metadata !DIExpression()), !dbg !53
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !56, metadata !DIExpression()), !dbg !60
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 1 %50, i8 0, i64 64, i1 false), !dbg !61
  call void @llvm.dbg.declare(metadata i8** %12, metadata !62, metadata !DIExpression()), !dbg !63
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !64
  store i8* %51, i8** %12, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %13, metadata !65, metadata !DIExpression()), !dbg !66
  %52 = load i32, i32* %8, align 4, !dbg !67
  %53 = icmp ule i32 %52, 64, !dbg !69
  br i1 %53, label %54, label %56, !dbg !70

54:                                               ; preds = %5
  %55 = load i32, i32* %8, align 4, !dbg !71
  store i32 %55, i32* %13, align 4, !dbg !73
  br label %57, !dbg !74

56:                                               ; preds = %5
  store i32 16, i32* %13, align 4, !dbg !75
  br label %57

57:                                               ; preds = %56, %54
  call void @llvm.dbg.declare(metadata i8** %14, metadata !77, metadata !DIExpression()), !dbg !78
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !79
  %59 = load i32, i32* %13, align 4, !dbg !80
  %60 = zext i32 %59 to i64, !dbg !81
  %61 = getelementptr inbounds i8, i8* %58, i64 %60, !dbg !81
  store i8* %61, i8** %14, align 8, !dbg !78
  %62 = load i8*, i8** %14, align 8, !dbg !82
  %63 = load i32, i32* %8, align 4, !dbg !83
  %64 = icmp ule i32 %63, 64, !dbg !85
  br i1 %64, label %65, label %71, !dbg !86

65:                                               ; preds = %57
  %66 = load i8*, i8** %12, align 8, !dbg !87
  %67 = load i8*, i8** %7, align 8, !dbg !89
  %68 = load i32, i32* %8, align 4, !dbg !90
  %69 = zext i32 %68 to i64, !dbg !90
  %70 = mul i64 %69, 1, !dbg !91
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %66, i8* align 1 %67, i64 %70, i1 false), !dbg !92
  br label %75, !dbg !93

71:                                               ; preds = %57
  %72 = load i8*, i8** %12, align 8, !dbg !94
  %73 = load i8*, i8** %7, align 8, !dbg !96
  %74 = load i32, i32* %8, align 4, !dbg !97
  call void @Hacl_Hash_MD5_hash_oneshot(i8* noundef %72, i8* noundef %73, i32 noundef signext %74), !dbg !98
  br label %75

75:                                               ; preds = %71, %65
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !99, metadata !DIExpression()), !dbg !100
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !101
  call void @llvm.memset.p0i8.i64(i8* align 1 %76, i8 54, i64 64, i1 false), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %16, metadata !102, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %16, align 4, !dbg !104
  br label %77, !dbg !105

77:                                               ; preds = %98, %75
  %78 = load i32, i32* %16, align 4, !dbg !106
  %79 = icmp ult i32 %78, 64, !dbg !108
  br i1 %79, label %80, label %101, !dbg !109

80:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata i8* %17, metadata !110, metadata !DIExpression()), !dbg !112
  %81 = load i32, i32* %16, align 4, !dbg !113
  %82 = zext i32 %81 to i64, !dbg !114
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %82, !dbg !114
  %84 = load i8, i8* %83, align 1, !dbg !114
  store i8 %84, i8* %17, align 1, !dbg !112
  call void @llvm.dbg.declare(metadata i8* %18, metadata !115, metadata !DIExpression()), !dbg !116
  %85 = load i32, i32* %16, align 4, !dbg !117
  %86 = zext i32 %85 to i64, !dbg !118
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %86, !dbg !118
  %88 = load i8, i8* %87, align 1, !dbg !118
  store i8 %88, i8* %18, align 1, !dbg !116
  %89 = load i8, i8* %17, align 1, !dbg !119
  %90 = zext i8 %89 to i32, !dbg !120
  %91 = load i8, i8* %18, align 1, !dbg !121
  %92 = zext i8 %91 to i32, !dbg !122
  %93 = xor i32 %90, %92, !dbg !123
  %94 = trunc i32 %93 to i8, !dbg !120
  %95 = load i32, i32* %16, align 4, !dbg !124
  %96 = zext i32 %95 to i64, !dbg !125
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %96, !dbg !125
  store i8 %94, i8* %97, align 1, !dbg !126
  br label %98, !dbg !127

98:                                               ; preds = %80
  %99 = load i32, i32* %16, align 4, !dbg !128
  %100 = add i32 %99, 1, !dbg !128
  store i32 %100, i32* %16, align 4, !dbg !128
  br label %77, !dbg !129, !llvm.loop !130

101:                                              ; preds = %77
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !133, metadata !DIExpression()), !dbg !134
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 1 %102, i8 92, i64 64, i1 false), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %20, metadata !136, metadata !DIExpression()), !dbg !138
  store i32 0, i32* %20, align 4, !dbg !138
  br label %103, !dbg !139

103:                                              ; preds = %124, %101
  %104 = load i32, i32* %20, align 4, !dbg !140
  %105 = icmp ult i32 %104, 64, !dbg !142
  br i1 %105, label %106, label %127, !dbg !143

106:                                              ; preds = %103
  call void @llvm.dbg.declare(metadata i8* %21, metadata !144, metadata !DIExpression()), !dbg !146
  %107 = load i32, i32* %20, align 4, !dbg !147
  %108 = zext i32 %107 to i64, !dbg !148
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %108, !dbg !148
  %110 = load i8, i8* %109, align 1, !dbg !148
  store i8 %110, i8* %21, align 1, !dbg !146
  call void @llvm.dbg.declare(metadata i8* %22, metadata !149, metadata !DIExpression()), !dbg !150
  %111 = load i32, i32* %20, align 4, !dbg !151
  %112 = zext i32 %111 to i64, !dbg !152
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %112, !dbg !152
  %114 = load i8, i8* %113, align 1, !dbg !152
  store i8 %114, i8* %22, align 1, !dbg !150
  %115 = load i8, i8* %21, align 1, !dbg !153
  %116 = zext i8 %115 to i32, !dbg !154
  %117 = load i8, i8* %22, align 1, !dbg !155
  %118 = zext i8 %117 to i32, !dbg !156
  %119 = xor i32 %116, %118, !dbg !157
  %120 = trunc i32 %119 to i8, !dbg !154
  %121 = load i32, i32* %20, align 4, !dbg !158
  %122 = zext i32 %121 to i64, !dbg !159
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %122, !dbg !159
  store i8 %120, i8* %123, align 1, !dbg !160
  br label %124, !dbg !161

124:                                              ; preds = %106
  %125 = load i32, i32* %20, align 4, !dbg !162
  %126 = add i32 %125, 1, !dbg !162
  store i32 %126, i32* %20, align 4, !dbg !162
  br label %103, !dbg !163, !llvm.loop !164

127:                                              ; preds = %103
  call void @llvm.dbg.declare(metadata [4 x i32]* %23, metadata !166, metadata !DIExpression()), !dbg !170
  %128 = bitcast [4 x i32]* %23 to i8*, !dbg !170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 bitcast ([4 x i32]* @__const.Hacl_HMAC_compute_md5.s to i8*), i64 16, i1 false), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %24, metadata !171, metadata !DIExpression()), !dbg !172
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !173
  store i8* %129, i8** %24, align 8, !dbg !172
  %130 = load i32, i32* %10, align 4, !dbg !174
  %131 = icmp eq i32 %130, 0, !dbg !176
  br i1 %131, label %132, label %135, !dbg !177

132:                                              ; preds = %127
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !178
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !180
  call void @Hacl_Hash_MD5_update_last(i32* noundef %133, i64 noundef 0, i8* noundef %134, i32 noundef signext 64), !dbg !181
  br label %191, !dbg !182

135:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata i32* %25, metadata !183, metadata !DIExpression()), !dbg !185
  store i32 64, i32* %25, align 4, !dbg !185
  call void @llvm.dbg.declare(metadata i32* %26, metadata !186, metadata !DIExpression()), !dbg !187
  %136 = load i32, i32* %10, align 4, !dbg !188
  %137 = load i32, i32* %25, align 4, !dbg !189
  %138 = udiv i32 %136, %137, !dbg !190
  store i32 %138, i32* %26, align 4, !dbg !187
  call void @llvm.dbg.declare(metadata i32* %27, metadata !191, metadata !DIExpression()), !dbg !192
  %139 = load i32, i32* %10, align 4, !dbg !193
  %140 = load i32, i32* %25, align 4, !dbg !194
  %141 = urem i32 %139, %140, !dbg !195
  store i32 %141, i32* %27, align 4, !dbg !192
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !196, metadata !DIExpression()), !dbg !203
  %142 = load i32, i32* %26, align 4, !dbg !204
  %143 = icmp ugt i32 %142, 0, !dbg !206
  br i1 %143, label %144, label %160, !dbg !207

144:                                              ; preds = %135
  %145 = load i32, i32* %27, align 4, !dbg !208
  %146 = icmp eq i32 %145, 0, !dbg !209
  br i1 %146, label %147, label %160, !dbg !210

147:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata i32* %29, metadata !211, metadata !DIExpression()), !dbg !213
  %148 = load i32, i32* %26, align 4, !dbg !214
  %149 = sub i32 %148, 1, !dbg !215
  store i32 %149, i32* %29, align 4, !dbg !213
  %150 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !216
  %151 = load i32, i32* %29, align 4, !dbg !217
  store i32 %151, i32* %150, align 4, !dbg !216
  %152 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !216
  %153 = load i32, i32* %10, align 4, !dbg !218
  %154 = load i32, i32* %29, align 4, !dbg !219
  %155 = load i32, i32* %25, align 4, !dbg !220
  %156 = mul i32 %154, %155, !dbg !221
  %157 = sub i32 %153, %156, !dbg !222
  store i32 %157, i32* %152, align 4, !dbg !216
  %158 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !223
  %159 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %159, i64 8, i1 false), !dbg !223
  br label %167, !dbg !224

160:                                              ; preds = %144, %135
  %161 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !225
  %162 = load i32, i32* %26, align 4, !dbg !227
  store i32 %162, i32* %161, align 4, !dbg !225
  %163 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !225
  %164 = load i32, i32* %27, align 4, !dbg !228
  store i32 %164, i32* %163, align 4, !dbg !225
  %165 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !229
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 8, i1 false), !dbg !229
  br label %167

167:                                              ; preds = %160, %147
  call void @llvm.dbg.declare(metadata i32* %32, metadata !230, metadata !DIExpression()), !dbg !231
  %168 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !232
  %169 = load i32, i32* %168, align 4, !dbg !232
  store i32 %169, i32* %32, align 4, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %33, metadata !233, metadata !DIExpression()), !dbg !234
  %170 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !235
  %171 = load i32, i32* %170, align 4, !dbg !235
  store i32 %171, i32* %33, align 4, !dbg !234
  call void @llvm.dbg.declare(metadata i32* %34, metadata !236, metadata !DIExpression()), !dbg !237
  %172 = load i32, i32* %32, align 4, !dbg !238
  %173 = load i32, i32* %25, align 4, !dbg !239
  %174 = mul i32 %172, %173, !dbg !240
  store i32 %174, i32* %34, align 4, !dbg !237
  call void @llvm.dbg.declare(metadata i8** %35, metadata !241, metadata !DIExpression()), !dbg !242
  %175 = load i8*, i8** %9, align 8, !dbg !243
  store i8* %175, i8** %35, align 8, !dbg !242
  call void @llvm.dbg.declare(metadata i8** %36, metadata !244, metadata !DIExpression()), !dbg !245
  %176 = load i8*, i8** %9, align 8, !dbg !246
  %177 = load i32, i32* %34, align 4, !dbg !247
  %178 = zext i32 %177 to i64, !dbg !248
  %179 = getelementptr inbounds i8, i8* %176, i64 %178, !dbg !248
  store i8* %179, i8** %36, align 8, !dbg !245
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !249
  %181 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !250
  call void @Hacl_Hash_MD5_update_multi(i32* noundef %180, i8* noundef %181, i32 noundef signext 1), !dbg !251
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !252
  %183 = load i8*, i8** %35, align 8, !dbg !253
  %184 = load i32, i32* %32, align 4, !dbg !254
  call void @Hacl_Hash_MD5_update_multi(i32* noundef %182, i8* noundef %183, i32 noundef signext %184), !dbg !255
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !256
  %186 = load i32, i32* %34, align 4, !dbg !257
  %187 = zext i32 %186 to i64, !dbg !258
  %188 = add i64 64, %187, !dbg !259
  %189 = load i8*, i8** %36, align 8, !dbg !260
  %190 = load i32, i32* %33, align 4, !dbg !261
  call void @Hacl_Hash_MD5_update_last(i32* noundef %185, i64 noundef %188, i8* noundef %189, i32 noundef signext %190), !dbg !262
  br label %191

191:                                              ; preds = %167, %132
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !263
  %193 = load i8*, i8** %24, align 8, !dbg !264
  call void @Hacl_Hash_MD5_finish(i32* noundef %192, i8* noundef %193), !dbg !265
  call void @llvm.dbg.declare(metadata i8** %37, metadata !266, metadata !DIExpression()), !dbg !267
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !268
  store i8* %194, i8** %37, align 8, !dbg !267
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !269
  call void @Hacl_Hash_MD5_init(i32* noundef %195), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %38, metadata !271, metadata !DIExpression()), !dbg !272
  store i32 64, i32* %38, align 4, !dbg !272
  call void @llvm.dbg.declare(metadata i32* %39, metadata !273, metadata !DIExpression()), !dbg !274
  %196 = load i32, i32* %38, align 4, !dbg !275
  %197 = udiv i32 16, %196, !dbg !276
  store i32 %197, i32* %39, align 4, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %40, metadata !277, metadata !DIExpression()), !dbg !278
  %198 = load i32, i32* %38, align 4, !dbg !279
  %199 = urem i32 16, %198, !dbg !280
  store i32 %199, i32* %40, align 4, !dbg !278
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %41, metadata !281, metadata !DIExpression()), !dbg !282
  %200 = load i32, i32* %39, align 4, !dbg !283
  %201 = icmp ugt i32 %200, 0, !dbg !285
  br i1 %201, label %202, label %217, !dbg !286

202:                                              ; preds = %191
  %203 = load i32, i32* %40, align 4, !dbg !287
  %204 = icmp eq i32 %203, 0, !dbg !288
  br i1 %204, label %205, label %217, !dbg !289

205:                                              ; preds = %202
  call void @llvm.dbg.declare(metadata i32* %42, metadata !290, metadata !DIExpression()), !dbg !292
  %206 = load i32, i32* %39, align 4, !dbg !293
  %207 = sub i32 %206, 1, !dbg !294
  store i32 %207, i32* %42, align 4, !dbg !292
  %208 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %43, i32 0, i32 0, !dbg !295
  %209 = load i32, i32* %42, align 4, !dbg !296
  store i32 %209, i32* %208, align 4, !dbg !295
  %210 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %43, i32 0, i32 1, !dbg !295
  %211 = load i32, i32* %42, align 4, !dbg !297
  %212 = load i32, i32* %38, align 4, !dbg !298
  %213 = mul i32 %211, %212, !dbg !299
  %214 = sub i32 16, %213, !dbg !300
  store i32 %214, i32* %210, align 4, !dbg !295
  %215 = bitcast %struct.K___uint32_t_uint32_t_s* %41 to i8*, !dbg !301
  %216 = bitcast %struct.K___uint32_t_uint32_t_s* %43 to i8*, !dbg !301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %215, i8* align 4 %216, i64 8, i1 false), !dbg !301
  br label %224, !dbg !302

217:                                              ; preds = %202, %191
  %218 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %44, i32 0, i32 0, !dbg !303
  %219 = load i32, i32* %39, align 4, !dbg !305
  store i32 %219, i32* %218, align 4, !dbg !303
  %220 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %44, i32 0, i32 1, !dbg !303
  %221 = load i32, i32* %40, align 4, !dbg !306
  store i32 %221, i32* %220, align 4, !dbg !303
  %222 = bitcast %struct.K___uint32_t_uint32_t_s* %41 to i8*, !dbg !307
  %223 = bitcast %struct.K___uint32_t_uint32_t_s* %44 to i8*, !dbg !307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 4 %223, i64 8, i1 false), !dbg !307
  br label %224

224:                                              ; preds = %217, %205
  call void @llvm.dbg.declare(metadata i32* %45, metadata !308, metadata !DIExpression()), !dbg !309
  %225 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %41, i32 0, i32 0, !dbg !310
  %226 = load i32, i32* %225, align 4, !dbg !310
  store i32 %226, i32* %45, align 4, !dbg !309
  call void @llvm.dbg.declare(metadata i32* %46, metadata !311, metadata !DIExpression()), !dbg !312
  %227 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %41, i32 0, i32 1, !dbg !313
  %228 = load i32, i32* %227, align 4, !dbg !313
  store i32 %228, i32* %46, align 4, !dbg !312
  call void @llvm.dbg.declare(metadata i32* %47, metadata !314, metadata !DIExpression()), !dbg !315
  %229 = load i32, i32* %45, align 4, !dbg !316
  %230 = load i32, i32* %38, align 4, !dbg !317
  %231 = mul i32 %229, %230, !dbg !318
  store i32 %231, i32* %47, align 4, !dbg !315
  call void @llvm.dbg.declare(metadata i8** %48, metadata !319, metadata !DIExpression()), !dbg !320
  %232 = load i8*, i8** %37, align 8, !dbg !321
  store i8* %232, i8** %48, align 8, !dbg !320
  call void @llvm.dbg.declare(metadata i8** %49, metadata !322, metadata !DIExpression()), !dbg !323
  %233 = load i8*, i8** %37, align 8, !dbg !324
  %234 = load i32, i32* %47, align 4, !dbg !325
  %235 = zext i32 %234 to i64, !dbg !326
  %236 = getelementptr inbounds i8, i8* %233, i64 %235, !dbg !326
  store i8* %236, i8** %49, align 8, !dbg !323
  %237 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !327
  %238 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !328
  call void @Hacl_Hash_MD5_update_multi(i32* noundef %237, i8* noundef %238, i32 noundef signext 1), !dbg !329
  %239 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !330
  %240 = load i8*, i8** %48, align 8, !dbg !331
  %241 = load i32, i32* %45, align 4, !dbg !332
  call void @Hacl_Hash_MD5_update_multi(i32* noundef %239, i8* noundef %240, i32 noundef signext %241), !dbg !333
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !334
  %243 = load i32, i32* %47, align 4, !dbg !335
  %244 = zext i32 %243 to i64, !dbg !336
  %245 = add i64 64, %244, !dbg !337
  %246 = load i8*, i8** %49, align 8, !dbg !338
  %247 = load i32, i32* %46, align 4, !dbg !339
  call void @Hacl_Hash_MD5_update_last(i32* noundef %242, i64 noundef %245, i8* noundef %246, i32 noundef signext %247), !dbg !340
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !341
  %249 = load i8*, i8** %6, align 8, !dbg !342
  call void @Hacl_Hash_MD5_finish(i32* noundef %248, i8* noundef %249), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @Hacl_Hash_MD5_hash_oneshot(i8* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_MD5_update_last(i32* noundef, i64 noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_MD5_update_multi(i32* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_MD5_finish(i32* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_MD5_init(i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha1(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !345 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [64 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [5 x i32], align 4
  %24 = alloca i8*, align 8
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
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
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
  %48 = alloca i8*, align 8
  %49 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !346, metadata !DIExpression()), !dbg !347
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !348, metadata !DIExpression()), !dbg !349
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !350, metadata !DIExpression()), !dbg !351
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !352, metadata !DIExpression()), !dbg !353
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !356, metadata !DIExpression()), !dbg !357
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !358
  call void @llvm.memset.p0i8.i64(i8* align 1 %50, i8 0, i64 64, i1 false), !dbg !358
  call void @llvm.dbg.declare(metadata i8** %12, metadata !359, metadata !DIExpression()), !dbg !360
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !361
  store i8* %51, i8** %12, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata i32* %13, metadata !362, metadata !DIExpression()), !dbg !363
  %52 = load i32, i32* %8, align 4, !dbg !364
  %53 = icmp ule i32 %52, 64, !dbg !366
  br i1 %53, label %54, label %56, !dbg !367

54:                                               ; preds = %5
  %55 = load i32, i32* %8, align 4, !dbg !368
  store i32 %55, i32* %13, align 4, !dbg !370
  br label %57, !dbg !371

56:                                               ; preds = %5
  store i32 20, i32* %13, align 4, !dbg !372
  br label %57

57:                                               ; preds = %56, %54
  call void @llvm.dbg.declare(metadata i8** %14, metadata !374, metadata !DIExpression()), !dbg !375
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !376
  %59 = load i32, i32* %13, align 4, !dbg !377
  %60 = zext i32 %59 to i64, !dbg !378
  %61 = getelementptr inbounds i8, i8* %58, i64 %60, !dbg !378
  store i8* %61, i8** %14, align 8, !dbg !375
  %62 = load i8*, i8** %14, align 8, !dbg !379
  %63 = load i32, i32* %8, align 4, !dbg !380
  %64 = icmp ule i32 %63, 64, !dbg !382
  br i1 %64, label %65, label %71, !dbg !383

65:                                               ; preds = %57
  %66 = load i8*, i8** %12, align 8, !dbg !384
  %67 = load i8*, i8** %7, align 8, !dbg !386
  %68 = load i32, i32* %8, align 4, !dbg !387
  %69 = zext i32 %68 to i64, !dbg !387
  %70 = mul i64 %69, 1, !dbg !388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %66, i8* align 1 %67, i64 %70, i1 false), !dbg !389
  br label %75, !dbg !390

71:                                               ; preds = %57
  %72 = load i8*, i8** %12, align 8, !dbg !391
  %73 = load i8*, i8** %7, align 8, !dbg !393
  %74 = load i32, i32* %8, align 4, !dbg !394
  call void @Hacl_Hash_SHA1_hash_oneshot(i8* noundef %72, i8* noundef %73, i32 noundef signext %74), !dbg !395
  br label %75

75:                                               ; preds = %71, %65
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !396, metadata !DIExpression()), !dbg !397
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !398
  call void @llvm.memset.p0i8.i64(i8* align 1 %76, i8 54, i64 64, i1 false), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %16, metadata !399, metadata !DIExpression()), !dbg !401
  store i32 0, i32* %16, align 4, !dbg !401
  br label %77, !dbg !402

77:                                               ; preds = %98, %75
  %78 = load i32, i32* %16, align 4, !dbg !403
  %79 = icmp ult i32 %78, 64, !dbg !405
  br i1 %79, label %80, label %101, !dbg !406

80:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata i8* %17, metadata !407, metadata !DIExpression()), !dbg !409
  %81 = load i32, i32* %16, align 4, !dbg !410
  %82 = zext i32 %81 to i64, !dbg !411
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %82, !dbg !411
  %84 = load i8, i8* %83, align 1, !dbg !411
  store i8 %84, i8* %17, align 1, !dbg !409
  call void @llvm.dbg.declare(metadata i8* %18, metadata !412, metadata !DIExpression()), !dbg !413
  %85 = load i32, i32* %16, align 4, !dbg !414
  %86 = zext i32 %85 to i64, !dbg !415
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %86, !dbg !415
  %88 = load i8, i8* %87, align 1, !dbg !415
  store i8 %88, i8* %18, align 1, !dbg !413
  %89 = load i8, i8* %17, align 1, !dbg !416
  %90 = zext i8 %89 to i32, !dbg !417
  %91 = load i8, i8* %18, align 1, !dbg !418
  %92 = zext i8 %91 to i32, !dbg !419
  %93 = xor i32 %90, %92, !dbg !420
  %94 = trunc i32 %93 to i8, !dbg !417
  %95 = load i32, i32* %16, align 4, !dbg !421
  %96 = zext i32 %95 to i64, !dbg !422
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %96, !dbg !422
  store i8 %94, i8* %97, align 1, !dbg !423
  br label %98, !dbg !424

98:                                               ; preds = %80
  %99 = load i32, i32* %16, align 4, !dbg !425
  %100 = add i32 %99, 1, !dbg !425
  store i32 %100, i32* %16, align 4, !dbg !425
  br label %77, !dbg !426, !llvm.loop !427

101:                                              ; preds = %77
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !429, metadata !DIExpression()), !dbg !430
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !431
  call void @llvm.memset.p0i8.i64(i8* align 1 %102, i8 92, i64 64, i1 false), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %20, metadata !432, metadata !DIExpression()), !dbg !434
  store i32 0, i32* %20, align 4, !dbg !434
  br label %103, !dbg !435

103:                                              ; preds = %124, %101
  %104 = load i32, i32* %20, align 4, !dbg !436
  %105 = icmp ult i32 %104, 64, !dbg !438
  br i1 %105, label %106, label %127, !dbg !439

106:                                              ; preds = %103
  call void @llvm.dbg.declare(metadata i8* %21, metadata !440, metadata !DIExpression()), !dbg !442
  %107 = load i32, i32* %20, align 4, !dbg !443
  %108 = zext i32 %107 to i64, !dbg !444
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %108, !dbg !444
  %110 = load i8, i8* %109, align 1, !dbg !444
  store i8 %110, i8* %21, align 1, !dbg !442
  call void @llvm.dbg.declare(metadata i8* %22, metadata !445, metadata !DIExpression()), !dbg !446
  %111 = load i32, i32* %20, align 4, !dbg !447
  %112 = zext i32 %111 to i64, !dbg !448
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %112, !dbg !448
  %114 = load i8, i8* %113, align 1, !dbg !448
  store i8 %114, i8* %22, align 1, !dbg !446
  %115 = load i8, i8* %21, align 1, !dbg !449
  %116 = zext i8 %115 to i32, !dbg !450
  %117 = load i8, i8* %22, align 1, !dbg !451
  %118 = zext i8 %117 to i32, !dbg !452
  %119 = xor i32 %116, %118, !dbg !453
  %120 = trunc i32 %119 to i8, !dbg !450
  %121 = load i32, i32* %20, align 4, !dbg !454
  %122 = zext i32 %121 to i64, !dbg !455
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %122, !dbg !455
  store i8 %120, i8* %123, align 1, !dbg !456
  br label %124, !dbg !457

124:                                              ; preds = %106
  %125 = load i32, i32* %20, align 4, !dbg !458
  %126 = add i32 %125, 1, !dbg !458
  store i32 %126, i32* %20, align 4, !dbg !458
  br label %103, !dbg !459, !llvm.loop !460

127:                                              ; preds = %103
  call void @llvm.dbg.declare(metadata [5 x i32]* %23, metadata !462, metadata !DIExpression()), !dbg !466
  %128 = bitcast [5 x i32]* %23 to i8*, !dbg !466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 bitcast ([5 x i32]* @__const.Hacl_HMAC_compute_sha1.s to i8*), i64 20, i1 false), !dbg !466
  call void @llvm.dbg.declare(metadata i8** %24, metadata !467, metadata !DIExpression()), !dbg !468
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !469
  store i8* %129, i8** %24, align 8, !dbg !468
  %130 = load i32, i32* %10, align 4, !dbg !470
  %131 = icmp eq i32 %130, 0, !dbg !472
  br i1 %131, label %132, label %135, !dbg !473

132:                                              ; preds = %127
  %133 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !474
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !476
  call void @Hacl_Hash_SHA1_update_last(i32* noundef %133, i64 noundef 0, i8* noundef %134, i32 noundef signext 64), !dbg !477
  br label %191, !dbg !478

135:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata i32* %25, metadata !479, metadata !DIExpression()), !dbg !481
  store i32 64, i32* %25, align 4, !dbg !481
  call void @llvm.dbg.declare(metadata i32* %26, metadata !482, metadata !DIExpression()), !dbg !483
  %136 = load i32, i32* %10, align 4, !dbg !484
  %137 = load i32, i32* %25, align 4, !dbg !485
  %138 = udiv i32 %136, %137, !dbg !486
  store i32 %138, i32* %26, align 4, !dbg !483
  call void @llvm.dbg.declare(metadata i32* %27, metadata !487, metadata !DIExpression()), !dbg !488
  %139 = load i32, i32* %10, align 4, !dbg !489
  %140 = load i32, i32* %25, align 4, !dbg !490
  %141 = urem i32 %139, %140, !dbg !491
  store i32 %141, i32* %27, align 4, !dbg !488
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !492, metadata !DIExpression()), !dbg !493
  %142 = load i32, i32* %26, align 4, !dbg !494
  %143 = icmp ugt i32 %142, 0, !dbg !496
  br i1 %143, label %144, label %160, !dbg !497

144:                                              ; preds = %135
  %145 = load i32, i32* %27, align 4, !dbg !498
  %146 = icmp eq i32 %145, 0, !dbg !499
  br i1 %146, label %147, label %160, !dbg !500

147:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata i32* %29, metadata !501, metadata !DIExpression()), !dbg !503
  %148 = load i32, i32* %26, align 4, !dbg !504
  %149 = sub i32 %148, 1, !dbg !505
  store i32 %149, i32* %29, align 4, !dbg !503
  %150 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !506
  %151 = load i32, i32* %29, align 4, !dbg !507
  store i32 %151, i32* %150, align 4, !dbg !506
  %152 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !506
  %153 = load i32, i32* %10, align 4, !dbg !508
  %154 = load i32, i32* %29, align 4, !dbg !509
  %155 = load i32, i32* %25, align 4, !dbg !510
  %156 = mul i32 %154, %155, !dbg !511
  %157 = sub i32 %153, %156, !dbg !512
  store i32 %157, i32* %152, align 4, !dbg !506
  %158 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !513
  %159 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %159, i64 8, i1 false), !dbg !513
  br label %167, !dbg !514

160:                                              ; preds = %144, %135
  %161 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !515
  %162 = load i32, i32* %26, align 4, !dbg !517
  store i32 %162, i32* %161, align 4, !dbg !515
  %163 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !515
  %164 = load i32, i32* %27, align 4, !dbg !518
  store i32 %164, i32* %163, align 4, !dbg !515
  %165 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !519
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !519
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 8, i1 false), !dbg !519
  br label %167

167:                                              ; preds = %160, %147
  call void @llvm.dbg.declare(metadata i32* %32, metadata !520, metadata !DIExpression()), !dbg !521
  %168 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !522
  %169 = load i32, i32* %168, align 4, !dbg !522
  store i32 %169, i32* %32, align 4, !dbg !521
  call void @llvm.dbg.declare(metadata i32* %33, metadata !523, metadata !DIExpression()), !dbg !524
  %170 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !525
  %171 = load i32, i32* %170, align 4, !dbg !525
  store i32 %171, i32* %33, align 4, !dbg !524
  call void @llvm.dbg.declare(metadata i32* %34, metadata !526, metadata !DIExpression()), !dbg !527
  %172 = load i32, i32* %32, align 4, !dbg !528
  %173 = load i32, i32* %25, align 4, !dbg !529
  %174 = mul i32 %172, %173, !dbg !530
  store i32 %174, i32* %34, align 4, !dbg !527
  call void @llvm.dbg.declare(metadata i8** %35, metadata !531, metadata !DIExpression()), !dbg !532
  %175 = load i8*, i8** %9, align 8, !dbg !533
  store i8* %175, i8** %35, align 8, !dbg !532
  call void @llvm.dbg.declare(metadata i8** %36, metadata !534, metadata !DIExpression()), !dbg !535
  %176 = load i8*, i8** %9, align 8, !dbg !536
  %177 = load i32, i32* %34, align 4, !dbg !537
  %178 = zext i32 %177 to i64, !dbg !538
  %179 = getelementptr inbounds i8, i8* %176, i64 %178, !dbg !538
  store i8* %179, i8** %36, align 8, !dbg !535
  %180 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !539
  %181 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !540
  call void @Hacl_Hash_SHA1_update_multi(i32* noundef %180, i8* noundef %181, i32 noundef signext 1), !dbg !541
  %182 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !542
  %183 = load i8*, i8** %35, align 8, !dbg !543
  %184 = load i32, i32* %32, align 4, !dbg !544
  call void @Hacl_Hash_SHA1_update_multi(i32* noundef %182, i8* noundef %183, i32 noundef signext %184), !dbg !545
  %185 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !546
  %186 = load i32, i32* %34, align 4, !dbg !547
  %187 = zext i32 %186 to i64, !dbg !548
  %188 = add i64 64, %187, !dbg !549
  %189 = load i8*, i8** %36, align 8, !dbg !550
  %190 = load i32, i32* %33, align 4, !dbg !551
  call void @Hacl_Hash_SHA1_update_last(i32* noundef %185, i64 noundef %188, i8* noundef %189, i32 noundef signext %190), !dbg !552
  br label %191

191:                                              ; preds = %167, %132
  %192 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !553
  %193 = load i8*, i8** %24, align 8, !dbg !554
  call void @Hacl_Hash_SHA1_finish(i32* noundef %192, i8* noundef %193), !dbg !555
  call void @llvm.dbg.declare(metadata i8** %37, metadata !556, metadata !DIExpression()), !dbg !557
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !558
  store i8* %194, i8** %37, align 8, !dbg !557
  %195 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !559
  call void @Hacl_Hash_SHA1_init(i32* noundef %195), !dbg !560
  call void @llvm.dbg.declare(metadata i32* %38, metadata !561, metadata !DIExpression()), !dbg !562
  store i32 64, i32* %38, align 4, !dbg !562
  call void @llvm.dbg.declare(metadata i32* %39, metadata !563, metadata !DIExpression()), !dbg !564
  %196 = load i32, i32* %38, align 4, !dbg !565
  %197 = udiv i32 20, %196, !dbg !566
  store i32 %197, i32* %39, align 4, !dbg !564
  call void @llvm.dbg.declare(metadata i32* %40, metadata !567, metadata !DIExpression()), !dbg !568
  %198 = load i32, i32* %38, align 4, !dbg !569
  %199 = urem i32 20, %198, !dbg !570
  store i32 %199, i32* %40, align 4, !dbg !568
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %41, metadata !571, metadata !DIExpression()), !dbg !572
  %200 = load i32, i32* %39, align 4, !dbg !573
  %201 = icmp ugt i32 %200, 0, !dbg !575
  br i1 %201, label %202, label %217, !dbg !576

202:                                              ; preds = %191
  %203 = load i32, i32* %40, align 4, !dbg !577
  %204 = icmp eq i32 %203, 0, !dbg !578
  br i1 %204, label %205, label %217, !dbg !579

205:                                              ; preds = %202
  call void @llvm.dbg.declare(metadata i32* %42, metadata !580, metadata !DIExpression()), !dbg !582
  %206 = load i32, i32* %39, align 4, !dbg !583
  %207 = sub i32 %206, 1, !dbg !584
  store i32 %207, i32* %42, align 4, !dbg !582
  %208 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %43, i32 0, i32 0, !dbg !585
  %209 = load i32, i32* %42, align 4, !dbg !586
  store i32 %209, i32* %208, align 4, !dbg !585
  %210 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %43, i32 0, i32 1, !dbg !585
  %211 = load i32, i32* %42, align 4, !dbg !587
  %212 = load i32, i32* %38, align 4, !dbg !588
  %213 = mul i32 %211, %212, !dbg !589
  %214 = sub i32 20, %213, !dbg !590
  store i32 %214, i32* %210, align 4, !dbg !585
  %215 = bitcast %struct.K___uint32_t_uint32_t_s* %41 to i8*, !dbg !591
  %216 = bitcast %struct.K___uint32_t_uint32_t_s* %43 to i8*, !dbg !591
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %215, i8* align 4 %216, i64 8, i1 false), !dbg !591
  br label %224, !dbg !592

217:                                              ; preds = %202, %191
  %218 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %44, i32 0, i32 0, !dbg !593
  %219 = load i32, i32* %39, align 4, !dbg !595
  store i32 %219, i32* %218, align 4, !dbg !593
  %220 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %44, i32 0, i32 1, !dbg !593
  %221 = load i32, i32* %40, align 4, !dbg !596
  store i32 %221, i32* %220, align 4, !dbg !593
  %222 = bitcast %struct.K___uint32_t_uint32_t_s* %41 to i8*, !dbg !597
  %223 = bitcast %struct.K___uint32_t_uint32_t_s* %44 to i8*, !dbg !597
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 4 %223, i64 8, i1 false), !dbg !597
  br label %224

224:                                              ; preds = %217, %205
  call void @llvm.dbg.declare(metadata i32* %45, metadata !598, metadata !DIExpression()), !dbg !599
  %225 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %41, i32 0, i32 0, !dbg !600
  %226 = load i32, i32* %225, align 4, !dbg !600
  store i32 %226, i32* %45, align 4, !dbg !599
  call void @llvm.dbg.declare(metadata i32* %46, metadata !601, metadata !DIExpression()), !dbg !602
  %227 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %41, i32 0, i32 1, !dbg !603
  %228 = load i32, i32* %227, align 4, !dbg !603
  store i32 %228, i32* %46, align 4, !dbg !602
  call void @llvm.dbg.declare(metadata i32* %47, metadata !604, metadata !DIExpression()), !dbg !605
  %229 = load i32, i32* %45, align 4, !dbg !606
  %230 = load i32, i32* %38, align 4, !dbg !607
  %231 = mul i32 %229, %230, !dbg !608
  store i32 %231, i32* %47, align 4, !dbg !605
  call void @llvm.dbg.declare(metadata i8** %48, metadata !609, metadata !DIExpression()), !dbg !610
  %232 = load i8*, i8** %37, align 8, !dbg !611
  store i8* %232, i8** %48, align 8, !dbg !610
  call void @llvm.dbg.declare(metadata i8** %49, metadata !612, metadata !DIExpression()), !dbg !613
  %233 = load i8*, i8** %37, align 8, !dbg !614
  %234 = load i32, i32* %47, align 4, !dbg !615
  %235 = zext i32 %234 to i64, !dbg !616
  %236 = getelementptr inbounds i8, i8* %233, i64 %235, !dbg !616
  store i8* %236, i8** %49, align 8, !dbg !613
  %237 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !617
  %238 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !618
  call void @Hacl_Hash_SHA1_update_multi(i32* noundef %237, i8* noundef %238, i32 noundef signext 1), !dbg !619
  %239 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !620
  %240 = load i8*, i8** %48, align 8, !dbg !621
  %241 = load i32, i32* %45, align 4, !dbg !622
  call void @Hacl_Hash_SHA1_update_multi(i32* noundef %239, i8* noundef %240, i32 noundef signext %241), !dbg !623
  %242 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !624
  %243 = load i32, i32* %47, align 4, !dbg !625
  %244 = zext i32 %243 to i64, !dbg !626
  %245 = add i64 64, %244, !dbg !627
  %246 = load i8*, i8** %49, align 8, !dbg !628
  %247 = load i32, i32* %46, align 4, !dbg !629
  call void @Hacl_Hash_SHA1_update_last(i32* noundef %242, i64 noundef %245, i8* noundef %246, i32 noundef signext %247), !dbg !630
  %248 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !631
  %249 = load i8*, i8** %6, align 8, !dbg !632
  call void @Hacl_Hash_SHA1_finish(i32* noundef %248, i8* noundef %249), !dbg !633
  ret void, !dbg !634
}

declare dso_local void @Hacl_Hash_SHA1_hash_oneshot(i8* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_SHA1_update_last(i32* noundef, i64 noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_SHA1_update_multi(i32* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_SHA1_finish(i32* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA1_init(i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha2_224(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !635 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
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
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i8*, align 8
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
  %53 = alloca i8*, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i8*, align 8
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
  %66 = alloca i8*, align 8
  %67 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !636, metadata !DIExpression()), !dbg !637
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !638, metadata !DIExpression()), !dbg !639
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !640, metadata !DIExpression()), !dbg !641
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !642, metadata !DIExpression()), !dbg !643
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !646, metadata !DIExpression()), !dbg !647
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !648
  call void @llvm.memset.p0i8.i64(i8* align 1 %68, i8 0, i64 64, i1 false), !dbg !648
  call void @llvm.dbg.declare(metadata i8** %12, metadata !649, metadata !DIExpression()), !dbg !650
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !651
  store i8* %69, i8** %12, align 8, !dbg !650
  call void @llvm.dbg.declare(metadata i32* %13, metadata !652, metadata !DIExpression()), !dbg !653
  %70 = load i32, i32* %8, align 4, !dbg !654
  %71 = icmp ule i32 %70, 64, !dbg !656
  br i1 %71, label %72, label %74, !dbg !657

72:                                               ; preds = %5
  %73 = load i32, i32* %8, align 4, !dbg !658
  store i32 %73, i32* %13, align 4, !dbg !660
  br label %75, !dbg !661

74:                                               ; preds = %5
  store i32 28, i32* %13, align 4, !dbg !662
  br label %75

75:                                               ; preds = %74, %72
  call void @llvm.dbg.declare(metadata i8** %14, metadata !664, metadata !DIExpression()), !dbg !665
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !666
  %77 = load i32, i32* %13, align 4, !dbg !667
  %78 = zext i32 %77 to i64, !dbg !668
  %79 = getelementptr inbounds i8, i8* %76, i64 %78, !dbg !668
  store i8* %79, i8** %14, align 8, !dbg !665
  %80 = load i8*, i8** %14, align 8, !dbg !669
  %81 = load i32, i32* %8, align 4, !dbg !670
  %82 = icmp ule i32 %81, 64, !dbg !672
  br i1 %82, label %83, label %89, !dbg !673

83:                                               ; preds = %75
  %84 = load i8*, i8** %12, align 8, !dbg !674
  %85 = load i8*, i8** %7, align 8, !dbg !676
  %86 = load i32, i32* %8, align 4, !dbg !677
  %87 = zext i32 %86 to i64, !dbg !677
  %88 = mul i64 %87, 1, !dbg !678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 %88, i1 false), !dbg !679
  br label %93, !dbg !680

89:                                               ; preds = %75
  %90 = load i8*, i8** %12, align 8, !dbg !681
  %91 = load i8*, i8** %7, align 8, !dbg !683
  %92 = load i32, i32* %8, align 4, !dbg !684
  call void @Hacl_Hash_SHA2_hash_224(i8* noundef %90, i8* noundef %91, i32 noundef signext %92), !dbg !685
  br label %93

93:                                               ; preds = %89, %83
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !686, metadata !DIExpression()), !dbg !687
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !688
  call void @llvm.memset.p0i8.i64(i8* align 1 %94, i8 54, i64 64, i1 false), !dbg !688
  call void @llvm.dbg.declare(metadata i32* %16, metadata !689, metadata !DIExpression()), !dbg !691
  store i32 0, i32* %16, align 4, !dbg !691
  br label %95, !dbg !692

95:                                               ; preds = %116, %93
  %96 = load i32, i32* %16, align 4, !dbg !693
  %97 = icmp ult i32 %96, 64, !dbg !695
  br i1 %97, label %98, label %119, !dbg !696

98:                                               ; preds = %95
  call void @llvm.dbg.declare(metadata i8* %17, metadata !697, metadata !DIExpression()), !dbg !699
  %99 = load i32, i32* %16, align 4, !dbg !700
  %100 = zext i32 %99 to i64, !dbg !701
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %100, !dbg !701
  %102 = load i8, i8* %101, align 1, !dbg !701
  store i8 %102, i8* %17, align 1, !dbg !699
  call void @llvm.dbg.declare(metadata i8* %18, metadata !702, metadata !DIExpression()), !dbg !703
  %103 = load i32, i32* %16, align 4, !dbg !704
  %104 = zext i32 %103 to i64, !dbg !705
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %104, !dbg !705
  %106 = load i8, i8* %105, align 1, !dbg !705
  store i8 %106, i8* %18, align 1, !dbg !703
  %107 = load i8, i8* %17, align 1, !dbg !706
  %108 = zext i8 %107 to i32, !dbg !707
  %109 = load i8, i8* %18, align 1, !dbg !708
  %110 = zext i8 %109 to i32, !dbg !709
  %111 = xor i32 %108, %110, !dbg !710
  %112 = trunc i32 %111 to i8, !dbg !707
  %113 = load i32, i32* %16, align 4, !dbg !711
  %114 = zext i32 %113 to i64, !dbg !712
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %114, !dbg !712
  store i8 %112, i8* %115, align 1, !dbg !713
  br label %116, !dbg !714

116:                                              ; preds = %98
  %117 = load i32, i32* %16, align 4, !dbg !715
  %118 = add i32 %117, 1, !dbg !715
  store i32 %118, i32* %16, align 4, !dbg !715
  br label %95, !dbg !716, !llvm.loop !717

119:                                              ; preds = %95
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !719, metadata !DIExpression()), !dbg !720
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !721
  call void @llvm.memset.p0i8.i64(i8* align 1 %120, i8 92, i64 64, i1 false), !dbg !721
  call void @llvm.dbg.declare(metadata i32* %20, metadata !722, metadata !DIExpression()), !dbg !724
  store i32 0, i32* %20, align 4, !dbg !724
  br label %121, !dbg !725

121:                                              ; preds = %142, %119
  %122 = load i32, i32* %20, align 4, !dbg !726
  %123 = icmp ult i32 %122, 64, !dbg !728
  br i1 %123, label %124, label %145, !dbg !729

124:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata i8* %21, metadata !730, metadata !DIExpression()), !dbg !732
  %125 = load i32, i32* %20, align 4, !dbg !733
  %126 = zext i32 %125 to i64, !dbg !734
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %126, !dbg !734
  %128 = load i8, i8* %127, align 1, !dbg !734
  store i8 %128, i8* %21, align 1, !dbg !732
  call void @llvm.dbg.declare(metadata i8* %22, metadata !735, metadata !DIExpression()), !dbg !736
  %129 = load i32, i32* %20, align 4, !dbg !737
  %130 = zext i32 %129 to i64, !dbg !738
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %130, !dbg !738
  %132 = load i8, i8* %131, align 1, !dbg !738
  store i8 %132, i8* %22, align 1, !dbg !736
  %133 = load i8, i8* %21, align 1, !dbg !739
  %134 = zext i8 %133 to i32, !dbg !740
  %135 = load i8, i8* %22, align 1, !dbg !741
  %136 = zext i8 %135 to i32, !dbg !742
  %137 = xor i32 %134, %136, !dbg !743
  %138 = trunc i32 %137 to i8, !dbg !740
  %139 = load i32, i32* %20, align 4, !dbg !744
  %140 = zext i32 %139 to i64, !dbg !745
  %141 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %140, !dbg !745
  store i8 %138, i8* %141, align 1, !dbg !746
  br label %142, !dbg !747

142:                                              ; preds = %124
  %143 = load i32, i32* %20, align 4, !dbg !748
  %144 = add i32 %143, 1, !dbg !748
  store i32 %144, i32* %20, align 4, !dbg !748
  br label %121, !dbg !749, !llvm.loop !750

145:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata [8 x i32]* %23, metadata !752, metadata !DIExpression()), !dbg !754
  %146 = bitcast [8 x i32]* %23 to i8*, !dbg !754
  call void @llvm.memset.p0i8.i64(i8* align 4 %146, i8 0, i64 32, i1 false), !dbg !754
  br label %147, !dbg !755

147:                                              ; preds = %145
  call void @llvm.dbg.declare(metadata i32* %24, metadata !756, metadata !DIExpression()), !dbg !758
  store i32 0, i32* %24, align 4, !dbg !758
  call void @llvm.dbg.declare(metadata i32** %25, metadata !759, metadata !DIExpression()), !dbg !762
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !762
  store i32* %148, i32** %25, align 8, !dbg !762
  call void @llvm.dbg.declare(metadata i32* %26, metadata !763, metadata !DIExpression()), !dbg !762
  %149 = load i32, i32* %24, align 4, !dbg !762
  %150 = zext i32 %149 to i64, !dbg !762
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i64 0, i64 %150, !dbg !762
  %152 = load i32, i32* %151, align 4, !dbg !762
  store i32 %152, i32* %26, align 4, !dbg !762
  %153 = load i32, i32* %26, align 4, !dbg !762
  %154 = load i32*, i32** %25, align 8, !dbg !762
  %155 = load i32, i32* %24, align 4, !dbg !762
  %156 = zext i32 %155 to i64, !dbg !762
  %157 = getelementptr inbounds i32, i32* %154, i64 %156, !dbg !762
  store i32 %153, i32* %157, align 4, !dbg !762
  %158 = load i32, i32* %24, align 4, !dbg !762
  %159 = add i32 %158, 1, !dbg !762
  store i32 %159, i32* %24, align 4, !dbg !762
  %160 = load i32, i32* %24, align 4, !dbg !762
  call void @llvm.dbg.declare(metadata i32** %27, metadata !764, metadata !DIExpression()), !dbg !766
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !766
  store i32* %161, i32** %27, align 8, !dbg !766
  call void @llvm.dbg.declare(metadata i32* %28, metadata !767, metadata !DIExpression()), !dbg !766
  %162 = load i32, i32* %24, align 4, !dbg !766
  %163 = zext i32 %162 to i64, !dbg !766
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i64 0, i64 %163, !dbg !766
  %165 = load i32, i32* %164, align 4, !dbg !766
  store i32 %165, i32* %28, align 4, !dbg !766
  %166 = load i32, i32* %28, align 4, !dbg !766
  %167 = load i32*, i32** %27, align 8, !dbg !766
  %168 = load i32, i32* %24, align 4, !dbg !766
  %169 = zext i32 %168 to i64, !dbg !766
  %170 = getelementptr inbounds i32, i32* %167, i64 %169, !dbg !766
  store i32 %166, i32* %170, align 4, !dbg !766
  %171 = load i32, i32* %24, align 4, !dbg !766
  %172 = add i32 %171, 1, !dbg !766
  store i32 %172, i32* %24, align 4, !dbg !766
  %173 = load i32, i32* %24, align 4, !dbg !766
  call void @llvm.dbg.declare(metadata i32** %29, metadata !768, metadata !DIExpression()), !dbg !770
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !770
  store i32* %174, i32** %29, align 8, !dbg !770
  call void @llvm.dbg.declare(metadata i32* %30, metadata !771, metadata !DIExpression()), !dbg !770
  %175 = load i32, i32* %24, align 4, !dbg !770
  %176 = zext i32 %175 to i64, !dbg !770
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i64 0, i64 %176, !dbg !770
  %178 = load i32, i32* %177, align 4, !dbg !770
  store i32 %178, i32* %30, align 4, !dbg !770
  %179 = load i32, i32* %30, align 4, !dbg !770
  %180 = load i32*, i32** %29, align 8, !dbg !770
  %181 = load i32, i32* %24, align 4, !dbg !770
  %182 = zext i32 %181 to i64, !dbg !770
  %183 = getelementptr inbounds i32, i32* %180, i64 %182, !dbg !770
  store i32 %179, i32* %183, align 4, !dbg !770
  %184 = load i32, i32* %24, align 4, !dbg !770
  %185 = add i32 %184, 1, !dbg !770
  store i32 %185, i32* %24, align 4, !dbg !770
  %186 = load i32, i32* %24, align 4, !dbg !770
  call void @llvm.dbg.declare(metadata i32** %31, metadata !772, metadata !DIExpression()), !dbg !774
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !774
  store i32* %187, i32** %31, align 8, !dbg !774
  call void @llvm.dbg.declare(metadata i32* %32, metadata !775, metadata !DIExpression()), !dbg !774
  %188 = load i32, i32* %24, align 4, !dbg !774
  %189 = zext i32 %188 to i64, !dbg !774
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i64 0, i64 %189, !dbg !774
  %191 = load i32, i32* %190, align 4, !dbg !774
  store i32 %191, i32* %32, align 4, !dbg !774
  %192 = load i32, i32* %32, align 4, !dbg !774
  %193 = load i32*, i32** %31, align 8, !dbg !774
  %194 = load i32, i32* %24, align 4, !dbg !774
  %195 = zext i32 %194 to i64, !dbg !774
  %196 = getelementptr inbounds i32, i32* %193, i64 %195, !dbg !774
  store i32 %192, i32* %196, align 4, !dbg !774
  %197 = load i32, i32* %24, align 4, !dbg !774
  %198 = add i32 %197, 1, !dbg !774
  store i32 %198, i32* %24, align 4, !dbg !774
  %199 = load i32, i32* %24, align 4, !dbg !774
  call void @llvm.dbg.declare(metadata i32** %33, metadata !776, metadata !DIExpression()), !dbg !778
  %200 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !778
  store i32* %200, i32** %33, align 8, !dbg !778
  call void @llvm.dbg.declare(metadata i32* %34, metadata !779, metadata !DIExpression()), !dbg !778
  %201 = load i32, i32* %24, align 4, !dbg !778
  %202 = zext i32 %201 to i64, !dbg !778
  %203 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i64 0, i64 %202, !dbg !778
  %204 = load i32, i32* %203, align 4, !dbg !778
  store i32 %204, i32* %34, align 4, !dbg !778
  %205 = load i32, i32* %34, align 4, !dbg !778
  %206 = load i32*, i32** %33, align 8, !dbg !778
  %207 = load i32, i32* %24, align 4, !dbg !778
  %208 = zext i32 %207 to i64, !dbg !778
  %209 = getelementptr inbounds i32, i32* %206, i64 %208, !dbg !778
  store i32 %205, i32* %209, align 4, !dbg !778
  %210 = load i32, i32* %24, align 4, !dbg !778
  %211 = add i32 %210, 1, !dbg !778
  store i32 %211, i32* %24, align 4, !dbg !778
  %212 = load i32, i32* %24, align 4, !dbg !778
  call void @llvm.dbg.declare(metadata i32** %35, metadata !780, metadata !DIExpression()), !dbg !782
  %213 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !782
  store i32* %213, i32** %35, align 8, !dbg !782
  call void @llvm.dbg.declare(metadata i32* %36, metadata !783, metadata !DIExpression()), !dbg !782
  %214 = load i32, i32* %24, align 4, !dbg !782
  %215 = zext i32 %214 to i64, !dbg !782
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i64 0, i64 %215, !dbg !782
  %217 = load i32, i32* %216, align 4, !dbg !782
  store i32 %217, i32* %36, align 4, !dbg !782
  %218 = load i32, i32* %36, align 4, !dbg !782
  %219 = load i32*, i32** %35, align 8, !dbg !782
  %220 = load i32, i32* %24, align 4, !dbg !782
  %221 = zext i32 %220 to i64, !dbg !782
  %222 = getelementptr inbounds i32, i32* %219, i64 %221, !dbg !782
  store i32 %218, i32* %222, align 4, !dbg !782
  %223 = load i32, i32* %24, align 4, !dbg !782
  %224 = add i32 %223, 1, !dbg !782
  store i32 %224, i32* %24, align 4, !dbg !782
  %225 = load i32, i32* %24, align 4, !dbg !782
  call void @llvm.dbg.declare(metadata i32** %37, metadata !784, metadata !DIExpression()), !dbg !786
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !786
  store i32* %226, i32** %37, align 8, !dbg !786
  call void @llvm.dbg.declare(metadata i32* %38, metadata !787, metadata !DIExpression()), !dbg !786
  %227 = load i32, i32* %24, align 4, !dbg !786
  %228 = zext i32 %227 to i64, !dbg !786
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i64 0, i64 %228, !dbg !786
  %230 = load i32, i32* %229, align 4, !dbg !786
  store i32 %230, i32* %38, align 4, !dbg !786
  %231 = load i32, i32* %38, align 4, !dbg !786
  %232 = load i32*, i32** %37, align 8, !dbg !786
  %233 = load i32, i32* %24, align 4, !dbg !786
  %234 = zext i32 %233 to i64, !dbg !786
  %235 = getelementptr inbounds i32, i32* %232, i64 %234, !dbg !786
  store i32 %231, i32* %235, align 4, !dbg !786
  %236 = load i32, i32* %24, align 4, !dbg !786
  %237 = add i32 %236, 1, !dbg !786
  store i32 %237, i32* %24, align 4, !dbg !786
  %238 = load i32, i32* %24, align 4, !dbg !786
  call void @llvm.dbg.declare(metadata i32** %39, metadata !788, metadata !DIExpression()), !dbg !790
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !790
  store i32* %239, i32** %39, align 8, !dbg !790
  call void @llvm.dbg.declare(metadata i32* %40, metadata !791, metadata !DIExpression()), !dbg !790
  %240 = load i32, i32* %24, align 4, !dbg !790
  %241 = zext i32 %240 to i64, !dbg !790
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h224, i64 0, i64 %241, !dbg !790
  %243 = load i32, i32* %242, align 4, !dbg !790
  store i32 %243, i32* %40, align 4, !dbg !790
  %244 = load i32, i32* %40, align 4, !dbg !790
  %245 = load i32*, i32** %39, align 8, !dbg !790
  %246 = load i32, i32* %24, align 4, !dbg !790
  %247 = zext i32 %246 to i64, !dbg !790
  %248 = getelementptr inbounds i32, i32* %245, i64 %247, !dbg !790
  store i32 %244, i32* %248, align 4, !dbg !790
  %249 = load i32, i32* %24, align 4, !dbg !790
  %250 = add i32 %249, 1, !dbg !790
  store i32 %250, i32* %24, align 4, !dbg !790
  %251 = load i32, i32* %24, align 4, !dbg !790
  br label %252, !dbg !758

252:                                              ; preds = %147
  call void @llvm.dbg.declare(metadata i32** %41, metadata !792, metadata !DIExpression()), !dbg !793
  %253 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !794
  store i32* %253, i32** %41, align 8, !dbg !793
  call void @llvm.dbg.declare(metadata i8** %42, metadata !795, metadata !DIExpression()), !dbg !796
  %254 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !797
  store i8* %254, i8** %42, align 8, !dbg !796
  %255 = load i32, i32* %10, align 4, !dbg !798
  %256 = icmp eq i32 %255, 0, !dbg !800
  br i1 %256, label %257, label %260, !dbg !801

257:                                              ; preds = %252
  %258 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !802
  %259 = load i32*, i32** %41, align 8, !dbg !804
  call void @Hacl_Hash_SHA2_sha224_update_last(i64 noundef 64, i32 noundef signext 64, i8* noundef %258, i32* noundef %259), !dbg !805
  br label %320, !dbg !806

260:                                              ; preds = %252
  call void @llvm.dbg.declare(metadata i32* %43, metadata !807, metadata !DIExpression()), !dbg !809
  store i32 64, i32* %43, align 4, !dbg !809
  call void @llvm.dbg.declare(metadata i32* %44, metadata !810, metadata !DIExpression()), !dbg !811
  %261 = load i32, i32* %10, align 4, !dbg !812
  %262 = load i32, i32* %43, align 4, !dbg !813
  %263 = udiv i32 %261, %262, !dbg !814
  store i32 %263, i32* %44, align 4, !dbg !811
  call void @llvm.dbg.declare(metadata i32* %45, metadata !815, metadata !DIExpression()), !dbg !816
  %264 = load i32, i32* %10, align 4, !dbg !817
  %265 = load i32, i32* %43, align 4, !dbg !818
  %266 = urem i32 %264, %265, !dbg !819
  store i32 %266, i32* %45, align 4, !dbg !816
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %46, metadata !820, metadata !DIExpression()), !dbg !821
  %267 = load i32, i32* %44, align 4, !dbg !822
  %268 = icmp ugt i32 %267, 0, !dbg !824
  br i1 %268, label %269, label %285, !dbg !825

269:                                              ; preds = %260
  %270 = load i32, i32* %45, align 4, !dbg !826
  %271 = icmp eq i32 %270, 0, !dbg !827
  br i1 %271, label %272, label %285, !dbg !828

272:                                              ; preds = %269
  call void @llvm.dbg.declare(metadata i32* %47, metadata !829, metadata !DIExpression()), !dbg !831
  %273 = load i32, i32* %44, align 4, !dbg !832
  %274 = sub i32 %273, 1, !dbg !833
  store i32 %274, i32* %47, align 4, !dbg !831
  %275 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !834
  %276 = load i32, i32* %47, align 4, !dbg !835
  store i32 %276, i32* %275, align 4, !dbg !834
  %277 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !834
  %278 = load i32, i32* %10, align 4, !dbg !836
  %279 = load i32, i32* %47, align 4, !dbg !837
  %280 = load i32, i32* %43, align 4, !dbg !838
  %281 = mul i32 %279, %280, !dbg !839
  %282 = sub i32 %278, %281, !dbg !840
  store i32 %282, i32* %277, align 4, !dbg !834
  %283 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !841
  %284 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !841
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %283, i8* align 4 %284, i64 8, i1 false), !dbg !841
  br label %292, !dbg !842

285:                                              ; preds = %269, %260
  %286 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !843
  %287 = load i32, i32* %44, align 4, !dbg !845
  store i32 %287, i32* %286, align 4, !dbg !843
  %288 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !843
  %289 = load i32, i32* %45, align 4, !dbg !846
  store i32 %289, i32* %288, align 4, !dbg !843
  %290 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !847
  %291 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !847
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %290, i8* align 4 %291, i64 8, i1 false), !dbg !847
  br label %292

292:                                              ; preds = %285, %272
  call void @llvm.dbg.declare(metadata i32* %50, metadata !848, metadata !DIExpression()), !dbg !849
  %293 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 0, !dbg !850
  %294 = load i32, i32* %293, align 4, !dbg !850
  store i32 %294, i32* %50, align 4, !dbg !849
  call void @llvm.dbg.declare(metadata i32* %51, metadata !851, metadata !DIExpression()), !dbg !852
  %295 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 1, !dbg !853
  %296 = load i32, i32* %295, align 4, !dbg !853
  store i32 %296, i32* %51, align 4, !dbg !852
  call void @llvm.dbg.declare(metadata i32* %52, metadata !854, metadata !DIExpression()), !dbg !855
  %297 = load i32, i32* %50, align 4, !dbg !856
  %298 = load i32, i32* %43, align 4, !dbg !857
  %299 = mul i32 %297, %298, !dbg !858
  store i32 %299, i32* %52, align 4, !dbg !855
  call void @llvm.dbg.declare(metadata i8** %53, metadata !859, metadata !DIExpression()), !dbg !860
  %300 = load i8*, i8** %9, align 8, !dbg !861
  store i8* %300, i8** %53, align 8, !dbg !860
  call void @llvm.dbg.declare(metadata i8** %54, metadata !862, metadata !DIExpression()), !dbg !863
  %301 = load i8*, i8** %9, align 8, !dbg !864
  %302 = load i32, i32* %52, align 4, !dbg !865
  %303 = zext i32 %302 to i64, !dbg !866
  %304 = getelementptr inbounds i8, i8* %301, i64 %303, !dbg !866
  store i8* %304, i8** %54, align 8, !dbg !863
  %305 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !867
  %306 = load i32*, i32** %41, align 8, !dbg !868
  call void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef signext 64, i8* noundef %305, i32* noundef %306), !dbg !869
  %307 = load i32, i32* %50, align 4, !dbg !870
  %308 = mul i32 %307, 64, !dbg !871
  %309 = load i8*, i8** %53, align 8, !dbg !872
  %310 = load i32*, i32** %41, align 8, !dbg !873
  call void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef signext %308, i8* noundef %309, i32* noundef %310), !dbg !874
  %311 = load i32, i32* %52, align 4, !dbg !875
  %312 = zext i32 %311 to i64, !dbg !876
  %313 = add i64 64, %312, !dbg !877
  %314 = load i32, i32* %51, align 4, !dbg !878
  %315 = zext i32 %314 to i64, !dbg !879
  %316 = add i64 %313, %315, !dbg !880
  %317 = load i32, i32* %51, align 4, !dbg !881
  %318 = load i8*, i8** %54, align 8, !dbg !882
  %319 = load i32*, i32** %41, align 8, !dbg !883
  call void @Hacl_Hash_SHA2_sha224_update_last(i64 noundef %316, i32 noundef signext %317, i8* noundef %318, i32* noundef %319), !dbg !884
  br label %320

320:                                              ; preds = %292, %257
  %321 = load i32*, i32** %41, align 8, !dbg !885
  %322 = load i8*, i8** %42, align 8, !dbg !886
  call void @Hacl_Hash_SHA2_sha224_finish(i32* noundef %321, i8* noundef %322), !dbg !887
  call void @llvm.dbg.declare(metadata i8** %55, metadata !888, metadata !DIExpression()), !dbg !889
  %323 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !890
  store i8* %323, i8** %55, align 8, !dbg !889
  %324 = load i32*, i32** %41, align 8, !dbg !891
  call void @Hacl_Hash_SHA2_sha224_init(i32* noundef %324), !dbg !892
  call void @llvm.dbg.declare(metadata i32* %56, metadata !893, metadata !DIExpression()), !dbg !894
  store i32 64, i32* %56, align 4, !dbg !894
  call void @llvm.dbg.declare(metadata i32* %57, metadata !895, metadata !DIExpression()), !dbg !896
  %325 = load i32, i32* %56, align 4, !dbg !897
  %326 = udiv i32 28, %325, !dbg !898
  store i32 %326, i32* %57, align 4, !dbg !896
  call void @llvm.dbg.declare(metadata i32* %58, metadata !899, metadata !DIExpression()), !dbg !900
  %327 = load i32, i32* %56, align 4, !dbg !901
  %328 = urem i32 28, %327, !dbg !902
  store i32 %328, i32* %58, align 4, !dbg !900
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %59, metadata !903, metadata !DIExpression()), !dbg !904
  %329 = load i32, i32* %57, align 4, !dbg !905
  %330 = icmp ugt i32 %329, 0, !dbg !907
  br i1 %330, label %331, label %346, !dbg !908

331:                                              ; preds = %320
  %332 = load i32, i32* %58, align 4, !dbg !909
  %333 = icmp eq i32 %332, 0, !dbg !910
  br i1 %333, label %334, label %346, !dbg !911

334:                                              ; preds = %331
  call void @llvm.dbg.declare(metadata i32* %60, metadata !912, metadata !DIExpression()), !dbg !914
  %335 = load i32, i32* %57, align 4, !dbg !915
  %336 = sub i32 %335, 1, !dbg !916
  store i32 %336, i32* %60, align 4, !dbg !914
  %337 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 0, !dbg !917
  %338 = load i32, i32* %60, align 4, !dbg !918
  store i32 %338, i32* %337, align 4, !dbg !917
  %339 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 1, !dbg !917
  %340 = load i32, i32* %60, align 4, !dbg !919
  %341 = load i32, i32* %56, align 4, !dbg !920
  %342 = mul i32 %340, %341, !dbg !921
  %343 = sub i32 28, %342, !dbg !922
  store i32 %343, i32* %339, align 4, !dbg !917
  %344 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !923
  %345 = bitcast %struct.K___uint32_t_uint32_t_s* %61 to i8*, !dbg !923
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %344, i8* align 4 %345, i64 8, i1 false), !dbg !923
  br label %353, !dbg !924

346:                                              ; preds = %331, %320
  %347 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 0, !dbg !925
  %348 = load i32, i32* %57, align 4, !dbg !927
  store i32 %348, i32* %347, align 4, !dbg !925
  %349 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 1, !dbg !925
  %350 = load i32, i32* %58, align 4, !dbg !928
  store i32 %350, i32* %349, align 4, !dbg !925
  %351 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !929
  %352 = bitcast %struct.K___uint32_t_uint32_t_s* %62 to i8*, !dbg !929
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %351, i8* align 4 %352, i64 8, i1 false), !dbg !929
  br label %353

353:                                              ; preds = %346, %334
  call void @llvm.dbg.declare(metadata i32* %63, metadata !930, metadata !DIExpression()), !dbg !931
  %354 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 0, !dbg !932
  %355 = load i32, i32* %354, align 4, !dbg !932
  store i32 %355, i32* %63, align 4, !dbg !931
  call void @llvm.dbg.declare(metadata i32* %64, metadata !933, metadata !DIExpression()), !dbg !934
  %356 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 1, !dbg !935
  %357 = load i32, i32* %356, align 4, !dbg !935
  store i32 %357, i32* %64, align 4, !dbg !934
  call void @llvm.dbg.declare(metadata i32* %65, metadata !936, metadata !DIExpression()), !dbg !937
  %358 = load i32, i32* %63, align 4, !dbg !938
  %359 = load i32, i32* %56, align 4, !dbg !939
  %360 = mul i32 %358, %359, !dbg !940
  store i32 %360, i32* %65, align 4, !dbg !937
  call void @llvm.dbg.declare(metadata i8** %66, metadata !941, metadata !DIExpression()), !dbg !942
  %361 = load i8*, i8** %55, align 8, !dbg !943
  store i8* %361, i8** %66, align 8, !dbg !942
  call void @llvm.dbg.declare(metadata i8** %67, metadata !944, metadata !DIExpression()), !dbg !945
  %362 = load i8*, i8** %55, align 8, !dbg !946
  %363 = load i32, i32* %65, align 4, !dbg !947
  %364 = zext i32 %363 to i64, !dbg !948
  %365 = getelementptr inbounds i8, i8* %362, i64 %364, !dbg !948
  store i8* %365, i8** %67, align 8, !dbg !945
  %366 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !949
  %367 = load i32*, i32** %41, align 8, !dbg !950
  call void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef signext 64, i8* noundef %366, i32* noundef %367), !dbg !951
  %368 = load i32, i32* %63, align 4, !dbg !952
  %369 = mul i32 %368, 64, !dbg !953
  %370 = load i8*, i8** %66, align 8, !dbg !954
  %371 = load i32*, i32** %41, align 8, !dbg !955
  call void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef signext %369, i8* noundef %370, i32* noundef %371), !dbg !956
  %372 = load i32, i32* %65, align 4, !dbg !957
  %373 = zext i32 %372 to i64, !dbg !958
  %374 = add i64 64, %373, !dbg !959
  %375 = load i32, i32* %64, align 4, !dbg !960
  %376 = zext i32 %375 to i64, !dbg !961
  %377 = add i64 %374, %376, !dbg !962
  %378 = load i32, i32* %64, align 4, !dbg !963
  %379 = load i8*, i8** %67, align 8, !dbg !964
  %380 = load i32*, i32** %41, align 8, !dbg !965
  call void @Hacl_Hash_SHA2_sha224_update_last(i64 noundef %377, i32 noundef signext %378, i8* noundef %379, i32* noundef %380), !dbg !966
  %381 = load i32*, i32** %41, align 8, !dbg !967
  %382 = load i8*, i8** %6, align 8, !dbg !968
  call void @Hacl_Hash_SHA2_sha224_finish(i32* noundef %381, i8* noundef %382), !dbg !969
  ret void, !dbg !970
}

declare dso_local void @Hacl_Hash_SHA2_hash_224(i8* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_SHA2_sha224_update_last(i64 noundef, i32 noundef signext, i8* noundef, i32* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef signext, i8* noundef, i32* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha224_finish(i32* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha224_init(i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha2_256(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !971 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
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
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i8*, align 8
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
  %53 = alloca i8*, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i8*, align 8
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
  %66 = alloca i8*, align 8
  %67 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !972, metadata !DIExpression()), !dbg !973
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !974, metadata !DIExpression()), !dbg !975
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !976, metadata !DIExpression()), !dbg !977
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !978, metadata !DIExpression()), !dbg !979
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !980, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !982, metadata !DIExpression()), !dbg !983
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !984
  call void @llvm.memset.p0i8.i64(i8* align 1 %68, i8 0, i64 64, i1 false), !dbg !984
  call void @llvm.dbg.declare(metadata i8** %12, metadata !985, metadata !DIExpression()), !dbg !986
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !987
  store i8* %69, i8** %12, align 8, !dbg !986
  call void @llvm.dbg.declare(metadata i32* %13, metadata !988, metadata !DIExpression()), !dbg !989
  %70 = load i32, i32* %8, align 4, !dbg !990
  %71 = icmp ule i32 %70, 64, !dbg !992
  br i1 %71, label %72, label %74, !dbg !993

72:                                               ; preds = %5
  %73 = load i32, i32* %8, align 4, !dbg !994
  store i32 %73, i32* %13, align 4, !dbg !996
  br label %75, !dbg !997

74:                                               ; preds = %5
  store i32 32, i32* %13, align 4, !dbg !998
  br label %75

75:                                               ; preds = %74, %72
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1000, metadata !DIExpression()), !dbg !1001
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !1002
  %77 = load i32, i32* %13, align 4, !dbg !1003
  %78 = zext i32 %77 to i64, !dbg !1004
  %79 = getelementptr inbounds i8, i8* %76, i64 %78, !dbg !1004
  store i8* %79, i8** %14, align 8, !dbg !1001
  %80 = load i8*, i8** %14, align 8, !dbg !1005
  %81 = load i32, i32* %8, align 4, !dbg !1006
  %82 = icmp ule i32 %81, 64, !dbg !1008
  br i1 %82, label %83, label %89, !dbg !1009

83:                                               ; preds = %75
  %84 = load i8*, i8** %12, align 8, !dbg !1010
  %85 = load i8*, i8** %7, align 8, !dbg !1012
  %86 = load i32, i32* %8, align 4, !dbg !1013
  %87 = zext i32 %86 to i64, !dbg !1013
  %88 = mul i64 %87, 1, !dbg !1014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 %88, i1 false), !dbg !1015
  br label %93, !dbg !1016

89:                                               ; preds = %75
  %90 = load i8*, i8** %12, align 8, !dbg !1017
  %91 = load i8*, i8** %7, align 8, !dbg !1019
  %92 = load i32, i32* %8, align 4, !dbg !1020
  call void @Hacl_Hash_SHA2_hash_256(i8* noundef %90, i8* noundef %91, i32 noundef signext %92), !dbg !1021
  br label %93

93:                                               ; preds = %89, %83
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !1022, metadata !DIExpression()), !dbg !1023
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !1024
  call void @llvm.memset.p0i8.i64(i8* align 1 %94, i8 54, i64 64, i1 false), !dbg !1024
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1025, metadata !DIExpression()), !dbg !1027
  store i32 0, i32* %16, align 4, !dbg !1027
  br label %95, !dbg !1028

95:                                               ; preds = %116, %93
  %96 = load i32, i32* %16, align 4, !dbg !1029
  %97 = icmp ult i32 %96, 64, !dbg !1031
  br i1 %97, label %98, label %119, !dbg !1032

98:                                               ; preds = %95
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1033, metadata !DIExpression()), !dbg !1035
  %99 = load i32, i32* %16, align 4, !dbg !1036
  %100 = zext i32 %99 to i64, !dbg !1037
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %100, !dbg !1037
  %102 = load i8, i8* %101, align 1, !dbg !1037
  store i8 %102, i8* %17, align 1, !dbg !1035
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1038, metadata !DIExpression()), !dbg !1039
  %103 = load i32, i32* %16, align 4, !dbg !1040
  %104 = zext i32 %103 to i64, !dbg !1041
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %104, !dbg !1041
  %106 = load i8, i8* %105, align 1, !dbg !1041
  store i8 %106, i8* %18, align 1, !dbg !1039
  %107 = load i8, i8* %17, align 1, !dbg !1042
  %108 = zext i8 %107 to i32, !dbg !1043
  %109 = load i8, i8* %18, align 1, !dbg !1044
  %110 = zext i8 %109 to i32, !dbg !1045
  %111 = xor i32 %108, %110, !dbg !1046
  %112 = trunc i32 %111 to i8, !dbg !1043
  %113 = load i32, i32* %16, align 4, !dbg !1047
  %114 = zext i32 %113 to i64, !dbg !1048
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %114, !dbg !1048
  store i8 %112, i8* %115, align 1, !dbg !1049
  br label %116, !dbg !1050

116:                                              ; preds = %98
  %117 = load i32, i32* %16, align 4, !dbg !1051
  %118 = add i32 %117, 1, !dbg !1051
  store i32 %118, i32* %16, align 4, !dbg !1051
  br label %95, !dbg !1052, !llvm.loop !1053

119:                                              ; preds = %95
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !1055, metadata !DIExpression()), !dbg !1056
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !1057
  call void @llvm.memset.p0i8.i64(i8* align 1 %120, i8 92, i64 64, i1 false), !dbg !1057
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1058, metadata !DIExpression()), !dbg !1060
  store i32 0, i32* %20, align 4, !dbg !1060
  br label %121, !dbg !1061

121:                                              ; preds = %142, %119
  %122 = load i32, i32* %20, align 4, !dbg !1062
  %123 = icmp ult i32 %122, 64, !dbg !1064
  br i1 %123, label %124, label %145, !dbg !1065

124:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1066, metadata !DIExpression()), !dbg !1068
  %125 = load i32, i32* %20, align 4, !dbg !1069
  %126 = zext i32 %125 to i64, !dbg !1070
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %126, !dbg !1070
  %128 = load i8, i8* %127, align 1, !dbg !1070
  store i8 %128, i8* %21, align 1, !dbg !1068
  call void @llvm.dbg.declare(metadata i8* %22, metadata !1071, metadata !DIExpression()), !dbg !1072
  %129 = load i32, i32* %20, align 4, !dbg !1073
  %130 = zext i32 %129 to i64, !dbg !1074
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %130, !dbg !1074
  %132 = load i8, i8* %131, align 1, !dbg !1074
  store i8 %132, i8* %22, align 1, !dbg !1072
  %133 = load i8, i8* %21, align 1, !dbg !1075
  %134 = zext i8 %133 to i32, !dbg !1076
  %135 = load i8, i8* %22, align 1, !dbg !1077
  %136 = zext i8 %135 to i32, !dbg !1078
  %137 = xor i32 %134, %136, !dbg !1079
  %138 = trunc i32 %137 to i8, !dbg !1076
  %139 = load i32, i32* %20, align 4, !dbg !1080
  %140 = zext i32 %139 to i64, !dbg !1081
  %141 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %140, !dbg !1081
  store i8 %138, i8* %141, align 1, !dbg !1082
  br label %142, !dbg !1083

142:                                              ; preds = %124
  %143 = load i32, i32* %20, align 4, !dbg !1084
  %144 = add i32 %143, 1, !dbg !1084
  store i32 %144, i32* %20, align 4, !dbg !1084
  br label %121, !dbg !1085, !llvm.loop !1086

145:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata [8 x i32]* %23, metadata !1088, metadata !DIExpression()), !dbg !1089
  %146 = bitcast [8 x i32]* %23 to i8*, !dbg !1089
  call void @llvm.memset.p0i8.i64(i8* align 4 %146, i8 0, i64 32, i1 false), !dbg !1089
  br label %147, !dbg !1090

147:                                              ; preds = %145
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1091, metadata !DIExpression()), !dbg !1093
  store i32 0, i32* %24, align 4, !dbg !1093
  call void @llvm.dbg.declare(metadata i32** %25, metadata !1094, metadata !DIExpression()), !dbg !1096
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !1096
  store i32* %148, i32** %25, align 8, !dbg !1096
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1097, metadata !DIExpression()), !dbg !1096
  %149 = load i32, i32* %24, align 4, !dbg !1096
  %150 = zext i32 %149 to i64, !dbg !1096
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i64 0, i64 %150, !dbg !1096
  %152 = load i32, i32* %151, align 4, !dbg !1096
  store i32 %152, i32* %26, align 4, !dbg !1096
  %153 = load i32, i32* %26, align 4, !dbg !1096
  %154 = load i32*, i32** %25, align 8, !dbg !1096
  %155 = load i32, i32* %24, align 4, !dbg !1096
  %156 = zext i32 %155 to i64, !dbg !1096
  %157 = getelementptr inbounds i32, i32* %154, i64 %156, !dbg !1096
  store i32 %153, i32* %157, align 4, !dbg !1096
  %158 = load i32, i32* %24, align 4, !dbg !1096
  %159 = add i32 %158, 1, !dbg !1096
  store i32 %159, i32* %24, align 4, !dbg !1096
  %160 = load i32, i32* %24, align 4, !dbg !1096
  call void @llvm.dbg.declare(metadata i32** %27, metadata !1098, metadata !DIExpression()), !dbg !1100
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !1100
  store i32* %161, i32** %27, align 8, !dbg !1100
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1101, metadata !DIExpression()), !dbg !1100
  %162 = load i32, i32* %24, align 4, !dbg !1100
  %163 = zext i32 %162 to i64, !dbg !1100
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i64 0, i64 %163, !dbg !1100
  %165 = load i32, i32* %164, align 4, !dbg !1100
  store i32 %165, i32* %28, align 4, !dbg !1100
  %166 = load i32, i32* %28, align 4, !dbg !1100
  %167 = load i32*, i32** %27, align 8, !dbg !1100
  %168 = load i32, i32* %24, align 4, !dbg !1100
  %169 = zext i32 %168 to i64, !dbg !1100
  %170 = getelementptr inbounds i32, i32* %167, i64 %169, !dbg !1100
  store i32 %166, i32* %170, align 4, !dbg !1100
  %171 = load i32, i32* %24, align 4, !dbg !1100
  %172 = add i32 %171, 1, !dbg !1100
  store i32 %172, i32* %24, align 4, !dbg !1100
  %173 = load i32, i32* %24, align 4, !dbg !1100
  call void @llvm.dbg.declare(metadata i32** %29, metadata !1102, metadata !DIExpression()), !dbg !1104
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !1104
  store i32* %174, i32** %29, align 8, !dbg !1104
  call void @llvm.dbg.declare(metadata i32* %30, metadata !1105, metadata !DIExpression()), !dbg !1104
  %175 = load i32, i32* %24, align 4, !dbg !1104
  %176 = zext i32 %175 to i64, !dbg !1104
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i64 0, i64 %176, !dbg !1104
  %178 = load i32, i32* %177, align 4, !dbg !1104
  store i32 %178, i32* %30, align 4, !dbg !1104
  %179 = load i32, i32* %30, align 4, !dbg !1104
  %180 = load i32*, i32** %29, align 8, !dbg !1104
  %181 = load i32, i32* %24, align 4, !dbg !1104
  %182 = zext i32 %181 to i64, !dbg !1104
  %183 = getelementptr inbounds i32, i32* %180, i64 %182, !dbg !1104
  store i32 %179, i32* %183, align 4, !dbg !1104
  %184 = load i32, i32* %24, align 4, !dbg !1104
  %185 = add i32 %184, 1, !dbg !1104
  store i32 %185, i32* %24, align 4, !dbg !1104
  %186 = load i32, i32* %24, align 4, !dbg !1104
  call void @llvm.dbg.declare(metadata i32** %31, metadata !1106, metadata !DIExpression()), !dbg !1108
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !1108
  store i32* %187, i32** %31, align 8, !dbg !1108
  call void @llvm.dbg.declare(metadata i32* %32, metadata !1109, metadata !DIExpression()), !dbg !1108
  %188 = load i32, i32* %24, align 4, !dbg !1108
  %189 = zext i32 %188 to i64, !dbg !1108
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i64 0, i64 %189, !dbg !1108
  %191 = load i32, i32* %190, align 4, !dbg !1108
  store i32 %191, i32* %32, align 4, !dbg !1108
  %192 = load i32, i32* %32, align 4, !dbg !1108
  %193 = load i32*, i32** %31, align 8, !dbg !1108
  %194 = load i32, i32* %24, align 4, !dbg !1108
  %195 = zext i32 %194 to i64, !dbg !1108
  %196 = getelementptr inbounds i32, i32* %193, i64 %195, !dbg !1108
  store i32 %192, i32* %196, align 4, !dbg !1108
  %197 = load i32, i32* %24, align 4, !dbg !1108
  %198 = add i32 %197, 1, !dbg !1108
  store i32 %198, i32* %24, align 4, !dbg !1108
  %199 = load i32, i32* %24, align 4, !dbg !1108
  call void @llvm.dbg.declare(metadata i32** %33, metadata !1110, metadata !DIExpression()), !dbg !1112
  %200 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !1112
  store i32* %200, i32** %33, align 8, !dbg !1112
  call void @llvm.dbg.declare(metadata i32* %34, metadata !1113, metadata !DIExpression()), !dbg !1112
  %201 = load i32, i32* %24, align 4, !dbg !1112
  %202 = zext i32 %201 to i64, !dbg !1112
  %203 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i64 0, i64 %202, !dbg !1112
  %204 = load i32, i32* %203, align 4, !dbg !1112
  store i32 %204, i32* %34, align 4, !dbg !1112
  %205 = load i32, i32* %34, align 4, !dbg !1112
  %206 = load i32*, i32** %33, align 8, !dbg !1112
  %207 = load i32, i32* %24, align 4, !dbg !1112
  %208 = zext i32 %207 to i64, !dbg !1112
  %209 = getelementptr inbounds i32, i32* %206, i64 %208, !dbg !1112
  store i32 %205, i32* %209, align 4, !dbg !1112
  %210 = load i32, i32* %24, align 4, !dbg !1112
  %211 = add i32 %210, 1, !dbg !1112
  store i32 %211, i32* %24, align 4, !dbg !1112
  %212 = load i32, i32* %24, align 4, !dbg !1112
  call void @llvm.dbg.declare(metadata i32** %35, metadata !1114, metadata !DIExpression()), !dbg !1116
  %213 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !1116
  store i32* %213, i32** %35, align 8, !dbg !1116
  call void @llvm.dbg.declare(metadata i32* %36, metadata !1117, metadata !DIExpression()), !dbg !1116
  %214 = load i32, i32* %24, align 4, !dbg !1116
  %215 = zext i32 %214 to i64, !dbg !1116
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i64 0, i64 %215, !dbg !1116
  %217 = load i32, i32* %216, align 4, !dbg !1116
  store i32 %217, i32* %36, align 4, !dbg !1116
  %218 = load i32, i32* %36, align 4, !dbg !1116
  %219 = load i32*, i32** %35, align 8, !dbg !1116
  %220 = load i32, i32* %24, align 4, !dbg !1116
  %221 = zext i32 %220 to i64, !dbg !1116
  %222 = getelementptr inbounds i32, i32* %219, i64 %221, !dbg !1116
  store i32 %218, i32* %222, align 4, !dbg !1116
  %223 = load i32, i32* %24, align 4, !dbg !1116
  %224 = add i32 %223, 1, !dbg !1116
  store i32 %224, i32* %24, align 4, !dbg !1116
  %225 = load i32, i32* %24, align 4, !dbg !1116
  call void @llvm.dbg.declare(metadata i32** %37, metadata !1118, metadata !DIExpression()), !dbg !1120
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !1120
  store i32* %226, i32** %37, align 8, !dbg !1120
  call void @llvm.dbg.declare(metadata i32* %38, metadata !1121, metadata !DIExpression()), !dbg !1120
  %227 = load i32, i32* %24, align 4, !dbg !1120
  %228 = zext i32 %227 to i64, !dbg !1120
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i64 0, i64 %228, !dbg !1120
  %230 = load i32, i32* %229, align 4, !dbg !1120
  store i32 %230, i32* %38, align 4, !dbg !1120
  %231 = load i32, i32* %38, align 4, !dbg !1120
  %232 = load i32*, i32** %37, align 8, !dbg !1120
  %233 = load i32, i32* %24, align 4, !dbg !1120
  %234 = zext i32 %233 to i64, !dbg !1120
  %235 = getelementptr inbounds i32, i32* %232, i64 %234, !dbg !1120
  store i32 %231, i32* %235, align 4, !dbg !1120
  %236 = load i32, i32* %24, align 4, !dbg !1120
  %237 = add i32 %236, 1, !dbg !1120
  store i32 %237, i32* %24, align 4, !dbg !1120
  %238 = load i32, i32* %24, align 4, !dbg !1120
  call void @llvm.dbg.declare(metadata i32** %39, metadata !1122, metadata !DIExpression()), !dbg !1124
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !1124
  store i32* %239, i32** %39, align 8, !dbg !1124
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1125, metadata !DIExpression()), !dbg !1124
  %240 = load i32, i32* %24, align 4, !dbg !1124
  %241 = zext i32 %240 to i64, !dbg !1124
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* @Hacl_Hash_SHA2_h256, i64 0, i64 %241, !dbg !1124
  %243 = load i32, i32* %242, align 4, !dbg !1124
  store i32 %243, i32* %40, align 4, !dbg !1124
  %244 = load i32, i32* %40, align 4, !dbg !1124
  %245 = load i32*, i32** %39, align 8, !dbg !1124
  %246 = load i32, i32* %24, align 4, !dbg !1124
  %247 = zext i32 %246 to i64, !dbg !1124
  %248 = getelementptr inbounds i32, i32* %245, i64 %247, !dbg !1124
  store i32 %244, i32* %248, align 4, !dbg !1124
  %249 = load i32, i32* %24, align 4, !dbg !1124
  %250 = add i32 %249, 1, !dbg !1124
  store i32 %250, i32* %24, align 4, !dbg !1124
  %251 = load i32, i32* %24, align 4, !dbg !1124
  br label %252, !dbg !1093

252:                                              ; preds = %147
  call void @llvm.dbg.declare(metadata i32** %41, metadata !1126, metadata !DIExpression()), !dbg !1127
  %253 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0, !dbg !1128
  store i32* %253, i32** %41, align 8, !dbg !1127
  call void @llvm.dbg.declare(metadata i8** %42, metadata !1129, metadata !DIExpression()), !dbg !1130
  %254 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !1131
  store i8* %254, i8** %42, align 8, !dbg !1130
  %255 = load i32, i32* %10, align 4, !dbg !1132
  %256 = icmp eq i32 %255, 0, !dbg !1134
  br i1 %256, label %257, label %260, !dbg !1135

257:                                              ; preds = %252
  %258 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !1136
  %259 = load i32*, i32** %41, align 8, !dbg !1138
  call void @Hacl_Hash_SHA2_sha256_update_last(i64 noundef 64, i32 noundef signext 64, i8* noundef %258, i32* noundef %259), !dbg !1139
  br label %320, !dbg !1140

260:                                              ; preds = %252
  call void @llvm.dbg.declare(metadata i32* %43, metadata !1141, metadata !DIExpression()), !dbg !1143
  store i32 64, i32* %43, align 4, !dbg !1143
  call void @llvm.dbg.declare(metadata i32* %44, metadata !1144, metadata !DIExpression()), !dbg !1145
  %261 = load i32, i32* %10, align 4, !dbg !1146
  %262 = load i32, i32* %43, align 4, !dbg !1147
  %263 = udiv i32 %261, %262, !dbg !1148
  store i32 %263, i32* %44, align 4, !dbg !1145
  call void @llvm.dbg.declare(metadata i32* %45, metadata !1149, metadata !DIExpression()), !dbg !1150
  %264 = load i32, i32* %10, align 4, !dbg !1151
  %265 = load i32, i32* %43, align 4, !dbg !1152
  %266 = urem i32 %264, %265, !dbg !1153
  store i32 %266, i32* %45, align 4, !dbg !1150
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %46, metadata !1154, metadata !DIExpression()), !dbg !1155
  %267 = load i32, i32* %44, align 4, !dbg !1156
  %268 = icmp ugt i32 %267, 0, !dbg !1158
  br i1 %268, label %269, label %285, !dbg !1159

269:                                              ; preds = %260
  %270 = load i32, i32* %45, align 4, !dbg !1160
  %271 = icmp eq i32 %270, 0, !dbg !1161
  br i1 %271, label %272, label %285, !dbg !1162

272:                                              ; preds = %269
  call void @llvm.dbg.declare(metadata i32* %47, metadata !1163, metadata !DIExpression()), !dbg !1165
  %273 = load i32, i32* %44, align 4, !dbg !1166
  %274 = sub i32 %273, 1, !dbg !1167
  store i32 %274, i32* %47, align 4, !dbg !1165
  %275 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !1168
  %276 = load i32, i32* %47, align 4, !dbg !1169
  store i32 %276, i32* %275, align 4, !dbg !1168
  %277 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !1168
  %278 = load i32, i32* %10, align 4, !dbg !1170
  %279 = load i32, i32* %47, align 4, !dbg !1171
  %280 = load i32, i32* %43, align 4, !dbg !1172
  %281 = mul i32 %279, %280, !dbg !1173
  %282 = sub i32 %278, %281, !dbg !1174
  store i32 %282, i32* %277, align 4, !dbg !1168
  %283 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !1175
  %284 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !1175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %283, i8* align 4 %284, i64 8, i1 false), !dbg !1175
  br label %292, !dbg !1176

285:                                              ; preds = %269, %260
  %286 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !1177
  %287 = load i32, i32* %44, align 4, !dbg !1179
  store i32 %287, i32* %286, align 4, !dbg !1177
  %288 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !1177
  %289 = load i32, i32* %45, align 4, !dbg !1180
  store i32 %289, i32* %288, align 4, !dbg !1177
  %290 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !1181
  %291 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !1181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %290, i8* align 4 %291, i64 8, i1 false), !dbg !1181
  br label %292

292:                                              ; preds = %285, %272
  call void @llvm.dbg.declare(metadata i32* %50, metadata !1182, metadata !DIExpression()), !dbg !1183
  %293 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 0, !dbg !1184
  %294 = load i32, i32* %293, align 4, !dbg !1184
  store i32 %294, i32* %50, align 4, !dbg !1183
  call void @llvm.dbg.declare(metadata i32* %51, metadata !1185, metadata !DIExpression()), !dbg !1186
  %295 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 1, !dbg !1187
  %296 = load i32, i32* %295, align 4, !dbg !1187
  store i32 %296, i32* %51, align 4, !dbg !1186
  call void @llvm.dbg.declare(metadata i32* %52, metadata !1188, metadata !DIExpression()), !dbg !1189
  %297 = load i32, i32* %50, align 4, !dbg !1190
  %298 = load i32, i32* %43, align 4, !dbg !1191
  %299 = mul i32 %297, %298, !dbg !1192
  store i32 %299, i32* %52, align 4, !dbg !1189
  call void @llvm.dbg.declare(metadata i8** %53, metadata !1193, metadata !DIExpression()), !dbg !1194
  %300 = load i8*, i8** %9, align 8, !dbg !1195
  store i8* %300, i8** %53, align 8, !dbg !1194
  call void @llvm.dbg.declare(metadata i8** %54, metadata !1196, metadata !DIExpression()), !dbg !1197
  %301 = load i8*, i8** %9, align 8, !dbg !1198
  %302 = load i32, i32* %52, align 4, !dbg !1199
  %303 = zext i32 %302 to i64, !dbg !1200
  %304 = getelementptr inbounds i8, i8* %301, i64 %303, !dbg !1200
  store i8* %304, i8** %54, align 8, !dbg !1197
  %305 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !1201
  %306 = load i32*, i32** %41, align 8, !dbg !1202
  call void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef signext 64, i8* noundef %305, i32* noundef %306), !dbg !1203
  %307 = load i32, i32* %50, align 4, !dbg !1204
  %308 = mul i32 %307, 64, !dbg !1205
  %309 = load i8*, i8** %53, align 8, !dbg !1206
  %310 = load i32*, i32** %41, align 8, !dbg !1207
  call void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef signext %308, i8* noundef %309, i32* noundef %310), !dbg !1208
  %311 = load i32, i32* %52, align 4, !dbg !1209
  %312 = zext i32 %311 to i64, !dbg !1210
  %313 = add i64 64, %312, !dbg !1211
  %314 = load i32, i32* %51, align 4, !dbg !1212
  %315 = zext i32 %314 to i64, !dbg !1213
  %316 = add i64 %313, %315, !dbg !1214
  %317 = load i32, i32* %51, align 4, !dbg !1215
  %318 = load i8*, i8** %54, align 8, !dbg !1216
  %319 = load i32*, i32** %41, align 8, !dbg !1217
  call void @Hacl_Hash_SHA2_sha256_update_last(i64 noundef %316, i32 noundef signext %317, i8* noundef %318, i32* noundef %319), !dbg !1218
  br label %320

320:                                              ; preds = %292, %257
  %321 = load i32*, i32** %41, align 8, !dbg !1219
  %322 = load i8*, i8** %42, align 8, !dbg !1220
  call void @Hacl_Hash_SHA2_sha256_finish(i32* noundef %321, i8* noundef %322), !dbg !1221
  call void @llvm.dbg.declare(metadata i8** %55, metadata !1222, metadata !DIExpression()), !dbg !1223
  %323 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !1224
  store i8* %323, i8** %55, align 8, !dbg !1223
  %324 = load i32*, i32** %41, align 8, !dbg !1225
  call void @Hacl_Hash_SHA2_sha256_init(i32* noundef %324), !dbg !1226
  call void @llvm.dbg.declare(metadata i32* %56, metadata !1227, metadata !DIExpression()), !dbg !1228
  store i32 64, i32* %56, align 4, !dbg !1228
  call void @llvm.dbg.declare(metadata i32* %57, metadata !1229, metadata !DIExpression()), !dbg !1230
  %325 = load i32, i32* %56, align 4, !dbg !1231
  %326 = udiv i32 32, %325, !dbg !1232
  store i32 %326, i32* %57, align 4, !dbg !1230
  call void @llvm.dbg.declare(metadata i32* %58, metadata !1233, metadata !DIExpression()), !dbg !1234
  %327 = load i32, i32* %56, align 4, !dbg !1235
  %328 = urem i32 32, %327, !dbg !1236
  store i32 %328, i32* %58, align 4, !dbg !1234
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %59, metadata !1237, metadata !DIExpression()), !dbg !1238
  %329 = load i32, i32* %57, align 4, !dbg !1239
  %330 = icmp ugt i32 %329, 0, !dbg !1241
  br i1 %330, label %331, label %346, !dbg !1242

331:                                              ; preds = %320
  %332 = load i32, i32* %58, align 4, !dbg !1243
  %333 = icmp eq i32 %332, 0, !dbg !1244
  br i1 %333, label %334, label %346, !dbg !1245

334:                                              ; preds = %331
  call void @llvm.dbg.declare(metadata i32* %60, metadata !1246, metadata !DIExpression()), !dbg !1248
  %335 = load i32, i32* %57, align 4, !dbg !1249
  %336 = sub i32 %335, 1, !dbg !1250
  store i32 %336, i32* %60, align 4, !dbg !1248
  %337 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 0, !dbg !1251
  %338 = load i32, i32* %60, align 4, !dbg !1252
  store i32 %338, i32* %337, align 4, !dbg !1251
  %339 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 1, !dbg !1251
  %340 = load i32, i32* %60, align 4, !dbg !1253
  %341 = load i32, i32* %56, align 4, !dbg !1254
  %342 = mul i32 %340, %341, !dbg !1255
  %343 = sub i32 32, %342, !dbg !1256
  store i32 %343, i32* %339, align 4, !dbg !1251
  %344 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !1257
  %345 = bitcast %struct.K___uint32_t_uint32_t_s* %61 to i8*, !dbg !1257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %344, i8* align 4 %345, i64 8, i1 false), !dbg !1257
  br label %353, !dbg !1258

346:                                              ; preds = %331, %320
  %347 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 0, !dbg !1259
  %348 = load i32, i32* %57, align 4, !dbg !1261
  store i32 %348, i32* %347, align 4, !dbg !1259
  %349 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 1, !dbg !1259
  %350 = load i32, i32* %58, align 4, !dbg !1262
  store i32 %350, i32* %349, align 4, !dbg !1259
  %351 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !1263
  %352 = bitcast %struct.K___uint32_t_uint32_t_s* %62 to i8*, !dbg !1263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %351, i8* align 4 %352, i64 8, i1 false), !dbg !1263
  br label %353

353:                                              ; preds = %346, %334
  call void @llvm.dbg.declare(metadata i32* %63, metadata !1264, metadata !DIExpression()), !dbg !1265
  %354 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 0, !dbg !1266
  %355 = load i32, i32* %354, align 4, !dbg !1266
  store i32 %355, i32* %63, align 4, !dbg !1265
  call void @llvm.dbg.declare(metadata i32* %64, metadata !1267, metadata !DIExpression()), !dbg !1268
  %356 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 1, !dbg !1269
  %357 = load i32, i32* %356, align 4, !dbg !1269
  store i32 %357, i32* %64, align 4, !dbg !1268
  call void @llvm.dbg.declare(metadata i32* %65, metadata !1270, metadata !DIExpression()), !dbg !1271
  %358 = load i32, i32* %63, align 4, !dbg !1272
  %359 = load i32, i32* %56, align 4, !dbg !1273
  %360 = mul i32 %358, %359, !dbg !1274
  store i32 %360, i32* %65, align 4, !dbg !1271
  call void @llvm.dbg.declare(metadata i8** %66, metadata !1275, metadata !DIExpression()), !dbg !1276
  %361 = load i8*, i8** %55, align 8, !dbg !1277
  store i8* %361, i8** %66, align 8, !dbg !1276
  call void @llvm.dbg.declare(metadata i8** %67, metadata !1278, metadata !DIExpression()), !dbg !1279
  %362 = load i8*, i8** %55, align 8, !dbg !1280
  %363 = load i32, i32* %65, align 4, !dbg !1281
  %364 = zext i32 %363 to i64, !dbg !1282
  %365 = getelementptr inbounds i8, i8* %362, i64 %364, !dbg !1282
  store i8* %365, i8** %67, align 8, !dbg !1279
  %366 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !1283
  %367 = load i32*, i32** %41, align 8, !dbg !1284
  call void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef signext 64, i8* noundef %366, i32* noundef %367), !dbg !1285
  %368 = load i32, i32* %63, align 4, !dbg !1286
  %369 = mul i32 %368, 64, !dbg !1287
  %370 = load i8*, i8** %66, align 8, !dbg !1288
  %371 = load i32*, i32** %41, align 8, !dbg !1289
  call void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef signext %369, i8* noundef %370, i32* noundef %371), !dbg !1290
  %372 = load i32, i32* %65, align 4, !dbg !1291
  %373 = zext i32 %372 to i64, !dbg !1292
  %374 = add i64 64, %373, !dbg !1293
  %375 = load i32, i32* %64, align 4, !dbg !1294
  %376 = zext i32 %375 to i64, !dbg !1295
  %377 = add i64 %374, %376, !dbg !1296
  %378 = load i32, i32* %64, align 4, !dbg !1297
  %379 = load i8*, i8** %67, align 8, !dbg !1298
  %380 = load i32*, i32** %41, align 8, !dbg !1299
  call void @Hacl_Hash_SHA2_sha256_update_last(i64 noundef %377, i32 noundef signext %378, i8* noundef %379, i32* noundef %380), !dbg !1300
  %381 = load i32*, i32** %41, align 8, !dbg !1301
  %382 = load i8*, i8** %6, align 8, !dbg !1302
  call void @Hacl_Hash_SHA2_sha256_finish(i32* noundef %381, i8* noundef %382), !dbg !1303
  ret void, !dbg !1304
}

declare dso_local void @Hacl_Hash_SHA2_hash_256(i8* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_SHA2_sha256_update_last(i64 noundef, i32 noundef signext, i8* noundef, i32* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef signext, i8* noundef, i32* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha256_finish(i32* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha256_init(i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha2_384(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !1305 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
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
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64*, align 8
  %42 = alloca i8*, align 8
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
  %53 = alloca i8*, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i8*, align 8
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
  %66 = alloca i8*, align 8
  %67 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1306, metadata !DIExpression()), !dbg !1307
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1308, metadata !DIExpression()), !dbg !1309
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1310, metadata !DIExpression()), !dbg !1311
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1312, metadata !DIExpression()), !dbg !1313
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1314, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.declare(metadata [128 x i8]* %11, metadata !1316, metadata !DIExpression()), !dbg !1320
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0, !dbg !1321
  call void @llvm.memset.p0i8.i64(i8* align 1 %68, i8 0, i64 128, i1 false), !dbg !1321
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1322, metadata !DIExpression()), !dbg !1323
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0, !dbg !1324
  store i8* %69, i8** %12, align 8, !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1325, metadata !DIExpression()), !dbg !1326
  %70 = load i32, i32* %8, align 4, !dbg !1327
  %71 = icmp ule i32 %70, 128, !dbg !1329
  br i1 %71, label %72, label %74, !dbg !1330

72:                                               ; preds = %5
  %73 = load i32, i32* %8, align 4, !dbg !1331
  store i32 %73, i32* %13, align 4, !dbg !1333
  br label %75, !dbg !1334

74:                                               ; preds = %5
  store i32 48, i32* %13, align 4, !dbg !1335
  br label %75

75:                                               ; preds = %74, %72
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1337, metadata !DIExpression()), !dbg !1338
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0, !dbg !1339
  %77 = load i32, i32* %13, align 4, !dbg !1340
  %78 = zext i32 %77 to i64, !dbg !1341
  %79 = getelementptr inbounds i8, i8* %76, i64 %78, !dbg !1341
  store i8* %79, i8** %14, align 8, !dbg !1338
  %80 = load i8*, i8** %14, align 8, !dbg !1342
  %81 = load i32, i32* %8, align 4, !dbg !1343
  %82 = icmp ule i32 %81, 128, !dbg !1345
  br i1 %82, label %83, label %89, !dbg !1346

83:                                               ; preds = %75
  %84 = load i8*, i8** %12, align 8, !dbg !1347
  %85 = load i8*, i8** %7, align 8, !dbg !1349
  %86 = load i32, i32* %8, align 4, !dbg !1350
  %87 = zext i32 %86 to i64, !dbg !1350
  %88 = mul i64 %87, 1, !dbg !1351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 %88, i1 false), !dbg !1352
  br label %93, !dbg !1353

89:                                               ; preds = %75
  %90 = load i8*, i8** %12, align 8, !dbg !1354
  %91 = load i8*, i8** %7, align 8, !dbg !1356
  %92 = load i32, i32* %8, align 4, !dbg !1357
  call void @Hacl_Hash_SHA2_hash_384(i8* noundef %90, i8* noundef %91, i32 noundef signext %92), !dbg !1358
  br label %93

93:                                               ; preds = %89, %83
  call void @llvm.dbg.declare(metadata [128 x i8]* %15, metadata !1359, metadata !DIExpression()), !dbg !1360
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1361
  call void @llvm.memset.p0i8.i64(i8* align 1 %94, i8 54, i64 128, i1 false), !dbg !1361
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1362, metadata !DIExpression()), !dbg !1364
  store i32 0, i32* %16, align 4, !dbg !1364
  br label %95, !dbg !1365

95:                                               ; preds = %116, %93
  %96 = load i32, i32* %16, align 4, !dbg !1366
  %97 = icmp ult i32 %96, 128, !dbg !1368
  br i1 %97, label %98, label %119, !dbg !1369

98:                                               ; preds = %95
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1370, metadata !DIExpression()), !dbg !1372
  %99 = load i32, i32* %16, align 4, !dbg !1373
  %100 = zext i32 %99 to i64, !dbg !1374
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 %100, !dbg !1374
  %102 = load i8, i8* %101, align 1, !dbg !1374
  store i8 %102, i8* %17, align 1, !dbg !1372
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1375, metadata !DIExpression()), !dbg !1376
  %103 = load i32, i32* %16, align 4, !dbg !1377
  %104 = zext i32 %103 to i64, !dbg !1378
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %104, !dbg !1378
  %106 = load i8, i8* %105, align 1, !dbg !1378
  store i8 %106, i8* %18, align 1, !dbg !1376
  %107 = load i8, i8* %17, align 1, !dbg !1379
  %108 = zext i8 %107 to i32, !dbg !1380
  %109 = load i8, i8* %18, align 1, !dbg !1381
  %110 = zext i8 %109 to i32, !dbg !1382
  %111 = xor i32 %108, %110, !dbg !1383
  %112 = trunc i32 %111 to i8, !dbg !1380
  %113 = load i32, i32* %16, align 4, !dbg !1384
  %114 = zext i32 %113 to i64, !dbg !1385
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 %114, !dbg !1385
  store i8 %112, i8* %115, align 1, !dbg !1386
  br label %116, !dbg !1387

116:                                              ; preds = %98
  %117 = load i32, i32* %16, align 4, !dbg !1388
  %118 = add i32 %117, 1, !dbg !1388
  store i32 %118, i32* %16, align 4, !dbg !1388
  br label %95, !dbg !1389, !llvm.loop !1390

119:                                              ; preds = %95
  call void @llvm.dbg.declare(metadata [128 x i8]* %19, metadata !1392, metadata !DIExpression()), !dbg !1393
  %120 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1394
  call void @llvm.memset.p0i8.i64(i8* align 1 %120, i8 92, i64 128, i1 false), !dbg !1394
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1395, metadata !DIExpression()), !dbg !1397
  store i32 0, i32* %20, align 4, !dbg !1397
  br label %121, !dbg !1398

121:                                              ; preds = %142, %119
  %122 = load i32, i32* %20, align 4, !dbg !1399
  %123 = icmp ult i32 %122, 128, !dbg !1401
  br i1 %123, label %124, label %145, !dbg !1402

124:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1403, metadata !DIExpression()), !dbg !1405
  %125 = load i32, i32* %20, align 4, !dbg !1406
  %126 = zext i32 %125 to i64, !dbg !1407
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 %126, !dbg !1407
  %128 = load i8, i8* %127, align 1, !dbg !1407
  store i8 %128, i8* %21, align 1, !dbg !1405
  call void @llvm.dbg.declare(metadata i8* %22, metadata !1408, metadata !DIExpression()), !dbg !1409
  %129 = load i32, i32* %20, align 4, !dbg !1410
  %130 = zext i32 %129 to i64, !dbg !1411
  %131 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %130, !dbg !1411
  %132 = load i8, i8* %131, align 1, !dbg !1411
  store i8 %132, i8* %22, align 1, !dbg !1409
  %133 = load i8, i8* %21, align 1, !dbg !1412
  %134 = zext i8 %133 to i32, !dbg !1413
  %135 = load i8, i8* %22, align 1, !dbg !1414
  %136 = zext i8 %135 to i32, !dbg !1415
  %137 = xor i32 %134, %136, !dbg !1416
  %138 = trunc i32 %137 to i8, !dbg !1413
  %139 = load i32, i32* %20, align 4, !dbg !1417
  %140 = zext i32 %139 to i64, !dbg !1418
  %141 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 %140, !dbg !1418
  store i8 %138, i8* %141, align 1, !dbg !1419
  br label %142, !dbg !1420

142:                                              ; preds = %124
  %143 = load i32, i32* %20, align 4, !dbg !1421
  %144 = add i32 %143, 1, !dbg !1421
  store i32 %144, i32* %20, align 4, !dbg !1421
  br label %121, !dbg !1422, !llvm.loop !1423

145:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata [8 x i64]* %23, metadata !1425, metadata !DIExpression()), !dbg !1427
  %146 = bitcast [8 x i64]* %23 to i8*, !dbg !1427
  call void @llvm.memset.p0i8.i64(i8* align 8 %146, i8 0, i64 64, i1 false), !dbg !1427
  br label %147, !dbg !1428

147:                                              ; preds = %145
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1429, metadata !DIExpression()), !dbg !1431
  store i32 0, i32* %24, align 4, !dbg !1431
  call void @llvm.dbg.declare(metadata i64** %25, metadata !1432, metadata !DIExpression()), !dbg !1435
  %148 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1435
  store i64* %148, i64** %25, align 8, !dbg !1435
  call void @llvm.dbg.declare(metadata i64* %26, metadata !1436, metadata !DIExpression()), !dbg !1435
  %149 = load i32, i32* %24, align 4, !dbg !1435
  %150 = zext i32 %149 to i64, !dbg !1435
  %151 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i64 0, i64 %150, !dbg !1435
  %152 = load i64, i64* %151, align 8, !dbg !1435
  store i64 %152, i64* %26, align 8, !dbg !1435
  %153 = load i64, i64* %26, align 8, !dbg !1435
  %154 = load i64*, i64** %25, align 8, !dbg !1435
  %155 = load i32, i32* %24, align 4, !dbg !1435
  %156 = zext i32 %155 to i64, !dbg !1435
  %157 = getelementptr inbounds i64, i64* %154, i64 %156, !dbg !1435
  store i64 %153, i64* %157, align 8, !dbg !1435
  %158 = load i32, i32* %24, align 4, !dbg !1435
  %159 = add i32 %158, 1, !dbg !1435
  store i32 %159, i32* %24, align 4, !dbg !1435
  %160 = load i32, i32* %24, align 4, !dbg !1435
  call void @llvm.dbg.declare(metadata i64** %27, metadata !1437, metadata !DIExpression()), !dbg !1439
  %161 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1439
  store i64* %161, i64** %27, align 8, !dbg !1439
  call void @llvm.dbg.declare(metadata i64* %28, metadata !1440, metadata !DIExpression()), !dbg !1439
  %162 = load i32, i32* %24, align 4, !dbg !1439
  %163 = zext i32 %162 to i64, !dbg !1439
  %164 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i64 0, i64 %163, !dbg !1439
  %165 = load i64, i64* %164, align 8, !dbg !1439
  store i64 %165, i64* %28, align 8, !dbg !1439
  %166 = load i64, i64* %28, align 8, !dbg !1439
  %167 = load i64*, i64** %27, align 8, !dbg !1439
  %168 = load i32, i32* %24, align 4, !dbg !1439
  %169 = zext i32 %168 to i64, !dbg !1439
  %170 = getelementptr inbounds i64, i64* %167, i64 %169, !dbg !1439
  store i64 %166, i64* %170, align 8, !dbg !1439
  %171 = load i32, i32* %24, align 4, !dbg !1439
  %172 = add i32 %171, 1, !dbg !1439
  store i32 %172, i32* %24, align 4, !dbg !1439
  %173 = load i32, i32* %24, align 4, !dbg !1439
  call void @llvm.dbg.declare(metadata i64** %29, metadata !1441, metadata !DIExpression()), !dbg !1443
  %174 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1443
  store i64* %174, i64** %29, align 8, !dbg !1443
  call void @llvm.dbg.declare(metadata i64* %30, metadata !1444, metadata !DIExpression()), !dbg !1443
  %175 = load i32, i32* %24, align 4, !dbg !1443
  %176 = zext i32 %175 to i64, !dbg !1443
  %177 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i64 0, i64 %176, !dbg !1443
  %178 = load i64, i64* %177, align 8, !dbg !1443
  store i64 %178, i64* %30, align 8, !dbg !1443
  %179 = load i64, i64* %30, align 8, !dbg !1443
  %180 = load i64*, i64** %29, align 8, !dbg !1443
  %181 = load i32, i32* %24, align 4, !dbg !1443
  %182 = zext i32 %181 to i64, !dbg !1443
  %183 = getelementptr inbounds i64, i64* %180, i64 %182, !dbg !1443
  store i64 %179, i64* %183, align 8, !dbg !1443
  %184 = load i32, i32* %24, align 4, !dbg !1443
  %185 = add i32 %184, 1, !dbg !1443
  store i32 %185, i32* %24, align 4, !dbg !1443
  %186 = load i32, i32* %24, align 4, !dbg !1443
  call void @llvm.dbg.declare(metadata i64** %31, metadata !1445, metadata !DIExpression()), !dbg !1447
  %187 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1447
  store i64* %187, i64** %31, align 8, !dbg !1447
  call void @llvm.dbg.declare(metadata i64* %32, metadata !1448, metadata !DIExpression()), !dbg !1447
  %188 = load i32, i32* %24, align 4, !dbg !1447
  %189 = zext i32 %188 to i64, !dbg !1447
  %190 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i64 0, i64 %189, !dbg !1447
  %191 = load i64, i64* %190, align 8, !dbg !1447
  store i64 %191, i64* %32, align 8, !dbg !1447
  %192 = load i64, i64* %32, align 8, !dbg !1447
  %193 = load i64*, i64** %31, align 8, !dbg !1447
  %194 = load i32, i32* %24, align 4, !dbg !1447
  %195 = zext i32 %194 to i64, !dbg !1447
  %196 = getelementptr inbounds i64, i64* %193, i64 %195, !dbg !1447
  store i64 %192, i64* %196, align 8, !dbg !1447
  %197 = load i32, i32* %24, align 4, !dbg !1447
  %198 = add i32 %197, 1, !dbg !1447
  store i32 %198, i32* %24, align 4, !dbg !1447
  %199 = load i32, i32* %24, align 4, !dbg !1447
  call void @llvm.dbg.declare(metadata i64** %33, metadata !1449, metadata !DIExpression()), !dbg !1451
  %200 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1451
  store i64* %200, i64** %33, align 8, !dbg !1451
  call void @llvm.dbg.declare(metadata i64* %34, metadata !1452, metadata !DIExpression()), !dbg !1451
  %201 = load i32, i32* %24, align 4, !dbg !1451
  %202 = zext i32 %201 to i64, !dbg !1451
  %203 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i64 0, i64 %202, !dbg !1451
  %204 = load i64, i64* %203, align 8, !dbg !1451
  store i64 %204, i64* %34, align 8, !dbg !1451
  %205 = load i64, i64* %34, align 8, !dbg !1451
  %206 = load i64*, i64** %33, align 8, !dbg !1451
  %207 = load i32, i32* %24, align 4, !dbg !1451
  %208 = zext i32 %207 to i64, !dbg !1451
  %209 = getelementptr inbounds i64, i64* %206, i64 %208, !dbg !1451
  store i64 %205, i64* %209, align 8, !dbg !1451
  %210 = load i32, i32* %24, align 4, !dbg !1451
  %211 = add i32 %210, 1, !dbg !1451
  store i32 %211, i32* %24, align 4, !dbg !1451
  %212 = load i32, i32* %24, align 4, !dbg !1451
  call void @llvm.dbg.declare(metadata i64** %35, metadata !1453, metadata !DIExpression()), !dbg !1455
  %213 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1455
  store i64* %213, i64** %35, align 8, !dbg !1455
  call void @llvm.dbg.declare(metadata i64* %36, metadata !1456, metadata !DIExpression()), !dbg !1455
  %214 = load i32, i32* %24, align 4, !dbg !1455
  %215 = zext i32 %214 to i64, !dbg !1455
  %216 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i64 0, i64 %215, !dbg !1455
  %217 = load i64, i64* %216, align 8, !dbg !1455
  store i64 %217, i64* %36, align 8, !dbg !1455
  %218 = load i64, i64* %36, align 8, !dbg !1455
  %219 = load i64*, i64** %35, align 8, !dbg !1455
  %220 = load i32, i32* %24, align 4, !dbg !1455
  %221 = zext i32 %220 to i64, !dbg !1455
  %222 = getelementptr inbounds i64, i64* %219, i64 %221, !dbg !1455
  store i64 %218, i64* %222, align 8, !dbg !1455
  %223 = load i32, i32* %24, align 4, !dbg !1455
  %224 = add i32 %223, 1, !dbg !1455
  store i32 %224, i32* %24, align 4, !dbg !1455
  %225 = load i32, i32* %24, align 4, !dbg !1455
  call void @llvm.dbg.declare(metadata i64** %37, metadata !1457, metadata !DIExpression()), !dbg !1459
  %226 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1459
  store i64* %226, i64** %37, align 8, !dbg !1459
  call void @llvm.dbg.declare(metadata i64* %38, metadata !1460, metadata !DIExpression()), !dbg !1459
  %227 = load i32, i32* %24, align 4, !dbg !1459
  %228 = zext i32 %227 to i64, !dbg !1459
  %229 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i64 0, i64 %228, !dbg !1459
  %230 = load i64, i64* %229, align 8, !dbg !1459
  store i64 %230, i64* %38, align 8, !dbg !1459
  %231 = load i64, i64* %38, align 8, !dbg !1459
  %232 = load i64*, i64** %37, align 8, !dbg !1459
  %233 = load i32, i32* %24, align 4, !dbg !1459
  %234 = zext i32 %233 to i64, !dbg !1459
  %235 = getelementptr inbounds i64, i64* %232, i64 %234, !dbg !1459
  store i64 %231, i64* %235, align 8, !dbg !1459
  %236 = load i32, i32* %24, align 4, !dbg !1459
  %237 = add i32 %236, 1, !dbg !1459
  store i32 %237, i32* %24, align 4, !dbg !1459
  %238 = load i32, i32* %24, align 4, !dbg !1459
  call void @llvm.dbg.declare(metadata i64** %39, metadata !1461, metadata !DIExpression()), !dbg !1463
  %239 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1463
  store i64* %239, i64** %39, align 8, !dbg !1463
  call void @llvm.dbg.declare(metadata i64* %40, metadata !1464, metadata !DIExpression()), !dbg !1463
  %240 = load i32, i32* %24, align 4, !dbg !1463
  %241 = zext i32 %240 to i64, !dbg !1463
  %242 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h384, i64 0, i64 %241, !dbg !1463
  %243 = load i64, i64* %242, align 8, !dbg !1463
  store i64 %243, i64* %40, align 8, !dbg !1463
  %244 = load i64, i64* %40, align 8, !dbg !1463
  %245 = load i64*, i64** %39, align 8, !dbg !1463
  %246 = load i32, i32* %24, align 4, !dbg !1463
  %247 = zext i32 %246 to i64, !dbg !1463
  %248 = getelementptr inbounds i64, i64* %245, i64 %247, !dbg !1463
  store i64 %244, i64* %248, align 8, !dbg !1463
  %249 = load i32, i32* %24, align 4, !dbg !1463
  %250 = add i32 %249, 1, !dbg !1463
  store i32 %250, i32* %24, align 4, !dbg !1463
  %251 = load i32, i32* %24, align 4, !dbg !1463
  br label %252, !dbg !1431

252:                                              ; preds = %147
  call void @llvm.dbg.declare(metadata i64** %41, metadata !1465, metadata !DIExpression()), !dbg !1466
  %253 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1467
  store i64* %253, i64** %41, align 8, !dbg !1466
  call void @llvm.dbg.declare(metadata i8** %42, metadata !1468, metadata !DIExpression()), !dbg !1469
  %254 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1470
  store i8* %254, i8** %42, align 8, !dbg !1469
  %255 = load i32, i32* %10, align 4, !dbg !1471
  %256 = icmp eq i32 %255, 0, !dbg !1473
  br i1 %256, label %257, label %263, !dbg !1474

257:                                              ; preds = %252
  %258 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 0), !dbg !1475
  %259 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 128), !dbg !1477
  %260 = call i128 @FStar_UInt128_add(i128 noundef %258, i128 noundef %259), !dbg !1478
  %261 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1479
  %262 = load i64*, i64** %41, align 8, !dbg !1480
  call void @Hacl_Hash_SHA2_sha384_update_last(i128 noundef %260, i32 noundef signext 128, i8* noundef %261, i64* noundef %262), !dbg !1481
  br label %326, !dbg !1482

263:                                              ; preds = %252
  call void @llvm.dbg.declare(metadata i32* %43, metadata !1483, metadata !DIExpression()), !dbg !1485
  store i32 128, i32* %43, align 4, !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %44, metadata !1486, metadata !DIExpression()), !dbg !1487
  %264 = load i32, i32* %10, align 4, !dbg !1488
  %265 = load i32, i32* %43, align 4, !dbg !1489
  %266 = udiv i32 %264, %265, !dbg !1490
  store i32 %266, i32* %44, align 4, !dbg !1487
  call void @llvm.dbg.declare(metadata i32* %45, metadata !1491, metadata !DIExpression()), !dbg !1492
  %267 = load i32, i32* %10, align 4, !dbg !1493
  %268 = load i32, i32* %43, align 4, !dbg !1494
  %269 = urem i32 %267, %268, !dbg !1495
  store i32 %269, i32* %45, align 4, !dbg !1492
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %46, metadata !1496, metadata !DIExpression()), !dbg !1497
  %270 = load i32, i32* %44, align 4, !dbg !1498
  %271 = icmp ugt i32 %270, 0, !dbg !1500
  br i1 %271, label %272, label %288, !dbg !1501

272:                                              ; preds = %263
  %273 = load i32, i32* %45, align 4, !dbg !1502
  %274 = icmp eq i32 %273, 0, !dbg !1503
  br i1 %274, label %275, label %288, !dbg !1504

275:                                              ; preds = %272
  call void @llvm.dbg.declare(metadata i32* %47, metadata !1505, metadata !DIExpression()), !dbg !1507
  %276 = load i32, i32* %44, align 4, !dbg !1508
  %277 = sub i32 %276, 1, !dbg !1509
  store i32 %277, i32* %47, align 4, !dbg !1507
  %278 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !1510
  %279 = load i32, i32* %47, align 4, !dbg !1511
  store i32 %279, i32* %278, align 4, !dbg !1510
  %280 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !1510
  %281 = load i32, i32* %10, align 4, !dbg !1512
  %282 = load i32, i32* %47, align 4, !dbg !1513
  %283 = load i32, i32* %43, align 4, !dbg !1514
  %284 = mul i32 %282, %283, !dbg !1515
  %285 = sub i32 %281, %284, !dbg !1516
  store i32 %285, i32* %280, align 4, !dbg !1510
  %286 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !1517
  %287 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !1517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 8, i1 false), !dbg !1517
  br label %295, !dbg !1518

288:                                              ; preds = %272, %263
  %289 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !1519
  %290 = load i32, i32* %44, align 4, !dbg !1521
  store i32 %290, i32* %289, align 4, !dbg !1519
  %291 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !1519
  %292 = load i32, i32* %45, align 4, !dbg !1522
  store i32 %292, i32* %291, align 4, !dbg !1519
  %293 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !1523
  %294 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !1523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %293, i8* align 4 %294, i64 8, i1 false), !dbg !1523
  br label %295

295:                                              ; preds = %288, %275
  call void @llvm.dbg.declare(metadata i32* %50, metadata !1524, metadata !DIExpression()), !dbg !1525
  %296 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 0, !dbg !1526
  %297 = load i32, i32* %296, align 4, !dbg !1526
  store i32 %297, i32* %50, align 4, !dbg !1525
  call void @llvm.dbg.declare(metadata i32* %51, metadata !1527, metadata !DIExpression()), !dbg !1528
  %298 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 1, !dbg !1529
  %299 = load i32, i32* %298, align 4, !dbg !1529
  store i32 %299, i32* %51, align 4, !dbg !1528
  call void @llvm.dbg.declare(metadata i32* %52, metadata !1530, metadata !DIExpression()), !dbg !1531
  %300 = load i32, i32* %50, align 4, !dbg !1532
  %301 = load i32, i32* %43, align 4, !dbg !1533
  %302 = mul i32 %300, %301, !dbg !1534
  store i32 %302, i32* %52, align 4, !dbg !1531
  call void @llvm.dbg.declare(metadata i8** %53, metadata !1535, metadata !DIExpression()), !dbg !1536
  %303 = load i8*, i8** %9, align 8, !dbg !1537
  store i8* %303, i8** %53, align 8, !dbg !1536
  call void @llvm.dbg.declare(metadata i8** %54, metadata !1538, metadata !DIExpression()), !dbg !1539
  %304 = load i8*, i8** %9, align 8, !dbg !1540
  %305 = load i32, i32* %52, align 4, !dbg !1541
  %306 = zext i32 %305 to i64, !dbg !1542
  %307 = getelementptr inbounds i8, i8* %304, i64 %306, !dbg !1542
  store i8* %307, i8** %54, align 8, !dbg !1539
  %308 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1543
  %309 = load i64*, i64** %41, align 8, !dbg !1544
  call void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef signext 128, i8* noundef %308, i64* noundef %309), !dbg !1545
  %310 = load i32, i32* %50, align 4, !dbg !1546
  %311 = mul i32 %310, 128, !dbg !1547
  %312 = load i8*, i8** %53, align 8, !dbg !1548
  %313 = load i64*, i64** %41, align 8, !dbg !1549
  call void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef signext %311, i8* noundef %312, i64* noundef %313), !dbg !1550
  %314 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 128), !dbg !1551
  %315 = load i32, i32* %52, align 4, !dbg !1552
  %316 = zext i32 %315 to i64, !dbg !1553
  %317 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %316), !dbg !1554
  %318 = call i128 @FStar_UInt128_add(i128 noundef %314, i128 noundef %317), !dbg !1555
  %319 = load i32, i32* %51, align 4, !dbg !1556
  %320 = zext i32 %319 to i64, !dbg !1557
  %321 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %320), !dbg !1558
  %322 = call i128 @FStar_UInt128_add(i128 noundef %318, i128 noundef %321), !dbg !1559
  %323 = load i32, i32* %51, align 4, !dbg !1560
  %324 = load i8*, i8** %54, align 8, !dbg !1561
  %325 = load i64*, i64** %41, align 8, !dbg !1562
  call void @Hacl_Hash_SHA2_sha384_update_last(i128 noundef %322, i32 noundef signext %323, i8* noundef %324, i64* noundef %325), !dbg !1563
  br label %326

326:                                              ; preds = %295, %257
  %327 = load i64*, i64** %41, align 8, !dbg !1564
  %328 = load i8*, i8** %42, align 8, !dbg !1565
  call void @Hacl_Hash_SHA2_sha384_finish(i64* noundef %327, i8* noundef %328), !dbg !1566
  call void @llvm.dbg.declare(metadata i8** %55, metadata !1567, metadata !DIExpression()), !dbg !1568
  %329 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1569
  store i8* %329, i8** %55, align 8, !dbg !1568
  %330 = load i64*, i64** %41, align 8, !dbg !1570
  call void @Hacl_Hash_SHA2_sha384_init(i64* noundef %330), !dbg !1571
  call void @llvm.dbg.declare(metadata i32* %56, metadata !1572, metadata !DIExpression()), !dbg !1573
  store i32 128, i32* %56, align 4, !dbg !1573
  call void @llvm.dbg.declare(metadata i32* %57, metadata !1574, metadata !DIExpression()), !dbg !1575
  %331 = load i32, i32* %56, align 4, !dbg !1576
  %332 = udiv i32 48, %331, !dbg !1577
  store i32 %332, i32* %57, align 4, !dbg !1575
  call void @llvm.dbg.declare(metadata i32* %58, metadata !1578, metadata !DIExpression()), !dbg !1579
  %333 = load i32, i32* %56, align 4, !dbg !1580
  %334 = urem i32 48, %333, !dbg !1581
  store i32 %334, i32* %58, align 4, !dbg !1579
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %59, metadata !1582, metadata !DIExpression()), !dbg !1583
  %335 = load i32, i32* %57, align 4, !dbg !1584
  %336 = icmp ugt i32 %335, 0, !dbg !1586
  br i1 %336, label %337, label %352, !dbg !1587

337:                                              ; preds = %326
  %338 = load i32, i32* %58, align 4, !dbg !1588
  %339 = icmp eq i32 %338, 0, !dbg !1589
  br i1 %339, label %340, label %352, !dbg !1590

340:                                              ; preds = %337
  call void @llvm.dbg.declare(metadata i32* %60, metadata !1591, metadata !DIExpression()), !dbg !1593
  %341 = load i32, i32* %57, align 4, !dbg !1594
  %342 = sub i32 %341, 1, !dbg !1595
  store i32 %342, i32* %60, align 4, !dbg !1593
  %343 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 0, !dbg !1596
  %344 = load i32, i32* %60, align 4, !dbg !1597
  store i32 %344, i32* %343, align 4, !dbg !1596
  %345 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 1, !dbg !1596
  %346 = load i32, i32* %60, align 4, !dbg !1598
  %347 = load i32, i32* %56, align 4, !dbg !1599
  %348 = mul i32 %346, %347, !dbg !1600
  %349 = sub i32 48, %348, !dbg !1601
  store i32 %349, i32* %345, align 4, !dbg !1596
  %350 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !1602
  %351 = bitcast %struct.K___uint32_t_uint32_t_s* %61 to i8*, !dbg !1602
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %350, i8* align 4 %351, i64 8, i1 false), !dbg !1602
  br label %359, !dbg !1603

352:                                              ; preds = %337, %326
  %353 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 0, !dbg !1604
  %354 = load i32, i32* %57, align 4, !dbg !1606
  store i32 %354, i32* %353, align 4, !dbg !1604
  %355 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 1, !dbg !1604
  %356 = load i32, i32* %58, align 4, !dbg !1607
  store i32 %356, i32* %355, align 4, !dbg !1604
  %357 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !1608
  %358 = bitcast %struct.K___uint32_t_uint32_t_s* %62 to i8*, !dbg !1608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %357, i8* align 4 %358, i64 8, i1 false), !dbg !1608
  br label %359

359:                                              ; preds = %352, %340
  call void @llvm.dbg.declare(metadata i32* %63, metadata !1609, metadata !DIExpression()), !dbg !1610
  %360 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 0, !dbg !1611
  %361 = load i32, i32* %360, align 4, !dbg !1611
  store i32 %361, i32* %63, align 4, !dbg !1610
  call void @llvm.dbg.declare(metadata i32* %64, metadata !1612, metadata !DIExpression()), !dbg !1613
  %362 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 1, !dbg !1614
  %363 = load i32, i32* %362, align 4, !dbg !1614
  store i32 %363, i32* %64, align 4, !dbg !1613
  call void @llvm.dbg.declare(metadata i32* %65, metadata !1615, metadata !DIExpression()), !dbg !1616
  %364 = load i32, i32* %63, align 4, !dbg !1617
  %365 = load i32, i32* %56, align 4, !dbg !1618
  %366 = mul i32 %364, %365, !dbg !1619
  store i32 %366, i32* %65, align 4, !dbg !1616
  call void @llvm.dbg.declare(metadata i8** %66, metadata !1620, metadata !DIExpression()), !dbg !1621
  %367 = load i8*, i8** %55, align 8, !dbg !1622
  store i8* %367, i8** %66, align 8, !dbg !1621
  call void @llvm.dbg.declare(metadata i8** %67, metadata !1623, metadata !DIExpression()), !dbg !1624
  %368 = load i8*, i8** %55, align 8, !dbg !1625
  %369 = load i32, i32* %65, align 4, !dbg !1626
  %370 = zext i32 %369 to i64, !dbg !1627
  %371 = getelementptr inbounds i8, i8* %368, i64 %370, !dbg !1627
  store i8* %371, i8** %67, align 8, !dbg !1624
  %372 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1628
  %373 = load i64*, i64** %41, align 8, !dbg !1629
  call void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef signext 128, i8* noundef %372, i64* noundef %373), !dbg !1630
  %374 = load i32, i32* %63, align 4, !dbg !1631
  %375 = mul i32 %374, 128, !dbg !1632
  %376 = load i8*, i8** %66, align 8, !dbg !1633
  %377 = load i64*, i64** %41, align 8, !dbg !1634
  call void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef signext %375, i8* noundef %376, i64* noundef %377), !dbg !1635
  %378 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 128), !dbg !1636
  %379 = load i32, i32* %65, align 4, !dbg !1637
  %380 = zext i32 %379 to i64, !dbg !1638
  %381 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %380), !dbg !1639
  %382 = call i128 @FStar_UInt128_add(i128 noundef %378, i128 noundef %381), !dbg !1640
  %383 = load i32, i32* %64, align 4, !dbg !1641
  %384 = zext i32 %383 to i64, !dbg !1642
  %385 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %384), !dbg !1643
  %386 = call i128 @FStar_UInt128_add(i128 noundef %382, i128 noundef %385), !dbg !1644
  %387 = load i32, i32* %64, align 4, !dbg !1645
  %388 = load i8*, i8** %67, align 8, !dbg !1646
  %389 = load i64*, i64** %41, align 8, !dbg !1647
  call void @Hacl_Hash_SHA2_sha384_update_last(i128 noundef %386, i32 noundef signext %387, i8* noundef %388, i64* noundef %389), !dbg !1648
  %390 = load i64*, i64** %41, align 8, !dbg !1649
  %391 = load i8*, i8** %6, align 8, !dbg !1650
  call void @Hacl_Hash_SHA2_sha384_finish(i64* noundef %390, i8* noundef %391), !dbg !1651
  ret void, !dbg !1652
}

declare dso_local void @Hacl_Hash_SHA2_hash_384(i8* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_SHA2_sha384_update_last(i128 noundef, i32 noundef signext, i8* noundef, i64* noundef) #4

; Function Attrs: noinline nounwind optnone
define internal i128 @FStar_UInt128_add(i128 noundef %0, i128 noundef %1) #0 !dbg !1653 {
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  store i128 %0, i128* %3, align 16
  call void @llvm.dbg.declare(metadata i128* %3, metadata !1657, metadata !DIExpression()), !dbg !1658
  store i128 %1, i128* %4, align 16
  call void @llvm.dbg.declare(metadata i128* %4, metadata !1659, metadata !DIExpression()), !dbg !1660
  %5 = load i128, i128* %3, align 16, !dbg !1661
  %6 = load i128, i128* %4, align 16, !dbg !1662
  %7 = add i128 %5, %6, !dbg !1663
  ret i128 %7, !dbg !1664
}

; Function Attrs: noinline nounwind optnone
define internal i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %0) #0 !dbg !1665 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1668, metadata !DIExpression()), !dbg !1669
  %3 = load i64, i64* %2, align 8, !dbg !1670
  %4 = zext i64 %3 to i128, !dbg !1671
  ret i128 %4, !dbg !1672
}

declare dso_local void @Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef signext, i8* noundef, i64* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha384_finish(i64* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha384_init(i64* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha2_512(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !1673 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
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
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64*, align 8
  %42 = alloca i8*, align 8
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
  %53 = alloca i8*, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i8*, align 8
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
  %66 = alloca i8*, align 8
  %67 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1674, metadata !DIExpression()), !dbg !1675
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1676, metadata !DIExpression()), !dbg !1677
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1678, metadata !DIExpression()), !dbg !1679
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1680, metadata !DIExpression()), !dbg !1681
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1682, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.declare(metadata [128 x i8]* %11, metadata !1684, metadata !DIExpression()), !dbg !1685
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0, !dbg !1686
  call void @llvm.memset.p0i8.i64(i8* align 1 %68, i8 0, i64 128, i1 false), !dbg !1686
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1687, metadata !DIExpression()), !dbg !1688
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0, !dbg !1689
  store i8* %69, i8** %12, align 8, !dbg !1688
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1690, metadata !DIExpression()), !dbg !1691
  %70 = load i32, i32* %8, align 4, !dbg !1692
  %71 = icmp ule i32 %70, 128, !dbg !1694
  br i1 %71, label %72, label %74, !dbg !1695

72:                                               ; preds = %5
  %73 = load i32, i32* %8, align 4, !dbg !1696
  store i32 %73, i32* %13, align 4, !dbg !1698
  br label %75, !dbg !1699

74:                                               ; preds = %5
  store i32 64, i32* %13, align 4, !dbg !1700
  br label %75

75:                                               ; preds = %74, %72
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1702, metadata !DIExpression()), !dbg !1703
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0, !dbg !1704
  %77 = load i32, i32* %13, align 4, !dbg !1705
  %78 = zext i32 %77 to i64, !dbg !1706
  %79 = getelementptr inbounds i8, i8* %76, i64 %78, !dbg !1706
  store i8* %79, i8** %14, align 8, !dbg !1703
  %80 = load i8*, i8** %14, align 8, !dbg !1707
  %81 = load i32, i32* %8, align 4, !dbg !1708
  %82 = icmp ule i32 %81, 128, !dbg !1710
  br i1 %82, label %83, label %89, !dbg !1711

83:                                               ; preds = %75
  %84 = load i8*, i8** %12, align 8, !dbg !1712
  %85 = load i8*, i8** %7, align 8, !dbg !1714
  %86 = load i32, i32* %8, align 4, !dbg !1715
  %87 = zext i32 %86 to i64, !dbg !1715
  %88 = mul i64 %87, 1, !dbg !1716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 %88, i1 false), !dbg !1717
  br label %93, !dbg !1718

89:                                               ; preds = %75
  %90 = load i8*, i8** %12, align 8, !dbg !1719
  %91 = load i8*, i8** %7, align 8, !dbg !1721
  %92 = load i32, i32* %8, align 4, !dbg !1722
  call void @Hacl_Hash_SHA2_hash_512(i8* noundef %90, i8* noundef %91, i32 noundef signext %92), !dbg !1723
  br label %93

93:                                               ; preds = %89, %83
  call void @llvm.dbg.declare(metadata [128 x i8]* %15, metadata !1724, metadata !DIExpression()), !dbg !1725
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1726
  call void @llvm.memset.p0i8.i64(i8* align 1 %94, i8 54, i64 128, i1 false), !dbg !1726
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1727, metadata !DIExpression()), !dbg !1729
  store i32 0, i32* %16, align 4, !dbg !1729
  br label %95, !dbg !1730

95:                                               ; preds = %116, %93
  %96 = load i32, i32* %16, align 4, !dbg !1731
  %97 = icmp ult i32 %96, 128, !dbg !1733
  br i1 %97, label %98, label %119, !dbg !1734

98:                                               ; preds = %95
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1735, metadata !DIExpression()), !dbg !1737
  %99 = load i32, i32* %16, align 4, !dbg !1738
  %100 = zext i32 %99 to i64, !dbg !1739
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 %100, !dbg !1739
  %102 = load i8, i8* %101, align 1, !dbg !1739
  store i8 %102, i8* %17, align 1, !dbg !1737
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1740, metadata !DIExpression()), !dbg !1741
  %103 = load i32, i32* %16, align 4, !dbg !1742
  %104 = zext i32 %103 to i64, !dbg !1743
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %104, !dbg !1743
  %106 = load i8, i8* %105, align 1, !dbg !1743
  store i8 %106, i8* %18, align 1, !dbg !1741
  %107 = load i8, i8* %17, align 1, !dbg !1744
  %108 = zext i8 %107 to i32, !dbg !1745
  %109 = load i8, i8* %18, align 1, !dbg !1746
  %110 = zext i8 %109 to i32, !dbg !1747
  %111 = xor i32 %108, %110, !dbg !1748
  %112 = trunc i32 %111 to i8, !dbg !1745
  %113 = load i32, i32* %16, align 4, !dbg !1749
  %114 = zext i32 %113 to i64, !dbg !1750
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 %114, !dbg !1750
  store i8 %112, i8* %115, align 1, !dbg !1751
  br label %116, !dbg !1752

116:                                              ; preds = %98
  %117 = load i32, i32* %16, align 4, !dbg !1753
  %118 = add i32 %117, 1, !dbg !1753
  store i32 %118, i32* %16, align 4, !dbg !1753
  br label %95, !dbg !1754, !llvm.loop !1755

119:                                              ; preds = %95
  call void @llvm.dbg.declare(metadata [128 x i8]* %19, metadata !1757, metadata !DIExpression()), !dbg !1758
  %120 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1759
  call void @llvm.memset.p0i8.i64(i8* align 1 %120, i8 92, i64 128, i1 false), !dbg !1759
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1760, metadata !DIExpression()), !dbg !1762
  store i32 0, i32* %20, align 4, !dbg !1762
  br label %121, !dbg !1763

121:                                              ; preds = %142, %119
  %122 = load i32, i32* %20, align 4, !dbg !1764
  %123 = icmp ult i32 %122, 128, !dbg !1766
  br i1 %123, label %124, label %145, !dbg !1767

124:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1768, metadata !DIExpression()), !dbg !1770
  %125 = load i32, i32* %20, align 4, !dbg !1771
  %126 = zext i32 %125 to i64, !dbg !1772
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 %126, !dbg !1772
  %128 = load i8, i8* %127, align 1, !dbg !1772
  store i8 %128, i8* %21, align 1, !dbg !1770
  call void @llvm.dbg.declare(metadata i8* %22, metadata !1773, metadata !DIExpression()), !dbg !1774
  %129 = load i32, i32* %20, align 4, !dbg !1775
  %130 = zext i32 %129 to i64, !dbg !1776
  %131 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %130, !dbg !1776
  %132 = load i8, i8* %131, align 1, !dbg !1776
  store i8 %132, i8* %22, align 1, !dbg !1774
  %133 = load i8, i8* %21, align 1, !dbg !1777
  %134 = zext i8 %133 to i32, !dbg !1778
  %135 = load i8, i8* %22, align 1, !dbg !1779
  %136 = zext i8 %135 to i32, !dbg !1780
  %137 = xor i32 %134, %136, !dbg !1781
  %138 = trunc i32 %137 to i8, !dbg !1778
  %139 = load i32, i32* %20, align 4, !dbg !1782
  %140 = zext i32 %139 to i64, !dbg !1783
  %141 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 %140, !dbg !1783
  store i8 %138, i8* %141, align 1, !dbg !1784
  br label %142, !dbg !1785

142:                                              ; preds = %124
  %143 = load i32, i32* %20, align 4, !dbg !1786
  %144 = add i32 %143, 1, !dbg !1786
  store i32 %144, i32* %20, align 4, !dbg !1786
  br label %121, !dbg !1787, !llvm.loop !1788

145:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata [8 x i64]* %23, metadata !1790, metadata !DIExpression()), !dbg !1791
  %146 = bitcast [8 x i64]* %23 to i8*, !dbg !1791
  call void @llvm.memset.p0i8.i64(i8* align 8 %146, i8 0, i64 64, i1 false), !dbg !1791
  br label %147, !dbg !1792

147:                                              ; preds = %145
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1793, metadata !DIExpression()), !dbg !1795
  store i32 0, i32* %24, align 4, !dbg !1795
  call void @llvm.dbg.declare(metadata i64** %25, metadata !1796, metadata !DIExpression()), !dbg !1798
  %148 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1798
  store i64* %148, i64** %25, align 8, !dbg !1798
  call void @llvm.dbg.declare(metadata i64* %26, metadata !1799, metadata !DIExpression()), !dbg !1798
  %149 = load i32, i32* %24, align 4, !dbg !1798
  %150 = zext i32 %149 to i64, !dbg !1798
  %151 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i64 0, i64 %150, !dbg !1798
  %152 = load i64, i64* %151, align 8, !dbg !1798
  store i64 %152, i64* %26, align 8, !dbg !1798
  %153 = load i64, i64* %26, align 8, !dbg !1798
  %154 = load i64*, i64** %25, align 8, !dbg !1798
  %155 = load i32, i32* %24, align 4, !dbg !1798
  %156 = zext i32 %155 to i64, !dbg !1798
  %157 = getelementptr inbounds i64, i64* %154, i64 %156, !dbg !1798
  store i64 %153, i64* %157, align 8, !dbg !1798
  %158 = load i32, i32* %24, align 4, !dbg !1798
  %159 = add i32 %158, 1, !dbg !1798
  store i32 %159, i32* %24, align 4, !dbg !1798
  %160 = load i32, i32* %24, align 4, !dbg !1798
  call void @llvm.dbg.declare(metadata i64** %27, metadata !1800, metadata !DIExpression()), !dbg !1802
  %161 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1802
  store i64* %161, i64** %27, align 8, !dbg !1802
  call void @llvm.dbg.declare(metadata i64* %28, metadata !1803, metadata !DIExpression()), !dbg !1802
  %162 = load i32, i32* %24, align 4, !dbg !1802
  %163 = zext i32 %162 to i64, !dbg !1802
  %164 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i64 0, i64 %163, !dbg !1802
  %165 = load i64, i64* %164, align 8, !dbg !1802
  store i64 %165, i64* %28, align 8, !dbg !1802
  %166 = load i64, i64* %28, align 8, !dbg !1802
  %167 = load i64*, i64** %27, align 8, !dbg !1802
  %168 = load i32, i32* %24, align 4, !dbg !1802
  %169 = zext i32 %168 to i64, !dbg !1802
  %170 = getelementptr inbounds i64, i64* %167, i64 %169, !dbg !1802
  store i64 %166, i64* %170, align 8, !dbg !1802
  %171 = load i32, i32* %24, align 4, !dbg !1802
  %172 = add i32 %171, 1, !dbg !1802
  store i32 %172, i32* %24, align 4, !dbg !1802
  %173 = load i32, i32* %24, align 4, !dbg !1802
  call void @llvm.dbg.declare(metadata i64** %29, metadata !1804, metadata !DIExpression()), !dbg !1806
  %174 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1806
  store i64* %174, i64** %29, align 8, !dbg !1806
  call void @llvm.dbg.declare(metadata i64* %30, metadata !1807, metadata !DIExpression()), !dbg !1806
  %175 = load i32, i32* %24, align 4, !dbg !1806
  %176 = zext i32 %175 to i64, !dbg !1806
  %177 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i64 0, i64 %176, !dbg !1806
  %178 = load i64, i64* %177, align 8, !dbg !1806
  store i64 %178, i64* %30, align 8, !dbg !1806
  %179 = load i64, i64* %30, align 8, !dbg !1806
  %180 = load i64*, i64** %29, align 8, !dbg !1806
  %181 = load i32, i32* %24, align 4, !dbg !1806
  %182 = zext i32 %181 to i64, !dbg !1806
  %183 = getelementptr inbounds i64, i64* %180, i64 %182, !dbg !1806
  store i64 %179, i64* %183, align 8, !dbg !1806
  %184 = load i32, i32* %24, align 4, !dbg !1806
  %185 = add i32 %184, 1, !dbg !1806
  store i32 %185, i32* %24, align 4, !dbg !1806
  %186 = load i32, i32* %24, align 4, !dbg !1806
  call void @llvm.dbg.declare(metadata i64** %31, metadata !1808, metadata !DIExpression()), !dbg !1810
  %187 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1810
  store i64* %187, i64** %31, align 8, !dbg !1810
  call void @llvm.dbg.declare(metadata i64* %32, metadata !1811, metadata !DIExpression()), !dbg !1810
  %188 = load i32, i32* %24, align 4, !dbg !1810
  %189 = zext i32 %188 to i64, !dbg !1810
  %190 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i64 0, i64 %189, !dbg !1810
  %191 = load i64, i64* %190, align 8, !dbg !1810
  store i64 %191, i64* %32, align 8, !dbg !1810
  %192 = load i64, i64* %32, align 8, !dbg !1810
  %193 = load i64*, i64** %31, align 8, !dbg !1810
  %194 = load i32, i32* %24, align 4, !dbg !1810
  %195 = zext i32 %194 to i64, !dbg !1810
  %196 = getelementptr inbounds i64, i64* %193, i64 %195, !dbg !1810
  store i64 %192, i64* %196, align 8, !dbg !1810
  %197 = load i32, i32* %24, align 4, !dbg !1810
  %198 = add i32 %197, 1, !dbg !1810
  store i32 %198, i32* %24, align 4, !dbg !1810
  %199 = load i32, i32* %24, align 4, !dbg !1810
  call void @llvm.dbg.declare(metadata i64** %33, metadata !1812, metadata !DIExpression()), !dbg !1814
  %200 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1814
  store i64* %200, i64** %33, align 8, !dbg !1814
  call void @llvm.dbg.declare(metadata i64* %34, metadata !1815, metadata !DIExpression()), !dbg !1814
  %201 = load i32, i32* %24, align 4, !dbg !1814
  %202 = zext i32 %201 to i64, !dbg !1814
  %203 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i64 0, i64 %202, !dbg !1814
  %204 = load i64, i64* %203, align 8, !dbg !1814
  store i64 %204, i64* %34, align 8, !dbg !1814
  %205 = load i64, i64* %34, align 8, !dbg !1814
  %206 = load i64*, i64** %33, align 8, !dbg !1814
  %207 = load i32, i32* %24, align 4, !dbg !1814
  %208 = zext i32 %207 to i64, !dbg !1814
  %209 = getelementptr inbounds i64, i64* %206, i64 %208, !dbg !1814
  store i64 %205, i64* %209, align 8, !dbg !1814
  %210 = load i32, i32* %24, align 4, !dbg !1814
  %211 = add i32 %210, 1, !dbg !1814
  store i32 %211, i32* %24, align 4, !dbg !1814
  %212 = load i32, i32* %24, align 4, !dbg !1814
  call void @llvm.dbg.declare(metadata i64** %35, metadata !1816, metadata !DIExpression()), !dbg !1818
  %213 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1818
  store i64* %213, i64** %35, align 8, !dbg !1818
  call void @llvm.dbg.declare(metadata i64* %36, metadata !1819, metadata !DIExpression()), !dbg !1818
  %214 = load i32, i32* %24, align 4, !dbg !1818
  %215 = zext i32 %214 to i64, !dbg !1818
  %216 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i64 0, i64 %215, !dbg !1818
  %217 = load i64, i64* %216, align 8, !dbg !1818
  store i64 %217, i64* %36, align 8, !dbg !1818
  %218 = load i64, i64* %36, align 8, !dbg !1818
  %219 = load i64*, i64** %35, align 8, !dbg !1818
  %220 = load i32, i32* %24, align 4, !dbg !1818
  %221 = zext i32 %220 to i64, !dbg !1818
  %222 = getelementptr inbounds i64, i64* %219, i64 %221, !dbg !1818
  store i64 %218, i64* %222, align 8, !dbg !1818
  %223 = load i32, i32* %24, align 4, !dbg !1818
  %224 = add i32 %223, 1, !dbg !1818
  store i32 %224, i32* %24, align 4, !dbg !1818
  %225 = load i32, i32* %24, align 4, !dbg !1818
  call void @llvm.dbg.declare(metadata i64** %37, metadata !1820, metadata !DIExpression()), !dbg !1822
  %226 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1822
  store i64* %226, i64** %37, align 8, !dbg !1822
  call void @llvm.dbg.declare(metadata i64* %38, metadata !1823, metadata !DIExpression()), !dbg !1822
  %227 = load i32, i32* %24, align 4, !dbg !1822
  %228 = zext i32 %227 to i64, !dbg !1822
  %229 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i64 0, i64 %228, !dbg !1822
  %230 = load i64, i64* %229, align 8, !dbg !1822
  store i64 %230, i64* %38, align 8, !dbg !1822
  %231 = load i64, i64* %38, align 8, !dbg !1822
  %232 = load i64*, i64** %37, align 8, !dbg !1822
  %233 = load i32, i32* %24, align 4, !dbg !1822
  %234 = zext i32 %233 to i64, !dbg !1822
  %235 = getelementptr inbounds i64, i64* %232, i64 %234, !dbg !1822
  store i64 %231, i64* %235, align 8, !dbg !1822
  %236 = load i32, i32* %24, align 4, !dbg !1822
  %237 = add i32 %236, 1, !dbg !1822
  store i32 %237, i32* %24, align 4, !dbg !1822
  %238 = load i32, i32* %24, align 4, !dbg !1822
  call void @llvm.dbg.declare(metadata i64** %39, metadata !1824, metadata !DIExpression()), !dbg !1826
  %239 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1826
  store i64* %239, i64** %39, align 8, !dbg !1826
  call void @llvm.dbg.declare(metadata i64* %40, metadata !1827, metadata !DIExpression()), !dbg !1826
  %240 = load i32, i32* %24, align 4, !dbg !1826
  %241 = zext i32 %240 to i64, !dbg !1826
  %242 = getelementptr inbounds [8 x i64], [8 x i64]* @Hacl_Hash_SHA2_h512, i64 0, i64 %241, !dbg !1826
  %243 = load i64, i64* %242, align 8, !dbg !1826
  store i64 %243, i64* %40, align 8, !dbg !1826
  %244 = load i64, i64* %40, align 8, !dbg !1826
  %245 = load i64*, i64** %39, align 8, !dbg !1826
  %246 = load i32, i32* %24, align 4, !dbg !1826
  %247 = zext i32 %246 to i64, !dbg !1826
  %248 = getelementptr inbounds i64, i64* %245, i64 %247, !dbg !1826
  store i64 %244, i64* %248, align 8, !dbg !1826
  %249 = load i32, i32* %24, align 4, !dbg !1826
  %250 = add i32 %249, 1, !dbg !1826
  store i32 %250, i32* %24, align 4, !dbg !1826
  %251 = load i32, i32* %24, align 4, !dbg !1826
  br label %252, !dbg !1795

252:                                              ; preds = %147
  call void @llvm.dbg.declare(metadata i64** %41, metadata !1828, metadata !DIExpression()), !dbg !1829
  %253 = getelementptr inbounds [8 x i64], [8 x i64]* %23, i64 0, i64 0, !dbg !1830
  store i64* %253, i64** %41, align 8, !dbg !1829
  call void @llvm.dbg.declare(metadata i8** %42, metadata !1831, metadata !DIExpression()), !dbg !1832
  %254 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1833
  store i8* %254, i8** %42, align 8, !dbg !1832
  %255 = load i32, i32* %10, align 4, !dbg !1834
  %256 = icmp eq i32 %255, 0, !dbg !1836
  br i1 %256, label %257, label %263, !dbg !1837

257:                                              ; preds = %252
  %258 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 0), !dbg !1838
  %259 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 128), !dbg !1840
  %260 = call i128 @FStar_UInt128_add(i128 noundef %258, i128 noundef %259), !dbg !1841
  %261 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1842
  %262 = load i64*, i64** %41, align 8, !dbg !1843
  call void @Hacl_Hash_SHA2_sha512_update_last(i128 noundef %260, i32 noundef signext 128, i8* noundef %261, i64* noundef %262), !dbg !1844
  br label %326, !dbg !1845

263:                                              ; preds = %252
  call void @llvm.dbg.declare(metadata i32* %43, metadata !1846, metadata !DIExpression()), !dbg !1848
  store i32 128, i32* %43, align 4, !dbg !1848
  call void @llvm.dbg.declare(metadata i32* %44, metadata !1849, metadata !DIExpression()), !dbg !1850
  %264 = load i32, i32* %10, align 4, !dbg !1851
  %265 = load i32, i32* %43, align 4, !dbg !1852
  %266 = udiv i32 %264, %265, !dbg !1853
  store i32 %266, i32* %44, align 4, !dbg !1850
  call void @llvm.dbg.declare(metadata i32* %45, metadata !1854, metadata !DIExpression()), !dbg !1855
  %267 = load i32, i32* %10, align 4, !dbg !1856
  %268 = load i32, i32* %43, align 4, !dbg !1857
  %269 = urem i32 %267, %268, !dbg !1858
  store i32 %269, i32* %45, align 4, !dbg !1855
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %46, metadata !1859, metadata !DIExpression()), !dbg !1860
  %270 = load i32, i32* %44, align 4, !dbg !1861
  %271 = icmp ugt i32 %270, 0, !dbg !1863
  br i1 %271, label %272, label %288, !dbg !1864

272:                                              ; preds = %263
  %273 = load i32, i32* %45, align 4, !dbg !1865
  %274 = icmp eq i32 %273, 0, !dbg !1866
  br i1 %274, label %275, label %288, !dbg !1867

275:                                              ; preds = %272
  call void @llvm.dbg.declare(metadata i32* %47, metadata !1868, metadata !DIExpression()), !dbg !1870
  %276 = load i32, i32* %44, align 4, !dbg !1871
  %277 = sub i32 %276, 1, !dbg !1872
  store i32 %277, i32* %47, align 4, !dbg !1870
  %278 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !1873
  %279 = load i32, i32* %47, align 4, !dbg !1874
  store i32 %279, i32* %278, align 4, !dbg !1873
  %280 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !1873
  %281 = load i32, i32* %10, align 4, !dbg !1875
  %282 = load i32, i32* %47, align 4, !dbg !1876
  %283 = load i32, i32* %43, align 4, !dbg !1877
  %284 = mul i32 %282, %283, !dbg !1878
  %285 = sub i32 %281, %284, !dbg !1879
  store i32 %285, i32* %280, align 4, !dbg !1873
  %286 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !1880
  %287 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !1880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 8, i1 false), !dbg !1880
  br label %295, !dbg !1881

288:                                              ; preds = %272, %263
  %289 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !1882
  %290 = load i32, i32* %44, align 4, !dbg !1884
  store i32 %290, i32* %289, align 4, !dbg !1882
  %291 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !1882
  %292 = load i32, i32* %45, align 4, !dbg !1885
  store i32 %292, i32* %291, align 4, !dbg !1882
  %293 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !1886
  %294 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !1886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %293, i8* align 4 %294, i64 8, i1 false), !dbg !1886
  br label %295

295:                                              ; preds = %288, %275
  call void @llvm.dbg.declare(metadata i32* %50, metadata !1887, metadata !DIExpression()), !dbg !1888
  %296 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 0, !dbg !1889
  %297 = load i32, i32* %296, align 4, !dbg !1889
  store i32 %297, i32* %50, align 4, !dbg !1888
  call void @llvm.dbg.declare(metadata i32* %51, metadata !1890, metadata !DIExpression()), !dbg !1891
  %298 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 1, !dbg !1892
  %299 = load i32, i32* %298, align 4, !dbg !1892
  store i32 %299, i32* %51, align 4, !dbg !1891
  call void @llvm.dbg.declare(metadata i32* %52, metadata !1893, metadata !DIExpression()), !dbg !1894
  %300 = load i32, i32* %50, align 4, !dbg !1895
  %301 = load i32, i32* %43, align 4, !dbg !1896
  %302 = mul i32 %300, %301, !dbg !1897
  store i32 %302, i32* %52, align 4, !dbg !1894
  call void @llvm.dbg.declare(metadata i8** %53, metadata !1898, metadata !DIExpression()), !dbg !1899
  %303 = load i8*, i8** %9, align 8, !dbg !1900
  store i8* %303, i8** %53, align 8, !dbg !1899
  call void @llvm.dbg.declare(metadata i8** %54, metadata !1901, metadata !DIExpression()), !dbg !1902
  %304 = load i8*, i8** %9, align 8, !dbg !1903
  %305 = load i32, i32* %52, align 4, !dbg !1904
  %306 = zext i32 %305 to i64, !dbg !1905
  %307 = getelementptr inbounds i8, i8* %304, i64 %306, !dbg !1905
  store i8* %307, i8** %54, align 8, !dbg !1902
  %308 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1906
  %309 = load i64*, i64** %41, align 8, !dbg !1907
  call void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef signext 128, i8* noundef %308, i64* noundef %309), !dbg !1908
  %310 = load i32, i32* %50, align 4, !dbg !1909
  %311 = mul i32 %310, 128, !dbg !1910
  %312 = load i8*, i8** %53, align 8, !dbg !1911
  %313 = load i64*, i64** %41, align 8, !dbg !1912
  call void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef signext %311, i8* noundef %312, i64* noundef %313), !dbg !1913
  %314 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 128), !dbg !1914
  %315 = load i32, i32* %52, align 4, !dbg !1915
  %316 = zext i32 %315 to i64, !dbg !1916
  %317 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %316), !dbg !1917
  %318 = call i128 @FStar_UInt128_add(i128 noundef %314, i128 noundef %317), !dbg !1918
  %319 = load i32, i32* %51, align 4, !dbg !1919
  %320 = zext i32 %319 to i64, !dbg !1920
  %321 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %320), !dbg !1921
  %322 = call i128 @FStar_UInt128_add(i128 noundef %318, i128 noundef %321), !dbg !1922
  %323 = load i32, i32* %51, align 4, !dbg !1923
  %324 = load i8*, i8** %54, align 8, !dbg !1924
  %325 = load i64*, i64** %41, align 8, !dbg !1925
  call void @Hacl_Hash_SHA2_sha512_update_last(i128 noundef %322, i32 noundef signext %323, i8* noundef %324, i64* noundef %325), !dbg !1926
  br label %326

326:                                              ; preds = %295, %257
  %327 = load i64*, i64** %41, align 8, !dbg !1927
  %328 = load i8*, i8** %42, align 8, !dbg !1928
  call void @Hacl_Hash_SHA2_sha512_finish(i64* noundef %327, i8* noundef %328), !dbg !1929
  call void @llvm.dbg.declare(metadata i8** %55, metadata !1930, metadata !DIExpression()), !dbg !1931
  %329 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !1932
  store i8* %329, i8** %55, align 8, !dbg !1931
  %330 = load i64*, i64** %41, align 8, !dbg !1933
  call void @Hacl_Hash_SHA2_sha512_init(i64* noundef %330), !dbg !1934
  call void @llvm.dbg.declare(metadata i32* %56, metadata !1935, metadata !DIExpression()), !dbg !1936
  store i32 128, i32* %56, align 4, !dbg !1936
  call void @llvm.dbg.declare(metadata i32* %57, metadata !1937, metadata !DIExpression()), !dbg !1938
  %331 = load i32, i32* %56, align 4, !dbg !1939
  %332 = udiv i32 64, %331, !dbg !1940
  store i32 %332, i32* %57, align 4, !dbg !1938
  call void @llvm.dbg.declare(metadata i32* %58, metadata !1941, metadata !DIExpression()), !dbg !1942
  %333 = load i32, i32* %56, align 4, !dbg !1943
  %334 = urem i32 64, %333, !dbg !1944
  store i32 %334, i32* %58, align 4, !dbg !1942
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %59, metadata !1945, metadata !DIExpression()), !dbg !1946
  %335 = load i32, i32* %57, align 4, !dbg !1947
  %336 = icmp ugt i32 %335, 0, !dbg !1949
  br i1 %336, label %337, label %352, !dbg !1950

337:                                              ; preds = %326
  %338 = load i32, i32* %58, align 4, !dbg !1951
  %339 = icmp eq i32 %338, 0, !dbg !1952
  br i1 %339, label %340, label %352, !dbg !1953

340:                                              ; preds = %337
  call void @llvm.dbg.declare(metadata i32* %60, metadata !1954, metadata !DIExpression()), !dbg !1956
  %341 = load i32, i32* %57, align 4, !dbg !1957
  %342 = sub i32 %341, 1, !dbg !1958
  store i32 %342, i32* %60, align 4, !dbg !1956
  %343 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 0, !dbg !1959
  %344 = load i32, i32* %60, align 4, !dbg !1960
  store i32 %344, i32* %343, align 4, !dbg !1959
  %345 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %61, i32 0, i32 1, !dbg !1959
  %346 = load i32, i32* %60, align 4, !dbg !1961
  %347 = load i32, i32* %56, align 4, !dbg !1962
  %348 = mul i32 %346, %347, !dbg !1963
  %349 = sub i32 64, %348, !dbg !1964
  store i32 %349, i32* %345, align 4, !dbg !1959
  %350 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !1965
  %351 = bitcast %struct.K___uint32_t_uint32_t_s* %61 to i8*, !dbg !1965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %350, i8* align 4 %351, i64 8, i1 false), !dbg !1965
  br label %359, !dbg !1966

352:                                              ; preds = %337, %326
  %353 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 0, !dbg !1967
  %354 = load i32, i32* %57, align 4, !dbg !1969
  store i32 %354, i32* %353, align 4, !dbg !1967
  %355 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %62, i32 0, i32 1, !dbg !1967
  %356 = load i32, i32* %58, align 4, !dbg !1970
  store i32 %356, i32* %355, align 4, !dbg !1967
  %357 = bitcast %struct.K___uint32_t_uint32_t_s* %59 to i8*, !dbg !1971
  %358 = bitcast %struct.K___uint32_t_uint32_t_s* %62 to i8*, !dbg !1971
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %357, i8* align 4 %358, i64 8, i1 false), !dbg !1971
  br label %359

359:                                              ; preds = %352, %340
  call void @llvm.dbg.declare(metadata i32* %63, metadata !1972, metadata !DIExpression()), !dbg !1973
  %360 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 0, !dbg !1974
  %361 = load i32, i32* %360, align 4, !dbg !1974
  store i32 %361, i32* %63, align 4, !dbg !1973
  call void @llvm.dbg.declare(metadata i32* %64, metadata !1975, metadata !DIExpression()), !dbg !1976
  %362 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %59, i32 0, i32 1, !dbg !1977
  %363 = load i32, i32* %362, align 4, !dbg !1977
  store i32 %363, i32* %64, align 4, !dbg !1976
  call void @llvm.dbg.declare(metadata i32* %65, metadata !1978, metadata !DIExpression()), !dbg !1979
  %364 = load i32, i32* %63, align 4, !dbg !1980
  %365 = load i32, i32* %56, align 4, !dbg !1981
  %366 = mul i32 %364, %365, !dbg !1982
  store i32 %366, i32* %65, align 4, !dbg !1979
  call void @llvm.dbg.declare(metadata i8** %66, metadata !1983, metadata !DIExpression()), !dbg !1984
  %367 = load i8*, i8** %55, align 8, !dbg !1985
  store i8* %367, i8** %66, align 8, !dbg !1984
  call void @llvm.dbg.declare(metadata i8** %67, metadata !1986, metadata !DIExpression()), !dbg !1987
  %368 = load i8*, i8** %55, align 8, !dbg !1988
  %369 = load i32, i32* %65, align 4, !dbg !1989
  %370 = zext i32 %369 to i64, !dbg !1990
  %371 = getelementptr inbounds i8, i8* %368, i64 %370, !dbg !1990
  store i8* %371, i8** %67, align 8, !dbg !1987
  %372 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1991
  %373 = load i64*, i64** %41, align 8, !dbg !1992
  call void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef signext 128, i8* noundef %372, i64* noundef %373), !dbg !1993
  %374 = load i32, i32* %63, align 4, !dbg !1994
  %375 = mul i32 %374, 128, !dbg !1995
  %376 = load i8*, i8** %66, align 8, !dbg !1996
  %377 = load i64*, i64** %41, align 8, !dbg !1997
  call void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef signext %375, i8* noundef %376, i64* noundef %377), !dbg !1998
  %378 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 128), !dbg !1999
  %379 = load i32, i32* %65, align 4, !dbg !2000
  %380 = zext i32 %379 to i64, !dbg !2001
  %381 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %380), !dbg !2002
  %382 = call i128 @FStar_UInt128_add(i128 noundef %378, i128 noundef %381), !dbg !2003
  %383 = load i32, i32* %64, align 4, !dbg !2004
  %384 = zext i32 %383 to i64, !dbg !2005
  %385 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %384), !dbg !2006
  %386 = call i128 @FStar_UInt128_add(i128 noundef %382, i128 noundef %385), !dbg !2007
  %387 = load i32, i32* %64, align 4, !dbg !2008
  %388 = load i8*, i8** %67, align 8, !dbg !2009
  %389 = load i64*, i64** %41, align 8, !dbg !2010
  call void @Hacl_Hash_SHA2_sha512_update_last(i128 noundef %386, i32 noundef signext %387, i8* noundef %388, i64* noundef %389), !dbg !2011
  %390 = load i64*, i64** %41, align 8, !dbg !2012
  %391 = load i8*, i8** %6, align 8, !dbg !2013
  call void @Hacl_Hash_SHA2_sha512_finish(i64* noundef %390, i8* noundef %391), !dbg !2014
  ret void, !dbg !2015
}

declare dso_local void @Hacl_Hash_SHA2_hash_512(i8* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_SHA2_sha512_update_last(i128 noundef, i32 noundef signext, i8* noundef, i64* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef signext, i8* noundef, i64* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha512_finish(i64* noundef, i8* noundef) #4

declare dso_local void @Hacl_Hash_SHA2_sha512_init(i64* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha3_224(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !2016 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [144 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [144 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [144 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [25 x i64], align 8
  %24 = alloca i8*, align 8
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
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca [32 x i64], align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
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
  %52 = alloca i8*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca i32, align 4
  %55 = alloca [256 x i8], align 1
  %56 = alloca [32 x i64], align 8
  %57 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2017, metadata !DIExpression()), !dbg !2018
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2019, metadata !DIExpression()), !dbg !2020
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2021, metadata !DIExpression()), !dbg !2022
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2023, metadata !DIExpression()), !dbg !2024
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2025, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.declare(metadata [144 x i8]* %11, metadata !2027, metadata !DIExpression()), !dbg !2031
  %58 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i64 0, i64 0, !dbg !2032
  call void @llvm.memset.p0i8.i64(i8* align 1 %58, i8 0, i64 144, i1 false), !dbg !2032
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2033, metadata !DIExpression()), !dbg !2034
  %59 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i64 0, i64 0, !dbg !2035
  store i8* %59, i8** %12, align 8, !dbg !2034
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2036, metadata !DIExpression()), !dbg !2037
  %60 = load i32, i32* %8, align 4, !dbg !2038
  %61 = icmp ule i32 %60, 144, !dbg !2040
  br i1 %61, label %62, label %64, !dbg !2041

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !2042
  store i32 %63, i32* %13, align 4, !dbg !2044
  br label %65, !dbg !2045

64:                                               ; preds = %5
  store i32 28, i32* %13, align 4, !dbg !2046
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2048, metadata !DIExpression()), !dbg !2049
  %66 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i64 0, i64 0, !dbg !2050
  %67 = load i32, i32* %13, align 4, !dbg !2051
  %68 = zext i32 %67 to i64, !dbg !2052
  %69 = getelementptr inbounds i8, i8* %66, i64 %68, !dbg !2052
  store i8* %69, i8** %14, align 8, !dbg !2049
  %70 = load i8*, i8** %14, align 8, !dbg !2053
  %71 = load i32, i32* %8, align 4, !dbg !2054
  %72 = icmp ule i32 %71, 144, !dbg !2056
  br i1 %72, label %73, label %79, !dbg !2057

73:                                               ; preds = %65
  %74 = load i8*, i8** %12, align 8, !dbg !2058
  %75 = load i8*, i8** %7, align 8, !dbg !2060
  %76 = load i32, i32* %8, align 4, !dbg !2061
  %77 = zext i32 %76 to i64, !dbg !2061
  %78 = mul i64 %77, 1, !dbg !2062
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 %78, i1 false), !dbg !2063
  br label %83, !dbg !2064

79:                                               ; preds = %65
  %80 = load i8*, i8** %12, align 8, !dbg !2065
  %81 = load i8*, i8** %7, align 8, !dbg !2067
  %82 = load i32, i32* %8, align 4, !dbg !2068
  call void @Hacl_Hash_SHA3_sha3_224(i8* noundef %80, i8* noundef %81, i32 noundef signext %82), !dbg !2069
  br label %83

83:                                               ; preds = %79, %73
  call void @llvm.dbg.declare(metadata [144 x i8]* %15, metadata !2070, metadata !DIExpression()), !dbg !2071
  %84 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i64 0, i64 0, !dbg !2072
  call void @llvm.memset.p0i8.i64(i8* align 1 %84, i8 54, i64 144, i1 false), !dbg !2072
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2073, metadata !DIExpression()), !dbg !2075
  store i32 0, i32* %16, align 4, !dbg !2075
  br label %85, !dbg !2076

85:                                               ; preds = %106, %83
  %86 = load i32, i32* %16, align 4, !dbg !2077
  %87 = icmp ult i32 %86, 144, !dbg !2079
  br i1 %87, label %88, label %109, !dbg !2080

88:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata i8* %17, metadata !2081, metadata !DIExpression()), !dbg !2083
  %89 = load i32, i32* %16, align 4, !dbg !2084
  %90 = zext i32 %89 to i64, !dbg !2085
  %91 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i64 0, i64 %90, !dbg !2085
  %92 = load i8, i8* %91, align 1, !dbg !2085
  store i8 %92, i8* %17, align 1, !dbg !2083
  call void @llvm.dbg.declare(metadata i8* %18, metadata !2086, metadata !DIExpression()), !dbg !2087
  %93 = load i32, i32* %16, align 4, !dbg !2088
  %94 = zext i32 %93 to i64, !dbg !2089
  %95 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i64 0, i64 %94, !dbg !2089
  %96 = load i8, i8* %95, align 1, !dbg !2089
  store i8 %96, i8* %18, align 1, !dbg !2087
  %97 = load i8, i8* %17, align 1, !dbg !2090
  %98 = zext i8 %97 to i32, !dbg !2091
  %99 = load i8, i8* %18, align 1, !dbg !2092
  %100 = zext i8 %99 to i32, !dbg !2093
  %101 = xor i32 %98, %100, !dbg !2094
  %102 = trunc i32 %101 to i8, !dbg !2091
  %103 = load i32, i32* %16, align 4, !dbg !2095
  %104 = zext i32 %103 to i64, !dbg !2096
  %105 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i64 0, i64 %104, !dbg !2096
  store i8 %102, i8* %105, align 1, !dbg !2097
  br label %106, !dbg !2098

106:                                              ; preds = %88
  %107 = load i32, i32* %16, align 4, !dbg !2099
  %108 = add i32 %107, 1, !dbg !2099
  store i32 %108, i32* %16, align 4, !dbg !2099
  br label %85, !dbg !2100, !llvm.loop !2101

109:                                              ; preds = %85
  call void @llvm.dbg.declare(metadata [144 x i8]* %19, metadata !2103, metadata !DIExpression()), !dbg !2104
  %110 = getelementptr inbounds [144 x i8], [144 x i8]* %19, i64 0, i64 0, !dbg !2105
  call void @llvm.memset.p0i8.i64(i8* align 1 %110, i8 92, i64 144, i1 false), !dbg !2105
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2106, metadata !DIExpression()), !dbg !2108
  store i32 0, i32* %20, align 4, !dbg !2108
  br label %111, !dbg !2109

111:                                              ; preds = %132, %109
  %112 = load i32, i32* %20, align 4, !dbg !2110
  %113 = icmp ult i32 %112, 144, !dbg !2112
  br i1 %113, label %114, label %135, !dbg !2113

114:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata i8* %21, metadata !2114, metadata !DIExpression()), !dbg !2116
  %115 = load i32, i32* %20, align 4, !dbg !2117
  %116 = zext i32 %115 to i64, !dbg !2118
  %117 = getelementptr inbounds [144 x i8], [144 x i8]* %19, i64 0, i64 %116, !dbg !2118
  %118 = load i8, i8* %117, align 1, !dbg !2118
  store i8 %118, i8* %21, align 1, !dbg !2116
  call void @llvm.dbg.declare(metadata i8* %22, metadata !2119, metadata !DIExpression()), !dbg !2120
  %119 = load i32, i32* %20, align 4, !dbg !2121
  %120 = zext i32 %119 to i64, !dbg !2122
  %121 = getelementptr inbounds [144 x i8], [144 x i8]* %11, i64 0, i64 %120, !dbg !2122
  %122 = load i8, i8* %121, align 1, !dbg !2122
  store i8 %122, i8* %22, align 1, !dbg !2120
  %123 = load i8, i8* %21, align 1, !dbg !2123
  %124 = zext i8 %123 to i32, !dbg !2124
  %125 = load i8, i8* %22, align 1, !dbg !2125
  %126 = zext i8 %125 to i32, !dbg !2126
  %127 = xor i32 %124, %126, !dbg !2127
  %128 = trunc i32 %127 to i8, !dbg !2124
  %129 = load i32, i32* %20, align 4, !dbg !2128
  %130 = zext i32 %129 to i64, !dbg !2129
  %131 = getelementptr inbounds [144 x i8], [144 x i8]* %19, i64 0, i64 %130, !dbg !2129
  store i8 %128, i8* %131, align 1, !dbg !2130
  br label %132, !dbg !2131

132:                                              ; preds = %114
  %133 = load i32, i32* %20, align 4, !dbg !2132
  %134 = add i32 %133, 1, !dbg !2132
  store i32 %134, i32* %20, align 4, !dbg !2132
  br label %111, !dbg !2133, !llvm.loop !2134

135:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata [25 x i64]* %23, metadata !2136, metadata !DIExpression()), !dbg !2140
  %136 = bitcast [25 x i64]* %23 to i8*, !dbg !2140
  call void @llvm.memset.p0i8.i64(i8* align 8 %136, i8 0, i64 200, i1 false), !dbg !2140
  call void @llvm.dbg.declare(metadata i8** %24, metadata !2141, metadata !DIExpression()), !dbg !2142
  %137 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i64 0, i64 0, !dbg !2143
  store i8* %137, i8** %24, align 8, !dbg !2142
  %138 = load i32, i32* %10, align 4, !dbg !2144
  %139 = icmp eq i32 %138, 0, !dbg !2146
  br i1 %139, label %140, label %143, !dbg !2147

140:                                              ; preds = %135
  %141 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2148
  %142 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i64 0, i64 0, !dbg !2150
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 9, i64* noundef %141, i8* noundef %142, i32 noundef signext 144), !dbg !2151
  br label %196, !dbg !2152

143:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2153, metadata !DIExpression()), !dbg !2155
  store i32 144, i32* %25, align 4, !dbg !2155
  call void @llvm.dbg.declare(metadata i32* %26, metadata !2156, metadata !DIExpression()), !dbg !2157
  %144 = load i32, i32* %10, align 4, !dbg !2158
  %145 = load i32, i32* %25, align 4, !dbg !2159
  %146 = udiv i32 %144, %145, !dbg !2160
  store i32 %146, i32* %26, align 4, !dbg !2157
  call void @llvm.dbg.declare(metadata i32* %27, metadata !2161, metadata !DIExpression()), !dbg !2162
  %147 = load i32, i32* %10, align 4, !dbg !2163
  %148 = load i32, i32* %25, align 4, !dbg !2164
  %149 = urem i32 %147, %148, !dbg !2165
  store i32 %149, i32* %27, align 4, !dbg !2162
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !2166, metadata !DIExpression()), !dbg !2167
  %150 = load i32, i32* %26, align 4, !dbg !2168
  %151 = icmp ugt i32 %150, 0, !dbg !2170
  br i1 %151, label %152, label %168, !dbg !2171

152:                                              ; preds = %143
  %153 = load i32, i32* %27, align 4, !dbg !2172
  %154 = icmp eq i32 %153, 0, !dbg !2173
  br i1 %154, label %155, label %168, !dbg !2174

155:                                              ; preds = %152
  call void @llvm.dbg.declare(metadata i32* %29, metadata !2175, metadata !DIExpression()), !dbg !2177
  %156 = load i32, i32* %26, align 4, !dbg !2178
  %157 = sub i32 %156, 1, !dbg !2179
  store i32 %157, i32* %29, align 4, !dbg !2177
  %158 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !2180
  %159 = load i32, i32* %29, align 4, !dbg !2181
  store i32 %159, i32* %158, align 4, !dbg !2180
  %160 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !2180
  %161 = load i32, i32* %10, align 4, !dbg !2182
  %162 = load i32, i32* %29, align 4, !dbg !2183
  %163 = load i32, i32* %25, align 4, !dbg !2184
  %164 = mul i32 %162, %163, !dbg !2185
  %165 = sub i32 %161, %164, !dbg !2186
  store i32 %165, i32* %160, align 4, !dbg !2180
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2187
  %167 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !2187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 8, i1 false), !dbg !2187
  br label %175, !dbg !2188

168:                                              ; preds = %152, %143
  %169 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !2189
  %170 = load i32, i32* %26, align 4, !dbg !2191
  store i32 %170, i32* %169, align 4, !dbg !2189
  %171 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !2189
  %172 = load i32, i32* %27, align 4, !dbg !2192
  store i32 %172, i32* %171, align 4, !dbg !2189
  %173 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2193
  %174 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !2193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 4 %174, i64 8, i1 false), !dbg !2193
  br label %175

175:                                              ; preds = %168, %155
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2194, metadata !DIExpression()), !dbg !2195
  %176 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !2196
  %177 = load i32, i32* %176, align 4, !dbg !2196
  store i32 %177, i32* %32, align 4, !dbg !2195
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2197, metadata !DIExpression()), !dbg !2198
  %178 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !2199
  %179 = load i32, i32* %178, align 4, !dbg !2199
  store i32 %179, i32* %33, align 4, !dbg !2198
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2200, metadata !DIExpression()), !dbg !2201
  %180 = load i32, i32* %32, align 4, !dbg !2202
  %181 = load i32, i32* %25, align 4, !dbg !2203
  %182 = mul i32 %180, %181, !dbg !2204
  store i32 %182, i32* %34, align 4, !dbg !2201
  call void @llvm.dbg.declare(metadata i8** %35, metadata !2205, metadata !DIExpression()), !dbg !2206
  %183 = load i8*, i8** %9, align 8, !dbg !2207
  store i8* %183, i8** %35, align 8, !dbg !2206
  call void @llvm.dbg.declare(metadata i8** %36, metadata !2208, metadata !DIExpression()), !dbg !2209
  %184 = load i8*, i8** %9, align 8, !dbg !2210
  %185 = load i32, i32* %34, align 4, !dbg !2211
  %186 = zext i32 %185 to i64, !dbg !2212
  %187 = getelementptr inbounds i8, i8* %184, i64 %186, !dbg !2212
  store i8* %187, i8** %36, align 8, !dbg !2209
  %188 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2213
  %189 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i64 0, i64 0, !dbg !2214
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, i64* noundef %188, i8* noundef %189, i32 noundef signext 1), !dbg !2215
  %190 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2216
  %191 = load i8*, i8** %35, align 8, !dbg !2217
  %192 = load i32, i32* %32, align 4, !dbg !2218
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, i64* noundef %190, i8* noundef %191, i32 noundef signext %192), !dbg !2219
  %193 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2220
  %194 = load i8*, i8** %36, align 8, !dbg !2221
  %195 = load i32, i32* %33, align 4, !dbg !2222
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 9, i64* noundef %193, i8* noundef %194, i32 noundef signext %195), !dbg !2223
  br label %196

196:                                              ; preds = %175, %140
  call void @llvm.dbg.declare(metadata i32* %37, metadata !2224, metadata !DIExpression()), !dbg !2225
  store i32 28, i32* %37, align 4, !dbg !2225
  call void @llvm.dbg.declare(metadata [256 x i8]* %38, metadata !2226, metadata !DIExpression()), !dbg !2230
  %197 = bitcast [256 x i8]* %38 to i8*, !dbg !2230
  call void @llvm.memset.p0i8.i64(i8* align 1 %197, i8 0, i64 256, i1 false), !dbg !2230
  call void @llvm.dbg.declare(metadata [32 x i64]* %39, metadata !2231, metadata !DIExpression()), !dbg !2235
  %198 = bitcast [32 x i64]* %39 to i8*, !dbg !2235
  call void @llvm.memset.p0i8.i64(i8* align 8 %198, i8 0, i64 256, i1 false), !dbg !2235
  %199 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i64 0, i64 0, !dbg !2236
  %200 = bitcast i64* %199 to i8*, !dbg !2236
  %201 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2236
  %202 = bitcast i64* %201 to i8*, !dbg !2236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %202, i64 200, i1 false), !dbg !2236
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2237, metadata !DIExpression()), !dbg !2239
  store i32 0, i32* %40, align 4, !dbg !2239
  br label %203, !dbg !2240

203:                                              ; preds = %217, %196
  %204 = load i32, i32* %40, align 4, !dbg !2241
  %205 = icmp ult i32 %204, 32, !dbg !2243
  br i1 %205, label %206, label %220, !dbg !2244

206:                                              ; preds = %203
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0, !dbg !2245
  %208 = load i32, i32* %40, align 4, !dbg !2245
  %209 = mul i32 %208, 8, !dbg !2245
  %210 = zext i32 %209 to i64, !dbg !2245
  %211 = getelementptr inbounds i8, i8* %207, i64 %210, !dbg !2245
  %212 = load i32, i32* %40, align 4, !dbg !2245
  %213 = zext i32 %212 to i64, !dbg !2245
  %214 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i64 0, i64 %213, !dbg !2245
  %215 = load i64, i64* %214, align 8, !dbg !2245
  %216 = call i64 @__uint64_identity(i64 noundef %215), !dbg !2245
  call void @store64(i8* noundef %211, i64 noundef %216), !dbg !2245
  br label %217, !dbg !2247

217:                                              ; preds = %206
  %218 = load i32, i32* %40, align 4, !dbg !2248
  %219 = add i32 %218, 1, !dbg !2248
  store i32 %219, i32* %40, align 4, !dbg !2248
  br label %203, !dbg !2249, !llvm.loop !2250

220:                                              ; preds = %203
  %221 = load i8*, i8** %24, align 8, !dbg !2252
  %222 = getelementptr inbounds i8, i8* %221, i64 28, !dbg !2253
  %223 = load i32, i32* %37, align 4, !dbg !2254
  %224 = zext i32 %223 to i64, !dbg !2255
  %225 = sub i64 0, %224, !dbg !2255
  %226 = getelementptr inbounds i8, i8* %222, i64 %225, !dbg !2255
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0, !dbg !2256
  %228 = load i32, i32* %37, align 4, !dbg !2257
  %229 = zext i32 %228 to i64, !dbg !2257
  %230 = mul i64 %229, 1, !dbg !2258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %226, i8* align 1 %227, i64 %230, i1 false), !dbg !2256
  call void @llvm.dbg.declare(metadata i8** %41, metadata !2259, metadata !DIExpression()), !dbg !2260
  %231 = getelementptr inbounds [144 x i8], [144 x i8]* %15, i64 0, i64 0, !dbg !2261
  store i8* %231, i8** %41, align 8, !dbg !2260
  %232 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2262
  call void @Hacl_Hash_SHA3_init_(i8 noundef zeroext 9, i64* noundef %232), !dbg !2263
  call void @llvm.dbg.declare(metadata i32* %42, metadata !2264, metadata !DIExpression()), !dbg !2265
  store i32 144, i32* %42, align 4, !dbg !2265
  call void @llvm.dbg.declare(metadata i32* %43, metadata !2266, metadata !DIExpression()), !dbg !2267
  %233 = load i32, i32* %42, align 4, !dbg !2268
  %234 = udiv i32 28, %233, !dbg !2269
  store i32 %234, i32* %43, align 4, !dbg !2267
  call void @llvm.dbg.declare(metadata i32* %44, metadata !2270, metadata !DIExpression()), !dbg !2271
  %235 = load i32, i32* %42, align 4, !dbg !2272
  %236 = urem i32 28, %235, !dbg !2273
  store i32 %236, i32* %44, align 4, !dbg !2271
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %45, metadata !2274, metadata !DIExpression()), !dbg !2275
  %237 = load i32, i32* %43, align 4, !dbg !2276
  %238 = icmp ugt i32 %237, 0, !dbg !2278
  br i1 %238, label %239, label %254, !dbg !2279

239:                                              ; preds = %220
  %240 = load i32, i32* %44, align 4, !dbg !2280
  %241 = icmp eq i32 %240, 0, !dbg !2281
  br i1 %241, label %242, label %254, !dbg !2282

242:                                              ; preds = %239
  call void @llvm.dbg.declare(metadata i32* %46, metadata !2283, metadata !DIExpression()), !dbg !2285
  %243 = load i32, i32* %43, align 4, !dbg !2286
  %244 = sub i32 %243, 1, !dbg !2287
  store i32 %244, i32* %46, align 4, !dbg !2285
  %245 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 0, !dbg !2288
  %246 = load i32, i32* %46, align 4, !dbg !2289
  store i32 %246, i32* %245, align 4, !dbg !2288
  %247 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 1, !dbg !2288
  %248 = load i32, i32* %46, align 4, !dbg !2290
  %249 = load i32, i32* %42, align 4, !dbg !2291
  %250 = mul i32 %248, %249, !dbg !2292
  %251 = sub i32 28, %250, !dbg !2293
  store i32 %251, i32* %247, align 4, !dbg !2288
  %252 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2294
  %253 = bitcast %struct.K___uint32_t_uint32_t_s* %47 to i8*, !dbg !2294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 8, i1 false), !dbg !2294
  br label %261, !dbg !2295

254:                                              ; preds = %239, %220
  %255 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !2296
  %256 = load i32, i32* %43, align 4, !dbg !2298
  store i32 %256, i32* %255, align 4, !dbg !2296
  %257 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !2296
  %258 = load i32, i32* %44, align 4, !dbg !2299
  store i32 %258, i32* %257, align 4, !dbg !2296
  %259 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2300
  %260 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !2300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %259, i8* align 4 %260, i64 8, i1 false), !dbg !2300
  br label %261

261:                                              ; preds = %254, %242
  call void @llvm.dbg.declare(metadata i32* %49, metadata !2301, metadata !DIExpression()), !dbg !2302
  %262 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 0, !dbg !2303
  %263 = load i32, i32* %262, align 4, !dbg !2303
  store i32 %263, i32* %49, align 4, !dbg !2302
  call void @llvm.dbg.declare(metadata i32* %50, metadata !2304, metadata !DIExpression()), !dbg !2305
  %264 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 1, !dbg !2306
  %265 = load i32, i32* %264, align 4, !dbg !2306
  store i32 %265, i32* %50, align 4, !dbg !2305
  call void @llvm.dbg.declare(metadata i32* %51, metadata !2307, metadata !DIExpression()), !dbg !2308
  %266 = load i32, i32* %49, align 4, !dbg !2309
  %267 = load i32, i32* %42, align 4, !dbg !2310
  %268 = mul i32 %266, %267, !dbg !2311
  store i32 %268, i32* %51, align 4, !dbg !2308
  call void @llvm.dbg.declare(metadata i8** %52, metadata !2312, metadata !DIExpression()), !dbg !2313
  %269 = load i8*, i8** %41, align 8, !dbg !2314
  store i8* %269, i8** %52, align 8, !dbg !2313
  call void @llvm.dbg.declare(metadata i8** %53, metadata !2315, metadata !DIExpression()), !dbg !2316
  %270 = load i8*, i8** %41, align 8, !dbg !2317
  %271 = load i32, i32* %51, align 4, !dbg !2318
  %272 = zext i32 %271 to i64, !dbg !2319
  %273 = getelementptr inbounds i8, i8* %270, i64 %272, !dbg !2319
  store i8* %273, i8** %53, align 8, !dbg !2316
  %274 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2320
  %275 = getelementptr inbounds [144 x i8], [144 x i8]* %19, i64 0, i64 0, !dbg !2321
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, i64* noundef %274, i8* noundef %275, i32 noundef signext 1), !dbg !2322
  %276 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2323
  %277 = load i8*, i8** %52, align 8, !dbg !2324
  %278 = load i32, i32* %49, align 4, !dbg !2325
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, i64* noundef %276, i8* noundef %277, i32 noundef signext %278), !dbg !2326
  %279 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2327
  %280 = load i8*, i8** %53, align 8, !dbg !2328
  %281 = load i32, i32* %50, align 4, !dbg !2329
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 9, i64* noundef %279, i8* noundef %280, i32 noundef signext %281), !dbg !2330
  call void @llvm.dbg.declare(metadata i32* %54, metadata !2331, metadata !DIExpression()), !dbg !2332
  store i32 28, i32* %54, align 4, !dbg !2332
  call void @llvm.dbg.declare(metadata [256 x i8]* %55, metadata !2333, metadata !DIExpression()), !dbg !2334
  %282 = bitcast [256 x i8]* %55 to i8*, !dbg !2334
  call void @llvm.memset.p0i8.i64(i8* align 1 %282, i8 0, i64 256, i1 false), !dbg !2334
  call void @llvm.dbg.declare(metadata [32 x i64]* %56, metadata !2335, metadata !DIExpression()), !dbg !2336
  %283 = bitcast [32 x i64]* %56 to i8*, !dbg !2336
  call void @llvm.memset.p0i8.i64(i8* align 8 %283, i8 0, i64 256, i1 false), !dbg !2336
  %284 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i64 0, i64 0, !dbg !2337
  %285 = bitcast i64* %284 to i8*, !dbg !2337
  %286 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2337
  %287 = bitcast i64* %286 to i8*, !dbg !2337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %285, i8* align 8 %287, i64 200, i1 false), !dbg !2337
  call void @llvm.dbg.declare(metadata i32* %57, metadata !2338, metadata !DIExpression()), !dbg !2340
  store i32 0, i32* %57, align 4, !dbg !2340
  br label %288, !dbg !2341

288:                                              ; preds = %302, %261
  %289 = load i32, i32* %57, align 4, !dbg !2342
  %290 = icmp ult i32 %289, 32, !dbg !2344
  br i1 %290, label %291, label %305, !dbg !2345

291:                                              ; preds = %288
  %292 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i64 0, i64 0, !dbg !2346
  %293 = load i32, i32* %57, align 4, !dbg !2346
  %294 = mul i32 %293, 8, !dbg !2346
  %295 = zext i32 %294 to i64, !dbg !2346
  %296 = getelementptr inbounds i8, i8* %292, i64 %295, !dbg !2346
  %297 = load i32, i32* %57, align 4, !dbg !2346
  %298 = zext i32 %297 to i64, !dbg !2346
  %299 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i64 0, i64 %298, !dbg !2346
  %300 = load i64, i64* %299, align 8, !dbg !2346
  %301 = call i64 @__uint64_identity(i64 noundef %300), !dbg !2346
  call void @store64(i8* noundef %296, i64 noundef %301), !dbg !2346
  br label %302, !dbg !2348

302:                                              ; preds = %291
  %303 = load i32, i32* %57, align 4, !dbg !2349
  %304 = add i32 %303, 1, !dbg !2349
  store i32 %304, i32* %57, align 4, !dbg !2349
  br label %288, !dbg !2350, !llvm.loop !2351

305:                                              ; preds = %288
  %306 = load i8*, i8** %6, align 8, !dbg !2353
  %307 = getelementptr inbounds i8, i8* %306, i64 28, !dbg !2354
  %308 = load i32, i32* %54, align 4, !dbg !2355
  %309 = zext i32 %308 to i64, !dbg !2356
  %310 = sub i64 0, %309, !dbg !2356
  %311 = getelementptr inbounds i8, i8* %307, i64 %310, !dbg !2356
  %312 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i64 0, i64 0, !dbg !2357
  %313 = load i32, i32* %54, align 4, !dbg !2358
  %314 = zext i32 %313 to i64, !dbg !2358
  %315 = mul i64 %314, 1, !dbg !2359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %311, i8* align 1 %312, i64 %315, i1 false), !dbg !2357
  ret void, !dbg !2360
}

declare dso_local void @Hacl_Hash_SHA3_sha3_224(i8* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext, i64* noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext, i64* noundef, i8* noundef, i32 noundef signext) #4

; Function Attrs: noinline nounwind optnone
define internal void @store64(i8* noundef %0, i64 noundef %1) #0 !dbg !2361 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2365, metadata !DIExpression()), !dbg !2366
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2367, metadata !DIExpression()), !dbg !2368
  %5 = load i8*, i8** %3, align 8, !dbg !2369
  %6 = bitcast i64* %4 to i8*, !dbg !2370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 8, i1 false), !dbg !2370
  ret void, !dbg !2371
}

; Function Attrs: noinline nounwind optnone
define internal i64 @__uint64_identity(i64 noundef %0) #0 !dbg !2372 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2376, metadata !DIExpression()), !dbg !2377
  %3 = load i64, i64* %2, align 8, !dbg !2378
  ret i64 %3, !dbg !2379
}

declare dso_local void @Hacl_Hash_SHA3_init_(i8 noundef zeroext, i64* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha3_256(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !2380 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [136 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [136 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [136 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [25 x i64], align 8
  %24 = alloca i8*, align 8
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
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca [32 x i64], align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
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
  %52 = alloca i8*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca i32, align 4
  %55 = alloca [256 x i8], align 1
  %56 = alloca [32 x i64], align 8
  %57 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2383, metadata !DIExpression()), !dbg !2384
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2385, metadata !DIExpression()), !dbg !2386
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2387, metadata !DIExpression()), !dbg !2388
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2389, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.declare(metadata [136 x i8]* %11, metadata !2391, metadata !DIExpression()), !dbg !2395
  %58 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i64 0, i64 0, !dbg !2396
  call void @llvm.memset.p0i8.i64(i8* align 1 %58, i8 0, i64 136, i1 false), !dbg !2396
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2397, metadata !DIExpression()), !dbg !2398
  %59 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i64 0, i64 0, !dbg !2399
  store i8* %59, i8** %12, align 8, !dbg !2398
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2400, metadata !DIExpression()), !dbg !2401
  %60 = load i32, i32* %8, align 4, !dbg !2402
  %61 = icmp ule i32 %60, 136, !dbg !2404
  br i1 %61, label %62, label %64, !dbg !2405

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !2406
  store i32 %63, i32* %13, align 4, !dbg !2408
  br label %65, !dbg !2409

64:                                               ; preds = %5
  store i32 32, i32* %13, align 4, !dbg !2410
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2412, metadata !DIExpression()), !dbg !2413
  %66 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i64 0, i64 0, !dbg !2414
  %67 = load i32, i32* %13, align 4, !dbg !2415
  %68 = zext i32 %67 to i64, !dbg !2416
  %69 = getelementptr inbounds i8, i8* %66, i64 %68, !dbg !2416
  store i8* %69, i8** %14, align 8, !dbg !2413
  %70 = load i8*, i8** %14, align 8, !dbg !2417
  %71 = load i32, i32* %8, align 4, !dbg !2418
  %72 = icmp ule i32 %71, 136, !dbg !2420
  br i1 %72, label %73, label %79, !dbg !2421

73:                                               ; preds = %65
  %74 = load i8*, i8** %12, align 8, !dbg !2422
  %75 = load i8*, i8** %7, align 8, !dbg !2424
  %76 = load i32, i32* %8, align 4, !dbg !2425
  %77 = zext i32 %76 to i64, !dbg !2425
  %78 = mul i64 %77, 1, !dbg !2426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 %78, i1 false), !dbg !2427
  br label %83, !dbg !2428

79:                                               ; preds = %65
  %80 = load i8*, i8** %12, align 8, !dbg !2429
  %81 = load i8*, i8** %7, align 8, !dbg !2431
  %82 = load i32, i32* %8, align 4, !dbg !2432
  call void @Hacl_Hash_SHA3_sha3_256(i8* noundef %80, i8* noundef %81, i32 noundef signext %82), !dbg !2433
  br label %83

83:                                               ; preds = %79, %73
  call void @llvm.dbg.declare(metadata [136 x i8]* %15, metadata !2434, metadata !DIExpression()), !dbg !2435
  %84 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i64 0, i64 0, !dbg !2436
  call void @llvm.memset.p0i8.i64(i8* align 1 %84, i8 54, i64 136, i1 false), !dbg !2436
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2437, metadata !DIExpression()), !dbg !2439
  store i32 0, i32* %16, align 4, !dbg !2439
  br label %85, !dbg !2440

85:                                               ; preds = %106, %83
  %86 = load i32, i32* %16, align 4, !dbg !2441
  %87 = icmp ult i32 %86, 136, !dbg !2443
  br i1 %87, label %88, label %109, !dbg !2444

88:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata i8* %17, metadata !2445, metadata !DIExpression()), !dbg !2447
  %89 = load i32, i32* %16, align 4, !dbg !2448
  %90 = zext i32 %89 to i64, !dbg !2449
  %91 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i64 0, i64 %90, !dbg !2449
  %92 = load i8, i8* %91, align 1, !dbg !2449
  store i8 %92, i8* %17, align 1, !dbg !2447
  call void @llvm.dbg.declare(metadata i8* %18, metadata !2450, metadata !DIExpression()), !dbg !2451
  %93 = load i32, i32* %16, align 4, !dbg !2452
  %94 = zext i32 %93 to i64, !dbg !2453
  %95 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i64 0, i64 %94, !dbg !2453
  %96 = load i8, i8* %95, align 1, !dbg !2453
  store i8 %96, i8* %18, align 1, !dbg !2451
  %97 = load i8, i8* %17, align 1, !dbg !2454
  %98 = zext i8 %97 to i32, !dbg !2455
  %99 = load i8, i8* %18, align 1, !dbg !2456
  %100 = zext i8 %99 to i32, !dbg !2457
  %101 = xor i32 %98, %100, !dbg !2458
  %102 = trunc i32 %101 to i8, !dbg !2455
  %103 = load i32, i32* %16, align 4, !dbg !2459
  %104 = zext i32 %103 to i64, !dbg !2460
  %105 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i64 0, i64 %104, !dbg !2460
  store i8 %102, i8* %105, align 1, !dbg !2461
  br label %106, !dbg !2462

106:                                              ; preds = %88
  %107 = load i32, i32* %16, align 4, !dbg !2463
  %108 = add i32 %107, 1, !dbg !2463
  store i32 %108, i32* %16, align 4, !dbg !2463
  br label %85, !dbg !2464, !llvm.loop !2465

109:                                              ; preds = %85
  call void @llvm.dbg.declare(metadata [136 x i8]* %19, metadata !2467, metadata !DIExpression()), !dbg !2468
  %110 = getelementptr inbounds [136 x i8], [136 x i8]* %19, i64 0, i64 0, !dbg !2469
  call void @llvm.memset.p0i8.i64(i8* align 1 %110, i8 92, i64 136, i1 false), !dbg !2469
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2470, metadata !DIExpression()), !dbg !2472
  store i32 0, i32* %20, align 4, !dbg !2472
  br label %111, !dbg !2473

111:                                              ; preds = %132, %109
  %112 = load i32, i32* %20, align 4, !dbg !2474
  %113 = icmp ult i32 %112, 136, !dbg !2476
  br i1 %113, label %114, label %135, !dbg !2477

114:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata i8* %21, metadata !2478, metadata !DIExpression()), !dbg !2480
  %115 = load i32, i32* %20, align 4, !dbg !2481
  %116 = zext i32 %115 to i64, !dbg !2482
  %117 = getelementptr inbounds [136 x i8], [136 x i8]* %19, i64 0, i64 %116, !dbg !2482
  %118 = load i8, i8* %117, align 1, !dbg !2482
  store i8 %118, i8* %21, align 1, !dbg !2480
  call void @llvm.dbg.declare(metadata i8* %22, metadata !2483, metadata !DIExpression()), !dbg !2484
  %119 = load i32, i32* %20, align 4, !dbg !2485
  %120 = zext i32 %119 to i64, !dbg !2486
  %121 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i64 0, i64 %120, !dbg !2486
  %122 = load i8, i8* %121, align 1, !dbg !2486
  store i8 %122, i8* %22, align 1, !dbg !2484
  %123 = load i8, i8* %21, align 1, !dbg !2487
  %124 = zext i8 %123 to i32, !dbg !2488
  %125 = load i8, i8* %22, align 1, !dbg !2489
  %126 = zext i8 %125 to i32, !dbg !2490
  %127 = xor i32 %124, %126, !dbg !2491
  %128 = trunc i32 %127 to i8, !dbg !2488
  %129 = load i32, i32* %20, align 4, !dbg !2492
  %130 = zext i32 %129 to i64, !dbg !2493
  %131 = getelementptr inbounds [136 x i8], [136 x i8]* %19, i64 0, i64 %130, !dbg !2493
  store i8 %128, i8* %131, align 1, !dbg !2494
  br label %132, !dbg !2495

132:                                              ; preds = %114
  %133 = load i32, i32* %20, align 4, !dbg !2496
  %134 = add i32 %133, 1, !dbg !2496
  store i32 %134, i32* %20, align 4, !dbg !2496
  br label %111, !dbg !2497, !llvm.loop !2498

135:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata [25 x i64]* %23, metadata !2500, metadata !DIExpression()), !dbg !2501
  %136 = bitcast [25 x i64]* %23 to i8*, !dbg !2501
  call void @llvm.memset.p0i8.i64(i8* align 8 %136, i8 0, i64 200, i1 false), !dbg !2501
  call void @llvm.dbg.declare(metadata i8** %24, metadata !2502, metadata !DIExpression()), !dbg !2503
  %137 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i64 0, i64 0, !dbg !2504
  store i8* %137, i8** %24, align 8, !dbg !2503
  %138 = load i32, i32* %10, align 4, !dbg !2505
  %139 = icmp eq i32 %138, 0, !dbg !2507
  br i1 %139, label %140, label %143, !dbg !2508

140:                                              ; preds = %135
  %141 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2509
  %142 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i64 0, i64 0, !dbg !2511
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 8, i64* noundef %141, i8* noundef %142, i32 noundef signext 136), !dbg !2512
  br label %196, !dbg !2513

143:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2514, metadata !DIExpression()), !dbg !2516
  store i32 136, i32* %25, align 4, !dbg !2516
  call void @llvm.dbg.declare(metadata i32* %26, metadata !2517, metadata !DIExpression()), !dbg !2518
  %144 = load i32, i32* %10, align 4, !dbg !2519
  %145 = load i32, i32* %25, align 4, !dbg !2520
  %146 = udiv i32 %144, %145, !dbg !2521
  store i32 %146, i32* %26, align 4, !dbg !2518
  call void @llvm.dbg.declare(metadata i32* %27, metadata !2522, metadata !DIExpression()), !dbg !2523
  %147 = load i32, i32* %10, align 4, !dbg !2524
  %148 = load i32, i32* %25, align 4, !dbg !2525
  %149 = urem i32 %147, %148, !dbg !2526
  store i32 %149, i32* %27, align 4, !dbg !2523
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !2527, metadata !DIExpression()), !dbg !2528
  %150 = load i32, i32* %26, align 4, !dbg !2529
  %151 = icmp ugt i32 %150, 0, !dbg !2531
  br i1 %151, label %152, label %168, !dbg !2532

152:                                              ; preds = %143
  %153 = load i32, i32* %27, align 4, !dbg !2533
  %154 = icmp eq i32 %153, 0, !dbg !2534
  br i1 %154, label %155, label %168, !dbg !2535

155:                                              ; preds = %152
  call void @llvm.dbg.declare(metadata i32* %29, metadata !2536, metadata !DIExpression()), !dbg !2538
  %156 = load i32, i32* %26, align 4, !dbg !2539
  %157 = sub i32 %156, 1, !dbg !2540
  store i32 %157, i32* %29, align 4, !dbg !2538
  %158 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !2541
  %159 = load i32, i32* %29, align 4, !dbg !2542
  store i32 %159, i32* %158, align 4, !dbg !2541
  %160 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !2541
  %161 = load i32, i32* %10, align 4, !dbg !2543
  %162 = load i32, i32* %29, align 4, !dbg !2544
  %163 = load i32, i32* %25, align 4, !dbg !2545
  %164 = mul i32 %162, %163, !dbg !2546
  %165 = sub i32 %161, %164, !dbg !2547
  store i32 %165, i32* %160, align 4, !dbg !2541
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2548
  %167 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !2548
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 8, i1 false), !dbg !2548
  br label %175, !dbg !2549

168:                                              ; preds = %152, %143
  %169 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !2550
  %170 = load i32, i32* %26, align 4, !dbg !2552
  store i32 %170, i32* %169, align 4, !dbg !2550
  %171 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !2550
  %172 = load i32, i32* %27, align 4, !dbg !2553
  store i32 %172, i32* %171, align 4, !dbg !2550
  %173 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2554
  %174 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !2554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 4 %174, i64 8, i1 false), !dbg !2554
  br label %175

175:                                              ; preds = %168, %155
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2555, metadata !DIExpression()), !dbg !2556
  %176 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !2557
  %177 = load i32, i32* %176, align 4, !dbg !2557
  store i32 %177, i32* %32, align 4, !dbg !2556
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2558, metadata !DIExpression()), !dbg !2559
  %178 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !2560
  %179 = load i32, i32* %178, align 4, !dbg !2560
  store i32 %179, i32* %33, align 4, !dbg !2559
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2561, metadata !DIExpression()), !dbg !2562
  %180 = load i32, i32* %32, align 4, !dbg !2563
  %181 = load i32, i32* %25, align 4, !dbg !2564
  %182 = mul i32 %180, %181, !dbg !2565
  store i32 %182, i32* %34, align 4, !dbg !2562
  call void @llvm.dbg.declare(metadata i8** %35, metadata !2566, metadata !DIExpression()), !dbg !2567
  %183 = load i8*, i8** %9, align 8, !dbg !2568
  store i8* %183, i8** %35, align 8, !dbg !2567
  call void @llvm.dbg.declare(metadata i8** %36, metadata !2569, metadata !DIExpression()), !dbg !2570
  %184 = load i8*, i8** %9, align 8, !dbg !2571
  %185 = load i32, i32* %34, align 4, !dbg !2572
  %186 = zext i32 %185 to i64, !dbg !2573
  %187 = getelementptr inbounds i8, i8* %184, i64 %186, !dbg !2573
  store i8* %187, i8** %36, align 8, !dbg !2570
  %188 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2574
  %189 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i64 0, i64 0, !dbg !2575
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, i64* noundef %188, i8* noundef %189, i32 noundef signext 1), !dbg !2576
  %190 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2577
  %191 = load i8*, i8** %35, align 8, !dbg !2578
  %192 = load i32, i32* %32, align 4, !dbg !2579
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, i64* noundef %190, i8* noundef %191, i32 noundef signext %192), !dbg !2580
  %193 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2581
  %194 = load i8*, i8** %36, align 8, !dbg !2582
  %195 = load i32, i32* %33, align 4, !dbg !2583
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 8, i64* noundef %193, i8* noundef %194, i32 noundef signext %195), !dbg !2584
  br label %196

196:                                              ; preds = %175, %140
  call void @llvm.dbg.declare(metadata i32* %37, metadata !2585, metadata !DIExpression()), !dbg !2586
  store i32 32, i32* %37, align 4, !dbg !2586
  call void @llvm.dbg.declare(metadata [256 x i8]* %38, metadata !2587, metadata !DIExpression()), !dbg !2588
  %197 = bitcast [256 x i8]* %38 to i8*, !dbg !2588
  call void @llvm.memset.p0i8.i64(i8* align 1 %197, i8 0, i64 256, i1 false), !dbg !2588
  call void @llvm.dbg.declare(metadata [32 x i64]* %39, metadata !2589, metadata !DIExpression()), !dbg !2590
  %198 = bitcast [32 x i64]* %39 to i8*, !dbg !2590
  call void @llvm.memset.p0i8.i64(i8* align 8 %198, i8 0, i64 256, i1 false), !dbg !2590
  %199 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i64 0, i64 0, !dbg !2591
  %200 = bitcast i64* %199 to i8*, !dbg !2591
  %201 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2591
  %202 = bitcast i64* %201 to i8*, !dbg !2591
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %202, i64 200, i1 false), !dbg !2591
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2592, metadata !DIExpression()), !dbg !2594
  store i32 0, i32* %40, align 4, !dbg !2594
  br label %203, !dbg !2595

203:                                              ; preds = %217, %196
  %204 = load i32, i32* %40, align 4, !dbg !2596
  %205 = icmp ult i32 %204, 32, !dbg !2598
  br i1 %205, label %206, label %220, !dbg !2599

206:                                              ; preds = %203
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0, !dbg !2600
  %208 = load i32, i32* %40, align 4, !dbg !2600
  %209 = mul i32 %208, 8, !dbg !2600
  %210 = zext i32 %209 to i64, !dbg !2600
  %211 = getelementptr inbounds i8, i8* %207, i64 %210, !dbg !2600
  %212 = load i32, i32* %40, align 4, !dbg !2600
  %213 = zext i32 %212 to i64, !dbg !2600
  %214 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i64 0, i64 %213, !dbg !2600
  %215 = load i64, i64* %214, align 8, !dbg !2600
  %216 = call i64 @__uint64_identity(i64 noundef %215), !dbg !2600
  call void @store64(i8* noundef %211, i64 noundef %216), !dbg !2600
  br label %217, !dbg !2602

217:                                              ; preds = %206
  %218 = load i32, i32* %40, align 4, !dbg !2603
  %219 = add i32 %218, 1, !dbg !2603
  store i32 %219, i32* %40, align 4, !dbg !2603
  br label %203, !dbg !2604, !llvm.loop !2605

220:                                              ; preds = %203
  %221 = load i8*, i8** %24, align 8, !dbg !2607
  %222 = getelementptr inbounds i8, i8* %221, i64 32, !dbg !2608
  %223 = load i32, i32* %37, align 4, !dbg !2609
  %224 = zext i32 %223 to i64, !dbg !2610
  %225 = sub i64 0, %224, !dbg !2610
  %226 = getelementptr inbounds i8, i8* %222, i64 %225, !dbg !2610
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0, !dbg !2611
  %228 = load i32, i32* %37, align 4, !dbg !2612
  %229 = zext i32 %228 to i64, !dbg !2612
  %230 = mul i64 %229, 1, !dbg !2613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %226, i8* align 1 %227, i64 %230, i1 false), !dbg !2611
  call void @llvm.dbg.declare(metadata i8** %41, metadata !2614, metadata !DIExpression()), !dbg !2615
  %231 = getelementptr inbounds [136 x i8], [136 x i8]* %15, i64 0, i64 0, !dbg !2616
  store i8* %231, i8** %41, align 8, !dbg !2615
  %232 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2617
  call void @Hacl_Hash_SHA3_init_(i8 noundef zeroext 8, i64* noundef %232), !dbg !2618
  call void @llvm.dbg.declare(metadata i32* %42, metadata !2619, metadata !DIExpression()), !dbg !2620
  store i32 136, i32* %42, align 4, !dbg !2620
  call void @llvm.dbg.declare(metadata i32* %43, metadata !2621, metadata !DIExpression()), !dbg !2622
  %233 = load i32, i32* %42, align 4, !dbg !2623
  %234 = udiv i32 32, %233, !dbg !2624
  store i32 %234, i32* %43, align 4, !dbg !2622
  call void @llvm.dbg.declare(metadata i32* %44, metadata !2625, metadata !DIExpression()), !dbg !2626
  %235 = load i32, i32* %42, align 4, !dbg !2627
  %236 = urem i32 32, %235, !dbg !2628
  store i32 %236, i32* %44, align 4, !dbg !2626
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %45, metadata !2629, metadata !DIExpression()), !dbg !2630
  %237 = load i32, i32* %43, align 4, !dbg !2631
  %238 = icmp ugt i32 %237, 0, !dbg !2633
  br i1 %238, label %239, label %254, !dbg !2634

239:                                              ; preds = %220
  %240 = load i32, i32* %44, align 4, !dbg !2635
  %241 = icmp eq i32 %240, 0, !dbg !2636
  br i1 %241, label %242, label %254, !dbg !2637

242:                                              ; preds = %239
  call void @llvm.dbg.declare(metadata i32* %46, metadata !2638, metadata !DIExpression()), !dbg !2640
  %243 = load i32, i32* %43, align 4, !dbg !2641
  %244 = sub i32 %243, 1, !dbg !2642
  store i32 %244, i32* %46, align 4, !dbg !2640
  %245 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 0, !dbg !2643
  %246 = load i32, i32* %46, align 4, !dbg !2644
  store i32 %246, i32* %245, align 4, !dbg !2643
  %247 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 1, !dbg !2643
  %248 = load i32, i32* %46, align 4, !dbg !2645
  %249 = load i32, i32* %42, align 4, !dbg !2646
  %250 = mul i32 %248, %249, !dbg !2647
  %251 = sub i32 32, %250, !dbg !2648
  store i32 %251, i32* %247, align 4, !dbg !2643
  %252 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2649
  %253 = bitcast %struct.K___uint32_t_uint32_t_s* %47 to i8*, !dbg !2649
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 8, i1 false), !dbg !2649
  br label %261, !dbg !2650

254:                                              ; preds = %239, %220
  %255 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !2651
  %256 = load i32, i32* %43, align 4, !dbg !2653
  store i32 %256, i32* %255, align 4, !dbg !2651
  %257 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !2651
  %258 = load i32, i32* %44, align 4, !dbg !2654
  store i32 %258, i32* %257, align 4, !dbg !2651
  %259 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2655
  %260 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !2655
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %259, i8* align 4 %260, i64 8, i1 false), !dbg !2655
  br label %261

261:                                              ; preds = %254, %242
  call void @llvm.dbg.declare(metadata i32* %49, metadata !2656, metadata !DIExpression()), !dbg !2657
  %262 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 0, !dbg !2658
  %263 = load i32, i32* %262, align 4, !dbg !2658
  store i32 %263, i32* %49, align 4, !dbg !2657
  call void @llvm.dbg.declare(metadata i32* %50, metadata !2659, metadata !DIExpression()), !dbg !2660
  %264 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 1, !dbg !2661
  %265 = load i32, i32* %264, align 4, !dbg !2661
  store i32 %265, i32* %50, align 4, !dbg !2660
  call void @llvm.dbg.declare(metadata i32* %51, metadata !2662, metadata !DIExpression()), !dbg !2663
  %266 = load i32, i32* %49, align 4, !dbg !2664
  %267 = load i32, i32* %42, align 4, !dbg !2665
  %268 = mul i32 %266, %267, !dbg !2666
  store i32 %268, i32* %51, align 4, !dbg !2663
  call void @llvm.dbg.declare(metadata i8** %52, metadata !2667, metadata !DIExpression()), !dbg !2668
  %269 = load i8*, i8** %41, align 8, !dbg !2669
  store i8* %269, i8** %52, align 8, !dbg !2668
  call void @llvm.dbg.declare(metadata i8** %53, metadata !2670, metadata !DIExpression()), !dbg !2671
  %270 = load i8*, i8** %41, align 8, !dbg !2672
  %271 = load i32, i32* %51, align 4, !dbg !2673
  %272 = zext i32 %271 to i64, !dbg !2674
  %273 = getelementptr inbounds i8, i8* %270, i64 %272, !dbg !2674
  store i8* %273, i8** %53, align 8, !dbg !2671
  %274 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2675
  %275 = getelementptr inbounds [136 x i8], [136 x i8]* %19, i64 0, i64 0, !dbg !2676
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, i64* noundef %274, i8* noundef %275, i32 noundef signext 1), !dbg !2677
  %276 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2678
  %277 = load i8*, i8** %52, align 8, !dbg !2679
  %278 = load i32, i32* %49, align 4, !dbg !2680
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, i64* noundef %276, i8* noundef %277, i32 noundef signext %278), !dbg !2681
  %279 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2682
  %280 = load i8*, i8** %53, align 8, !dbg !2683
  %281 = load i32, i32* %50, align 4, !dbg !2684
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 8, i64* noundef %279, i8* noundef %280, i32 noundef signext %281), !dbg !2685
  call void @llvm.dbg.declare(metadata i32* %54, metadata !2686, metadata !DIExpression()), !dbg !2687
  store i32 32, i32* %54, align 4, !dbg !2687
  call void @llvm.dbg.declare(metadata [256 x i8]* %55, metadata !2688, metadata !DIExpression()), !dbg !2689
  %282 = bitcast [256 x i8]* %55 to i8*, !dbg !2689
  call void @llvm.memset.p0i8.i64(i8* align 1 %282, i8 0, i64 256, i1 false), !dbg !2689
  call void @llvm.dbg.declare(metadata [32 x i64]* %56, metadata !2690, metadata !DIExpression()), !dbg !2691
  %283 = bitcast [32 x i64]* %56 to i8*, !dbg !2691
  call void @llvm.memset.p0i8.i64(i8* align 8 %283, i8 0, i64 256, i1 false), !dbg !2691
  %284 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i64 0, i64 0, !dbg !2692
  %285 = bitcast i64* %284 to i8*, !dbg !2692
  %286 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2692
  %287 = bitcast i64* %286 to i8*, !dbg !2692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %285, i8* align 8 %287, i64 200, i1 false), !dbg !2692
  call void @llvm.dbg.declare(metadata i32* %57, metadata !2693, metadata !DIExpression()), !dbg !2695
  store i32 0, i32* %57, align 4, !dbg !2695
  br label %288, !dbg !2696

288:                                              ; preds = %302, %261
  %289 = load i32, i32* %57, align 4, !dbg !2697
  %290 = icmp ult i32 %289, 32, !dbg !2699
  br i1 %290, label %291, label %305, !dbg !2700

291:                                              ; preds = %288
  %292 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i64 0, i64 0, !dbg !2701
  %293 = load i32, i32* %57, align 4, !dbg !2701
  %294 = mul i32 %293, 8, !dbg !2701
  %295 = zext i32 %294 to i64, !dbg !2701
  %296 = getelementptr inbounds i8, i8* %292, i64 %295, !dbg !2701
  %297 = load i32, i32* %57, align 4, !dbg !2701
  %298 = zext i32 %297 to i64, !dbg !2701
  %299 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i64 0, i64 %298, !dbg !2701
  %300 = load i64, i64* %299, align 8, !dbg !2701
  %301 = call i64 @__uint64_identity(i64 noundef %300), !dbg !2701
  call void @store64(i8* noundef %296, i64 noundef %301), !dbg !2701
  br label %302, !dbg !2703

302:                                              ; preds = %291
  %303 = load i32, i32* %57, align 4, !dbg !2704
  %304 = add i32 %303, 1, !dbg !2704
  store i32 %304, i32* %57, align 4, !dbg !2704
  br label %288, !dbg !2705, !llvm.loop !2706

305:                                              ; preds = %288
  %306 = load i8*, i8** %6, align 8, !dbg !2708
  %307 = getelementptr inbounds i8, i8* %306, i64 32, !dbg !2709
  %308 = load i32, i32* %54, align 4, !dbg !2710
  %309 = zext i32 %308 to i64, !dbg !2711
  %310 = sub i64 0, %309, !dbg !2711
  %311 = getelementptr inbounds i8, i8* %307, i64 %310, !dbg !2711
  %312 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i64 0, i64 0, !dbg !2712
  %313 = load i32, i32* %54, align 4, !dbg !2713
  %314 = zext i32 %313 to i64, !dbg !2713
  %315 = mul i64 %314, 1, !dbg !2714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %311, i8* align 1 %312, i64 %315, i1 false), !dbg !2712
  ret void, !dbg !2715
}

declare dso_local void @Hacl_Hash_SHA3_sha3_256(i8* noundef, i8* noundef, i32 noundef signext) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha3_384(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !2716 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [104 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [104 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [104 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [25 x i64], align 8
  %24 = alloca i8*, align 8
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
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca [32 x i64], align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
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
  %52 = alloca i8*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca i32, align 4
  %55 = alloca [256 x i8], align 1
  %56 = alloca [32 x i64], align 8
  %57 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2717, metadata !DIExpression()), !dbg !2718
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2719, metadata !DIExpression()), !dbg !2720
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2721, metadata !DIExpression()), !dbg !2722
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2723, metadata !DIExpression()), !dbg !2724
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2725, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.declare(metadata [104 x i8]* %11, metadata !2727, metadata !DIExpression()), !dbg !2731
  %58 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i64 0, i64 0, !dbg !2732
  call void @llvm.memset.p0i8.i64(i8* align 1 %58, i8 0, i64 104, i1 false), !dbg !2732
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2733, metadata !DIExpression()), !dbg !2734
  %59 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i64 0, i64 0, !dbg !2735
  store i8* %59, i8** %12, align 8, !dbg !2734
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2736, metadata !DIExpression()), !dbg !2737
  %60 = load i32, i32* %8, align 4, !dbg !2738
  %61 = icmp ule i32 %60, 104, !dbg !2740
  br i1 %61, label %62, label %64, !dbg !2741

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !2742
  store i32 %63, i32* %13, align 4, !dbg !2744
  br label %65, !dbg !2745

64:                                               ; preds = %5
  store i32 48, i32* %13, align 4, !dbg !2746
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2748, metadata !DIExpression()), !dbg !2749
  %66 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i64 0, i64 0, !dbg !2750
  %67 = load i32, i32* %13, align 4, !dbg !2751
  %68 = zext i32 %67 to i64, !dbg !2752
  %69 = getelementptr inbounds i8, i8* %66, i64 %68, !dbg !2752
  store i8* %69, i8** %14, align 8, !dbg !2749
  %70 = load i8*, i8** %14, align 8, !dbg !2753
  %71 = load i32, i32* %8, align 4, !dbg !2754
  %72 = icmp ule i32 %71, 104, !dbg !2756
  br i1 %72, label %73, label %79, !dbg !2757

73:                                               ; preds = %65
  %74 = load i8*, i8** %12, align 8, !dbg !2758
  %75 = load i8*, i8** %7, align 8, !dbg !2760
  %76 = load i32, i32* %8, align 4, !dbg !2761
  %77 = zext i32 %76 to i64, !dbg !2761
  %78 = mul i64 %77, 1, !dbg !2762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 %78, i1 false), !dbg !2763
  br label %83, !dbg !2764

79:                                               ; preds = %65
  %80 = load i8*, i8** %12, align 8, !dbg !2765
  %81 = load i8*, i8** %7, align 8, !dbg !2767
  %82 = load i32, i32* %8, align 4, !dbg !2768
  call void @Hacl_Hash_SHA3_sha3_384(i8* noundef %80, i8* noundef %81, i32 noundef signext %82), !dbg !2769
  br label %83

83:                                               ; preds = %79, %73
  call void @llvm.dbg.declare(metadata [104 x i8]* %15, metadata !2770, metadata !DIExpression()), !dbg !2771
  %84 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i64 0, i64 0, !dbg !2772
  call void @llvm.memset.p0i8.i64(i8* align 1 %84, i8 54, i64 104, i1 false), !dbg !2772
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2773, metadata !DIExpression()), !dbg !2775
  store i32 0, i32* %16, align 4, !dbg !2775
  br label %85, !dbg !2776

85:                                               ; preds = %106, %83
  %86 = load i32, i32* %16, align 4, !dbg !2777
  %87 = icmp ult i32 %86, 104, !dbg !2779
  br i1 %87, label %88, label %109, !dbg !2780

88:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata i8* %17, metadata !2781, metadata !DIExpression()), !dbg !2783
  %89 = load i32, i32* %16, align 4, !dbg !2784
  %90 = zext i32 %89 to i64, !dbg !2785
  %91 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i64 0, i64 %90, !dbg !2785
  %92 = load i8, i8* %91, align 1, !dbg !2785
  store i8 %92, i8* %17, align 1, !dbg !2783
  call void @llvm.dbg.declare(metadata i8* %18, metadata !2786, metadata !DIExpression()), !dbg !2787
  %93 = load i32, i32* %16, align 4, !dbg !2788
  %94 = zext i32 %93 to i64, !dbg !2789
  %95 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i64 0, i64 %94, !dbg !2789
  %96 = load i8, i8* %95, align 1, !dbg !2789
  store i8 %96, i8* %18, align 1, !dbg !2787
  %97 = load i8, i8* %17, align 1, !dbg !2790
  %98 = zext i8 %97 to i32, !dbg !2791
  %99 = load i8, i8* %18, align 1, !dbg !2792
  %100 = zext i8 %99 to i32, !dbg !2793
  %101 = xor i32 %98, %100, !dbg !2794
  %102 = trunc i32 %101 to i8, !dbg !2791
  %103 = load i32, i32* %16, align 4, !dbg !2795
  %104 = zext i32 %103 to i64, !dbg !2796
  %105 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i64 0, i64 %104, !dbg !2796
  store i8 %102, i8* %105, align 1, !dbg !2797
  br label %106, !dbg !2798

106:                                              ; preds = %88
  %107 = load i32, i32* %16, align 4, !dbg !2799
  %108 = add i32 %107, 1, !dbg !2799
  store i32 %108, i32* %16, align 4, !dbg !2799
  br label %85, !dbg !2800, !llvm.loop !2801

109:                                              ; preds = %85
  call void @llvm.dbg.declare(metadata [104 x i8]* %19, metadata !2803, metadata !DIExpression()), !dbg !2804
  %110 = getelementptr inbounds [104 x i8], [104 x i8]* %19, i64 0, i64 0, !dbg !2805
  call void @llvm.memset.p0i8.i64(i8* align 1 %110, i8 92, i64 104, i1 false), !dbg !2805
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2806, metadata !DIExpression()), !dbg !2808
  store i32 0, i32* %20, align 4, !dbg !2808
  br label %111, !dbg !2809

111:                                              ; preds = %132, %109
  %112 = load i32, i32* %20, align 4, !dbg !2810
  %113 = icmp ult i32 %112, 104, !dbg !2812
  br i1 %113, label %114, label %135, !dbg !2813

114:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata i8* %21, metadata !2814, metadata !DIExpression()), !dbg !2816
  %115 = load i32, i32* %20, align 4, !dbg !2817
  %116 = zext i32 %115 to i64, !dbg !2818
  %117 = getelementptr inbounds [104 x i8], [104 x i8]* %19, i64 0, i64 %116, !dbg !2818
  %118 = load i8, i8* %117, align 1, !dbg !2818
  store i8 %118, i8* %21, align 1, !dbg !2816
  call void @llvm.dbg.declare(metadata i8* %22, metadata !2819, metadata !DIExpression()), !dbg !2820
  %119 = load i32, i32* %20, align 4, !dbg !2821
  %120 = zext i32 %119 to i64, !dbg !2822
  %121 = getelementptr inbounds [104 x i8], [104 x i8]* %11, i64 0, i64 %120, !dbg !2822
  %122 = load i8, i8* %121, align 1, !dbg !2822
  store i8 %122, i8* %22, align 1, !dbg !2820
  %123 = load i8, i8* %21, align 1, !dbg !2823
  %124 = zext i8 %123 to i32, !dbg !2824
  %125 = load i8, i8* %22, align 1, !dbg !2825
  %126 = zext i8 %125 to i32, !dbg !2826
  %127 = xor i32 %124, %126, !dbg !2827
  %128 = trunc i32 %127 to i8, !dbg !2824
  %129 = load i32, i32* %20, align 4, !dbg !2828
  %130 = zext i32 %129 to i64, !dbg !2829
  %131 = getelementptr inbounds [104 x i8], [104 x i8]* %19, i64 0, i64 %130, !dbg !2829
  store i8 %128, i8* %131, align 1, !dbg !2830
  br label %132, !dbg !2831

132:                                              ; preds = %114
  %133 = load i32, i32* %20, align 4, !dbg !2832
  %134 = add i32 %133, 1, !dbg !2832
  store i32 %134, i32* %20, align 4, !dbg !2832
  br label %111, !dbg !2833, !llvm.loop !2834

135:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata [25 x i64]* %23, metadata !2836, metadata !DIExpression()), !dbg !2837
  %136 = bitcast [25 x i64]* %23 to i8*, !dbg !2837
  call void @llvm.memset.p0i8.i64(i8* align 8 %136, i8 0, i64 200, i1 false), !dbg !2837
  call void @llvm.dbg.declare(metadata i8** %24, metadata !2838, metadata !DIExpression()), !dbg !2839
  %137 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i64 0, i64 0, !dbg !2840
  store i8* %137, i8** %24, align 8, !dbg !2839
  %138 = load i32, i32* %10, align 4, !dbg !2841
  %139 = icmp eq i32 %138, 0, !dbg !2843
  br i1 %139, label %140, label %143, !dbg !2844

140:                                              ; preds = %135
  %141 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2845
  %142 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i64 0, i64 0, !dbg !2847
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 10, i64* noundef %141, i8* noundef %142, i32 noundef signext 104), !dbg !2848
  br label %196, !dbg !2849

143:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2850, metadata !DIExpression()), !dbg !2852
  store i32 104, i32* %25, align 4, !dbg !2852
  call void @llvm.dbg.declare(metadata i32* %26, metadata !2853, metadata !DIExpression()), !dbg !2854
  %144 = load i32, i32* %10, align 4, !dbg !2855
  %145 = load i32, i32* %25, align 4, !dbg !2856
  %146 = udiv i32 %144, %145, !dbg !2857
  store i32 %146, i32* %26, align 4, !dbg !2854
  call void @llvm.dbg.declare(metadata i32* %27, metadata !2858, metadata !DIExpression()), !dbg !2859
  %147 = load i32, i32* %10, align 4, !dbg !2860
  %148 = load i32, i32* %25, align 4, !dbg !2861
  %149 = urem i32 %147, %148, !dbg !2862
  store i32 %149, i32* %27, align 4, !dbg !2859
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !2863, metadata !DIExpression()), !dbg !2864
  %150 = load i32, i32* %26, align 4, !dbg !2865
  %151 = icmp ugt i32 %150, 0, !dbg !2867
  br i1 %151, label %152, label %168, !dbg !2868

152:                                              ; preds = %143
  %153 = load i32, i32* %27, align 4, !dbg !2869
  %154 = icmp eq i32 %153, 0, !dbg !2870
  br i1 %154, label %155, label %168, !dbg !2871

155:                                              ; preds = %152
  call void @llvm.dbg.declare(metadata i32* %29, metadata !2872, metadata !DIExpression()), !dbg !2874
  %156 = load i32, i32* %26, align 4, !dbg !2875
  %157 = sub i32 %156, 1, !dbg !2876
  store i32 %157, i32* %29, align 4, !dbg !2874
  %158 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !2877
  %159 = load i32, i32* %29, align 4, !dbg !2878
  store i32 %159, i32* %158, align 4, !dbg !2877
  %160 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !2877
  %161 = load i32, i32* %10, align 4, !dbg !2879
  %162 = load i32, i32* %29, align 4, !dbg !2880
  %163 = load i32, i32* %25, align 4, !dbg !2881
  %164 = mul i32 %162, %163, !dbg !2882
  %165 = sub i32 %161, %164, !dbg !2883
  store i32 %165, i32* %160, align 4, !dbg !2877
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2884
  %167 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !2884
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 8, i1 false), !dbg !2884
  br label %175, !dbg !2885

168:                                              ; preds = %152, %143
  %169 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !2886
  %170 = load i32, i32* %26, align 4, !dbg !2888
  store i32 %170, i32* %169, align 4, !dbg !2886
  %171 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !2886
  %172 = load i32, i32* %27, align 4, !dbg !2889
  store i32 %172, i32* %171, align 4, !dbg !2886
  %173 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !2890
  %174 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !2890
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 4 %174, i64 8, i1 false), !dbg !2890
  br label %175

175:                                              ; preds = %168, %155
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2891, metadata !DIExpression()), !dbg !2892
  %176 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !2893
  %177 = load i32, i32* %176, align 4, !dbg !2893
  store i32 %177, i32* %32, align 4, !dbg !2892
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2894, metadata !DIExpression()), !dbg !2895
  %178 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !2896
  %179 = load i32, i32* %178, align 4, !dbg !2896
  store i32 %179, i32* %33, align 4, !dbg !2895
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2897, metadata !DIExpression()), !dbg !2898
  %180 = load i32, i32* %32, align 4, !dbg !2899
  %181 = load i32, i32* %25, align 4, !dbg !2900
  %182 = mul i32 %180, %181, !dbg !2901
  store i32 %182, i32* %34, align 4, !dbg !2898
  call void @llvm.dbg.declare(metadata i8** %35, metadata !2902, metadata !DIExpression()), !dbg !2903
  %183 = load i8*, i8** %9, align 8, !dbg !2904
  store i8* %183, i8** %35, align 8, !dbg !2903
  call void @llvm.dbg.declare(metadata i8** %36, metadata !2905, metadata !DIExpression()), !dbg !2906
  %184 = load i8*, i8** %9, align 8, !dbg !2907
  %185 = load i32, i32* %34, align 4, !dbg !2908
  %186 = zext i32 %185 to i64, !dbg !2909
  %187 = getelementptr inbounds i8, i8* %184, i64 %186, !dbg !2909
  store i8* %187, i8** %36, align 8, !dbg !2906
  %188 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2910
  %189 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i64 0, i64 0, !dbg !2911
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, i64* noundef %188, i8* noundef %189, i32 noundef signext 1), !dbg !2912
  %190 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2913
  %191 = load i8*, i8** %35, align 8, !dbg !2914
  %192 = load i32, i32* %32, align 4, !dbg !2915
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, i64* noundef %190, i8* noundef %191, i32 noundef signext %192), !dbg !2916
  %193 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2917
  %194 = load i8*, i8** %36, align 8, !dbg !2918
  %195 = load i32, i32* %33, align 4, !dbg !2919
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 10, i64* noundef %193, i8* noundef %194, i32 noundef signext %195), !dbg !2920
  br label %196

196:                                              ; preds = %175, %140
  call void @llvm.dbg.declare(metadata i32* %37, metadata !2921, metadata !DIExpression()), !dbg !2922
  store i32 48, i32* %37, align 4, !dbg !2922
  call void @llvm.dbg.declare(metadata [256 x i8]* %38, metadata !2923, metadata !DIExpression()), !dbg !2924
  %197 = bitcast [256 x i8]* %38 to i8*, !dbg !2924
  call void @llvm.memset.p0i8.i64(i8* align 1 %197, i8 0, i64 256, i1 false), !dbg !2924
  call void @llvm.dbg.declare(metadata [32 x i64]* %39, metadata !2925, metadata !DIExpression()), !dbg !2926
  %198 = bitcast [32 x i64]* %39 to i8*, !dbg !2926
  call void @llvm.memset.p0i8.i64(i8* align 8 %198, i8 0, i64 256, i1 false), !dbg !2926
  %199 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i64 0, i64 0, !dbg !2927
  %200 = bitcast i64* %199 to i8*, !dbg !2927
  %201 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2927
  %202 = bitcast i64* %201 to i8*, !dbg !2927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %202, i64 200, i1 false), !dbg !2927
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2928, metadata !DIExpression()), !dbg !2930
  store i32 0, i32* %40, align 4, !dbg !2930
  br label %203, !dbg !2931

203:                                              ; preds = %217, %196
  %204 = load i32, i32* %40, align 4, !dbg !2932
  %205 = icmp ult i32 %204, 32, !dbg !2934
  br i1 %205, label %206, label %220, !dbg !2935

206:                                              ; preds = %203
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0, !dbg !2936
  %208 = load i32, i32* %40, align 4, !dbg !2936
  %209 = mul i32 %208, 8, !dbg !2936
  %210 = zext i32 %209 to i64, !dbg !2936
  %211 = getelementptr inbounds i8, i8* %207, i64 %210, !dbg !2936
  %212 = load i32, i32* %40, align 4, !dbg !2936
  %213 = zext i32 %212 to i64, !dbg !2936
  %214 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i64 0, i64 %213, !dbg !2936
  %215 = load i64, i64* %214, align 8, !dbg !2936
  %216 = call i64 @__uint64_identity(i64 noundef %215), !dbg !2936
  call void @store64(i8* noundef %211, i64 noundef %216), !dbg !2936
  br label %217, !dbg !2938

217:                                              ; preds = %206
  %218 = load i32, i32* %40, align 4, !dbg !2939
  %219 = add i32 %218, 1, !dbg !2939
  store i32 %219, i32* %40, align 4, !dbg !2939
  br label %203, !dbg !2940, !llvm.loop !2941

220:                                              ; preds = %203
  %221 = load i8*, i8** %24, align 8, !dbg !2943
  %222 = getelementptr inbounds i8, i8* %221, i64 48, !dbg !2944
  %223 = load i32, i32* %37, align 4, !dbg !2945
  %224 = zext i32 %223 to i64, !dbg !2946
  %225 = sub i64 0, %224, !dbg !2946
  %226 = getelementptr inbounds i8, i8* %222, i64 %225, !dbg !2946
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0, !dbg !2947
  %228 = load i32, i32* %37, align 4, !dbg !2948
  %229 = zext i32 %228 to i64, !dbg !2948
  %230 = mul i64 %229, 1, !dbg !2949
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %226, i8* align 1 %227, i64 %230, i1 false), !dbg !2947
  call void @llvm.dbg.declare(metadata i8** %41, metadata !2950, metadata !DIExpression()), !dbg !2951
  %231 = getelementptr inbounds [104 x i8], [104 x i8]* %15, i64 0, i64 0, !dbg !2952
  store i8* %231, i8** %41, align 8, !dbg !2951
  %232 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !2953
  call void @Hacl_Hash_SHA3_init_(i8 noundef zeroext 10, i64* noundef %232), !dbg !2954
  call void @llvm.dbg.declare(metadata i32* %42, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i32 104, i32* %42, align 4, !dbg !2956
  call void @llvm.dbg.declare(metadata i32* %43, metadata !2957, metadata !DIExpression()), !dbg !2958
  %233 = load i32, i32* %42, align 4, !dbg !2959
  %234 = udiv i32 48, %233, !dbg !2960
  store i32 %234, i32* %43, align 4, !dbg !2958
  call void @llvm.dbg.declare(metadata i32* %44, metadata !2961, metadata !DIExpression()), !dbg !2962
  %235 = load i32, i32* %42, align 4, !dbg !2963
  %236 = urem i32 48, %235, !dbg !2964
  store i32 %236, i32* %44, align 4, !dbg !2962
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %45, metadata !2965, metadata !DIExpression()), !dbg !2966
  %237 = load i32, i32* %43, align 4, !dbg !2967
  %238 = icmp ugt i32 %237, 0, !dbg !2969
  br i1 %238, label %239, label %254, !dbg !2970

239:                                              ; preds = %220
  %240 = load i32, i32* %44, align 4, !dbg !2971
  %241 = icmp eq i32 %240, 0, !dbg !2972
  br i1 %241, label %242, label %254, !dbg !2973

242:                                              ; preds = %239
  call void @llvm.dbg.declare(metadata i32* %46, metadata !2974, metadata !DIExpression()), !dbg !2976
  %243 = load i32, i32* %43, align 4, !dbg !2977
  %244 = sub i32 %243, 1, !dbg !2978
  store i32 %244, i32* %46, align 4, !dbg !2976
  %245 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 0, !dbg !2979
  %246 = load i32, i32* %46, align 4, !dbg !2980
  store i32 %246, i32* %245, align 4, !dbg !2979
  %247 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 1, !dbg !2979
  %248 = load i32, i32* %46, align 4, !dbg !2981
  %249 = load i32, i32* %42, align 4, !dbg !2982
  %250 = mul i32 %248, %249, !dbg !2983
  %251 = sub i32 48, %250, !dbg !2984
  store i32 %251, i32* %247, align 4, !dbg !2979
  %252 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2985
  %253 = bitcast %struct.K___uint32_t_uint32_t_s* %47 to i8*, !dbg !2985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 8, i1 false), !dbg !2985
  br label %261, !dbg !2986

254:                                              ; preds = %239, %220
  %255 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !2987
  %256 = load i32, i32* %43, align 4, !dbg !2989
  store i32 %256, i32* %255, align 4, !dbg !2987
  %257 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !2987
  %258 = load i32, i32* %44, align 4, !dbg !2990
  store i32 %258, i32* %257, align 4, !dbg !2987
  %259 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !2991
  %260 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !2991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %259, i8* align 4 %260, i64 8, i1 false), !dbg !2991
  br label %261

261:                                              ; preds = %254, %242
  call void @llvm.dbg.declare(metadata i32* %49, metadata !2992, metadata !DIExpression()), !dbg !2993
  %262 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 0, !dbg !2994
  %263 = load i32, i32* %262, align 4, !dbg !2994
  store i32 %263, i32* %49, align 4, !dbg !2993
  call void @llvm.dbg.declare(metadata i32* %50, metadata !2995, metadata !DIExpression()), !dbg !2996
  %264 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 1, !dbg !2997
  %265 = load i32, i32* %264, align 4, !dbg !2997
  store i32 %265, i32* %50, align 4, !dbg !2996
  call void @llvm.dbg.declare(metadata i32* %51, metadata !2998, metadata !DIExpression()), !dbg !2999
  %266 = load i32, i32* %49, align 4, !dbg !3000
  %267 = load i32, i32* %42, align 4, !dbg !3001
  %268 = mul i32 %266, %267, !dbg !3002
  store i32 %268, i32* %51, align 4, !dbg !2999
  call void @llvm.dbg.declare(metadata i8** %52, metadata !3003, metadata !DIExpression()), !dbg !3004
  %269 = load i8*, i8** %41, align 8, !dbg !3005
  store i8* %269, i8** %52, align 8, !dbg !3004
  call void @llvm.dbg.declare(metadata i8** %53, metadata !3006, metadata !DIExpression()), !dbg !3007
  %270 = load i8*, i8** %41, align 8, !dbg !3008
  %271 = load i32, i32* %51, align 4, !dbg !3009
  %272 = zext i32 %271 to i64, !dbg !3010
  %273 = getelementptr inbounds i8, i8* %270, i64 %272, !dbg !3010
  store i8* %273, i8** %53, align 8, !dbg !3007
  %274 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3011
  %275 = getelementptr inbounds [104 x i8], [104 x i8]* %19, i64 0, i64 0, !dbg !3012
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, i64* noundef %274, i8* noundef %275, i32 noundef signext 1), !dbg !3013
  %276 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3014
  %277 = load i8*, i8** %52, align 8, !dbg !3015
  %278 = load i32, i32* %49, align 4, !dbg !3016
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, i64* noundef %276, i8* noundef %277, i32 noundef signext %278), !dbg !3017
  %279 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3018
  %280 = load i8*, i8** %53, align 8, !dbg !3019
  %281 = load i32, i32* %50, align 4, !dbg !3020
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 10, i64* noundef %279, i8* noundef %280, i32 noundef signext %281), !dbg !3021
  call void @llvm.dbg.declare(metadata i32* %54, metadata !3022, metadata !DIExpression()), !dbg !3023
  store i32 48, i32* %54, align 4, !dbg !3023
  call void @llvm.dbg.declare(metadata [256 x i8]* %55, metadata !3024, metadata !DIExpression()), !dbg !3025
  %282 = bitcast [256 x i8]* %55 to i8*, !dbg !3025
  call void @llvm.memset.p0i8.i64(i8* align 1 %282, i8 0, i64 256, i1 false), !dbg !3025
  call void @llvm.dbg.declare(metadata [32 x i64]* %56, metadata !3026, metadata !DIExpression()), !dbg !3027
  %283 = bitcast [32 x i64]* %56 to i8*, !dbg !3027
  call void @llvm.memset.p0i8.i64(i8* align 8 %283, i8 0, i64 256, i1 false), !dbg !3027
  %284 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i64 0, i64 0, !dbg !3028
  %285 = bitcast i64* %284 to i8*, !dbg !3028
  %286 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3028
  %287 = bitcast i64* %286 to i8*, !dbg !3028
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %285, i8* align 8 %287, i64 200, i1 false), !dbg !3028
  call void @llvm.dbg.declare(metadata i32* %57, metadata !3029, metadata !DIExpression()), !dbg !3031
  store i32 0, i32* %57, align 4, !dbg !3031
  br label %288, !dbg !3032

288:                                              ; preds = %302, %261
  %289 = load i32, i32* %57, align 4, !dbg !3033
  %290 = icmp ult i32 %289, 32, !dbg !3035
  br i1 %290, label %291, label %305, !dbg !3036

291:                                              ; preds = %288
  %292 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i64 0, i64 0, !dbg !3037
  %293 = load i32, i32* %57, align 4, !dbg !3037
  %294 = mul i32 %293, 8, !dbg !3037
  %295 = zext i32 %294 to i64, !dbg !3037
  %296 = getelementptr inbounds i8, i8* %292, i64 %295, !dbg !3037
  %297 = load i32, i32* %57, align 4, !dbg !3037
  %298 = zext i32 %297 to i64, !dbg !3037
  %299 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i64 0, i64 %298, !dbg !3037
  %300 = load i64, i64* %299, align 8, !dbg !3037
  %301 = call i64 @__uint64_identity(i64 noundef %300), !dbg !3037
  call void @store64(i8* noundef %296, i64 noundef %301), !dbg !3037
  br label %302, !dbg !3039

302:                                              ; preds = %291
  %303 = load i32, i32* %57, align 4, !dbg !3040
  %304 = add i32 %303, 1, !dbg !3040
  store i32 %304, i32* %57, align 4, !dbg !3040
  br label %288, !dbg !3041, !llvm.loop !3042

305:                                              ; preds = %288
  %306 = load i8*, i8** %6, align 8, !dbg !3044
  %307 = getelementptr inbounds i8, i8* %306, i64 48, !dbg !3045
  %308 = load i32, i32* %54, align 4, !dbg !3046
  %309 = zext i32 %308 to i64, !dbg !3047
  %310 = sub i64 0, %309, !dbg !3047
  %311 = getelementptr inbounds i8, i8* %307, i64 %310, !dbg !3047
  %312 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i64 0, i64 0, !dbg !3048
  %313 = load i32, i32* %54, align 4, !dbg !3049
  %314 = zext i32 %313 to i64, !dbg !3049
  %315 = mul i64 %314, 1, !dbg !3050
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %311, i8* align 1 %312, i64 %315, i1 false), !dbg !3048
  ret void, !dbg !3051
}

declare dso_local void @Hacl_Hash_SHA3_sha3_384(i8* noundef, i8* noundef, i32 noundef signext) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_sha3_512(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !3052 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [72 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [72 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [72 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [25 x i64], align 8
  %24 = alloca i8*, align 8
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
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca [32 x i64], align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
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
  %52 = alloca i8*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca i32, align 4
  %55 = alloca [256 x i8], align 1
  %56 = alloca [32 x i64], align 8
  %57 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3053, metadata !DIExpression()), !dbg !3054
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3055, metadata !DIExpression()), !dbg !3056
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3057, metadata !DIExpression()), !dbg !3058
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.declare(metadata [72 x i8]* %11, metadata !3063, metadata !DIExpression()), !dbg !3067
  %58 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 0, !dbg !3068
  call void @llvm.memset.p0i8.i64(i8* align 1 %58, i8 0, i64 72, i1 false), !dbg !3068
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3069, metadata !DIExpression()), !dbg !3070
  %59 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 0, !dbg !3071
  store i8* %59, i8** %12, align 8, !dbg !3070
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3072, metadata !DIExpression()), !dbg !3073
  %60 = load i32, i32* %8, align 4, !dbg !3074
  %61 = icmp ule i32 %60, 72, !dbg !3076
  br i1 %61, label %62, label %64, !dbg !3077

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !3078
  store i32 %63, i32* %13, align 4, !dbg !3080
  br label %65, !dbg !3081

64:                                               ; preds = %5
  store i32 64, i32* %13, align 4, !dbg !3082
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3084, metadata !DIExpression()), !dbg !3085
  %66 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 0, !dbg !3086
  %67 = load i32, i32* %13, align 4, !dbg !3087
  %68 = zext i32 %67 to i64, !dbg !3088
  %69 = getelementptr inbounds i8, i8* %66, i64 %68, !dbg !3088
  store i8* %69, i8** %14, align 8, !dbg !3085
  %70 = load i8*, i8** %14, align 8, !dbg !3089
  %71 = load i32, i32* %8, align 4, !dbg !3090
  %72 = icmp ule i32 %71, 72, !dbg !3092
  br i1 %72, label %73, label %79, !dbg !3093

73:                                               ; preds = %65
  %74 = load i8*, i8** %12, align 8, !dbg !3094
  %75 = load i8*, i8** %7, align 8, !dbg !3096
  %76 = load i32, i32* %8, align 4, !dbg !3097
  %77 = zext i32 %76 to i64, !dbg !3097
  %78 = mul i64 %77, 1, !dbg !3098
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 %78, i1 false), !dbg !3099
  br label %83, !dbg !3100

79:                                               ; preds = %65
  %80 = load i8*, i8** %12, align 8, !dbg !3101
  %81 = load i8*, i8** %7, align 8, !dbg !3103
  %82 = load i32, i32* %8, align 4, !dbg !3104
  call void @Hacl_Hash_SHA3_sha3_512(i8* noundef %80, i8* noundef %81, i32 noundef signext %82), !dbg !3105
  br label %83

83:                                               ; preds = %79, %73
  call void @llvm.dbg.declare(metadata [72 x i8]* %15, metadata !3106, metadata !DIExpression()), !dbg !3107
  %84 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i64 0, i64 0, !dbg !3108
  call void @llvm.memset.p0i8.i64(i8* align 1 %84, i8 54, i64 72, i1 false), !dbg !3108
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3109, metadata !DIExpression()), !dbg !3111
  store i32 0, i32* %16, align 4, !dbg !3111
  br label %85, !dbg !3112

85:                                               ; preds = %106, %83
  %86 = load i32, i32* %16, align 4, !dbg !3113
  %87 = icmp ult i32 %86, 72, !dbg !3115
  br i1 %87, label %88, label %109, !dbg !3116

88:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata i8* %17, metadata !3117, metadata !DIExpression()), !dbg !3119
  %89 = load i32, i32* %16, align 4, !dbg !3120
  %90 = zext i32 %89 to i64, !dbg !3121
  %91 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i64 0, i64 %90, !dbg !3121
  %92 = load i8, i8* %91, align 1, !dbg !3121
  store i8 %92, i8* %17, align 1, !dbg !3119
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3122, metadata !DIExpression()), !dbg !3123
  %93 = load i32, i32* %16, align 4, !dbg !3124
  %94 = zext i32 %93 to i64, !dbg !3125
  %95 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 %94, !dbg !3125
  %96 = load i8, i8* %95, align 1, !dbg !3125
  store i8 %96, i8* %18, align 1, !dbg !3123
  %97 = load i8, i8* %17, align 1, !dbg !3126
  %98 = zext i8 %97 to i32, !dbg !3127
  %99 = load i8, i8* %18, align 1, !dbg !3128
  %100 = zext i8 %99 to i32, !dbg !3129
  %101 = xor i32 %98, %100, !dbg !3130
  %102 = trunc i32 %101 to i8, !dbg !3127
  %103 = load i32, i32* %16, align 4, !dbg !3131
  %104 = zext i32 %103 to i64, !dbg !3132
  %105 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i64 0, i64 %104, !dbg !3132
  store i8 %102, i8* %105, align 1, !dbg !3133
  br label %106, !dbg !3134

106:                                              ; preds = %88
  %107 = load i32, i32* %16, align 4, !dbg !3135
  %108 = add i32 %107, 1, !dbg !3135
  store i32 %108, i32* %16, align 4, !dbg !3135
  br label %85, !dbg !3136, !llvm.loop !3137

109:                                              ; preds = %85
  call void @llvm.dbg.declare(metadata [72 x i8]* %19, metadata !3139, metadata !DIExpression()), !dbg !3140
  %110 = getelementptr inbounds [72 x i8], [72 x i8]* %19, i64 0, i64 0, !dbg !3141
  call void @llvm.memset.p0i8.i64(i8* align 1 %110, i8 92, i64 72, i1 false), !dbg !3141
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3142, metadata !DIExpression()), !dbg !3144
  store i32 0, i32* %20, align 4, !dbg !3144
  br label %111, !dbg !3145

111:                                              ; preds = %132, %109
  %112 = load i32, i32* %20, align 4, !dbg !3146
  %113 = icmp ult i32 %112, 72, !dbg !3148
  br i1 %113, label %114, label %135, !dbg !3149

114:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata i8* %21, metadata !3150, metadata !DIExpression()), !dbg !3152
  %115 = load i32, i32* %20, align 4, !dbg !3153
  %116 = zext i32 %115 to i64, !dbg !3154
  %117 = getelementptr inbounds [72 x i8], [72 x i8]* %19, i64 0, i64 %116, !dbg !3154
  %118 = load i8, i8* %117, align 1, !dbg !3154
  store i8 %118, i8* %21, align 1, !dbg !3152
  call void @llvm.dbg.declare(metadata i8* %22, metadata !3155, metadata !DIExpression()), !dbg !3156
  %119 = load i32, i32* %20, align 4, !dbg !3157
  %120 = zext i32 %119 to i64, !dbg !3158
  %121 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 %120, !dbg !3158
  %122 = load i8, i8* %121, align 1, !dbg !3158
  store i8 %122, i8* %22, align 1, !dbg !3156
  %123 = load i8, i8* %21, align 1, !dbg !3159
  %124 = zext i8 %123 to i32, !dbg !3160
  %125 = load i8, i8* %22, align 1, !dbg !3161
  %126 = zext i8 %125 to i32, !dbg !3162
  %127 = xor i32 %124, %126, !dbg !3163
  %128 = trunc i32 %127 to i8, !dbg !3160
  %129 = load i32, i32* %20, align 4, !dbg !3164
  %130 = zext i32 %129 to i64, !dbg !3165
  %131 = getelementptr inbounds [72 x i8], [72 x i8]* %19, i64 0, i64 %130, !dbg !3165
  store i8 %128, i8* %131, align 1, !dbg !3166
  br label %132, !dbg !3167

132:                                              ; preds = %114
  %133 = load i32, i32* %20, align 4, !dbg !3168
  %134 = add i32 %133, 1, !dbg !3168
  store i32 %134, i32* %20, align 4, !dbg !3168
  br label %111, !dbg !3169, !llvm.loop !3170

135:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata [25 x i64]* %23, metadata !3172, metadata !DIExpression()), !dbg !3173
  %136 = bitcast [25 x i64]* %23 to i8*, !dbg !3173
  call void @llvm.memset.p0i8.i64(i8* align 8 %136, i8 0, i64 200, i1 false), !dbg !3173
  call void @llvm.dbg.declare(metadata i8** %24, metadata !3174, metadata !DIExpression()), !dbg !3175
  %137 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i64 0, i64 0, !dbg !3176
  store i8* %137, i8** %24, align 8, !dbg !3175
  %138 = load i32, i32* %10, align 4, !dbg !3177
  %139 = icmp eq i32 %138, 0, !dbg !3179
  br i1 %139, label %140, label %143, !dbg !3180

140:                                              ; preds = %135
  %141 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3181
  %142 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i64 0, i64 0, !dbg !3183
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 11, i64* noundef %141, i8* noundef %142, i32 noundef signext 72), !dbg !3184
  br label %196, !dbg !3185

143:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata i32* %25, metadata !3186, metadata !DIExpression()), !dbg !3188
  store i32 72, i32* %25, align 4, !dbg !3188
  call void @llvm.dbg.declare(metadata i32* %26, metadata !3189, metadata !DIExpression()), !dbg !3190
  %144 = load i32, i32* %10, align 4, !dbg !3191
  %145 = load i32, i32* %25, align 4, !dbg !3192
  %146 = udiv i32 %144, %145, !dbg !3193
  store i32 %146, i32* %26, align 4, !dbg !3190
  call void @llvm.dbg.declare(metadata i32* %27, metadata !3194, metadata !DIExpression()), !dbg !3195
  %147 = load i32, i32* %10, align 4, !dbg !3196
  %148 = load i32, i32* %25, align 4, !dbg !3197
  %149 = urem i32 %147, %148, !dbg !3198
  store i32 %149, i32* %27, align 4, !dbg !3195
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %28, metadata !3199, metadata !DIExpression()), !dbg !3200
  %150 = load i32, i32* %26, align 4, !dbg !3201
  %151 = icmp ugt i32 %150, 0, !dbg !3203
  br i1 %151, label %152, label %168, !dbg !3204

152:                                              ; preds = %143
  %153 = load i32, i32* %27, align 4, !dbg !3205
  %154 = icmp eq i32 %153, 0, !dbg !3206
  br i1 %154, label %155, label %168, !dbg !3207

155:                                              ; preds = %152
  call void @llvm.dbg.declare(metadata i32* %29, metadata !3208, metadata !DIExpression()), !dbg !3210
  %156 = load i32, i32* %26, align 4, !dbg !3211
  %157 = sub i32 %156, 1, !dbg !3212
  store i32 %157, i32* %29, align 4, !dbg !3210
  %158 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !3213
  %159 = load i32, i32* %29, align 4, !dbg !3214
  store i32 %159, i32* %158, align 4, !dbg !3213
  %160 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !3213
  %161 = load i32, i32* %10, align 4, !dbg !3215
  %162 = load i32, i32* %29, align 4, !dbg !3216
  %163 = load i32, i32* %25, align 4, !dbg !3217
  %164 = mul i32 %162, %163, !dbg !3218
  %165 = sub i32 %161, %164, !dbg !3219
  store i32 %165, i32* %160, align 4, !dbg !3213
  %166 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !3220
  %167 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !3220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 8, i1 false), !dbg !3220
  br label %175, !dbg !3221

168:                                              ; preds = %152, %143
  %169 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 0, !dbg !3222
  %170 = load i32, i32* %26, align 4, !dbg !3224
  store i32 %170, i32* %169, align 4, !dbg !3222
  %171 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %31, i32 0, i32 1, !dbg !3222
  %172 = load i32, i32* %27, align 4, !dbg !3225
  store i32 %172, i32* %171, align 4, !dbg !3222
  %173 = bitcast %struct.K___uint32_t_uint32_t_s* %28 to i8*, !dbg !3226
  %174 = bitcast %struct.K___uint32_t_uint32_t_s* %31 to i8*, !dbg !3226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 4 %174, i64 8, i1 false), !dbg !3226
  br label %175

175:                                              ; preds = %168, %155
  call void @llvm.dbg.declare(metadata i32* %32, metadata !3227, metadata !DIExpression()), !dbg !3228
  %176 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 0, !dbg !3229
  %177 = load i32, i32* %176, align 4, !dbg !3229
  store i32 %177, i32* %32, align 4, !dbg !3228
  call void @llvm.dbg.declare(metadata i32* %33, metadata !3230, metadata !DIExpression()), !dbg !3231
  %178 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %28, i32 0, i32 1, !dbg !3232
  %179 = load i32, i32* %178, align 4, !dbg !3232
  store i32 %179, i32* %33, align 4, !dbg !3231
  call void @llvm.dbg.declare(metadata i32* %34, metadata !3233, metadata !DIExpression()), !dbg !3234
  %180 = load i32, i32* %32, align 4, !dbg !3235
  %181 = load i32, i32* %25, align 4, !dbg !3236
  %182 = mul i32 %180, %181, !dbg !3237
  store i32 %182, i32* %34, align 4, !dbg !3234
  call void @llvm.dbg.declare(metadata i8** %35, metadata !3238, metadata !DIExpression()), !dbg !3239
  %183 = load i8*, i8** %9, align 8, !dbg !3240
  store i8* %183, i8** %35, align 8, !dbg !3239
  call void @llvm.dbg.declare(metadata i8** %36, metadata !3241, metadata !DIExpression()), !dbg !3242
  %184 = load i8*, i8** %9, align 8, !dbg !3243
  %185 = load i32, i32* %34, align 4, !dbg !3244
  %186 = zext i32 %185 to i64, !dbg !3245
  %187 = getelementptr inbounds i8, i8* %184, i64 %186, !dbg !3245
  store i8* %187, i8** %36, align 8, !dbg !3242
  %188 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3246
  %189 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i64 0, i64 0, !dbg !3247
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, i64* noundef %188, i8* noundef %189, i32 noundef signext 1), !dbg !3248
  %190 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3249
  %191 = load i8*, i8** %35, align 8, !dbg !3250
  %192 = load i32, i32* %32, align 4, !dbg !3251
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, i64* noundef %190, i8* noundef %191, i32 noundef signext %192), !dbg !3252
  %193 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3253
  %194 = load i8*, i8** %36, align 8, !dbg !3254
  %195 = load i32, i32* %33, align 4, !dbg !3255
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 11, i64* noundef %193, i8* noundef %194, i32 noundef signext %195), !dbg !3256
  br label %196

196:                                              ; preds = %175, %140
  call void @llvm.dbg.declare(metadata i32* %37, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i32 64, i32* %37, align 4, !dbg !3258
  call void @llvm.dbg.declare(metadata [256 x i8]* %38, metadata !3259, metadata !DIExpression()), !dbg !3260
  %197 = bitcast [256 x i8]* %38 to i8*, !dbg !3260
  call void @llvm.memset.p0i8.i64(i8* align 1 %197, i8 0, i64 256, i1 false), !dbg !3260
  call void @llvm.dbg.declare(metadata [32 x i64]* %39, metadata !3261, metadata !DIExpression()), !dbg !3262
  %198 = bitcast [32 x i64]* %39 to i8*, !dbg !3262
  call void @llvm.memset.p0i8.i64(i8* align 8 %198, i8 0, i64 256, i1 false), !dbg !3262
  %199 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i64 0, i64 0, !dbg !3263
  %200 = bitcast i64* %199 to i8*, !dbg !3263
  %201 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3263
  %202 = bitcast i64* %201 to i8*, !dbg !3263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %202, i64 200, i1 false), !dbg !3263
  call void @llvm.dbg.declare(metadata i32* %40, metadata !3264, metadata !DIExpression()), !dbg !3266
  store i32 0, i32* %40, align 4, !dbg !3266
  br label %203, !dbg !3267

203:                                              ; preds = %217, %196
  %204 = load i32, i32* %40, align 4, !dbg !3268
  %205 = icmp ult i32 %204, 32, !dbg !3270
  br i1 %205, label %206, label %220, !dbg !3271

206:                                              ; preds = %203
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0, !dbg !3272
  %208 = load i32, i32* %40, align 4, !dbg !3272
  %209 = mul i32 %208, 8, !dbg !3272
  %210 = zext i32 %209 to i64, !dbg !3272
  %211 = getelementptr inbounds i8, i8* %207, i64 %210, !dbg !3272
  %212 = load i32, i32* %40, align 4, !dbg !3272
  %213 = zext i32 %212 to i64, !dbg !3272
  %214 = getelementptr inbounds [32 x i64], [32 x i64]* %39, i64 0, i64 %213, !dbg !3272
  %215 = load i64, i64* %214, align 8, !dbg !3272
  %216 = call i64 @__uint64_identity(i64 noundef %215), !dbg !3272
  call void @store64(i8* noundef %211, i64 noundef %216), !dbg !3272
  br label %217, !dbg !3274

217:                                              ; preds = %206
  %218 = load i32, i32* %40, align 4, !dbg !3275
  %219 = add i32 %218, 1, !dbg !3275
  store i32 %219, i32* %40, align 4, !dbg !3275
  br label %203, !dbg !3276, !llvm.loop !3277

220:                                              ; preds = %203
  %221 = load i8*, i8** %24, align 8, !dbg !3279
  %222 = getelementptr inbounds i8, i8* %221, i64 64, !dbg !3280
  %223 = load i32, i32* %37, align 4, !dbg !3281
  %224 = zext i32 %223 to i64, !dbg !3282
  %225 = sub i64 0, %224, !dbg !3282
  %226 = getelementptr inbounds i8, i8* %222, i64 %225, !dbg !3282
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0, !dbg !3283
  %228 = load i32, i32* %37, align 4, !dbg !3284
  %229 = zext i32 %228 to i64, !dbg !3284
  %230 = mul i64 %229, 1, !dbg !3285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %226, i8* align 1 %227, i64 %230, i1 false), !dbg !3283
  call void @llvm.dbg.declare(metadata i8** %41, metadata !3286, metadata !DIExpression()), !dbg !3287
  %231 = getelementptr inbounds [72 x i8], [72 x i8]* %15, i64 0, i64 0, !dbg !3288
  store i8* %231, i8** %41, align 8, !dbg !3287
  %232 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3289
  call void @Hacl_Hash_SHA3_init_(i8 noundef zeroext 11, i64* noundef %232), !dbg !3290
  call void @llvm.dbg.declare(metadata i32* %42, metadata !3291, metadata !DIExpression()), !dbg !3292
  store i32 72, i32* %42, align 4, !dbg !3292
  call void @llvm.dbg.declare(metadata i32* %43, metadata !3293, metadata !DIExpression()), !dbg !3294
  %233 = load i32, i32* %42, align 4, !dbg !3295
  %234 = udiv i32 64, %233, !dbg !3296
  store i32 %234, i32* %43, align 4, !dbg !3294
  call void @llvm.dbg.declare(metadata i32* %44, metadata !3297, metadata !DIExpression()), !dbg !3298
  %235 = load i32, i32* %42, align 4, !dbg !3299
  %236 = urem i32 64, %235, !dbg !3300
  store i32 %236, i32* %44, align 4, !dbg !3298
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %45, metadata !3301, metadata !DIExpression()), !dbg !3302
  %237 = load i32, i32* %43, align 4, !dbg !3303
  %238 = icmp ugt i32 %237, 0, !dbg !3305
  br i1 %238, label %239, label %254, !dbg !3306

239:                                              ; preds = %220
  %240 = load i32, i32* %44, align 4, !dbg !3307
  %241 = icmp eq i32 %240, 0, !dbg !3308
  br i1 %241, label %242, label %254, !dbg !3309

242:                                              ; preds = %239
  call void @llvm.dbg.declare(metadata i32* %46, metadata !3310, metadata !DIExpression()), !dbg !3312
  %243 = load i32, i32* %43, align 4, !dbg !3313
  %244 = sub i32 %243, 1, !dbg !3314
  store i32 %244, i32* %46, align 4, !dbg !3312
  %245 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 0, !dbg !3315
  %246 = load i32, i32* %46, align 4, !dbg !3316
  store i32 %246, i32* %245, align 4, !dbg !3315
  %247 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %47, i32 0, i32 1, !dbg !3315
  %248 = load i32, i32* %46, align 4, !dbg !3317
  %249 = load i32, i32* %42, align 4, !dbg !3318
  %250 = mul i32 %248, %249, !dbg !3319
  %251 = sub i32 64, %250, !dbg !3320
  store i32 %251, i32* %247, align 4, !dbg !3315
  %252 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !3321
  %253 = bitcast %struct.K___uint32_t_uint32_t_s* %47 to i8*, !dbg !3321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 8, i1 false), !dbg !3321
  br label %261, !dbg !3322

254:                                              ; preds = %239, %220
  %255 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !3323
  %256 = load i32, i32* %43, align 4, !dbg !3325
  store i32 %256, i32* %255, align 4, !dbg !3323
  %257 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !3323
  %258 = load i32, i32* %44, align 4, !dbg !3326
  store i32 %258, i32* %257, align 4, !dbg !3323
  %259 = bitcast %struct.K___uint32_t_uint32_t_s* %45 to i8*, !dbg !3327
  %260 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !3327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %259, i8* align 4 %260, i64 8, i1 false), !dbg !3327
  br label %261

261:                                              ; preds = %254, %242
  call void @llvm.dbg.declare(metadata i32* %49, metadata !3328, metadata !DIExpression()), !dbg !3329
  %262 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 0, !dbg !3330
  %263 = load i32, i32* %262, align 4, !dbg !3330
  store i32 %263, i32* %49, align 4, !dbg !3329
  call void @llvm.dbg.declare(metadata i32* %50, metadata !3331, metadata !DIExpression()), !dbg !3332
  %264 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %45, i32 0, i32 1, !dbg !3333
  %265 = load i32, i32* %264, align 4, !dbg !3333
  store i32 %265, i32* %50, align 4, !dbg !3332
  call void @llvm.dbg.declare(metadata i32* %51, metadata !3334, metadata !DIExpression()), !dbg !3335
  %266 = load i32, i32* %49, align 4, !dbg !3336
  %267 = load i32, i32* %42, align 4, !dbg !3337
  %268 = mul i32 %266, %267, !dbg !3338
  store i32 %268, i32* %51, align 4, !dbg !3335
  call void @llvm.dbg.declare(metadata i8** %52, metadata !3339, metadata !DIExpression()), !dbg !3340
  %269 = load i8*, i8** %41, align 8, !dbg !3341
  store i8* %269, i8** %52, align 8, !dbg !3340
  call void @llvm.dbg.declare(metadata i8** %53, metadata !3342, metadata !DIExpression()), !dbg !3343
  %270 = load i8*, i8** %41, align 8, !dbg !3344
  %271 = load i32, i32* %51, align 4, !dbg !3345
  %272 = zext i32 %271 to i64, !dbg !3346
  %273 = getelementptr inbounds i8, i8* %270, i64 %272, !dbg !3346
  store i8* %273, i8** %53, align 8, !dbg !3343
  %274 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3347
  %275 = getelementptr inbounds [72 x i8], [72 x i8]* %19, i64 0, i64 0, !dbg !3348
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, i64* noundef %274, i8* noundef %275, i32 noundef signext 1), !dbg !3349
  %276 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3350
  %277 = load i8*, i8** %52, align 8, !dbg !3351
  %278 = load i32, i32* %49, align 4, !dbg !3352
  call void @Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, i64* noundef %276, i8* noundef %277, i32 noundef signext %278), !dbg !3353
  %279 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3354
  %280 = load i8*, i8** %53, align 8, !dbg !3355
  %281 = load i32, i32* %50, align 4, !dbg !3356
  call void @Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 11, i64* noundef %279, i8* noundef %280, i32 noundef signext %281), !dbg !3357
  call void @llvm.dbg.declare(metadata i32* %54, metadata !3358, metadata !DIExpression()), !dbg !3359
  store i32 64, i32* %54, align 4, !dbg !3359
  call void @llvm.dbg.declare(metadata [256 x i8]* %55, metadata !3360, metadata !DIExpression()), !dbg !3361
  %282 = bitcast [256 x i8]* %55 to i8*, !dbg !3361
  call void @llvm.memset.p0i8.i64(i8* align 1 %282, i8 0, i64 256, i1 false), !dbg !3361
  call void @llvm.dbg.declare(metadata [32 x i64]* %56, metadata !3362, metadata !DIExpression()), !dbg !3363
  %283 = bitcast [32 x i64]* %56 to i8*, !dbg !3363
  call void @llvm.memset.p0i8.i64(i8* align 8 %283, i8 0, i64 256, i1 false), !dbg !3363
  %284 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i64 0, i64 0, !dbg !3364
  %285 = bitcast i64* %284 to i8*, !dbg !3364
  %286 = getelementptr inbounds [25 x i64], [25 x i64]* %23, i64 0, i64 0, !dbg !3364
  %287 = bitcast i64* %286 to i8*, !dbg !3364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %285, i8* align 8 %287, i64 200, i1 false), !dbg !3364
  call void @llvm.dbg.declare(metadata i32* %57, metadata !3365, metadata !DIExpression()), !dbg !3367
  store i32 0, i32* %57, align 4, !dbg !3367
  br label %288, !dbg !3368

288:                                              ; preds = %302, %261
  %289 = load i32, i32* %57, align 4, !dbg !3369
  %290 = icmp ult i32 %289, 32, !dbg !3371
  br i1 %290, label %291, label %305, !dbg !3372

291:                                              ; preds = %288
  %292 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i64 0, i64 0, !dbg !3373
  %293 = load i32, i32* %57, align 4, !dbg !3373
  %294 = mul i32 %293, 8, !dbg !3373
  %295 = zext i32 %294 to i64, !dbg !3373
  %296 = getelementptr inbounds i8, i8* %292, i64 %295, !dbg !3373
  %297 = load i32, i32* %57, align 4, !dbg !3373
  %298 = zext i32 %297 to i64, !dbg !3373
  %299 = getelementptr inbounds [32 x i64], [32 x i64]* %56, i64 0, i64 %298, !dbg !3373
  %300 = load i64, i64* %299, align 8, !dbg !3373
  %301 = call i64 @__uint64_identity(i64 noundef %300), !dbg !3373
  call void @store64(i8* noundef %296, i64 noundef %301), !dbg !3373
  br label %302, !dbg !3375

302:                                              ; preds = %291
  %303 = load i32, i32* %57, align 4, !dbg !3376
  %304 = add i32 %303, 1, !dbg !3376
  store i32 %304, i32* %57, align 4, !dbg !3376
  br label %288, !dbg !3377, !llvm.loop !3378

305:                                              ; preds = %288
  %306 = load i8*, i8** %6, align 8, !dbg !3380
  %307 = getelementptr inbounds i8, i8* %306, i64 64, !dbg !3381
  %308 = load i32, i32* %54, align 4, !dbg !3382
  %309 = zext i32 %308 to i64, !dbg !3383
  %310 = sub i64 0, %309, !dbg !3383
  %311 = getelementptr inbounds i8, i8* %307, i64 %310, !dbg !3383
  %312 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i64 0, i64 0, !dbg !3384
  %313 = load i32, i32* %54, align 4, !dbg !3385
  %314 = zext i32 %313 to i64, !dbg !3385
  %315 = mul i64 %314, 1, !dbg !3386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %311, i8* align 1 %312, i64 %315, i1 false), !dbg !3384
  ret void, !dbg !3387
}

declare dso_local void @Hacl_Hash_SHA3_sha3_512(i8* noundef, i8* noundef, i32 noundef signext) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_blake2s_32(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !3388 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [64 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [16 x i32], align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
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
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca [16 x i32], align 4
  %40 = alloca [16 x i32], align 4
  %41 = alloca [16 x i32], align 4
  %42 = alloca i8*, align 8
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
  %53 = alloca i8*, align 8
  %54 = alloca i8*, align 8
  %55 = alloca [16 x i32], align 4
  %56 = alloca [16 x i32], align 4
  %57 = alloca [16 x i32], align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3389, metadata !DIExpression()), !dbg !3390
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3391, metadata !DIExpression()), !dbg !3392
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3393, metadata !DIExpression()), !dbg !3394
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3395, metadata !DIExpression()), !dbg !3396
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !3399, metadata !DIExpression()), !dbg !3400
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !3401
  call void @llvm.memset.p0i8.i64(i8* align 1 %58, i8 0, i64 64, i1 false), !dbg !3401
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3402, metadata !DIExpression()), !dbg !3403
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !3404
  store i8* %59, i8** %12, align 8, !dbg !3403
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3405, metadata !DIExpression()), !dbg !3406
  %60 = load i32, i32* %8, align 4, !dbg !3407
  %61 = icmp ule i32 %60, 64, !dbg !3409
  br i1 %61, label %62, label %64, !dbg !3410

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !3411
  store i32 %63, i32* %13, align 4, !dbg !3413
  br label %65, !dbg !3414

64:                                               ; preds = %5
  store i32 32, i32* %13, align 4, !dbg !3415
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3417, metadata !DIExpression()), !dbg !3418
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !3419
  %67 = load i32, i32* %13, align 4, !dbg !3420
  %68 = zext i32 %67 to i64, !dbg !3421
  %69 = getelementptr inbounds i8, i8* %66, i64 %68, !dbg !3421
  store i8* %69, i8** %14, align 8, !dbg !3418
  %70 = load i8*, i8** %14, align 8, !dbg !3422
  %71 = load i32, i32* %8, align 4, !dbg !3423
  %72 = icmp ule i32 %71, 64, !dbg !3425
  br i1 %72, label %73, label %79, !dbg !3426

73:                                               ; preds = %65
  %74 = load i8*, i8** %12, align 8, !dbg !3427
  %75 = load i8*, i8** %7, align 8, !dbg !3429
  %76 = load i32, i32* %8, align 4, !dbg !3430
  %77 = zext i32 %76 to i64, !dbg !3430
  %78 = mul i64 %77, 1, !dbg !3431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 %78, i1 false), !dbg !3432
  br label %83, !dbg !3433

79:                                               ; preds = %65
  %80 = load i8*, i8** %12, align 8, !dbg !3434
  %81 = load i8*, i8** %7, align 8, !dbg !3436
  %82 = load i32, i32* %8, align 4, !dbg !3437
  call void @Hacl_Hash_Blake2s_hash_with_key(i8* noundef %80, i32 noundef signext 32, i8* noundef %81, i32 noundef signext %82, i8* noundef null, i32 noundef signext 0), !dbg !3438
  br label %83

83:                                               ; preds = %79, %73
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !3439, metadata !DIExpression()), !dbg !3440
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !3441
  call void @llvm.memset.p0i8.i64(i8* align 1 %84, i8 54, i64 64, i1 false), !dbg !3441
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3442, metadata !DIExpression()), !dbg !3444
  store i32 0, i32* %16, align 4, !dbg !3444
  br label %85, !dbg !3445

85:                                               ; preds = %106, %83
  %86 = load i32, i32* %16, align 4, !dbg !3446
  %87 = icmp ult i32 %86, 64, !dbg !3448
  br i1 %87, label %88, label %109, !dbg !3449

88:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata i8* %17, metadata !3450, metadata !DIExpression()), !dbg !3452
  %89 = load i32, i32* %16, align 4, !dbg !3453
  %90 = zext i32 %89 to i64, !dbg !3454
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %90, !dbg !3454
  %92 = load i8, i8* %91, align 1, !dbg !3454
  store i8 %92, i8* %17, align 1, !dbg !3452
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3455, metadata !DIExpression()), !dbg !3456
  %93 = load i32, i32* %16, align 4, !dbg !3457
  %94 = zext i32 %93 to i64, !dbg !3458
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %94, !dbg !3458
  %96 = load i8, i8* %95, align 1, !dbg !3458
  store i8 %96, i8* %18, align 1, !dbg !3456
  %97 = load i8, i8* %17, align 1, !dbg !3459
  %98 = zext i8 %97 to i32, !dbg !3460
  %99 = load i8, i8* %18, align 1, !dbg !3461
  %100 = zext i8 %99 to i32, !dbg !3462
  %101 = xor i32 %98, %100, !dbg !3463
  %102 = trunc i32 %101 to i8, !dbg !3460
  %103 = load i32, i32* %16, align 4, !dbg !3464
  %104 = zext i32 %103 to i64, !dbg !3465
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %104, !dbg !3465
  store i8 %102, i8* %105, align 1, !dbg !3466
  br label %106, !dbg !3467

106:                                              ; preds = %88
  %107 = load i32, i32* %16, align 4, !dbg !3468
  %108 = add i32 %107, 1, !dbg !3468
  store i32 %108, i32* %16, align 4, !dbg !3468
  br label %85, !dbg !3469, !llvm.loop !3470

109:                                              ; preds = %85
  call void @llvm.dbg.declare(metadata [64 x i8]* %19, metadata !3472, metadata !DIExpression()), !dbg !3473
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !3474
  call void @llvm.memset.p0i8.i64(i8* align 1 %110, i8 92, i64 64, i1 false), !dbg !3474
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3475, metadata !DIExpression()), !dbg !3477
  store i32 0, i32* %20, align 4, !dbg !3477
  br label %111, !dbg !3478

111:                                              ; preds = %132, %109
  %112 = load i32, i32* %20, align 4, !dbg !3479
  %113 = icmp ult i32 %112, 64, !dbg !3481
  br i1 %113, label %114, label %135, !dbg !3482

114:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata i8* %21, metadata !3483, metadata !DIExpression()), !dbg !3485
  %115 = load i32, i32* %20, align 4, !dbg !3486
  %116 = zext i32 %115 to i64, !dbg !3487
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %116, !dbg !3487
  %118 = load i8, i8* %117, align 1, !dbg !3487
  store i8 %118, i8* %21, align 1, !dbg !3485
  call void @llvm.dbg.declare(metadata i8* %22, metadata !3488, metadata !DIExpression()), !dbg !3489
  %119 = load i32, i32* %20, align 4, !dbg !3490
  %120 = zext i32 %119 to i64, !dbg !3491
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %120, !dbg !3491
  %122 = load i8, i8* %121, align 1, !dbg !3491
  store i8 %122, i8* %22, align 1, !dbg !3489
  %123 = load i8, i8* %21, align 1, !dbg !3492
  %124 = zext i8 %123 to i32, !dbg !3493
  %125 = load i8, i8* %22, align 1, !dbg !3494
  %126 = zext i8 %125 to i32, !dbg !3495
  %127 = xor i32 %124, %126, !dbg !3496
  %128 = trunc i32 %127 to i8, !dbg !3493
  %129 = load i32, i32* %20, align 4, !dbg !3497
  %130 = zext i32 %129 to i64, !dbg !3498
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %130, !dbg !3498
  store i8 %128, i8* %131, align 1, !dbg !3499
  br label %132, !dbg !3500

132:                                              ; preds = %114
  %133 = load i32, i32* %20, align 4, !dbg !3501
  %134 = add i32 %133, 1, !dbg !3501
  store i32 %134, i32* %20, align 4, !dbg !3501
  br label %111, !dbg !3502, !llvm.loop !3503

135:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata [16 x i32]* %23, metadata !3505, metadata !DIExpression()), !dbg !3509
  %136 = bitcast [16 x i32]* %23 to i8*, !dbg !3509
  call void @llvm.memset.p0i8.i64(i8* align 4 %136, i8 0, i64 64, i1 false), !dbg !3509
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0, !dbg !3510
  call void @Hacl_Hash_Blake2s_init(i32* noundef %137, i32 noundef signext 0, i32 noundef signext 32), !dbg !3511
  call void @llvm.dbg.declare(metadata i32** %24, metadata !3512, metadata !DIExpression()), !dbg !3513
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0, !dbg !3514
  store i32* %138, i32** %24, align 8, !dbg !3513
  call void @llvm.dbg.declare(metadata i8** %25, metadata !3515, metadata !DIExpression()), !dbg !3516
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !3517
  store i8* %139, i8** %25, align 8, !dbg !3516
  %140 = load i32, i32* %10, align 4, !dbg !3518
  %141 = icmp eq i32 %140, 0, !dbg !3520
  br i1 %141, label %142, label %147, !dbg !3521

142:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata [16 x i32]* %26, metadata !3522, metadata !DIExpression()), !dbg !3524
  %143 = bitcast [16 x i32]* %26 to i8*, !dbg !3524
  call void @llvm.memset.p0i8.i64(i8* align 4 %143, i8 0, i64 64, i1 false), !dbg !3524
  %144 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0, !dbg !3525
  %145 = load i32*, i32** %24, align 8, !dbg !3526
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !3527
  call void @Hacl_Hash_Blake2s_update_last(i32 noundef signext 64, i32* noundef %144, i32* noundef %145, i1 noundef zeroext false, i64 noundef 0, i32 noundef signext 64, i8* noundef %146), !dbg !3528
  br label %214, !dbg !3529

147:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata i32* %27, metadata !3530, metadata !DIExpression()), !dbg !3532
  store i32 64, i32* %27, align 4, !dbg !3532
  call void @llvm.dbg.declare(metadata i32* %28, metadata !3533, metadata !DIExpression()), !dbg !3534
  %148 = load i32, i32* %10, align 4, !dbg !3535
  %149 = load i32, i32* %27, align 4, !dbg !3536
  %150 = udiv i32 %148, %149, !dbg !3537
  store i32 %150, i32* %28, align 4, !dbg !3534
  call void @llvm.dbg.declare(metadata i32* %29, metadata !3538, metadata !DIExpression()), !dbg !3539
  %151 = load i32, i32* %10, align 4, !dbg !3540
  %152 = load i32, i32* %27, align 4, !dbg !3541
  %153 = urem i32 %151, %152, !dbg !3542
  store i32 %153, i32* %29, align 4, !dbg !3539
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %30, metadata !3543, metadata !DIExpression()), !dbg !3544
  %154 = load i32, i32* %28, align 4, !dbg !3545
  %155 = icmp ugt i32 %154, 0, !dbg !3547
  br i1 %155, label %156, label %172, !dbg !3548

156:                                              ; preds = %147
  %157 = load i32, i32* %29, align 4, !dbg !3549
  %158 = icmp eq i32 %157, 0, !dbg !3550
  br i1 %158, label %159, label %172, !dbg !3551

159:                                              ; preds = %156
  call void @llvm.dbg.declare(metadata i32* %31, metadata !3552, metadata !DIExpression()), !dbg !3554
  %160 = load i32, i32* %28, align 4, !dbg !3555
  %161 = sub i32 %160, 1, !dbg !3556
  store i32 %161, i32* %31, align 4, !dbg !3554
  %162 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %32, i32 0, i32 0, !dbg !3557
  %163 = load i32, i32* %31, align 4, !dbg !3558
  store i32 %163, i32* %162, align 4, !dbg !3557
  %164 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %32, i32 0, i32 1, !dbg !3557
  %165 = load i32, i32* %10, align 4, !dbg !3559
  %166 = load i32, i32* %31, align 4, !dbg !3560
  %167 = load i32, i32* %27, align 4, !dbg !3561
  %168 = mul i32 %166, %167, !dbg !3562
  %169 = sub i32 %165, %168, !dbg !3563
  store i32 %169, i32* %164, align 4, !dbg !3557
  %170 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !3564
  %171 = bitcast %struct.K___uint32_t_uint32_t_s* %32 to i8*, !dbg !3564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 8, i1 false), !dbg !3564
  br label %179, !dbg !3565

172:                                              ; preds = %156, %147
  %173 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %33, i32 0, i32 0, !dbg !3566
  %174 = load i32, i32* %28, align 4, !dbg !3568
  store i32 %174, i32* %173, align 4, !dbg !3566
  %175 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %33, i32 0, i32 1, !dbg !3566
  %176 = load i32, i32* %29, align 4, !dbg !3569
  store i32 %176, i32* %175, align 4, !dbg !3566
  %177 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !3570
  %178 = bitcast %struct.K___uint32_t_uint32_t_s* %33 to i8*, !dbg !3570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 8, i1 false), !dbg !3570
  br label %179

179:                                              ; preds = %172, %159
  call void @llvm.dbg.declare(metadata i32* %34, metadata !3571, metadata !DIExpression()), !dbg !3572
  %180 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !3573
  %181 = load i32, i32* %180, align 4, !dbg !3573
  store i32 %181, i32* %34, align 4, !dbg !3572
  call void @llvm.dbg.declare(metadata i32* %35, metadata !3574, metadata !DIExpression()), !dbg !3575
  %182 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !3576
  %183 = load i32, i32* %182, align 4, !dbg !3576
  store i32 %183, i32* %35, align 4, !dbg !3575
  call void @llvm.dbg.declare(metadata i32* %36, metadata !3577, metadata !DIExpression()), !dbg !3578
  %184 = load i32, i32* %34, align 4, !dbg !3579
  %185 = load i32, i32* %27, align 4, !dbg !3580
  %186 = mul i32 %184, %185, !dbg !3581
  store i32 %186, i32* %36, align 4, !dbg !3578
  call void @llvm.dbg.declare(metadata i8** %37, metadata !3582, metadata !DIExpression()), !dbg !3583
  %187 = load i8*, i8** %9, align 8, !dbg !3584
  store i8* %187, i8** %37, align 8, !dbg !3583
  call void @llvm.dbg.declare(metadata i8** %38, metadata !3585, metadata !DIExpression()), !dbg !3586
  %188 = load i8*, i8** %9, align 8, !dbg !3587
  %189 = load i32, i32* %36, align 4, !dbg !3588
  %190 = zext i32 %189 to i64, !dbg !3589
  %191 = getelementptr inbounds i8, i8* %188, i64 %190, !dbg !3589
  store i8* %191, i8** %38, align 8, !dbg !3586
  call void @llvm.dbg.declare(metadata [16 x i32]* %39, metadata !3590, metadata !DIExpression()), !dbg !3591
  %192 = bitcast [16 x i32]* %39 to i8*, !dbg !3591
  call void @llvm.memset.p0i8.i64(i8* align 4 %192, i8 0, i64 64, i1 false), !dbg !3591
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 0, i64 0, !dbg !3592
  %194 = load i32*, i32** %24, align 8, !dbg !3593
  %195 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !3594
  call void @Hacl_Hash_Blake2s_update_multi(i32 noundef signext 64, i32* noundef %193, i32* noundef %194, i64 noundef 0, i8* noundef %195, i32 noundef signext 1), !dbg !3595
  call void @llvm.dbg.declare(metadata [16 x i32]* %40, metadata !3596, metadata !DIExpression()), !dbg !3597
  %196 = bitcast [16 x i32]* %40 to i8*, !dbg !3597
  call void @llvm.memset.p0i8.i64(i8* align 4 %196, i8 0, i64 64, i1 false), !dbg !3597
  %197 = load i32, i32* %34, align 4, !dbg !3598
  %198 = mul i32 %197, 64, !dbg !3599
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 0, !dbg !3600
  %200 = load i32*, i32** %24, align 8, !dbg !3601
  %201 = load i32, i32* %27, align 4, !dbg !3602
  %202 = zext i32 %201 to i64, !dbg !3603
  %203 = load i8*, i8** %37, align 8, !dbg !3604
  %204 = load i32, i32* %34, align 4, !dbg !3605
  call void @Hacl_Hash_Blake2s_update_multi(i32 noundef signext %198, i32* noundef %199, i32* noundef %200, i64 noundef %202, i8* noundef %203, i32 noundef signext %204), !dbg !3606
  call void @llvm.dbg.declare(metadata [16 x i32]* %41, metadata !3607, metadata !DIExpression()), !dbg !3608
  %205 = bitcast [16 x i32]* %41 to i8*, !dbg !3608
  call void @llvm.memset.p0i8.i64(i8* align 4 %205, i8 0, i64 64, i1 false), !dbg !3608
  %206 = load i32, i32* %35, align 4, !dbg !3609
  %207 = getelementptr inbounds [16 x i32], [16 x i32]* %41, i64 0, i64 0, !dbg !3610
  %208 = load i32*, i32** %24, align 8, !dbg !3611
  %209 = load i32, i32* %36, align 4, !dbg !3612
  %210 = zext i32 %209 to i64, !dbg !3613
  %211 = add i64 64, %210, !dbg !3614
  %212 = load i32, i32* %35, align 4, !dbg !3615
  %213 = load i8*, i8** %38, align 8, !dbg !3616
  call void @Hacl_Hash_Blake2s_update_last(i32 noundef signext %206, i32* noundef %207, i32* noundef %208, i1 noundef zeroext false, i64 noundef %211, i32 noundef signext %212, i8* noundef %213), !dbg !3617
  br label %214

214:                                              ; preds = %179, %142
  %215 = load i8*, i8** %25, align 8, !dbg !3618
  %216 = load i32*, i32** %24, align 8, !dbg !3619
  call void @Hacl_Hash_Blake2s_finish(i32 noundef signext 32, i8* noundef %215, i32* noundef %216), !dbg !3620
  call void @llvm.dbg.declare(metadata i8** %42, metadata !3621, metadata !DIExpression()), !dbg !3622
  %217 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0, !dbg !3623
  store i8* %217, i8** %42, align 8, !dbg !3622
  %218 = load i32*, i32** %24, align 8, !dbg !3624
  call void @Hacl_Hash_Blake2s_init(i32* noundef %218, i32 noundef signext 0, i32 noundef signext 32), !dbg !3625
  call void @llvm.dbg.declare(metadata i32* %43, metadata !3626, metadata !DIExpression()), !dbg !3627
  store i32 64, i32* %43, align 4, !dbg !3627
  call void @llvm.dbg.declare(metadata i32* %44, metadata !3628, metadata !DIExpression()), !dbg !3629
  %219 = load i32, i32* %43, align 4, !dbg !3630
  %220 = udiv i32 32, %219, !dbg !3631
  store i32 %220, i32* %44, align 4, !dbg !3629
  call void @llvm.dbg.declare(metadata i32* %45, metadata !3632, metadata !DIExpression()), !dbg !3633
  %221 = load i32, i32* %43, align 4, !dbg !3634
  %222 = urem i32 32, %221, !dbg !3635
  store i32 %222, i32* %45, align 4, !dbg !3633
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %46, metadata !3636, metadata !DIExpression()), !dbg !3637
  %223 = load i32, i32* %44, align 4, !dbg !3638
  %224 = icmp ugt i32 %223, 0, !dbg !3640
  br i1 %224, label %225, label %240, !dbg !3641

225:                                              ; preds = %214
  %226 = load i32, i32* %45, align 4, !dbg !3642
  %227 = icmp eq i32 %226, 0, !dbg !3643
  br i1 %227, label %228, label %240, !dbg !3644

228:                                              ; preds = %225
  call void @llvm.dbg.declare(metadata i32* %47, metadata !3645, metadata !DIExpression()), !dbg !3647
  %229 = load i32, i32* %44, align 4, !dbg !3648
  %230 = sub i32 %229, 1, !dbg !3649
  store i32 %230, i32* %47, align 4, !dbg !3647
  %231 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !3650
  %232 = load i32, i32* %47, align 4, !dbg !3651
  store i32 %232, i32* %231, align 4, !dbg !3650
  %233 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !3650
  %234 = load i32, i32* %47, align 4, !dbg !3652
  %235 = load i32, i32* %43, align 4, !dbg !3653
  %236 = mul i32 %234, %235, !dbg !3654
  %237 = sub i32 32, %236, !dbg !3655
  store i32 %237, i32* %233, align 4, !dbg !3650
  %238 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !3656
  %239 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !3656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %238, i8* align 4 %239, i64 8, i1 false), !dbg !3656
  br label %247, !dbg !3657

240:                                              ; preds = %225, %214
  %241 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !3658
  %242 = load i32, i32* %44, align 4, !dbg !3660
  store i32 %242, i32* %241, align 4, !dbg !3658
  %243 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !3658
  %244 = load i32, i32* %45, align 4, !dbg !3661
  store i32 %244, i32* %243, align 4, !dbg !3658
  %245 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !3662
  %246 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !3662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %245, i8* align 4 %246, i64 8, i1 false), !dbg !3662
  br label %247

247:                                              ; preds = %240, %228
  call void @llvm.dbg.declare(metadata i32* %50, metadata !3663, metadata !DIExpression()), !dbg !3664
  %248 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 0, !dbg !3665
  %249 = load i32, i32* %248, align 4, !dbg !3665
  store i32 %249, i32* %50, align 4, !dbg !3664
  call void @llvm.dbg.declare(metadata i32* %51, metadata !3666, metadata !DIExpression()), !dbg !3667
  %250 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 1, !dbg !3668
  %251 = load i32, i32* %250, align 4, !dbg !3668
  store i32 %251, i32* %51, align 4, !dbg !3667
  call void @llvm.dbg.declare(metadata i32* %52, metadata !3669, metadata !DIExpression()), !dbg !3670
  %252 = load i32, i32* %50, align 4, !dbg !3671
  %253 = load i32, i32* %43, align 4, !dbg !3672
  %254 = mul i32 %252, %253, !dbg !3673
  store i32 %254, i32* %52, align 4, !dbg !3670
  call void @llvm.dbg.declare(metadata i8** %53, metadata !3674, metadata !DIExpression()), !dbg !3675
  %255 = load i8*, i8** %42, align 8, !dbg !3676
  store i8* %255, i8** %53, align 8, !dbg !3675
  call void @llvm.dbg.declare(metadata i8** %54, metadata !3677, metadata !DIExpression()), !dbg !3678
  %256 = load i8*, i8** %42, align 8, !dbg !3679
  %257 = load i32, i32* %52, align 4, !dbg !3680
  %258 = zext i32 %257 to i64, !dbg !3681
  %259 = getelementptr inbounds i8, i8* %256, i64 %258, !dbg !3681
  store i8* %259, i8** %54, align 8, !dbg !3678
  call void @llvm.dbg.declare(metadata [16 x i32]* %55, metadata !3682, metadata !DIExpression()), !dbg !3683
  %260 = bitcast [16 x i32]* %55 to i8*, !dbg !3683
  call void @llvm.memset.p0i8.i64(i8* align 4 %260, i8 0, i64 64, i1 false), !dbg !3683
  %261 = getelementptr inbounds [16 x i32], [16 x i32]* %55, i64 0, i64 0, !dbg !3684
  %262 = load i32*, i32** %24, align 8, !dbg !3685
  %263 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0, !dbg !3686
  call void @Hacl_Hash_Blake2s_update_multi(i32 noundef signext 64, i32* noundef %261, i32* noundef %262, i64 noundef 0, i8* noundef %263, i32 noundef signext 1), !dbg !3687
  call void @llvm.dbg.declare(metadata [16 x i32]* %56, metadata !3688, metadata !DIExpression()), !dbg !3689
  %264 = bitcast [16 x i32]* %56 to i8*, !dbg !3689
  call void @llvm.memset.p0i8.i64(i8* align 4 %264, i8 0, i64 64, i1 false), !dbg !3689
  %265 = load i32, i32* %50, align 4, !dbg !3690
  %266 = mul i32 %265, 64, !dbg !3691
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %56, i64 0, i64 0, !dbg !3692
  %268 = load i32*, i32** %24, align 8, !dbg !3693
  %269 = load i32, i32* %43, align 4, !dbg !3694
  %270 = zext i32 %269 to i64, !dbg !3695
  %271 = load i8*, i8** %53, align 8, !dbg !3696
  %272 = load i32, i32* %50, align 4, !dbg !3697
  call void @Hacl_Hash_Blake2s_update_multi(i32 noundef signext %266, i32* noundef %267, i32* noundef %268, i64 noundef %270, i8* noundef %271, i32 noundef signext %272), !dbg !3698
  call void @llvm.dbg.declare(metadata [16 x i32]* %57, metadata !3699, metadata !DIExpression()), !dbg !3700
  %273 = bitcast [16 x i32]* %57 to i8*, !dbg !3700
  call void @llvm.memset.p0i8.i64(i8* align 4 %273, i8 0, i64 64, i1 false), !dbg !3700
  %274 = load i32, i32* %51, align 4, !dbg !3701
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %57, i64 0, i64 0, !dbg !3702
  %276 = load i32*, i32** %24, align 8, !dbg !3703
  %277 = load i32, i32* %52, align 4, !dbg !3704
  %278 = zext i32 %277 to i64, !dbg !3705
  %279 = add i64 64, %278, !dbg !3706
  %280 = load i32, i32* %51, align 4, !dbg !3707
  %281 = load i8*, i8** %54, align 8, !dbg !3708
  call void @Hacl_Hash_Blake2s_update_last(i32 noundef signext %274, i32* noundef %275, i32* noundef %276, i1 noundef zeroext false, i64 noundef %279, i32 noundef signext %280, i8* noundef %281), !dbg !3709
  %282 = load i8*, i8** %6, align 8, !dbg !3710
  %283 = load i32*, i32** %24, align 8, !dbg !3711
  call void @Hacl_Hash_Blake2s_finish(i32 noundef signext 32, i8* noundef %282, i32* noundef %283), !dbg !3712
  ret void, !dbg !3713
}

declare dso_local void @Hacl_Hash_Blake2s_hash_with_key(i8* noundef, i32 noundef signext, i8* noundef, i32 noundef signext, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_Blake2s_init(i32* noundef, i32 noundef signext, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_Blake2s_update_last(i32 noundef signext, i32* noundef, i32* noundef, i1 noundef zeroext, i64 noundef, i32 noundef signext, i8* noundef) #4

declare dso_local void @Hacl_Hash_Blake2s_update_multi(i32 noundef signext, i32* noundef, i32* noundef, i64 noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_Blake2s_finish(i32 noundef signext, i8* noundef, i32* noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local void @Hacl_HMAC_compute_blake2b_32(i8* noundef %0, i8* noundef %1, i32 noundef signext %2, i8* noundef %3, i32 noundef signext %4) #0 !dbg !3714 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [128 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [128 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [16 x i64], align 8
  %24 = alloca i64*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca [16 x i64], align 8
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
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca [16 x i64], align 8
  %40 = alloca [16 x i64], align 8
  %41 = alloca [16 x i64], align 8
  %42 = alloca i8*, align 8
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
  %53 = alloca i8*, align 8
  %54 = alloca i8*, align 8
  %55 = alloca [16 x i64], align 8
  %56 = alloca [16 x i64], align 8
  %57 = alloca [16 x i64], align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3715, metadata !DIExpression()), !dbg !3716
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3717, metadata !DIExpression()), !dbg !3718
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3719, metadata !DIExpression()), !dbg !3720
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3721, metadata !DIExpression()), !dbg !3722
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3723, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.declare(metadata [128 x i8]* %11, metadata !3725, metadata !DIExpression()), !dbg !3726
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0, !dbg !3727
  call void @llvm.memset.p0i8.i64(i8* align 1 %58, i8 0, i64 128, i1 false), !dbg !3727
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3728, metadata !DIExpression()), !dbg !3729
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0, !dbg !3730
  store i8* %59, i8** %12, align 8, !dbg !3729
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3731, metadata !DIExpression()), !dbg !3732
  %60 = load i32, i32* %8, align 4, !dbg !3733
  %61 = icmp ule i32 %60, 128, !dbg !3735
  br i1 %61, label %62, label %64, !dbg !3736

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4, !dbg !3737
  store i32 %63, i32* %13, align 4, !dbg !3739
  br label %65, !dbg !3740

64:                                               ; preds = %5
  store i32 64, i32* %13, align 4, !dbg !3741
  br label %65

65:                                               ; preds = %64, %62
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3743, metadata !DIExpression()), !dbg !3744
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0, !dbg !3745
  %67 = load i32, i32* %13, align 4, !dbg !3746
  %68 = zext i32 %67 to i64, !dbg !3747
  %69 = getelementptr inbounds i8, i8* %66, i64 %68, !dbg !3747
  store i8* %69, i8** %14, align 8, !dbg !3744
  %70 = load i8*, i8** %14, align 8, !dbg !3748
  %71 = load i32, i32* %8, align 4, !dbg !3749
  %72 = icmp ule i32 %71, 128, !dbg !3751
  br i1 %72, label %73, label %79, !dbg !3752

73:                                               ; preds = %65
  %74 = load i8*, i8** %12, align 8, !dbg !3753
  %75 = load i8*, i8** %7, align 8, !dbg !3755
  %76 = load i32, i32* %8, align 4, !dbg !3756
  %77 = zext i32 %76 to i64, !dbg !3756
  %78 = mul i64 %77, 1, !dbg !3757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 %78, i1 false), !dbg !3758
  br label %83, !dbg !3759

79:                                               ; preds = %65
  %80 = load i8*, i8** %12, align 8, !dbg !3760
  %81 = load i8*, i8** %7, align 8, !dbg !3762
  %82 = load i32, i32* %8, align 4, !dbg !3763
  call void @Hacl_Hash_Blake2b_hash_with_key(i8* noundef %80, i32 noundef signext 64, i8* noundef %81, i32 noundef signext %82, i8* noundef null, i32 noundef signext 0), !dbg !3764
  br label %83

83:                                               ; preds = %79, %73
  call void @llvm.dbg.declare(metadata [128 x i8]* %15, metadata !3765, metadata !DIExpression()), !dbg !3766
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !3767
  call void @llvm.memset.p0i8.i64(i8* align 1 %84, i8 54, i64 128, i1 false), !dbg !3767
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3768, metadata !DIExpression()), !dbg !3770
  store i32 0, i32* %16, align 4, !dbg !3770
  br label %85, !dbg !3771

85:                                               ; preds = %106, %83
  %86 = load i32, i32* %16, align 4, !dbg !3772
  %87 = icmp ult i32 %86, 128, !dbg !3774
  br i1 %87, label %88, label %109, !dbg !3775

88:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata i8* %17, metadata !3776, metadata !DIExpression()), !dbg !3778
  %89 = load i32, i32* %16, align 4, !dbg !3779
  %90 = zext i32 %89 to i64, !dbg !3780
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 %90, !dbg !3780
  %92 = load i8, i8* %91, align 1, !dbg !3780
  store i8 %92, i8* %17, align 1, !dbg !3778
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3781, metadata !DIExpression()), !dbg !3782
  %93 = load i32, i32* %16, align 4, !dbg !3783
  %94 = zext i32 %93 to i64, !dbg !3784
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %94, !dbg !3784
  %96 = load i8, i8* %95, align 1, !dbg !3784
  store i8 %96, i8* %18, align 1, !dbg !3782
  %97 = load i8, i8* %17, align 1, !dbg !3785
  %98 = zext i8 %97 to i32, !dbg !3786
  %99 = load i8, i8* %18, align 1, !dbg !3787
  %100 = zext i8 %99 to i32, !dbg !3788
  %101 = xor i32 %98, %100, !dbg !3789
  %102 = trunc i32 %101 to i8, !dbg !3786
  %103 = load i32, i32* %16, align 4, !dbg !3790
  %104 = zext i32 %103 to i64, !dbg !3791
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 %104, !dbg !3791
  store i8 %102, i8* %105, align 1, !dbg !3792
  br label %106, !dbg !3793

106:                                              ; preds = %88
  %107 = load i32, i32* %16, align 4, !dbg !3794
  %108 = add i32 %107, 1, !dbg !3794
  store i32 %108, i32* %16, align 4, !dbg !3794
  br label %85, !dbg !3795, !llvm.loop !3796

109:                                              ; preds = %85
  call void @llvm.dbg.declare(metadata [128 x i8]* %19, metadata !3798, metadata !DIExpression()), !dbg !3799
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !3800
  call void @llvm.memset.p0i8.i64(i8* align 1 %110, i8 92, i64 128, i1 false), !dbg !3800
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3801, metadata !DIExpression()), !dbg !3803
  store i32 0, i32* %20, align 4, !dbg !3803
  br label %111, !dbg !3804

111:                                              ; preds = %132, %109
  %112 = load i32, i32* %20, align 4, !dbg !3805
  %113 = icmp ult i32 %112, 128, !dbg !3807
  br i1 %113, label %114, label %135, !dbg !3808

114:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata i8* %21, metadata !3809, metadata !DIExpression()), !dbg !3811
  %115 = load i32, i32* %20, align 4, !dbg !3812
  %116 = zext i32 %115 to i64, !dbg !3813
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 %116, !dbg !3813
  %118 = load i8, i8* %117, align 1, !dbg !3813
  store i8 %118, i8* %21, align 1, !dbg !3811
  call void @llvm.dbg.declare(metadata i8* %22, metadata !3814, metadata !DIExpression()), !dbg !3815
  %119 = load i32, i32* %20, align 4, !dbg !3816
  %120 = zext i32 %119 to i64, !dbg !3817
  %121 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %120, !dbg !3817
  %122 = load i8, i8* %121, align 1, !dbg !3817
  store i8 %122, i8* %22, align 1, !dbg !3815
  %123 = load i8, i8* %21, align 1, !dbg !3818
  %124 = zext i8 %123 to i32, !dbg !3819
  %125 = load i8, i8* %22, align 1, !dbg !3820
  %126 = zext i8 %125 to i32, !dbg !3821
  %127 = xor i32 %124, %126, !dbg !3822
  %128 = trunc i32 %127 to i8, !dbg !3819
  %129 = load i32, i32* %20, align 4, !dbg !3823
  %130 = zext i32 %129 to i64, !dbg !3824
  %131 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 %130, !dbg !3824
  store i8 %128, i8* %131, align 1, !dbg !3825
  br label %132, !dbg !3826

132:                                              ; preds = %114
  %133 = load i32, i32* %20, align 4, !dbg !3827
  %134 = add i32 %133, 1, !dbg !3827
  store i32 %134, i32* %20, align 4, !dbg !3827
  br label %111, !dbg !3828, !llvm.loop !3829

135:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata [16 x i64]* %23, metadata !3831, metadata !DIExpression()), !dbg !3833
  %136 = bitcast [16 x i64]* %23 to i8*, !dbg !3833
  call void @llvm.memset.p0i8.i64(i8* align 8 %136, i8 0, i64 128, i1 false), !dbg !3833
  %137 = getelementptr inbounds [16 x i64], [16 x i64]* %23, i64 0, i64 0, !dbg !3834
  call void @Hacl_Hash_Blake2b_init(i64* noundef %137, i32 noundef signext 0, i32 noundef signext 64), !dbg !3835
  call void @llvm.dbg.declare(metadata i64** %24, metadata !3836, metadata !DIExpression()), !dbg !3837
  %138 = getelementptr inbounds [16 x i64], [16 x i64]* %23, i64 0, i64 0, !dbg !3838
  store i64* %138, i64** %24, align 8, !dbg !3837
  call void @llvm.dbg.declare(metadata i8** %25, metadata !3839, metadata !DIExpression()), !dbg !3840
  %139 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !3841
  store i8* %139, i8** %25, align 8, !dbg !3840
  %140 = load i32, i32* %10, align 4, !dbg !3842
  %141 = icmp eq i32 %140, 0, !dbg !3844
  br i1 %141, label %142, label %148, !dbg !3845

142:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata [16 x i64]* %26, metadata !3846, metadata !DIExpression()), !dbg !3848
  %143 = bitcast [16 x i64]* %26 to i8*, !dbg !3848
  call void @llvm.memset.p0i8.i64(i8* align 8 %143, i8 0, i64 128, i1 false), !dbg !3848
  %144 = getelementptr inbounds [16 x i64], [16 x i64]* %26, i64 0, i64 0, !dbg !3849
  %145 = load i64*, i64** %24, align 8, !dbg !3850
  %146 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 0), !dbg !3851
  %147 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !3852
  call void @Hacl_Hash_Blake2b_update_last(i32 noundef signext 128, i64* noundef %144, i64* noundef %145, i1 noundef zeroext false, i128 noundef %146, i32 noundef signext 128, i8* noundef %147), !dbg !3853
  br label %219, !dbg !3854

148:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata i32* %27, metadata !3855, metadata !DIExpression()), !dbg !3857
  store i32 128, i32* %27, align 4, !dbg !3857
  call void @llvm.dbg.declare(metadata i32* %28, metadata !3858, metadata !DIExpression()), !dbg !3859
  %149 = load i32, i32* %10, align 4, !dbg !3860
  %150 = load i32, i32* %27, align 4, !dbg !3861
  %151 = udiv i32 %149, %150, !dbg !3862
  store i32 %151, i32* %28, align 4, !dbg !3859
  call void @llvm.dbg.declare(metadata i32* %29, metadata !3863, metadata !DIExpression()), !dbg !3864
  %152 = load i32, i32* %10, align 4, !dbg !3865
  %153 = load i32, i32* %27, align 4, !dbg !3866
  %154 = urem i32 %152, %153, !dbg !3867
  store i32 %154, i32* %29, align 4, !dbg !3864
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %30, metadata !3868, metadata !DIExpression()), !dbg !3869
  %155 = load i32, i32* %28, align 4, !dbg !3870
  %156 = icmp ugt i32 %155, 0, !dbg !3872
  br i1 %156, label %157, label %173, !dbg !3873

157:                                              ; preds = %148
  %158 = load i32, i32* %29, align 4, !dbg !3874
  %159 = icmp eq i32 %158, 0, !dbg !3875
  br i1 %159, label %160, label %173, !dbg !3876

160:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata i32* %31, metadata !3877, metadata !DIExpression()), !dbg !3879
  %161 = load i32, i32* %28, align 4, !dbg !3880
  %162 = sub i32 %161, 1, !dbg !3881
  store i32 %162, i32* %31, align 4, !dbg !3879
  %163 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %32, i32 0, i32 0, !dbg !3882
  %164 = load i32, i32* %31, align 4, !dbg !3883
  store i32 %164, i32* %163, align 4, !dbg !3882
  %165 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %32, i32 0, i32 1, !dbg !3882
  %166 = load i32, i32* %10, align 4, !dbg !3884
  %167 = load i32, i32* %31, align 4, !dbg !3885
  %168 = load i32, i32* %27, align 4, !dbg !3886
  %169 = mul i32 %167, %168, !dbg !3887
  %170 = sub i32 %166, %169, !dbg !3888
  store i32 %170, i32* %165, align 4, !dbg !3882
  %171 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !3889
  %172 = bitcast %struct.K___uint32_t_uint32_t_s* %32 to i8*, !dbg !3889
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 4 %172, i64 8, i1 false), !dbg !3889
  br label %180, !dbg !3890

173:                                              ; preds = %157, %148
  %174 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %33, i32 0, i32 0, !dbg !3891
  %175 = load i32, i32* %28, align 4, !dbg !3893
  store i32 %175, i32* %174, align 4, !dbg !3891
  %176 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %33, i32 0, i32 1, !dbg !3891
  %177 = load i32, i32* %29, align 4, !dbg !3894
  store i32 %177, i32* %176, align 4, !dbg !3891
  %178 = bitcast %struct.K___uint32_t_uint32_t_s* %30 to i8*, !dbg !3895
  %179 = bitcast %struct.K___uint32_t_uint32_t_s* %33 to i8*, !dbg !3895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 8, i1 false), !dbg !3895
  br label %180

180:                                              ; preds = %173, %160
  call void @llvm.dbg.declare(metadata i32* %34, metadata !3896, metadata !DIExpression()), !dbg !3897
  %181 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 0, !dbg !3898
  %182 = load i32, i32* %181, align 4, !dbg !3898
  store i32 %182, i32* %34, align 4, !dbg !3897
  call void @llvm.dbg.declare(metadata i32* %35, metadata !3899, metadata !DIExpression()), !dbg !3900
  %183 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %30, i32 0, i32 1, !dbg !3901
  %184 = load i32, i32* %183, align 4, !dbg !3901
  store i32 %184, i32* %35, align 4, !dbg !3900
  call void @llvm.dbg.declare(metadata i32* %36, metadata !3902, metadata !DIExpression()), !dbg !3903
  %185 = load i32, i32* %34, align 4, !dbg !3904
  %186 = load i32, i32* %27, align 4, !dbg !3905
  %187 = mul i32 %185, %186, !dbg !3906
  store i32 %187, i32* %36, align 4, !dbg !3903
  call void @llvm.dbg.declare(metadata i8** %37, metadata !3907, metadata !DIExpression()), !dbg !3908
  %188 = load i8*, i8** %9, align 8, !dbg !3909
  store i8* %188, i8** %37, align 8, !dbg !3908
  call void @llvm.dbg.declare(metadata i8** %38, metadata !3910, metadata !DIExpression()), !dbg !3911
  %189 = load i8*, i8** %9, align 8, !dbg !3912
  %190 = load i32, i32* %36, align 4, !dbg !3913
  %191 = zext i32 %190 to i64, !dbg !3914
  %192 = getelementptr inbounds i8, i8* %189, i64 %191, !dbg !3914
  store i8* %192, i8** %38, align 8, !dbg !3911
  call void @llvm.dbg.declare(metadata [16 x i64]* %39, metadata !3915, metadata !DIExpression()), !dbg !3916
  %193 = bitcast [16 x i64]* %39 to i8*, !dbg !3916
  call void @llvm.memset.p0i8.i64(i8* align 8 %193, i8 0, i64 128, i1 false), !dbg !3916
  %194 = getelementptr inbounds [16 x i64], [16 x i64]* %39, i64 0, i64 0, !dbg !3917
  %195 = load i64*, i64** %24, align 8, !dbg !3918
  %196 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 0), !dbg !3919
  %197 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !3920
  call void @Hacl_Hash_Blake2b_update_multi(i32 noundef signext 128, i64* noundef %194, i64* noundef %195, i128 noundef %196, i8* noundef %197, i32 noundef signext 1), !dbg !3921
  call void @llvm.dbg.declare(metadata [16 x i64]* %40, metadata !3922, metadata !DIExpression()), !dbg !3923
  %198 = bitcast [16 x i64]* %40 to i8*, !dbg !3923
  call void @llvm.memset.p0i8.i64(i8* align 8 %198, i8 0, i64 128, i1 false), !dbg !3923
  %199 = load i32, i32* %34, align 4, !dbg !3924
  %200 = mul i32 %199, 128, !dbg !3925
  %201 = getelementptr inbounds [16 x i64], [16 x i64]* %40, i64 0, i64 0, !dbg !3926
  %202 = load i64*, i64** %24, align 8, !dbg !3927
  %203 = load i32, i32* %27, align 4, !dbg !3928
  %204 = zext i32 %203 to i64, !dbg !3929
  %205 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %204), !dbg !3930
  %206 = load i8*, i8** %37, align 8, !dbg !3931
  %207 = load i32, i32* %34, align 4, !dbg !3932
  call void @Hacl_Hash_Blake2b_update_multi(i32 noundef signext %200, i64* noundef %201, i64* noundef %202, i128 noundef %205, i8* noundef %206, i32 noundef signext %207), !dbg !3933
  call void @llvm.dbg.declare(metadata [16 x i64]* %41, metadata !3934, metadata !DIExpression()), !dbg !3935
  %208 = bitcast [16 x i64]* %41 to i8*, !dbg !3935
  call void @llvm.memset.p0i8.i64(i8* align 8 %208, i8 0, i64 128, i1 false), !dbg !3935
  %209 = load i32, i32* %35, align 4, !dbg !3936
  %210 = getelementptr inbounds [16 x i64], [16 x i64]* %41, i64 0, i64 0, !dbg !3937
  %211 = load i64*, i64** %24, align 8, !dbg !3938
  %212 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 128), !dbg !3939
  %213 = load i32, i32* %36, align 4, !dbg !3940
  %214 = zext i32 %213 to i64, !dbg !3941
  %215 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %214), !dbg !3942
  %216 = call i128 @FStar_UInt128_add(i128 noundef %212, i128 noundef %215), !dbg !3943
  %217 = load i32, i32* %35, align 4, !dbg !3944
  %218 = load i8*, i8** %38, align 8, !dbg !3945
  call void @Hacl_Hash_Blake2b_update_last(i32 noundef signext %209, i64* noundef %210, i64* noundef %211, i1 noundef zeroext false, i128 noundef %216, i32 noundef signext %217, i8* noundef %218), !dbg !3946
  br label %219

219:                                              ; preds = %180, %142
  %220 = load i8*, i8** %25, align 8, !dbg !3947
  %221 = load i64*, i64** %24, align 8, !dbg !3948
  call void @Hacl_Hash_Blake2b_finish(i32 noundef signext 64, i8* noundef %220, i64* noundef %221), !dbg !3949
  call void @llvm.dbg.declare(metadata i8** %42, metadata !3950, metadata !DIExpression()), !dbg !3951
  %222 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0, !dbg !3952
  store i8* %222, i8** %42, align 8, !dbg !3951
  %223 = load i64*, i64** %24, align 8, !dbg !3953
  call void @Hacl_Hash_Blake2b_init(i64* noundef %223, i32 noundef signext 0, i32 noundef signext 64), !dbg !3954
  call void @llvm.dbg.declare(metadata i32* %43, metadata !3955, metadata !DIExpression()), !dbg !3956
  store i32 128, i32* %43, align 4, !dbg !3956
  call void @llvm.dbg.declare(metadata i32* %44, metadata !3957, metadata !DIExpression()), !dbg !3958
  %224 = load i32, i32* %43, align 4, !dbg !3959
  %225 = udiv i32 64, %224, !dbg !3960
  store i32 %225, i32* %44, align 4, !dbg !3958
  call void @llvm.dbg.declare(metadata i32* %45, metadata !3961, metadata !DIExpression()), !dbg !3962
  %226 = load i32, i32* %43, align 4, !dbg !3963
  %227 = urem i32 64, %226, !dbg !3964
  store i32 %227, i32* %45, align 4, !dbg !3962
  call void @llvm.dbg.declare(metadata %struct.K___uint32_t_uint32_t_s* %46, metadata !3965, metadata !DIExpression()), !dbg !3966
  %228 = load i32, i32* %44, align 4, !dbg !3967
  %229 = icmp ugt i32 %228, 0, !dbg !3969
  br i1 %229, label %230, label %245, !dbg !3970

230:                                              ; preds = %219
  %231 = load i32, i32* %45, align 4, !dbg !3971
  %232 = icmp eq i32 %231, 0, !dbg !3972
  br i1 %232, label %233, label %245, !dbg !3973

233:                                              ; preds = %230
  call void @llvm.dbg.declare(metadata i32* %47, metadata !3974, metadata !DIExpression()), !dbg !3976
  %234 = load i32, i32* %44, align 4, !dbg !3977
  %235 = sub i32 %234, 1, !dbg !3978
  store i32 %235, i32* %47, align 4, !dbg !3976
  %236 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 0, !dbg !3979
  %237 = load i32, i32* %47, align 4, !dbg !3980
  store i32 %237, i32* %236, align 4, !dbg !3979
  %238 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %48, i32 0, i32 1, !dbg !3979
  %239 = load i32, i32* %47, align 4, !dbg !3981
  %240 = load i32, i32* %43, align 4, !dbg !3982
  %241 = mul i32 %239, %240, !dbg !3983
  %242 = sub i32 64, %241, !dbg !3984
  store i32 %242, i32* %238, align 4, !dbg !3979
  %243 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !3985
  %244 = bitcast %struct.K___uint32_t_uint32_t_s* %48 to i8*, !dbg !3985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %243, i8* align 4 %244, i64 8, i1 false), !dbg !3985
  br label %252, !dbg !3986

245:                                              ; preds = %230, %219
  %246 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 0, !dbg !3987
  %247 = load i32, i32* %44, align 4, !dbg !3989
  store i32 %247, i32* %246, align 4, !dbg !3987
  %248 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %49, i32 0, i32 1, !dbg !3987
  %249 = load i32, i32* %45, align 4, !dbg !3990
  store i32 %249, i32* %248, align 4, !dbg !3987
  %250 = bitcast %struct.K___uint32_t_uint32_t_s* %46 to i8*, !dbg !3991
  %251 = bitcast %struct.K___uint32_t_uint32_t_s* %49 to i8*, !dbg !3991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %250, i8* align 4 %251, i64 8, i1 false), !dbg !3991
  br label %252

252:                                              ; preds = %245, %233
  call void @llvm.dbg.declare(metadata i32* %50, metadata !3992, metadata !DIExpression()), !dbg !3993
  %253 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 0, !dbg !3994
  %254 = load i32, i32* %253, align 4, !dbg !3994
  store i32 %254, i32* %50, align 4, !dbg !3993
  call void @llvm.dbg.declare(metadata i32* %51, metadata !3995, metadata !DIExpression()), !dbg !3996
  %255 = getelementptr inbounds %struct.K___uint32_t_uint32_t_s, %struct.K___uint32_t_uint32_t_s* %46, i32 0, i32 1, !dbg !3997
  %256 = load i32, i32* %255, align 4, !dbg !3997
  store i32 %256, i32* %51, align 4, !dbg !3996
  call void @llvm.dbg.declare(metadata i32* %52, metadata !3998, metadata !DIExpression()), !dbg !3999
  %257 = load i32, i32* %50, align 4, !dbg !4000
  %258 = load i32, i32* %43, align 4, !dbg !4001
  %259 = mul i32 %257, %258, !dbg !4002
  store i32 %259, i32* %52, align 4, !dbg !3999
  call void @llvm.dbg.declare(metadata i8** %53, metadata !4003, metadata !DIExpression()), !dbg !4004
  %260 = load i8*, i8** %42, align 8, !dbg !4005
  store i8* %260, i8** %53, align 8, !dbg !4004
  call void @llvm.dbg.declare(metadata i8** %54, metadata !4006, metadata !DIExpression()), !dbg !4007
  %261 = load i8*, i8** %42, align 8, !dbg !4008
  %262 = load i32, i32* %52, align 4, !dbg !4009
  %263 = zext i32 %262 to i64, !dbg !4010
  %264 = getelementptr inbounds i8, i8* %261, i64 %263, !dbg !4010
  store i8* %264, i8** %54, align 8, !dbg !4007
  call void @llvm.dbg.declare(metadata [16 x i64]* %55, metadata !4011, metadata !DIExpression()), !dbg !4012
  %265 = bitcast [16 x i64]* %55 to i8*, !dbg !4012
  call void @llvm.memset.p0i8.i64(i8* align 8 %265, i8 0, i64 128, i1 false), !dbg !4012
  %266 = getelementptr inbounds [16 x i64], [16 x i64]* %55, i64 0, i64 0, !dbg !4013
  %267 = load i64*, i64** %24, align 8, !dbg !4014
  %268 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 0), !dbg !4015
  %269 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !4016
  call void @Hacl_Hash_Blake2b_update_multi(i32 noundef signext 128, i64* noundef %266, i64* noundef %267, i128 noundef %268, i8* noundef %269, i32 noundef signext 1), !dbg !4017
  call void @llvm.dbg.declare(metadata [16 x i64]* %56, metadata !4018, metadata !DIExpression()), !dbg !4019
  %270 = bitcast [16 x i64]* %56 to i8*, !dbg !4019
  call void @llvm.memset.p0i8.i64(i8* align 8 %270, i8 0, i64 128, i1 false), !dbg !4019
  %271 = load i32, i32* %50, align 4, !dbg !4020
  %272 = mul i32 %271, 128, !dbg !4021
  %273 = getelementptr inbounds [16 x i64], [16 x i64]* %56, i64 0, i64 0, !dbg !4022
  %274 = load i64*, i64** %24, align 8, !dbg !4023
  %275 = load i32, i32* %43, align 4, !dbg !4024
  %276 = zext i32 %275 to i64, !dbg !4025
  %277 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %276), !dbg !4026
  %278 = load i8*, i8** %53, align 8, !dbg !4027
  %279 = load i32, i32* %50, align 4, !dbg !4028
  call void @Hacl_Hash_Blake2b_update_multi(i32 noundef signext %272, i64* noundef %273, i64* noundef %274, i128 noundef %277, i8* noundef %278, i32 noundef signext %279), !dbg !4029
  call void @llvm.dbg.declare(metadata [16 x i64]* %57, metadata !4030, metadata !DIExpression()), !dbg !4031
  %280 = bitcast [16 x i64]* %57 to i8*, !dbg !4031
  call void @llvm.memset.p0i8.i64(i8* align 8 %280, i8 0, i64 128, i1 false), !dbg !4031
  %281 = load i32, i32* %51, align 4, !dbg !4032
  %282 = getelementptr inbounds [16 x i64], [16 x i64]* %57, i64 0, i64 0, !dbg !4033
  %283 = load i64*, i64** %24, align 8, !dbg !4034
  %284 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef 128), !dbg !4035
  %285 = load i32, i32* %52, align 4, !dbg !4036
  %286 = zext i32 %285 to i64, !dbg !4037
  %287 = call i128 @FStar_UInt128_uint64_to_uint128(i64 noundef %286), !dbg !4038
  %288 = call i128 @FStar_UInt128_add(i128 noundef %284, i128 noundef %287), !dbg !4039
  %289 = load i32, i32* %51, align 4, !dbg !4040
  %290 = load i8*, i8** %54, align 8, !dbg !4041
  call void @Hacl_Hash_Blake2b_update_last(i32 noundef signext %281, i64* noundef %282, i64* noundef %283, i1 noundef zeroext false, i128 noundef %288, i32 noundef signext %289, i8* noundef %290), !dbg !4042
  %291 = load i8*, i8** %6, align 8, !dbg !4043
  %292 = load i64*, i64** %24, align 8, !dbg !4044
  call void @Hacl_Hash_Blake2b_finish(i32 noundef signext 64, i8* noundef %291, i64* noundef %292), !dbg !4045
  ret void, !dbg !4046
}

declare dso_local void @Hacl_Hash_Blake2b_hash_with_key(i8* noundef, i32 noundef signext, i8* noundef, i32 noundef signext, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_Blake2b_init(i64* noundef, i32 noundef signext, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_Blake2b_update_last(i32 noundef signext, i64* noundef, i64* noundef, i1 noundef zeroext, i128 noundef, i32 noundef signext, i8* noundef) #4

declare dso_local void @Hacl_Hash_Blake2b_update_multi(i32 noundef signext, i64* noundef, i64* noundef, i128 noundef, i8* noundef, i32 noundef signext) #4

declare dso_local void @Hacl_Hash_Blake2b_finish(i32 noundef signext, i8* noundef, i64* noundef) #4

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Hacl_Hash_SHA2_h224", scope: !2, file: !20, line: 42, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Hacl_HMAC.c", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "ee4266a4db6ab8b95c12b5b9e18cc37f")
!4 = !{!5, !10, !13}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "/usr/riscv64-linux-gnu/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "9754ebe022edbe8d7928fa709e442f0d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 41, baseType: !9)
!8 = !DIFile(filename: "/usr/riscv64-linux-gnu/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "25679ba19d359e314e48661b21f5aa1f")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 27, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 44, baseType: !12)
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !14, line: 86, baseType: !15)
!14 = !DIFile(filename: "../karamel/include/krml/internal/types.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "262263da8977e71823dd90291a398eca")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !14, line: 76, baseType: !16)
!16 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!17 = !{!0, !18, !25, !29}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "Hacl_Hash_SHA2_h256", scope: !2, file: !20, line: 50, type: !21, isLocal: true, isDefinition: true)
!20 = !DIFile(filename: "./internal/Hacl_Hash_SHA2.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "e95aba83a0c40e931fc47f7c28acc617")
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!23 = !{!24}
!24 = !DISubrange(count: 8)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "Hacl_Hash_SHA2_h384", scope: !2, file: !20, line: 58, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !23)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "Hacl_Hash_SHA2_h512", scope: !2, file: !20, line: 66, type: !27, isLocal: true, isDefinition: true)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 1, !"target-abi", !"lp64d"}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{i32 1, !"SmallDataLimit", i32 8}
!37 = !{!"Ubuntu clang version 14.0.6"}
!38 = distinct !DISubprogram(name: "Hacl_HMAC_compute_md5", scope: !3, file: !3, line: 52, type: !39, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !5, !41, !5}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 37, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !{}
!46 = !DILocalVariable(name: "dst", arg: 1, scope: !38, file: !3, line: 53, type: !41)
!47 = !DILocation(line: 53, column: 12, scope: !38)
!48 = !DILocalVariable(name: "key", arg: 2, scope: !38, file: !3, line: 54, type: !41)
!49 = !DILocation(line: 54, column: 12, scope: !38)
!50 = !DILocalVariable(name: "key_len", arg: 3, scope: !38, file: !3, line: 55, type: !5)
!51 = !DILocation(line: 55, column: 12, scope: !38)
!52 = !DILocalVariable(name: "data", arg: 4, scope: !38, file: !3, line: 56, type: !41)
!53 = !DILocation(line: 56, column: 12, scope: !38)
!54 = !DILocalVariable(name: "data_len", arg: 5, scope: !38, file: !3, line: 57, type: !5)
!55 = !DILocation(line: 57, column: 12, scope: !38)
!56 = !DILocalVariable(name: "key_block", scope: !38, file: !3, line: 60, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 512, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 64)
!60 = !DILocation(line: 60, column: 11, scope: !38)
!61 = !DILocation(line: 61, column: 3, scope: !38)
!62 = !DILocalVariable(name: "nkey", scope: !38, file: !3, line: 62, type: !41)
!63 = !DILocation(line: 62, column: 12, scope: !38)
!64 = !DILocation(line: 62, column: 19, scope: !38)
!65 = !DILocalVariable(name: "ite", scope: !38, file: !3, line: 63, type: !5)
!66 = !DILocation(line: 63, column: 12, scope: !38)
!67 = !DILocation(line: 64, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !38, file: !3, line: 64, column: 7)
!69 = !DILocation(line: 64, column: 15, scope: !68)
!70 = !DILocation(line: 64, column: 7, scope: !38)
!71 = !DILocation(line: 66, column: 11, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 65, column: 3)
!73 = !DILocation(line: 66, column: 9, scope: !72)
!74 = !DILocation(line: 67, column: 3, scope: !72)
!75 = !DILocation(line: 70, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !3, line: 69, column: 3)
!77 = !DILocalVariable(name: "zeroes", scope: !38, file: !3, line: 72, type: !41)
!78 = !DILocation(line: 72, column: 12, scope: !38)
!79 = !DILocation(line: 72, column: 21, scope: !38)
!80 = !DILocation(line: 72, column: 33, scope: !38)
!81 = !DILocation(line: 72, column: 31, scope: !38)
!82 = !DILocation(line: 73, column: 3, scope: !38)
!83 = !DILocation(line: 74, column: 7, scope: !84)
!84 = distinct !DILexicalBlock(scope: !38, file: !3, line: 74, column: 7)
!85 = !DILocation(line: 74, column: 15, scope: !84)
!86 = !DILocation(line: 74, column: 7, scope: !38)
!87 = !DILocation(line: 76, column: 12, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !3, line: 75, column: 3)
!89 = !DILocation(line: 76, column: 18, scope: !88)
!90 = !DILocation(line: 76, column: 23, scope: !88)
!91 = !DILocation(line: 76, column: 31, scope: !88)
!92 = !DILocation(line: 76, column: 5, scope: !88)
!93 = !DILocation(line: 77, column: 3, scope: !88)
!94 = !DILocation(line: 80, column: 32, scope: !95)
!95 = distinct !DILexicalBlock(scope: !84, file: !3, line: 79, column: 3)
!96 = !DILocation(line: 80, column: 38, scope: !95)
!97 = !DILocation(line: 80, column: 43, scope: !95)
!98 = !DILocation(line: 80, column: 5, scope: !95)
!99 = !DILocalVariable(name: "ipad", scope: !38, file: !3, line: 82, type: !57)
!100 = !DILocation(line: 82, column: 11, scope: !38)
!101 = !DILocation(line: 83, column: 3, scope: !38)
!102 = !DILocalVariable(name: "i", scope: !103, file: !3, line: 84, type: !5)
!103 = distinct !DILexicalBlock(scope: !38, file: !3, line: 84, column: 3)
!104 = !DILocation(line: 84, column: 17, scope: !103)
!105 = !DILocation(line: 84, column: 8, scope: !103)
!106 = !DILocation(line: 84, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 84, column: 3)
!108 = !DILocation(line: 84, column: 27, scope: !107)
!109 = !DILocation(line: 84, column: 3, scope: !103)
!110 = !DILocalVariable(name: "xi", scope: !111, file: !3, line: 86, type: !42)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 85, column: 3)
!112 = !DILocation(line: 86, column: 13, scope: !111)
!113 = !DILocation(line: 86, column: 23, scope: !111)
!114 = !DILocation(line: 86, column: 18, scope: !111)
!115 = !DILocalVariable(name: "yi", scope: !111, file: !3, line: 87, type: !42)
!116 = !DILocation(line: 87, column: 13, scope: !111)
!117 = !DILocation(line: 87, column: 28, scope: !111)
!118 = !DILocation(line: 87, column: 18, scope: !111)
!119 = !DILocation(line: 88, column: 25, scope: !111)
!120 = !DILocation(line: 88, column: 15, scope: !111)
!121 = !DILocation(line: 88, column: 40, scope: !111)
!122 = !DILocation(line: 88, column: 30, scope: !111)
!123 = !DILocation(line: 88, column: 28, scope: !111)
!124 = !DILocation(line: 88, column: 10, scope: !111)
!125 = !DILocation(line: 88, column: 5, scope: !111)
!126 = !DILocation(line: 88, column: 13, scope: !111)
!127 = !DILocation(line: 89, column: 3, scope: !111)
!128 = !DILocation(line: 84, column: 35, scope: !107)
!129 = !DILocation(line: 84, column: 3, scope: !107)
!130 = distinct !{!130, !109, !131, !132}
!131 = !DILocation(line: 89, column: 3, scope: !103)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocalVariable(name: "opad", scope: !38, file: !3, line: 90, type: !57)
!134 = !DILocation(line: 90, column: 11, scope: !38)
!135 = !DILocation(line: 91, column: 3, scope: !38)
!136 = !DILocalVariable(name: "i", scope: !137, file: !3, line: 92, type: !5)
!137 = distinct !DILexicalBlock(scope: !38, file: !3, line: 92, column: 3)
!138 = !DILocation(line: 92, column: 17, scope: !137)
!139 = !DILocation(line: 92, column: 8, scope: !137)
!140 = !DILocation(line: 92, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 92, column: 3)
!142 = !DILocation(line: 92, column: 27, scope: !141)
!143 = !DILocation(line: 92, column: 3, scope: !137)
!144 = !DILocalVariable(name: "xi", scope: !145, file: !3, line: 94, type: !42)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 93, column: 3)
!146 = !DILocation(line: 94, column: 13, scope: !145)
!147 = !DILocation(line: 94, column: 23, scope: !145)
!148 = !DILocation(line: 94, column: 18, scope: !145)
!149 = !DILocalVariable(name: "yi", scope: !145, file: !3, line: 95, type: !42)
!150 = !DILocation(line: 95, column: 13, scope: !145)
!151 = !DILocation(line: 95, column: 28, scope: !145)
!152 = !DILocation(line: 95, column: 18, scope: !145)
!153 = !DILocation(line: 96, column: 25, scope: !145)
!154 = !DILocation(line: 96, column: 15, scope: !145)
!155 = !DILocation(line: 96, column: 40, scope: !145)
!156 = !DILocation(line: 96, column: 30, scope: !145)
!157 = !DILocation(line: 96, column: 28, scope: !145)
!158 = !DILocation(line: 96, column: 10, scope: !145)
!159 = !DILocation(line: 96, column: 5, scope: !145)
!160 = !DILocation(line: 96, column: 13, scope: !145)
!161 = !DILocation(line: 97, column: 3, scope: !145)
!162 = !DILocation(line: 92, column: 35, scope: !141)
!163 = !DILocation(line: 92, column: 3, scope: !141)
!164 = distinct !{!164, !143, !165, !132}
!165 = !DILocation(line: 97, column: 3, scope: !137)
!166 = !DILocalVariable(name: "s", scope: !38, file: !3, line: 98, type: !167)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 4)
!170 = !DILocation(line: 98, column: 12, scope: !38)
!171 = !DILocalVariable(name: "dst1", scope: !38, file: !3, line: 99, type: !41)
!172 = !DILocation(line: 99, column: 12, scope: !38)
!173 = !DILocation(line: 99, column: 19, scope: !38)
!174 = !DILocation(line: 100, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !38, file: !3, line: 100, column: 7)
!176 = !DILocation(line: 100, column: 16, scope: !175)
!177 = !DILocation(line: 100, column: 7, scope: !38)
!178 = !DILocation(line: 102, column: 31, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 101, column: 3)
!180 = !DILocation(line: 102, column: 40, scope: !179)
!181 = !DILocation(line: 102, column: 5, scope: !179)
!182 = !DILocation(line: 103, column: 3, scope: !179)
!183 = !DILocalVariable(name: "block_len", scope: !184, file: !3, line: 106, type: !5)
!184 = distinct !DILexicalBlock(scope: !175, file: !3, line: 105, column: 3)
!185 = !DILocation(line: 106, column: 14, scope: !184)
!186 = !DILocalVariable(name: "n_blocks0", scope: !184, file: !3, line: 107, type: !5)
!187 = !DILocation(line: 107, column: 14, scope: !184)
!188 = !DILocation(line: 107, column: 26, scope: !184)
!189 = !DILocation(line: 107, column: 37, scope: !184)
!190 = !DILocation(line: 107, column: 35, scope: !184)
!191 = !DILocalVariable(name: "rem0", scope: !184, file: !3, line: 108, type: !5)
!192 = !DILocation(line: 108, column: 14, scope: !184)
!193 = !DILocation(line: 108, column: 21, scope: !184)
!194 = !DILocation(line: 108, column: 32, scope: !184)
!195 = !DILocation(line: 108, column: 30, scope: !184)
!196 = !DILocalVariable(name: "scrut", scope: !184, file: !3, line: 109, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "K___uint32_t_uint32_t", file: !198, line: 45, baseType: !199)
!198 = !DIFile(filename: "./internal/Hacl_HMAC.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "c99c99854ae8222401a0cd2894238174")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "K___uint32_t_uint32_t_s", file: !198, line: 40, size: 64, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fst", scope: !199, file: !198, line: 42, baseType: !5, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !199, file: !198, line: 43, baseType: !5, size: 32, offset: 32)
!203 = !DILocation(line: 109, column: 27, scope: !184)
!204 = !DILocation(line: 110, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !184, file: !3, line: 110, column: 9)
!206 = !DILocation(line: 110, column: 19, scope: !205)
!207 = !DILocation(line: 110, column: 24, scope: !205)
!208 = !DILocation(line: 110, column: 27, scope: !205)
!209 = !DILocation(line: 110, column: 32, scope: !205)
!210 = !DILocation(line: 110, column: 9, scope: !184)
!211 = !DILocalVariable(name: "n_blocks_", scope: !212, file: !3, line: 112, type: !5)
!212 = distinct !DILexicalBlock(scope: !205, file: !3, line: 111, column: 5)
!213 = !DILocation(line: 112, column: 16, scope: !212)
!214 = !DILocation(line: 112, column: 28, scope: !212)
!215 = !DILocation(line: 112, column: 38, scope: !212)
!216 = !DILocation(line: 113, column: 39, scope: !212)
!217 = !DILocation(line: 113, column: 48, scope: !212)
!218 = !DILocation(line: 113, column: 66, scope: !212)
!219 = !DILocation(line: 113, column: 77, scope: !212)
!220 = !DILocation(line: 113, column: 89, scope: !212)
!221 = !DILocation(line: 113, column: 87, scope: !212)
!222 = !DILocation(line: 113, column: 75, scope: !212)
!223 = !DILocation(line: 113, column: 16, scope: !212)
!224 = !DILocation(line: 114, column: 5, scope: !212)
!225 = !DILocation(line: 117, column: 39, scope: !226)
!226 = distinct !DILexicalBlock(scope: !205, file: !3, line: 116, column: 5)
!227 = !DILocation(line: 117, column: 48, scope: !226)
!228 = !DILocation(line: 117, column: 66, scope: !226)
!229 = !DILocation(line: 117, column: 16, scope: !226)
!230 = !DILocalVariable(name: "n_blocks", scope: !184, file: !3, line: 119, type: !5)
!231 = !DILocation(line: 119, column: 14, scope: !184)
!232 = !DILocation(line: 119, column: 31, scope: !184)
!233 = !DILocalVariable(name: "rem_len", scope: !184, file: !3, line: 120, type: !5)
!234 = !DILocation(line: 120, column: 14, scope: !184)
!235 = !DILocation(line: 120, column: 30, scope: !184)
!236 = !DILocalVariable(name: "full_blocks_len", scope: !184, file: !3, line: 121, type: !5)
!237 = !DILocation(line: 121, column: 14, scope: !184)
!238 = !DILocation(line: 121, column: 32, scope: !184)
!239 = !DILocation(line: 121, column: 43, scope: !184)
!240 = !DILocation(line: 121, column: 41, scope: !184)
!241 = !DILocalVariable(name: "full_blocks", scope: !184, file: !3, line: 122, type: !41)
!242 = !DILocation(line: 122, column: 14, scope: !184)
!243 = !DILocation(line: 122, column: 28, scope: !184)
!244 = !DILocalVariable(name: "rem", scope: !184, file: !3, line: 123, type: !41)
!245 = !DILocation(line: 123, column: 14, scope: !184)
!246 = !DILocation(line: 123, column: 20, scope: !184)
!247 = !DILocation(line: 123, column: 27, scope: !184)
!248 = !DILocation(line: 123, column: 25, scope: !184)
!249 = !DILocation(line: 124, column: 32, scope: !184)
!250 = !DILocation(line: 124, column: 35, scope: !184)
!251 = !DILocation(line: 124, column: 5, scope: !184)
!252 = !DILocation(line: 125, column: 32, scope: !184)
!253 = !DILocation(line: 125, column: 35, scope: !184)
!254 = !DILocation(line: 125, column: 48, scope: !184)
!255 = !DILocation(line: 125, column: 5, scope: !184)
!256 = !DILocation(line: 126, column: 31, scope: !184)
!257 = !DILocation(line: 126, column: 60, scope: !184)
!258 = !DILocation(line: 126, column: 50, scope: !184)
!259 = !DILocation(line: 126, column: 48, scope: !184)
!260 = !DILocation(line: 126, column: 77, scope: !184)
!261 = !DILocation(line: 126, column: 82, scope: !184)
!262 = !DILocation(line: 126, column: 5, scope: !184)
!263 = !DILocation(line: 128, column: 24, scope: !38)
!264 = !DILocation(line: 128, column: 27, scope: !38)
!265 = !DILocation(line: 128, column: 3, scope: !38)
!266 = !DILocalVariable(name: "hash1", scope: !38, file: !3, line: 129, type: !41)
!267 = !DILocation(line: 129, column: 12, scope: !38)
!268 = !DILocation(line: 129, column: 20, scope: !38)
!269 = !DILocation(line: 130, column: 22, scope: !38)
!270 = !DILocation(line: 130, column: 3, scope: !38)
!271 = !DILocalVariable(name: "block_len", scope: !38, file: !3, line: 131, type: !5)
!272 = !DILocation(line: 131, column: 12, scope: !38)
!273 = !DILocalVariable(name: "n_blocks0", scope: !38, file: !3, line: 132, type: !5)
!274 = !DILocation(line: 132, column: 12, scope: !38)
!275 = !DILocation(line: 132, column: 30, scope: !38)
!276 = !DILocation(line: 132, column: 28, scope: !38)
!277 = !DILocalVariable(name: "rem0", scope: !38, file: !3, line: 133, type: !5)
!278 = !DILocation(line: 133, column: 12, scope: !38)
!279 = !DILocation(line: 133, column: 25, scope: !38)
!280 = !DILocation(line: 133, column: 23, scope: !38)
!281 = !DILocalVariable(name: "scrut", scope: !38, file: !3, line: 134, type: !197)
!282 = !DILocation(line: 134, column: 25, scope: !38)
!283 = !DILocation(line: 135, column: 7, scope: !284)
!284 = distinct !DILexicalBlock(scope: !38, file: !3, line: 135, column: 7)
!285 = !DILocation(line: 135, column: 17, scope: !284)
!286 = !DILocation(line: 135, column: 22, scope: !284)
!287 = !DILocation(line: 135, column: 25, scope: !284)
!288 = !DILocation(line: 135, column: 30, scope: !284)
!289 = !DILocation(line: 135, column: 7, scope: !38)
!290 = !DILocalVariable(name: "n_blocks_", scope: !291, file: !3, line: 137, type: !5)
!291 = distinct !DILexicalBlock(scope: !284, file: !3, line: 136, column: 3)
!292 = !DILocation(line: 137, column: 14, scope: !291)
!293 = !DILocation(line: 137, column: 26, scope: !291)
!294 = !DILocation(line: 137, column: 36, scope: !291)
!295 = !DILocation(line: 138, column: 37, scope: !291)
!296 = !DILocation(line: 138, column: 46, scope: !291)
!297 = !DILocation(line: 138, column: 70, scope: !291)
!298 = !DILocation(line: 138, column: 82, scope: !291)
!299 = !DILocation(line: 138, column: 80, scope: !291)
!300 = !DILocation(line: 138, column: 68, scope: !291)
!301 = !DILocation(line: 138, column: 14, scope: !291)
!302 = !DILocation(line: 139, column: 3, scope: !291)
!303 = !DILocation(line: 142, column: 37, scope: !304)
!304 = distinct !DILexicalBlock(scope: !284, file: !3, line: 141, column: 3)
!305 = !DILocation(line: 142, column: 46, scope: !304)
!306 = !DILocation(line: 142, column: 64, scope: !304)
!307 = !DILocation(line: 142, column: 14, scope: !304)
!308 = !DILocalVariable(name: "n_blocks", scope: !38, file: !3, line: 144, type: !5)
!309 = !DILocation(line: 144, column: 12, scope: !38)
!310 = !DILocation(line: 144, column: 29, scope: !38)
!311 = !DILocalVariable(name: "rem_len", scope: !38, file: !3, line: 145, type: !5)
!312 = !DILocation(line: 145, column: 12, scope: !38)
!313 = !DILocation(line: 145, column: 28, scope: !38)
!314 = !DILocalVariable(name: "full_blocks_len", scope: !38, file: !3, line: 146, type: !5)
!315 = !DILocation(line: 146, column: 12, scope: !38)
!316 = !DILocation(line: 146, column: 30, scope: !38)
!317 = !DILocation(line: 146, column: 41, scope: !38)
!318 = !DILocation(line: 146, column: 39, scope: !38)
!319 = !DILocalVariable(name: "full_blocks", scope: !38, file: !3, line: 147, type: !41)
!320 = !DILocation(line: 147, column: 12, scope: !38)
!321 = !DILocation(line: 147, column: 26, scope: !38)
!322 = !DILocalVariable(name: "rem", scope: !38, file: !3, line: 148, type: !41)
!323 = !DILocation(line: 148, column: 12, scope: !38)
!324 = !DILocation(line: 148, column: 18, scope: !38)
!325 = !DILocation(line: 148, column: 26, scope: !38)
!326 = !DILocation(line: 148, column: 24, scope: !38)
!327 = !DILocation(line: 149, column: 30, scope: !38)
!328 = !DILocation(line: 149, column: 33, scope: !38)
!329 = !DILocation(line: 149, column: 3, scope: !38)
!330 = !DILocation(line: 150, column: 30, scope: !38)
!331 = !DILocation(line: 150, column: 33, scope: !38)
!332 = !DILocation(line: 150, column: 46, scope: !38)
!333 = !DILocation(line: 150, column: 3, scope: !38)
!334 = !DILocation(line: 151, column: 29, scope: !38)
!335 = !DILocation(line: 151, column: 58, scope: !38)
!336 = !DILocation(line: 151, column: 48, scope: !38)
!337 = !DILocation(line: 151, column: 46, scope: !38)
!338 = !DILocation(line: 151, column: 75, scope: !38)
!339 = !DILocation(line: 151, column: 80, scope: !38)
!340 = !DILocation(line: 151, column: 3, scope: !38)
!341 = !DILocation(line: 152, column: 24, scope: !38)
!342 = !DILocation(line: 152, column: 27, scope: !38)
!343 = !DILocation(line: 152, column: 3, scope: !38)
!344 = !DILocation(line: 153, column: 1, scope: !38)
!345 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha1", scope: !3, file: !3, line: 162, type: !39, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!346 = !DILocalVariable(name: "dst", arg: 1, scope: !345, file: !3, line: 163, type: !41)
!347 = !DILocation(line: 163, column: 12, scope: !345)
!348 = !DILocalVariable(name: "key", arg: 2, scope: !345, file: !3, line: 164, type: !41)
!349 = !DILocation(line: 164, column: 12, scope: !345)
!350 = !DILocalVariable(name: "key_len", arg: 3, scope: !345, file: !3, line: 165, type: !5)
!351 = !DILocation(line: 165, column: 12, scope: !345)
!352 = !DILocalVariable(name: "data", arg: 4, scope: !345, file: !3, line: 166, type: !41)
!353 = !DILocation(line: 166, column: 12, scope: !345)
!354 = !DILocalVariable(name: "data_len", arg: 5, scope: !345, file: !3, line: 167, type: !5)
!355 = !DILocation(line: 167, column: 12, scope: !345)
!356 = !DILocalVariable(name: "key_block", scope: !345, file: !3, line: 170, type: !57)
!357 = !DILocation(line: 170, column: 11, scope: !345)
!358 = !DILocation(line: 171, column: 3, scope: !345)
!359 = !DILocalVariable(name: "nkey", scope: !345, file: !3, line: 172, type: !41)
!360 = !DILocation(line: 172, column: 12, scope: !345)
!361 = !DILocation(line: 172, column: 19, scope: !345)
!362 = !DILocalVariable(name: "ite", scope: !345, file: !3, line: 173, type: !5)
!363 = !DILocation(line: 173, column: 12, scope: !345)
!364 = !DILocation(line: 174, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !345, file: !3, line: 174, column: 7)
!366 = !DILocation(line: 174, column: 15, scope: !365)
!367 = !DILocation(line: 174, column: 7, scope: !345)
!368 = !DILocation(line: 176, column: 11, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 175, column: 3)
!370 = !DILocation(line: 176, column: 9, scope: !369)
!371 = !DILocation(line: 177, column: 3, scope: !369)
!372 = !DILocation(line: 180, column: 9, scope: !373)
!373 = distinct !DILexicalBlock(scope: !365, file: !3, line: 179, column: 3)
!374 = !DILocalVariable(name: "zeroes", scope: !345, file: !3, line: 182, type: !41)
!375 = !DILocation(line: 182, column: 12, scope: !345)
!376 = !DILocation(line: 182, column: 21, scope: !345)
!377 = !DILocation(line: 182, column: 33, scope: !345)
!378 = !DILocation(line: 182, column: 31, scope: !345)
!379 = !DILocation(line: 183, column: 3, scope: !345)
!380 = !DILocation(line: 184, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !345, file: !3, line: 184, column: 7)
!382 = !DILocation(line: 184, column: 15, scope: !381)
!383 = !DILocation(line: 184, column: 7, scope: !345)
!384 = !DILocation(line: 186, column: 12, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !3, line: 185, column: 3)
!386 = !DILocation(line: 186, column: 18, scope: !385)
!387 = !DILocation(line: 186, column: 23, scope: !385)
!388 = !DILocation(line: 186, column: 31, scope: !385)
!389 = !DILocation(line: 186, column: 5, scope: !385)
!390 = !DILocation(line: 187, column: 3, scope: !385)
!391 = !DILocation(line: 190, column: 33, scope: !392)
!392 = distinct !DILexicalBlock(scope: !381, file: !3, line: 189, column: 3)
!393 = !DILocation(line: 190, column: 39, scope: !392)
!394 = !DILocation(line: 190, column: 44, scope: !392)
!395 = !DILocation(line: 190, column: 5, scope: !392)
!396 = !DILocalVariable(name: "ipad", scope: !345, file: !3, line: 192, type: !57)
!397 = !DILocation(line: 192, column: 11, scope: !345)
!398 = !DILocation(line: 193, column: 3, scope: !345)
!399 = !DILocalVariable(name: "i", scope: !400, file: !3, line: 194, type: !5)
!400 = distinct !DILexicalBlock(scope: !345, file: !3, line: 194, column: 3)
!401 = !DILocation(line: 194, column: 17, scope: !400)
!402 = !DILocation(line: 194, column: 8, scope: !400)
!403 = !DILocation(line: 194, column: 25, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 194, column: 3)
!405 = !DILocation(line: 194, column: 27, scope: !404)
!406 = !DILocation(line: 194, column: 3, scope: !400)
!407 = !DILocalVariable(name: "xi", scope: !408, file: !3, line: 196, type: !42)
!408 = distinct !DILexicalBlock(scope: !404, file: !3, line: 195, column: 3)
!409 = !DILocation(line: 196, column: 13, scope: !408)
!410 = !DILocation(line: 196, column: 23, scope: !408)
!411 = !DILocation(line: 196, column: 18, scope: !408)
!412 = !DILocalVariable(name: "yi", scope: !408, file: !3, line: 197, type: !42)
!413 = !DILocation(line: 197, column: 13, scope: !408)
!414 = !DILocation(line: 197, column: 28, scope: !408)
!415 = !DILocation(line: 197, column: 18, scope: !408)
!416 = !DILocation(line: 198, column: 25, scope: !408)
!417 = !DILocation(line: 198, column: 15, scope: !408)
!418 = !DILocation(line: 198, column: 40, scope: !408)
!419 = !DILocation(line: 198, column: 30, scope: !408)
!420 = !DILocation(line: 198, column: 28, scope: !408)
!421 = !DILocation(line: 198, column: 10, scope: !408)
!422 = !DILocation(line: 198, column: 5, scope: !408)
!423 = !DILocation(line: 198, column: 13, scope: !408)
!424 = !DILocation(line: 199, column: 3, scope: !408)
!425 = !DILocation(line: 194, column: 35, scope: !404)
!426 = !DILocation(line: 194, column: 3, scope: !404)
!427 = distinct !{!427, !406, !428, !132}
!428 = !DILocation(line: 199, column: 3, scope: !400)
!429 = !DILocalVariable(name: "opad", scope: !345, file: !3, line: 200, type: !57)
!430 = !DILocation(line: 200, column: 11, scope: !345)
!431 = !DILocation(line: 201, column: 3, scope: !345)
!432 = !DILocalVariable(name: "i", scope: !433, file: !3, line: 202, type: !5)
!433 = distinct !DILexicalBlock(scope: !345, file: !3, line: 202, column: 3)
!434 = !DILocation(line: 202, column: 17, scope: !433)
!435 = !DILocation(line: 202, column: 8, scope: !433)
!436 = !DILocation(line: 202, column: 25, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 202, column: 3)
!438 = !DILocation(line: 202, column: 27, scope: !437)
!439 = !DILocation(line: 202, column: 3, scope: !433)
!440 = !DILocalVariable(name: "xi", scope: !441, file: !3, line: 204, type: !42)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 203, column: 3)
!442 = !DILocation(line: 204, column: 13, scope: !441)
!443 = !DILocation(line: 204, column: 23, scope: !441)
!444 = !DILocation(line: 204, column: 18, scope: !441)
!445 = !DILocalVariable(name: "yi", scope: !441, file: !3, line: 205, type: !42)
!446 = !DILocation(line: 205, column: 13, scope: !441)
!447 = !DILocation(line: 205, column: 28, scope: !441)
!448 = !DILocation(line: 205, column: 18, scope: !441)
!449 = !DILocation(line: 206, column: 25, scope: !441)
!450 = !DILocation(line: 206, column: 15, scope: !441)
!451 = !DILocation(line: 206, column: 40, scope: !441)
!452 = !DILocation(line: 206, column: 30, scope: !441)
!453 = !DILocation(line: 206, column: 28, scope: !441)
!454 = !DILocation(line: 206, column: 10, scope: !441)
!455 = !DILocation(line: 206, column: 5, scope: !441)
!456 = !DILocation(line: 206, column: 13, scope: !441)
!457 = !DILocation(line: 207, column: 3, scope: !441)
!458 = !DILocation(line: 202, column: 35, scope: !437)
!459 = !DILocation(line: 202, column: 3, scope: !437)
!460 = distinct !{!460, !439, !461, !132}
!461 = !DILocation(line: 207, column: 3, scope: !433)
!462 = !DILocalVariable(name: "s", scope: !345, file: !3, line: 208, type: !463)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 5)
!466 = !DILocation(line: 208, column: 12, scope: !345)
!467 = !DILocalVariable(name: "dst1", scope: !345, file: !3, line: 209, type: !41)
!468 = !DILocation(line: 209, column: 12, scope: !345)
!469 = !DILocation(line: 209, column: 19, scope: !345)
!470 = !DILocation(line: 210, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !345, file: !3, line: 210, column: 7)
!472 = !DILocation(line: 210, column: 16, scope: !471)
!473 = !DILocation(line: 210, column: 7, scope: !345)
!474 = !DILocation(line: 212, column: 32, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !3, line: 211, column: 3)
!476 = !DILocation(line: 212, column: 41, scope: !475)
!477 = !DILocation(line: 212, column: 5, scope: !475)
!478 = !DILocation(line: 213, column: 3, scope: !475)
!479 = !DILocalVariable(name: "block_len", scope: !480, file: !3, line: 216, type: !5)
!480 = distinct !DILexicalBlock(scope: !471, file: !3, line: 215, column: 3)
!481 = !DILocation(line: 216, column: 14, scope: !480)
!482 = !DILocalVariable(name: "n_blocks0", scope: !480, file: !3, line: 217, type: !5)
!483 = !DILocation(line: 217, column: 14, scope: !480)
!484 = !DILocation(line: 217, column: 26, scope: !480)
!485 = !DILocation(line: 217, column: 37, scope: !480)
!486 = !DILocation(line: 217, column: 35, scope: !480)
!487 = !DILocalVariable(name: "rem0", scope: !480, file: !3, line: 218, type: !5)
!488 = !DILocation(line: 218, column: 14, scope: !480)
!489 = !DILocation(line: 218, column: 21, scope: !480)
!490 = !DILocation(line: 218, column: 32, scope: !480)
!491 = !DILocation(line: 218, column: 30, scope: !480)
!492 = !DILocalVariable(name: "scrut", scope: !480, file: !3, line: 219, type: !197)
!493 = !DILocation(line: 219, column: 27, scope: !480)
!494 = !DILocation(line: 220, column: 9, scope: !495)
!495 = distinct !DILexicalBlock(scope: !480, file: !3, line: 220, column: 9)
!496 = !DILocation(line: 220, column: 19, scope: !495)
!497 = !DILocation(line: 220, column: 24, scope: !495)
!498 = !DILocation(line: 220, column: 27, scope: !495)
!499 = !DILocation(line: 220, column: 32, scope: !495)
!500 = !DILocation(line: 220, column: 9, scope: !480)
!501 = !DILocalVariable(name: "n_blocks_", scope: !502, file: !3, line: 222, type: !5)
!502 = distinct !DILexicalBlock(scope: !495, file: !3, line: 221, column: 5)
!503 = !DILocation(line: 222, column: 16, scope: !502)
!504 = !DILocation(line: 222, column: 28, scope: !502)
!505 = !DILocation(line: 222, column: 38, scope: !502)
!506 = !DILocation(line: 223, column: 39, scope: !502)
!507 = !DILocation(line: 223, column: 48, scope: !502)
!508 = !DILocation(line: 223, column: 66, scope: !502)
!509 = !DILocation(line: 223, column: 77, scope: !502)
!510 = !DILocation(line: 223, column: 89, scope: !502)
!511 = !DILocation(line: 223, column: 87, scope: !502)
!512 = !DILocation(line: 223, column: 75, scope: !502)
!513 = !DILocation(line: 223, column: 16, scope: !502)
!514 = !DILocation(line: 224, column: 5, scope: !502)
!515 = !DILocation(line: 227, column: 39, scope: !516)
!516 = distinct !DILexicalBlock(scope: !495, file: !3, line: 226, column: 5)
!517 = !DILocation(line: 227, column: 48, scope: !516)
!518 = !DILocation(line: 227, column: 66, scope: !516)
!519 = !DILocation(line: 227, column: 16, scope: !516)
!520 = !DILocalVariable(name: "n_blocks", scope: !480, file: !3, line: 229, type: !5)
!521 = !DILocation(line: 229, column: 14, scope: !480)
!522 = !DILocation(line: 229, column: 31, scope: !480)
!523 = !DILocalVariable(name: "rem_len", scope: !480, file: !3, line: 230, type: !5)
!524 = !DILocation(line: 230, column: 14, scope: !480)
!525 = !DILocation(line: 230, column: 30, scope: !480)
!526 = !DILocalVariable(name: "full_blocks_len", scope: !480, file: !3, line: 231, type: !5)
!527 = !DILocation(line: 231, column: 14, scope: !480)
!528 = !DILocation(line: 231, column: 32, scope: !480)
!529 = !DILocation(line: 231, column: 43, scope: !480)
!530 = !DILocation(line: 231, column: 41, scope: !480)
!531 = !DILocalVariable(name: "full_blocks", scope: !480, file: !3, line: 232, type: !41)
!532 = !DILocation(line: 232, column: 14, scope: !480)
!533 = !DILocation(line: 232, column: 28, scope: !480)
!534 = !DILocalVariable(name: "rem", scope: !480, file: !3, line: 233, type: !41)
!535 = !DILocation(line: 233, column: 14, scope: !480)
!536 = !DILocation(line: 233, column: 20, scope: !480)
!537 = !DILocation(line: 233, column: 27, scope: !480)
!538 = !DILocation(line: 233, column: 25, scope: !480)
!539 = !DILocation(line: 234, column: 33, scope: !480)
!540 = !DILocation(line: 234, column: 36, scope: !480)
!541 = !DILocation(line: 234, column: 5, scope: !480)
!542 = !DILocation(line: 235, column: 33, scope: !480)
!543 = !DILocation(line: 235, column: 36, scope: !480)
!544 = !DILocation(line: 235, column: 49, scope: !480)
!545 = !DILocation(line: 235, column: 5, scope: !480)
!546 = !DILocation(line: 236, column: 32, scope: !480)
!547 = !DILocation(line: 236, column: 61, scope: !480)
!548 = !DILocation(line: 236, column: 51, scope: !480)
!549 = !DILocation(line: 236, column: 49, scope: !480)
!550 = !DILocation(line: 236, column: 78, scope: !480)
!551 = !DILocation(line: 236, column: 83, scope: !480)
!552 = !DILocation(line: 236, column: 5, scope: !480)
!553 = !DILocation(line: 238, column: 25, scope: !345)
!554 = !DILocation(line: 238, column: 28, scope: !345)
!555 = !DILocation(line: 238, column: 3, scope: !345)
!556 = !DILocalVariable(name: "hash1", scope: !345, file: !3, line: 239, type: !41)
!557 = !DILocation(line: 239, column: 12, scope: !345)
!558 = !DILocation(line: 239, column: 20, scope: !345)
!559 = !DILocation(line: 240, column: 23, scope: !345)
!560 = !DILocation(line: 240, column: 3, scope: !345)
!561 = !DILocalVariable(name: "block_len", scope: !345, file: !3, line: 241, type: !5)
!562 = !DILocation(line: 241, column: 12, scope: !345)
!563 = !DILocalVariable(name: "n_blocks0", scope: !345, file: !3, line: 242, type: !5)
!564 = !DILocation(line: 242, column: 12, scope: !345)
!565 = !DILocation(line: 242, column: 30, scope: !345)
!566 = !DILocation(line: 242, column: 28, scope: !345)
!567 = !DILocalVariable(name: "rem0", scope: !345, file: !3, line: 243, type: !5)
!568 = !DILocation(line: 243, column: 12, scope: !345)
!569 = !DILocation(line: 243, column: 25, scope: !345)
!570 = !DILocation(line: 243, column: 23, scope: !345)
!571 = !DILocalVariable(name: "scrut", scope: !345, file: !3, line: 244, type: !197)
!572 = !DILocation(line: 244, column: 25, scope: !345)
!573 = !DILocation(line: 245, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !345, file: !3, line: 245, column: 7)
!575 = !DILocation(line: 245, column: 17, scope: !574)
!576 = !DILocation(line: 245, column: 22, scope: !574)
!577 = !DILocation(line: 245, column: 25, scope: !574)
!578 = !DILocation(line: 245, column: 30, scope: !574)
!579 = !DILocation(line: 245, column: 7, scope: !345)
!580 = !DILocalVariable(name: "n_blocks_", scope: !581, file: !3, line: 247, type: !5)
!581 = distinct !DILexicalBlock(scope: !574, file: !3, line: 246, column: 3)
!582 = !DILocation(line: 247, column: 14, scope: !581)
!583 = !DILocation(line: 247, column: 26, scope: !581)
!584 = !DILocation(line: 247, column: 36, scope: !581)
!585 = !DILocation(line: 248, column: 37, scope: !581)
!586 = !DILocation(line: 248, column: 46, scope: !581)
!587 = !DILocation(line: 248, column: 70, scope: !581)
!588 = !DILocation(line: 248, column: 82, scope: !581)
!589 = !DILocation(line: 248, column: 80, scope: !581)
!590 = !DILocation(line: 248, column: 68, scope: !581)
!591 = !DILocation(line: 248, column: 14, scope: !581)
!592 = !DILocation(line: 249, column: 3, scope: !581)
!593 = !DILocation(line: 252, column: 37, scope: !594)
!594 = distinct !DILexicalBlock(scope: !574, file: !3, line: 251, column: 3)
!595 = !DILocation(line: 252, column: 46, scope: !594)
!596 = !DILocation(line: 252, column: 64, scope: !594)
!597 = !DILocation(line: 252, column: 14, scope: !594)
!598 = !DILocalVariable(name: "n_blocks", scope: !345, file: !3, line: 254, type: !5)
!599 = !DILocation(line: 254, column: 12, scope: !345)
!600 = !DILocation(line: 254, column: 29, scope: !345)
!601 = !DILocalVariable(name: "rem_len", scope: !345, file: !3, line: 255, type: !5)
!602 = !DILocation(line: 255, column: 12, scope: !345)
!603 = !DILocation(line: 255, column: 28, scope: !345)
!604 = !DILocalVariable(name: "full_blocks_len", scope: !345, file: !3, line: 256, type: !5)
!605 = !DILocation(line: 256, column: 12, scope: !345)
!606 = !DILocation(line: 256, column: 30, scope: !345)
!607 = !DILocation(line: 256, column: 41, scope: !345)
!608 = !DILocation(line: 256, column: 39, scope: !345)
!609 = !DILocalVariable(name: "full_blocks", scope: !345, file: !3, line: 257, type: !41)
!610 = !DILocation(line: 257, column: 12, scope: !345)
!611 = !DILocation(line: 257, column: 26, scope: !345)
!612 = !DILocalVariable(name: "rem", scope: !345, file: !3, line: 258, type: !41)
!613 = !DILocation(line: 258, column: 12, scope: !345)
!614 = !DILocation(line: 258, column: 18, scope: !345)
!615 = !DILocation(line: 258, column: 26, scope: !345)
!616 = !DILocation(line: 258, column: 24, scope: !345)
!617 = !DILocation(line: 259, column: 31, scope: !345)
!618 = !DILocation(line: 259, column: 34, scope: !345)
!619 = !DILocation(line: 259, column: 3, scope: !345)
!620 = !DILocation(line: 260, column: 31, scope: !345)
!621 = !DILocation(line: 260, column: 34, scope: !345)
!622 = !DILocation(line: 260, column: 47, scope: !345)
!623 = !DILocation(line: 260, column: 3, scope: !345)
!624 = !DILocation(line: 261, column: 30, scope: !345)
!625 = !DILocation(line: 261, column: 59, scope: !345)
!626 = !DILocation(line: 261, column: 49, scope: !345)
!627 = !DILocation(line: 261, column: 47, scope: !345)
!628 = !DILocation(line: 261, column: 76, scope: !345)
!629 = !DILocation(line: 261, column: 81, scope: !345)
!630 = !DILocation(line: 261, column: 3, scope: !345)
!631 = !DILocation(line: 262, column: 25, scope: !345)
!632 = !DILocation(line: 262, column: 28, scope: !345)
!633 = !DILocation(line: 262, column: 3, scope: !345)
!634 = !DILocation(line: 263, column: 1, scope: !345)
!635 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha2_224", scope: !3, file: !3, line: 272, type: !39, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!636 = !DILocalVariable(name: "dst", arg: 1, scope: !635, file: !3, line: 273, type: !41)
!637 = !DILocation(line: 273, column: 12, scope: !635)
!638 = !DILocalVariable(name: "key", arg: 2, scope: !635, file: !3, line: 274, type: !41)
!639 = !DILocation(line: 274, column: 12, scope: !635)
!640 = !DILocalVariable(name: "key_len", arg: 3, scope: !635, file: !3, line: 275, type: !5)
!641 = !DILocation(line: 275, column: 12, scope: !635)
!642 = !DILocalVariable(name: "data", arg: 4, scope: !635, file: !3, line: 276, type: !41)
!643 = !DILocation(line: 276, column: 12, scope: !635)
!644 = !DILocalVariable(name: "data_len", arg: 5, scope: !635, file: !3, line: 277, type: !5)
!645 = !DILocation(line: 277, column: 12, scope: !635)
!646 = !DILocalVariable(name: "key_block", scope: !635, file: !3, line: 280, type: !57)
!647 = !DILocation(line: 280, column: 11, scope: !635)
!648 = !DILocation(line: 281, column: 3, scope: !635)
!649 = !DILocalVariable(name: "nkey", scope: !635, file: !3, line: 282, type: !41)
!650 = !DILocation(line: 282, column: 12, scope: !635)
!651 = !DILocation(line: 282, column: 19, scope: !635)
!652 = !DILocalVariable(name: "ite", scope: !635, file: !3, line: 283, type: !5)
!653 = !DILocation(line: 283, column: 12, scope: !635)
!654 = !DILocation(line: 284, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !635, file: !3, line: 284, column: 7)
!656 = !DILocation(line: 284, column: 15, scope: !655)
!657 = !DILocation(line: 284, column: 7, scope: !635)
!658 = !DILocation(line: 286, column: 11, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !3, line: 285, column: 3)
!660 = !DILocation(line: 286, column: 9, scope: !659)
!661 = !DILocation(line: 287, column: 3, scope: !659)
!662 = !DILocation(line: 290, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !655, file: !3, line: 289, column: 3)
!664 = !DILocalVariable(name: "zeroes", scope: !635, file: !3, line: 292, type: !41)
!665 = !DILocation(line: 292, column: 12, scope: !635)
!666 = !DILocation(line: 292, column: 21, scope: !635)
!667 = !DILocation(line: 292, column: 33, scope: !635)
!668 = !DILocation(line: 292, column: 31, scope: !635)
!669 = !DILocation(line: 293, column: 3, scope: !635)
!670 = !DILocation(line: 294, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !635, file: !3, line: 294, column: 7)
!672 = !DILocation(line: 294, column: 15, scope: !671)
!673 = !DILocation(line: 294, column: 7, scope: !635)
!674 = !DILocation(line: 296, column: 12, scope: !675)
!675 = distinct !DILexicalBlock(scope: !671, file: !3, line: 295, column: 3)
!676 = !DILocation(line: 296, column: 18, scope: !675)
!677 = !DILocation(line: 296, column: 23, scope: !675)
!678 = !DILocation(line: 296, column: 31, scope: !675)
!679 = !DILocation(line: 296, column: 5, scope: !675)
!680 = !DILocation(line: 297, column: 3, scope: !675)
!681 = !DILocation(line: 300, column: 29, scope: !682)
!682 = distinct !DILexicalBlock(scope: !671, file: !3, line: 299, column: 3)
!683 = !DILocation(line: 300, column: 35, scope: !682)
!684 = !DILocation(line: 300, column: 40, scope: !682)
!685 = !DILocation(line: 300, column: 5, scope: !682)
!686 = !DILocalVariable(name: "ipad", scope: !635, file: !3, line: 302, type: !57)
!687 = !DILocation(line: 302, column: 11, scope: !635)
!688 = !DILocation(line: 303, column: 3, scope: !635)
!689 = !DILocalVariable(name: "i", scope: !690, file: !3, line: 304, type: !5)
!690 = distinct !DILexicalBlock(scope: !635, file: !3, line: 304, column: 3)
!691 = !DILocation(line: 304, column: 17, scope: !690)
!692 = !DILocation(line: 304, column: 8, scope: !690)
!693 = !DILocation(line: 304, column: 25, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !3, line: 304, column: 3)
!695 = !DILocation(line: 304, column: 27, scope: !694)
!696 = !DILocation(line: 304, column: 3, scope: !690)
!697 = !DILocalVariable(name: "xi", scope: !698, file: !3, line: 306, type: !42)
!698 = distinct !DILexicalBlock(scope: !694, file: !3, line: 305, column: 3)
!699 = !DILocation(line: 306, column: 13, scope: !698)
!700 = !DILocation(line: 306, column: 23, scope: !698)
!701 = !DILocation(line: 306, column: 18, scope: !698)
!702 = !DILocalVariable(name: "yi", scope: !698, file: !3, line: 307, type: !42)
!703 = !DILocation(line: 307, column: 13, scope: !698)
!704 = !DILocation(line: 307, column: 28, scope: !698)
!705 = !DILocation(line: 307, column: 18, scope: !698)
!706 = !DILocation(line: 308, column: 25, scope: !698)
!707 = !DILocation(line: 308, column: 15, scope: !698)
!708 = !DILocation(line: 308, column: 40, scope: !698)
!709 = !DILocation(line: 308, column: 30, scope: !698)
!710 = !DILocation(line: 308, column: 28, scope: !698)
!711 = !DILocation(line: 308, column: 10, scope: !698)
!712 = !DILocation(line: 308, column: 5, scope: !698)
!713 = !DILocation(line: 308, column: 13, scope: !698)
!714 = !DILocation(line: 309, column: 3, scope: !698)
!715 = !DILocation(line: 304, column: 35, scope: !694)
!716 = !DILocation(line: 304, column: 3, scope: !694)
!717 = distinct !{!717, !696, !718, !132}
!718 = !DILocation(line: 309, column: 3, scope: !690)
!719 = !DILocalVariable(name: "opad", scope: !635, file: !3, line: 310, type: !57)
!720 = !DILocation(line: 310, column: 11, scope: !635)
!721 = !DILocation(line: 311, column: 3, scope: !635)
!722 = !DILocalVariable(name: "i", scope: !723, file: !3, line: 312, type: !5)
!723 = distinct !DILexicalBlock(scope: !635, file: !3, line: 312, column: 3)
!724 = !DILocation(line: 312, column: 17, scope: !723)
!725 = !DILocation(line: 312, column: 8, scope: !723)
!726 = !DILocation(line: 312, column: 25, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !3, line: 312, column: 3)
!728 = !DILocation(line: 312, column: 27, scope: !727)
!729 = !DILocation(line: 312, column: 3, scope: !723)
!730 = !DILocalVariable(name: "xi", scope: !731, file: !3, line: 314, type: !42)
!731 = distinct !DILexicalBlock(scope: !727, file: !3, line: 313, column: 3)
!732 = !DILocation(line: 314, column: 13, scope: !731)
!733 = !DILocation(line: 314, column: 23, scope: !731)
!734 = !DILocation(line: 314, column: 18, scope: !731)
!735 = !DILocalVariable(name: "yi", scope: !731, file: !3, line: 315, type: !42)
!736 = !DILocation(line: 315, column: 13, scope: !731)
!737 = !DILocation(line: 315, column: 28, scope: !731)
!738 = !DILocation(line: 315, column: 18, scope: !731)
!739 = !DILocation(line: 316, column: 25, scope: !731)
!740 = !DILocation(line: 316, column: 15, scope: !731)
!741 = !DILocation(line: 316, column: 40, scope: !731)
!742 = !DILocation(line: 316, column: 30, scope: !731)
!743 = !DILocation(line: 316, column: 28, scope: !731)
!744 = !DILocation(line: 316, column: 10, scope: !731)
!745 = !DILocation(line: 316, column: 5, scope: !731)
!746 = !DILocation(line: 316, column: 13, scope: !731)
!747 = !DILocation(line: 317, column: 3, scope: !731)
!748 = !DILocation(line: 312, column: 35, scope: !727)
!749 = !DILocation(line: 312, column: 3, scope: !727)
!750 = distinct !{!750, !729, !751, !132}
!751 = !DILocation(line: 317, column: 3, scope: !723)
!752 = !DILocalVariable(name: "st", scope: !635, file: !3, line: 318, type: !753)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !23)
!754 = !DILocation(line: 318, column: 12, scope: !635)
!755 = !DILocation(line: 319, column: 3, scope: !635)
!756 = !DILocalVariable(name: "i", scope: !757, file: !3, line: 319, type: !5)
!757 = distinct !DILexicalBlock(scope: !635, file: !3, line: 319, column: 3)
!758 = !DILocation(line: 319, column: 3, scope: !757)
!759 = !DILocalVariable(name: "os", scope: !760, file: !3, line: 319, type: !761)
!760 = distinct !DILexicalBlock(scope: !757, file: !3, line: 319, column: 3)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!762 = !DILocation(line: 319, column: 3, scope: !760)
!763 = !DILocalVariable(name: "x", scope: !760, file: !3, line: 319, type: !5)
!764 = !DILocalVariable(name: "os", scope: !765, file: !3, line: 319, type: !761)
!765 = distinct !DILexicalBlock(scope: !757, file: !3, line: 319, column: 3)
!766 = !DILocation(line: 319, column: 3, scope: !765)
!767 = !DILocalVariable(name: "x", scope: !765, file: !3, line: 319, type: !5)
!768 = !DILocalVariable(name: "os", scope: !769, file: !3, line: 319, type: !761)
!769 = distinct !DILexicalBlock(scope: !757, file: !3, line: 319, column: 3)
!770 = !DILocation(line: 319, column: 3, scope: !769)
!771 = !DILocalVariable(name: "x", scope: !769, file: !3, line: 319, type: !5)
!772 = !DILocalVariable(name: "os", scope: !773, file: !3, line: 319, type: !761)
!773 = distinct !DILexicalBlock(scope: !757, file: !3, line: 319, column: 3)
!774 = !DILocation(line: 319, column: 3, scope: !773)
!775 = !DILocalVariable(name: "x", scope: !773, file: !3, line: 319, type: !5)
!776 = !DILocalVariable(name: "os", scope: !777, file: !3, line: 319, type: !761)
!777 = distinct !DILexicalBlock(scope: !757, file: !3, line: 319, column: 3)
!778 = !DILocation(line: 319, column: 3, scope: !777)
!779 = !DILocalVariable(name: "x", scope: !777, file: !3, line: 319, type: !5)
!780 = !DILocalVariable(name: "os", scope: !781, file: !3, line: 319, type: !761)
!781 = distinct !DILexicalBlock(scope: !757, file: !3, line: 319, column: 3)
!782 = !DILocation(line: 319, column: 3, scope: !781)
!783 = !DILocalVariable(name: "x", scope: !781, file: !3, line: 319, type: !5)
!784 = !DILocalVariable(name: "os", scope: !785, file: !3, line: 319, type: !761)
!785 = distinct !DILexicalBlock(scope: !757, file: !3, line: 319, column: 3)
!786 = !DILocation(line: 319, column: 3, scope: !785)
!787 = !DILocalVariable(name: "x", scope: !785, file: !3, line: 319, type: !5)
!788 = !DILocalVariable(name: "os", scope: !789, file: !3, line: 319, type: !761)
!789 = distinct !DILexicalBlock(scope: !757, file: !3, line: 319, column: 3)
!790 = !DILocation(line: 319, column: 3, scope: !789)
!791 = !DILocalVariable(name: "x", scope: !789, file: !3, line: 319, type: !5)
!792 = !DILocalVariable(name: "s", scope: !635, file: !3, line: 326, type: !761)
!793 = !DILocation(line: 326, column: 13, scope: !635)
!794 = !DILocation(line: 326, column: 17, scope: !635)
!795 = !DILocalVariable(name: "dst1", scope: !635, file: !3, line: 327, type: !41)
!796 = !DILocation(line: 327, column: 12, scope: !635)
!797 = !DILocation(line: 327, column: 19, scope: !635)
!798 = !DILocation(line: 328, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !635, file: !3, line: 328, column: 7)
!800 = !DILocation(line: 328, column: 16, scope: !799)
!801 = !DILocation(line: 328, column: 7, scope: !635)
!802 = !DILocation(line: 330, column: 66, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !3, line: 329, column: 3)
!804 = !DILocation(line: 330, column: 72, scope: !803)
!805 = !DILocation(line: 330, column: 5, scope: !803)
!806 = !DILocation(line: 331, column: 3, scope: !803)
!807 = !DILocalVariable(name: "block_len", scope: !808, file: !3, line: 334, type: !5)
!808 = distinct !DILexicalBlock(scope: !799, file: !3, line: 333, column: 3)
!809 = !DILocation(line: 334, column: 14, scope: !808)
!810 = !DILocalVariable(name: "n_blocks0", scope: !808, file: !3, line: 335, type: !5)
!811 = !DILocation(line: 335, column: 14, scope: !808)
!812 = !DILocation(line: 335, column: 26, scope: !808)
!813 = !DILocation(line: 335, column: 37, scope: !808)
!814 = !DILocation(line: 335, column: 35, scope: !808)
!815 = !DILocalVariable(name: "rem0", scope: !808, file: !3, line: 336, type: !5)
!816 = !DILocation(line: 336, column: 14, scope: !808)
!817 = !DILocation(line: 336, column: 21, scope: !808)
!818 = !DILocation(line: 336, column: 32, scope: !808)
!819 = !DILocation(line: 336, column: 30, scope: !808)
!820 = !DILocalVariable(name: "scrut", scope: !808, file: !3, line: 337, type: !197)
!821 = !DILocation(line: 337, column: 27, scope: !808)
!822 = !DILocation(line: 338, column: 9, scope: !823)
!823 = distinct !DILexicalBlock(scope: !808, file: !3, line: 338, column: 9)
!824 = !DILocation(line: 338, column: 19, scope: !823)
!825 = !DILocation(line: 338, column: 24, scope: !823)
!826 = !DILocation(line: 338, column: 27, scope: !823)
!827 = !DILocation(line: 338, column: 32, scope: !823)
!828 = !DILocation(line: 338, column: 9, scope: !808)
!829 = !DILocalVariable(name: "n_blocks_", scope: !830, file: !3, line: 340, type: !5)
!830 = distinct !DILexicalBlock(scope: !823, file: !3, line: 339, column: 5)
!831 = !DILocation(line: 340, column: 16, scope: !830)
!832 = !DILocation(line: 340, column: 28, scope: !830)
!833 = !DILocation(line: 340, column: 38, scope: !830)
!834 = !DILocation(line: 341, column: 39, scope: !830)
!835 = !DILocation(line: 341, column: 48, scope: !830)
!836 = !DILocation(line: 341, column: 66, scope: !830)
!837 = !DILocation(line: 341, column: 77, scope: !830)
!838 = !DILocation(line: 341, column: 89, scope: !830)
!839 = !DILocation(line: 341, column: 87, scope: !830)
!840 = !DILocation(line: 341, column: 75, scope: !830)
!841 = !DILocation(line: 341, column: 16, scope: !830)
!842 = !DILocation(line: 342, column: 5, scope: !830)
!843 = !DILocation(line: 345, column: 39, scope: !844)
!844 = distinct !DILexicalBlock(scope: !823, file: !3, line: 344, column: 5)
!845 = !DILocation(line: 345, column: 48, scope: !844)
!846 = !DILocation(line: 345, column: 66, scope: !844)
!847 = !DILocation(line: 345, column: 16, scope: !844)
!848 = !DILocalVariable(name: "n_blocks", scope: !808, file: !3, line: 347, type: !5)
!849 = !DILocation(line: 347, column: 14, scope: !808)
!850 = !DILocation(line: 347, column: 31, scope: !808)
!851 = !DILocalVariable(name: "rem_len", scope: !808, file: !3, line: 348, type: !5)
!852 = !DILocation(line: 348, column: 14, scope: !808)
!853 = !DILocation(line: 348, column: 30, scope: !808)
!854 = !DILocalVariable(name: "full_blocks_len", scope: !808, file: !3, line: 349, type: !5)
!855 = !DILocation(line: 349, column: 14, scope: !808)
!856 = !DILocation(line: 349, column: 32, scope: !808)
!857 = !DILocation(line: 349, column: 43, scope: !808)
!858 = !DILocation(line: 349, column: 41, scope: !808)
!859 = !DILocalVariable(name: "full_blocks", scope: !808, file: !3, line: 350, type: !41)
!860 = !DILocation(line: 350, column: 14, scope: !808)
!861 = !DILocation(line: 350, column: 28, scope: !808)
!862 = !DILocalVariable(name: "rem", scope: !808, file: !3, line: 351, type: !41)
!863 = !DILocation(line: 351, column: 14, scope: !808)
!864 = !DILocation(line: 351, column: 20, scope: !808)
!865 = !DILocation(line: 351, column: 27, scope: !808)
!866 = !DILocation(line: 351, column: 25, scope: !808)
!867 = !DILocation(line: 352, column: 47, scope: !808)
!868 = !DILocation(line: 352, column: 53, scope: !808)
!869 = !DILocation(line: 352, column: 5, scope: !808)
!870 = !DILocation(line: 353, column: 42, scope: !808)
!871 = !DILocation(line: 353, column: 51, scope: !808)
!872 = !DILocation(line: 353, column: 58, scope: !808)
!873 = !DILocation(line: 353, column: 71, scope: !808)
!874 = !DILocation(line: 353, column: 5, scope: !808)
!875 = !DILocation(line: 354, column: 65, scope: !808)
!876 = !DILocation(line: 354, column: 55, scope: !808)
!877 = !DILocation(line: 354, column: 53, scope: !808)
!878 = !DILocation(line: 354, column: 93, scope: !808)
!879 = !DILocation(line: 354, column: 83, scope: !808)
!880 = !DILocation(line: 354, column: 81, scope: !808)
!881 = !DILocation(line: 355, column: 7, scope: !808)
!882 = !DILocation(line: 356, column: 7, scope: !808)
!883 = !DILocation(line: 357, column: 7, scope: !808)
!884 = !DILocation(line: 354, column: 5, scope: !808)
!885 = !DILocation(line: 359, column: 32, scope: !635)
!886 = !DILocation(line: 359, column: 35, scope: !635)
!887 = !DILocation(line: 359, column: 3, scope: !635)
!888 = !DILocalVariable(name: "hash1", scope: !635, file: !3, line: 360, type: !41)
!889 = !DILocation(line: 360, column: 12, scope: !635)
!890 = !DILocation(line: 360, column: 20, scope: !635)
!891 = !DILocation(line: 361, column: 30, scope: !635)
!892 = !DILocation(line: 361, column: 3, scope: !635)
!893 = !DILocalVariable(name: "block_len", scope: !635, file: !3, line: 362, type: !5)
!894 = !DILocation(line: 362, column: 12, scope: !635)
!895 = !DILocalVariable(name: "n_blocks0", scope: !635, file: !3, line: 363, type: !5)
!896 = !DILocation(line: 363, column: 12, scope: !635)
!897 = !DILocation(line: 363, column: 30, scope: !635)
!898 = !DILocation(line: 363, column: 28, scope: !635)
!899 = !DILocalVariable(name: "rem0", scope: !635, file: !3, line: 364, type: !5)
!900 = !DILocation(line: 364, column: 12, scope: !635)
!901 = !DILocation(line: 364, column: 25, scope: !635)
!902 = !DILocation(line: 364, column: 23, scope: !635)
!903 = !DILocalVariable(name: "scrut", scope: !635, file: !3, line: 365, type: !197)
!904 = !DILocation(line: 365, column: 25, scope: !635)
!905 = !DILocation(line: 366, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !635, file: !3, line: 366, column: 7)
!907 = !DILocation(line: 366, column: 17, scope: !906)
!908 = !DILocation(line: 366, column: 22, scope: !906)
!909 = !DILocation(line: 366, column: 25, scope: !906)
!910 = !DILocation(line: 366, column: 30, scope: !906)
!911 = !DILocation(line: 366, column: 7, scope: !635)
!912 = !DILocalVariable(name: "n_blocks_", scope: !913, file: !3, line: 368, type: !5)
!913 = distinct !DILexicalBlock(scope: !906, file: !3, line: 367, column: 3)
!914 = !DILocation(line: 368, column: 14, scope: !913)
!915 = !DILocation(line: 368, column: 26, scope: !913)
!916 = !DILocation(line: 368, column: 36, scope: !913)
!917 = !DILocation(line: 369, column: 37, scope: !913)
!918 = !DILocation(line: 369, column: 46, scope: !913)
!919 = !DILocation(line: 369, column: 70, scope: !913)
!920 = !DILocation(line: 369, column: 82, scope: !913)
!921 = !DILocation(line: 369, column: 80, scope: !913)
!922 = !DILocation(line: 369, column: 68, scope: !913)
!923 = !DILocation(line: 369, column: 14, scope: !913)
!924 = !DILocation(line: 370, column: 3, scope: !913)
!925 = !DILocation(line: 373, column: 37, scope: !926)
!926 = distinct !DILexicalBlock(scope: !906, file: !3, line: 372, column: 3)
!927 = !DILocation(line: 373, column: 46, scope: !926)
!928 = !DILocation(line: 373, column: 64, scope: !926)
!929 = !DILocation(line: 373, column: 14, scope: !926)
!930 = !DILocalVariable(name: "n_blocks", scope: !635, file: !3, line: 375, type: !5)
!931 = !DILocation(line: 375, column: 12, scope: !635)
!932 = !DILocation(line: 375, column: 29, scope: !635)
!933 = !DILocalVariable(name: "rem_len", scope: !635, file: !3, line: 376, type: !5)
!934 = !DILocation(line: 376, column: 12, scope: !635)
!935 = !DILocation(line: 376, column: 28, scope: !635)
!936 = !DILocalVariable(name: "full_blocks_len", scope: !635, file: !3, line: 377, type: !5)
!937 = !DILocation(line: 377, column: 12, scope: !635)
!938 = !DILocation(line: 377, column: 30, scope: !635)
!939 = !DILocation(line: 377, column: 41, scope: !635)
!940 = !DILocation(line: 377, column: 39, scope: !635)
!941 = !DILocalVariable(name: "full_blocks", scope: !635, file: !3, line: 378, type: !41)
!942 = !DILocation(line: 378, column: 12, scope: !635)
!943 = !DILocation(line: 378, column: 26, scope: !635)
!944 = !DILocalVariable(name: "rem", scope: !635, file: !3, line: 379, type: !41)
!945 = !DILocation(line: 379, column: 12, scope: !635)
!946 = !DILocation(line: 379, column: 18, scope: !635)
!947 = !DILocation(line: 379, column: 26, scope: !635)
!948 = !DILocation(line: 379, column: 24, scope: !635)
!949 = !DILocation(line: 380, column: 45, scope: !635)
!950 = !DILocation(line: 380, column: 51, scope: !635)
!951 = !DILocation(line: 380, column: 3, scope: !635)
!952 = !DILocation(line: 381, column: 40, scope: !635)
!953 = !DILocation(line: 381, column: 49, scope: !635)
!954 = !DILocation(line: 381, column: 56, scope: !635)
!955 = !DILocation(line: 381, column: 69, scope: !635)
!956 = !DILocation(line: 381, column: 3, scope: !635)
!957 = !DILocation(line: 382, column: 63, scope: !635)
!958 = !DILocation(line: 382, column: 53, scope: !635)
!959 = !DILocation(line: 382, column: 51, scope: !635)
!960 = !DILocation(line: 382, column: 91, scope: !635)
!961 = !DILocation(line: 382, column: 81, scope: !635)
!962 = !DILocation(line: 382, column: 79, scope: !635)
!963 = !DILocation(line: 383, column: 5, scope: !635)
!964 = !DILocation(line: 384, column: 5, scope: !635)
!965 = !DILocation(line: 385, column: 5, scope: !635)
!966 = !DILocation(line: 382, column: 3, scope: !635)
!967 = !DILocation(line: 386, column: 32, scope: !635)
!968 = !DILocation(line: 386, column: 35, scope: !635)
!969 = !DILocation(line: 386, column: 3, scope: !635)
!970 = !DILocation(line: 387, column: 1, scope: !635)
!971 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha2_256", scope: !3, file: !3, line: 396, type: !39, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!972 = !DILocalVariable(name: "dst", arg: 1, scope: !971, file: !3, line: 397, type: !41)
!973 = !DILocation(line: 397, column: 12, scope: !971)
!974 = !DILocalVariable(name: "key", arg: 2, scope: !971, file: !3, line: 398, type: !41)
!975 = !DILocation(line: 398, column: 12, scope: !971)
!976 = !DILocalVariable(name: "key_len", arg: 3, scope: !971, file: !3, line: 399, type: !5)
!977 = !DILocation(line: 399, column: 12, scope: !971)
!978 = !DILocalVariable(name: "data", arg: 4, scope: !971, file: !3, line: 400, type: !41)
!979 = !DILocation(line: 400, column: 12, scope: !971)
!980 = !DILocalVariable(name: "data_len", arg: 5, scope: !971, file: !3, line: 401, type: !5)
!981 = !DILocation(line: 401, column: 12, scope: !971)
!982 = !DILocalVariable(name: "key_block", scope: !971, file: !3, line: 404, type: !57)
!983 = !DILocation(line: 404, column: 11, scope: !971)
!984 = !DILocation(line: 405, column: 3, scope: !971)
!985 = !DILocalVariable(name: "nkey", scope: !971, file: !3, line: 406, type: !41)
!986 = !DILocation(line: 406, column: 12, scope: !971)
!987 = !DILocation(line: 406, column: 19, scope: !971)
!988 = !DILocalVariable(name: "ite", scope: !971, file: !3, line: 407, type: !5)
!989 = !DILocation(line: 407, column: 12, scope: !971)
!990 = !DILocation(line: 408, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !971, file: !3, line: 408, column: 7)
!992 = !DILocation(line: 408, column: 15, scope: !991)
!993 = !DILocation(line: 408, column: 7, scope: !971)
!994 = !DILocation(line: 410, column: 11, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !3, line: 409, column: 3)
!996 = !DILocation(line: 410, column: 9, scope: !995)
!997 = !DILocation(line: 411, column: 3, scope: !995)
!998 = !DILocation(line: 414, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !991, file: !3, line: 413, column: 3)
!1000 = !DILocalVariable(name: "zeroes", scope: !971, file: !3, line: 416, type: !41)
!1001 = !DILocation(line: 416, column: 12, scope: !971)
!1002 = !DILocation(line: 416, column: 21, scope: !971)
!1003 = !DILocation(line: 416, column: 33, scope: !971)
!1004 = !DILocation(line: 416, column: 31, scope: !971)
!1005 = !DILocation(line: 417, column: 3, scope: !971)
!1006 = !DILocation(line: 418, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !971, file: !3, line: 418, column: 7)
!1008 = !DILocation(line: 418, column: 15, scope: !1007)
!1009 = !DILocation(line: 418, column: 7, scope: !971)
!1010 = !DILocation(line: 420, column: 12, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 419, column: 3)
!1012 = !DILocation(line: 420, column: 18, scope: !1011)
!1013 = !DILocation(line: 420, column: 23, scope: !1011)
!1014 = !DILocation(line: 420, column: 31, scope: !1011)
!1015 = !DILocation(line: 420, column: 5, scope: !1011)
!1016 = !DILocation(line: 421, column: 3, scope: !1011)
!1017 = !DILocation(line: 424, column: 29, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 423, column: 3)
!1019 = !DILocation(line: 424, column: 35, scope: !1018)
!1020 = !DILocation(line: 424, column: 40, scope: !1018)
!1021 = !DILocation(line: 424, column: 5, scope: !1018)
!1022 = !DILocalVariable(name: "ipad", scope: !971, file: !3, line: 426, type: !57)
!1023 = !DILocation(line: 426, column: 11, scope: !971)
!1024 = !DILocation(line: 427, column: 3, scope: !971)
!1025 = !DILocalVariable(name: "i", scope: !1026, file: !3, line: 428, type: !5)
!1026 = distinct !DILexicalBlock(scope: !971, file: !3, line: 428, column: 3)
!1027 = !DILocation(line: 428, column: 17, scope: !1026)
!1028 = !DILocation(line: 428, column: 8, scope: !1026)
!1029 = !DILocation(line: 428, column: 25, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 428, column: 3)
!1031 = !DILocation(line: 428, column: 27, scope: !1030)
!1032 = !DILocation(line: 428, column: 3, scope: !1026)
!1033 = !DILocalVariable(name: "xi", scope: !1034, file: !3, line: 430, type: !42)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 429, column: 3)
!1035 = !DILocation(line: 430, column: 13, scope: !1034)
!1036 = !DILocation(line: 430, column: 23, scope: !1034)
!1037 = !DILocation(line: 430, column: 18, scope: !1034)
!1038 = !DILocalVariable(name: "yi", scope: !1034, file: !3, line: 431, type: !42)
!1039 = !DILocation(line: 431, column: 13, scope: !1034)
!1040 = !DILocation(line: 431, column: 28, scope: !1034)
!1041 = !DILocation(line: 431, column: 18, scope: !1034)
!1042 = !DILocation(line: 432, column: 25, scope: !1034)
!1043 = !DILocation(line: 432, column: 15, scope: !1034)
!1044 = !DILocation(line: 432, column: 40, scope: !1034)
!1045 = !DILocation(line: 432, column: 30, scope: !1034)
!1046 = !DILocation(line: 432, column: 28, scope: !1034)
!1047 = !DILocation(line: 432, column: 10, scope: !1034)
!1048 = !DILocation(line: 432, column: 5, scope: !1034)
!1049 = !DILocation(line: 432, column: 13, scope: !1034)
!1050 = !DILocation(line: 433, column: 3, scope: !1034)
!1051 = !DILocation(line: 428, column: 35, scope: !1030)
!1052 = !DILocation(line: 428, column: 3, scope: !1030)
!1053 = distinct !{!1053, !1032, !1054, !132}
!1054 = !DILocation(line: 433, column: 3, scope: !1026)
!1055 = !DILocalVariable(name: "opad", scope: !971, file: !3, line: 434, type: !57)
!1056 = !DILocation(line: 434, column: 11, scope: !971)
!1057 = !DILocation(line: 435, column: 3, scope: !971)
!1058 = !DILocalVariable(name: "i", scope: !1059, file: !3, line: 436, type: !5)
!1059 = distinct !DILexicalBlock(scope: !971, file: !3, line: 436, column: 3)
!1060 = !DILocation(line: 436, column: 17, scope: !1059)
!1061 = !DILocation(line: 436, column: 8, scope: !1059)
!1062 = !DILocation(line: 436, column: 25, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 436, column: 3)
!1064 = !DILocation(line: 436, column: 27, scope: !1063)
!1065 = !DILocation(line: 436, column: 3, scope: !1059)
!1066 = !DILocalVariable(name: "xi", scope: !1067, file: !3, line: 438, type: !42)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 437, column: 3)
!1068 = !DILocation(line: 438, column: 13, scope: !1067)
!1069 = !DILocation(line: 438, column: 23, scope: !1067)
!1070 = !DILocation(line: 438, column: 18, scope: !1067)
!1071 = !DILocalVariable(name: "yi", scope: !1067, file: !3, line: 439, type: !42)
!1072 = !DILocation(line: 439, column: 13, scope: !1067)
!1073 = !DILocation(line: 439, column: 28, scope: !1067)
!1074 = !DILocation(line: 439, column: 18, scope: !1067)
!1075 = !DILocation(line: 440, column: 25, scope: !1067)
!1076 = !DILocation(line: 440, column: 15, scope: !1067)
!1077 = !DILocation(line: 440, column: 40, scope: !1067)
!1078 = !DILocation(line: 440, column: 30, scope: !1067)
!1079 = !DILocation(line: 440, column: 28, scope: !1067)
!1080 = !DILocation(line: 440, column: 10, scope: !1067)
!1081 = !DILocation(line: 440, column: 5, scope: !1067)
!1082 = !DILocation(line: 440, column: 13, scope: !1067)
!1083 = !DILocation(line: 441, column: 3, scope: !1067)
!1084 = !DILocation(line: 436, column: 35, scope: !1063)
!1085 = !DILocation(line: 436, column: 3, scope: !1063)
!1086 = distinct !{!1086, !1065, !1087, !132}
!1087 = !DILocation(line: 441, column: 3, scope: !1059)
!1088 = !DILocalVariable(name: "st", scope: !971, file: !3, line: 442, type: !753)
!1089 = !DILocation(line: 442, column: 12, scope: !971)
!1090 = !DILocation(line: 443, column: 3, scope: !971)
!1091 = !DILocalVariable(name: "i", scope: !1092, file: !3, line: 443, type: !5)
!1092 = distinct !DILexicalBlock(scope: !971, file: !3, line: 443, column: 3)
!1093 = !DILocation(line: 443, column: 3, scope: !1092)
!1094 = !DILocalVariable(name: "os", scope: !1095, file: !3, line: 443, type: !761)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 443, column: 3)
!1096 = !DILocation(line: 443, column: 3, scope: !1095)
!1097 = !DILocalVariable(name: "x", scope: !1095, file: !3, line: 443, type: !5)
!1098 = !DILocalVariable(name: "os", scope: !1099, file: !3, line: 443, type: !761)
!1099 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 443, column: 3)
!1100 = !DILocation(line: 443, column: 3, scope: !1099)
!1101 = !DILocalVariable(name: "x", scope: !1099, file: !3, line: 443, type: !5)
!1102 = !DILocalVariable(name: "os", scope: !1103, file: !3, line: 443, type: !761)
!1103 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 443, column: 3)
!1104 = !DILocation(line: 443, column: 3, scope: !1103)
!1105 = !DILocalVariable(name: "x", scope: !1103, file: !3, line: 443, type: !5)
!1106 = !DILocalVariable(name: "os", scope: !1107, file: !3, line: 443, type: !761)
!1107 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 443, column: 3)
!1108 = !DILocation(line: 443, column: 3, scope: !1107)
!1109 = !DILocalVariable(name: "x", scope: !1107, file: !3, line: 443, type: !5)
!1110 = !DILocalVariable(name: "os", scope: !1111, file: !3, line: 443, type: !761)
!1111 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 443, column: 3)
!1112 = !DILocation(line: 443, column: 3, scope: !1111)
!1113 = !DILocalVariable(name: "x", scope: !1111, file: !3, line: 443, type: !5)
!1114 = !DILocalVariable(name: "os", scope: !1115, file: !3, line: 443, type: !761)
!1115 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 443, column: 3)
!1116 = !DILocation(line: 443, column: 3, scope: !1115)
!1117 = !DILocalVariable(name: "x", scope: !1115, file: !3, line: 443, type: !5)
!1118 = !DILocalVariable(name: "os", scope: !1119, file: !3, line: 443, type: !761)
!1119 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 443, column: 3)
!1120 = !DILocation(line: 443, column: 3, scope: !1119)
!1121 = !DILocalVariable(name: "x", scope: !1119, file: !3, line: 443, type: !5)
!1122 = !DILocalVariable(name: "os", scope: !1123, file: !3, line: 443, type: !761)
!1123 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 443, column: 3)
!1124 = !DILocation(line: 443, column: 3, scope: !1123)
!1125 = !DILocalVariable(name: "x", scope: !1123, file: !3, line: 443, type: !5)
!1126 = !DILocalVariable(name: "s", scope: !971, file: !3, line: 450, type: !761)
!1127 = !DILocation(line: 450, column: 13, scope: !971)
!1128 = !DILocation(line: 450, column: 17, scope: !971)
!1129 = !DILocalVariable(name: "dst1", scope: !971, file: !3, line: 451, type: !41)
!1130 = !DILocation(line: 451, column: 12, scope: !971)
!1131 = !DILocation(line: 451, column: 19, scope: !971)
!1132 = !DILocation(line: 452, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !971, file: !3, line: 452, column: 7)
!1134 = !DILocation(line: 452, column: 16, scope: !1133)
!1135 = !DILocation(line: 452, column: 7, scope: !971)
!1136 = !DILocation(line: 454, column: 66, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 453, column: 3)
!1138 = !DILocation(line: 454, column: 72, scope: !1137)
!1139 = !DILocation(line: 454, column: 5, scope: !1137)
!1140 = !DILocation(line: 455, column: 3, scope: !1137)
!1141 = !DILocalVariable(name: "block_len", scope: !1142, file: !3, line: 458, type: !5)
!1142 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 457, column: 3)
!1143 = !DILocation(line: 458, column: 14, scope: !1142)
!1144 = !DILocalVariable(name: "n_blocks0", scope: !1142, file: !3, line: 459, type: !5)
!1145 = !DILocation(line: 459, column: 14, scope: !1142)
!1146 = !DILocation(line: 459, column: 26, scope: !1142)
!1147 = !DILocation(line: 459, column: 37, scope: !1142)
!1148 = !DILocation(line: 459, column: 35, scope: !1142)
!1149 = !DILocalVariable(name: "rem0", scope: !1142, file: !3, line: 460, type: !5)
!1150 = !DILocation(line: 460, column: 14, scope: !1142)
!1151 = !DILocation(line: 460, column: 21, scope: !1142)
!1152 = !DILocation(line: 460, column: 32, scope: !1142)
!1153 = !DILocation(line: 460, column: 30, scope: !1142)
!1154 = !DILocalVariable(name: "scrut", scope: !1142, file: !3, line: 461, type: !197)
!1155 = !DILocation(line: 461, column: 27, scope: !1142)
!1156 = !DILocation(line: 462, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 462, column: 9)
!1158 = !DILocation(line: 462, column: 19, scope: !1157)
!1159 = !DILocation(line: 462, column: 24, scope: !1157)
!1160 = !DILocation(line: 462, column: 27, scope: !1157)
!1161 = !DILocation(line: 462, column: 32, scope: !1157)
!1162 = !DILocation(line: 462, column: 9, scope: !1142)
!1163 = !DILocalVariable(name: "n_blocks_", scope: !1164, file: !3, line: 464, type: !5)
!1164 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 463, column: 5)
!1165 = !DILocation(line: 464, column: 16, scope: !1164)
!1166 = !DILocation(line: 464, column: 28, scope: !1164)
!1167 = !DILocation(line: 464, column: 38, scope: !1164)
!1168 = !DILocation(line: 465, column: 39, scope: !1164)
!1169 = !DILocation(line: 465, column: 48, scope: !1164)
!1170 = !DILocation(line: 465, column: 66, scope: !1164)
!1171 = !DILocation(line: 465, column: 77, scope: !1164)
!1172 = !DILocation(line: 465, column: 89, scope: !1164)
!1173 = !DILocation(line: 465, column: 87, scope: !1164)
!1174 = !DILocation(line: 465, column: 75, scope: !1164)
!1175 = !DILocation(line: 465, column: 16, scope: !1164)
!1176 = !DILocation(line: 466, column: 5, scope: !1164)
!1177 = !DILocation(line: 469, column: 39, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 468, column: 5)
!1179 = !DILocation(line: 469, column: 48, scope: !1178)
!1180 = !DILocation(line: 469, column: 66, scope: !1178)
!1181 = !DILocation(line: 469, column: 16, scope: !1178)
!1182 = !DILocalVariable(name: "n_blocks", scope: !1142, file: !3, line: 471, type: !5)
!1183 = !DILocation(line: 471, column: 14, scope: !1142)
!1184 = !DILocation(line: 471, column: 31, scope: !1142)
!1185 = !DILocalVariable(name: "rem_len", scope: !1142, file: !3, line: 472, type: !5)
!1186 = !DILocation(line: 472, column: 14, scope: !1142)
!1187 = !DILocation(line: 472, column: 30, scope: !1142)
!1188 = !DILocalVariable(name: "full_blocks_len", scope: !1142, file: !3, line: 473, type: !5)
!1189 = !DILocation(line: 473, column: 14, scope: !1142)
!1190 = !DILocation(line: 473, column: 32, scope: !1142)
!1191 = !DILocation(line: 473, column: 43, scope: !1142)
!1192 = !DILocation(line: 473, column: 41, scope: !1142)
!1193 = !DILocalVariable(name: "full_blocks", scope: !1142, file: !3, line: 474, type: !41)
!1194 = !DILocation(line: 474, column: 14, scope: !1142)
!1195 = !DILocation(line: 474, column: 28, scope: !1142)
!1196 = !DILocalVariable(name: "rem", scope: !1142, file: !3, line: 475, type: !41)
!1197 = !DILocation(line: 475, column: 14, scope: !1142)
!1198 = !DILocation(line: 475, column: 20, scope: !1142)
!1199 = !DILocation(line: 475, column: 27, scope: !1142)
!1200 = !DILocation(line: 475, column: 25, scope: !1142)
!1201 = !DILocation(line: 476, column: 47, scope: !1142)
!1202 = !DILocation(line: 476, column: 53, scope: !1142)
!1203 = !DILocation(line: 476, column: 5, scope: !1142)
!1204 = !DILocation(line: 477, column: 42, scope: !1142)
!1205 = !DILocation(line: 477, column: 51, scope: !1142)
!1206 = !DILocation(line: 477, column: 58, scope: !1142)
!1207 = !DILocation(line: 477, column: 71, scope: !1142)
!1208 = !DILocation(line: 477, column: 5, scope: !1142)
!1209 = !DILocation(line: 478, column: 65, scope: !1142)
!1210 = !DILocation(line: 478, column: 55, scope: !1142)
!1211 = !DILocation(line: 478, column: 53, scope: !1142)
!1212 = !DILocation(line: 478, column: 93, scope: !1142)
!1213 = !DILocation(line: 478, column: 83, scope: !1142)
!1214 = !DILocation(line: 478, column: 81, scope: !1142)
!1215 = !DILocation(line: 479, column: 7, scope: !1142)
!1216 = !DILocation(line: 480, column: 7, scope: !1142)
!1217 = !DILocation(line: 481, column: 7, scope: !1142)
!1218 = !DILocation(line: 478, column: 5, scope: !1142)
!1219 = !DILocation(line: 483, column: 32, scope: !971)
!1220 = !DILocation(line: 483, column: 35, scope: !971)
!1221 = !DILocation(line: 483, column: 3, scope: !971)
!1222 = !DILocalVariable(name: "hash1", scope: !971, file: !3, line: 484, type: !41)
!1223 = !DILocation(line: 484, column: 12, scope: !971)
!1224 = !DILocation(line: 484, column: 20, scope: !971)
!1225 = !DILocation(line: 485, column: 30, scope: !971)
!1226 = !DILocation(line: 485, column: 3, scope: !971)
!1227 = !DILocalVariable(name: "block_len", scope: !971, file: !3, line: 486, type: !5)
!1228 = !DILocation(line: 486, column: 12, scope: !971)
!1229 = !DILocalVariable(name: "n_blocks0", scope: !971, file: !3, line: 487, type: !5)
!1230 = !DILocation(line: 487, column: 12, scope: !971)
!1231 = !DILocation(line: 487, column: 30, scope: !971)
!1232 = !DILocation(line: 487, column: 28, scope: !971)
!1233 = !DILocalVariable(name: "rem0", scope: !971, file: !3, line: 488, type: !5)
!1234 = !DILocation(line: 488, column: 12, scope: !971)
!1235 = !DILocation(line: 488, column: 25, scope: !971)
!1236 = !DILocation(line: 488, column: 23, scope: !971)
!1237 = !DILocalVariable(name: "scrut", scope: !971, file: !3, line: 489, type: !197)
!1238 = !DILocation(line: 489, column: 25, scope: !971)
!1239 = !DILocation(line: 490, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !971, file: !3, line: 490, column: 7)
!1241 = !DILocation(line: 490, column: 17, scope: !1240)
!1242 = !DILocation(line: 490, column: 22, scope: !1240)
!1243 = !DILocation(line: 490, column: 25, scope: !1240)
!1244 = !DILocation(line: 490, column: 30, scope: !1240)
!1245 = !DILocation(line: 490, column: 7, scope: !971)
!1246 = !DILocalVariable(name: "n_blocks_", scope: !1247, file: !3, line: 492, type: !5)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 491, column: 3)
!1248 = !DILocation(line: 492, column: 14, scope: !1247)
!1249 = !DILocation(line: 492, column: 26, scope: !1247)
!1250 = !DILocation(line: 492, column: 36, scope: !1247)
!1251 = !DILocation(line: 493, column: 37, scope: !1247)
!1252 = !DILocation(line: 493, column: 46, scope: !1247)
!1253 = !DILocation(line: 493, column: 70, scope: !1247)
!1254 = !DILocation(line: 493, column: 82, scope: !1247)
!1255 = !DILocation(line: 493, column: 80, scope: !1247)
!1256 = !DILocation(line: 493, column: 68, scope: !1247)
!1257 = !DILocation(line: 493, column: 14, scope: !1247)
!1258 = !DILocation(line: 494, column: 3, scope: !1247)
!1259 = !DILocation(line: 497, column: 37, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 496, column: 3)
!1261 = !DILocation(line: 497, column: 46, scope: !1260)
!1262 = !DILocation(line: 497, column: 64, scope: !1260)
!1263 = !DILocation(line: 497, column: 14, scope: !1260)
!1264 = !DILocalVariable(name: "n_blocks", scope: !971, file: !3, line: 499, type: !5)
!1265 = !DILocation(line: 499, column: 12, scope: !971)
!1266 = !DILocation(line: 499, column: 29, scope: !971)
!1267 = !DILocalVariable(name: "rem_len", scope: !971, file: !3, line: 500, type: !5)
!1268 = !DILocation(line: 500, column: 12, scope: !971)
!1269 = !DILocation(line: 500, column: 28, scope: !971)
!1270 = !DILocalVariable(name: "full_blocks_len", scope: !971, file: !3, line: 501, type: !5)
!1271 = !DILocation(line: 501, column: 12, scope: !971)
!1272 = !DILocation(line: 501, column: 30, scope: !971)
!1273 = !DILocation(line: 501, column: 41, scope: !971)
!1274 = !DILocation(line: 501, column: 39, scope: !971)
!1275 = !DILocalVariable(name: "full_blocks", scope: !971, file: !3, line: 502, type: !41)
!1276 = !DILocation(line: 502, column: 12, scope: !971)
!1277 = !DILocation(line: 502, column: 26, scope: !971)
!1278 = !DILocalVariable(name: "rem", scope: !971, file: !3, line: 503, type: !41)
!1279 = !DILocation(line: 503, column: 12, scope: !971)
!1280 = !DILocation(line: 503, column: 18, scope: !971)
!1281 = !DILocation(line: 503, column: 26, scope: !971)
!1282 = !DILocation(line: 503, column: 24, scope: !971)
!1283 = !DILocation(line: 504, column: 45, scope: !971)
!1284 = !DILocation(line: 504, column: 51, scope: !971)
!1285 = !DILocation(line: 504, column: 3, scope: !971)
!1286 = !DILocation(line: 505, column: 40, scope: !971)
!1287 = !DILocation(line: 505, column: 49, scope: !971)
!1288 = !DILocation(line: 505, column: 56, scope: !971)
!1289 = !DILocation(line: 505, column: 69, scope: !971)
!1290 = !DILocation(line: 505, column: 3, scope: !971)
!1291 = !DILocation(line: 506, column: 63, scope: !971)
!1292 = !DILocation(line: 506, column: 53, scope: !971)
!1293 = !DILocation(line: 506, column: 51, scope: !971)
!1294 = !DILocation(line: 506, column: 91, scope: !971)
!1295 = !DILocation(line: 506, column: 81, scope: !971)
!1296 = !DILocation(line: 506, column: 79, scope: !971)
!1297 = !DILocation(line: 507, column: 5, scope: !971)
!1298 = !DILocation(line: 508, column: 5, scope: !971)
!1299 = !DILocation(line: 509, column: 5, scope: !971)
!1300 = !DILocation(line: 506, column: 3, scope: !971)
!1301 = !DILocation(line: 510, column: 32, scope: !971)
!1302 = !DILocation(line: 510, column: 35, scope: !971)
!1303 = !DILocation(line: 510, column: 3, scope: !971)
!1304 = !DILocation(line: 511, column: 1, scope: !971)
!1305 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha2_384", scope: !3, file: !3, line: 520, type: !39, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!1306 = !DILocalVariable(name: "dst", arg: 1, scope: !1305, file: !3, line: 521, type: !41)
!1307 = !DILocation(line: 521, column: 12, scope: !1305)
!1308 = !DILocalVariable(name: "key", arg: 2, scope: !1305, file: !3, line: 522, type: !41)
!1309 = !DILocation(line: 522, column: 12, scope: !1305)
!1310 = !DILocalVariable(name: "key_len", arg: 3, scope: !1305, file: !3, line: 523, type: !5)
!1311 = !DILocation(line: 523, column: 12, scope: !1305)
!1312 = !DILocalVariable(name: "data", arg: 4, scope: !1305, file: !3, line: 524, type: !41)
!1313 = !DILocation(line: 524, column: 12, scope: !1305)
!1314 = !DILocalVariable(name: "data_len", arg: 5, scope: !1305, file: !3, line: 525, type: !5)
!1315 = !DILocation(line: 525, column: 12, scope: !1305)
!1316 = !DILocalVariable(name: "key_block", scope: !1305, file: !3, line: 528, type: !1317)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1024, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 128)
!1320 = !DILocation(line: 528, column: 11, scope: !1305)
!1321 = !DILocation(line: 529, column: 3, scope: !1305)
!1322 = !DILocalVariable(name: "nkey", scope: !1305, file: !3, line: 530, type: !41)
!1323 = !DILocation(line: 530, column: 12, scope: !1305)
!1324 = !DILocation(line: 530, column: 19, scope: !1305)
!1325 = !DILocalVariable(name: "ite", scope: !1305, file: !3, line: 531, type: !5)
!1326 = !DILocation(line: 531, column: 12, scope: !1305)
!1327 = !DILocation(line: 532, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 532, column: 7)
!1329 = !DILocation(line: 532, column: 15, scope: !1328)
!1330 = !DILocation(line: 532, column: 7, scope: !1305)
!1331 = !DILocation(line: 534, column: 11, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 533, column: 3)
!1333 = !DILocation(line: 534, column: 9, scope: !1332)
!1334 = !DILocation(line: 535, column: 3, scope: !1332)
!1335 = !DILocation(line: 538, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 537, column: 3)
!1337 = !DILocalVariable(name: "zeroes", scope: !1305, file: !3, line: 540, type: !41)
!1338 = !DILocation(line: 540, column: 12, scope: !1305)
!1339 = !DILocation(line: 540, column: 21, scope: !1305)
!1340 = !DILocation(line: 540, column: 33, scope: !1305)
!1341 = !DILocation(line: 540, column: 31, scope: !1305)
!1342 = !DILocation(line: 541, column: 3, scope: !1305)
!1343 = !DILocation(line: 542, column: 7, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 542, column: 7)
!1345 = !DILocation(line: 542, column: 15, scope: !1344)
!1346 = !DILocation(line: 542, column: 7, scope: !1305)
!1347 = !DILocation(line: 544, column: 12, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 543, column: 3)
!1349 = !DILocation(line: 544, column: 18, scope: !1348)
!1350 = !DILocation(line: 544, column: 23, scope: !1348)
!1351 = !DILocation(line: 544, column: 31, scope: !1348)
!1352 = !DILocation(line: 544, column: 5, scope: !1348)
!1353 = !DILocation(line: 545, column: 3, scope: !1348)
!1354 = !DILocation(line: 548, column: 29, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 547, column: 3)
!1356 = !DILocation(line: 548, column: 35, scope: !1355)
!1357 = !DILocation(line: 548, column: 40, scope: !1355)
!1358 = !DILocation(line: 548, column: 5, scope: !1355)
!1359 = !DILocalVariable(name: "ipad", scope: !1305, file: !3, line: 550, type: !1317)
!1360 = !DILocation(line: 550, column: 11, scope: !1305)
!1361 = !DILocation(line: 551, column: 3, scope: !1305)
!1362 = !DILocalVariable(name: "i", scope: !1363, file: !3, line: 552, type: !5)
!1363 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 552, column: 3)
!1364 = !DILocation(line: 552, column: 17, scope: !1363)
!1365 = !DILocation(line: 552, column: 8, scope: !1363)
!1366 = !DILocation(line: 552, column: 25, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 552, column: 3)
!1368 = !DILocation(line: 552, column: 27, scope: !1367)
!1369 = !DILocation(line: 552, column: 3, scope: !1363)
!1370 = !DILocalVariable(name: "xi", scope: !1371, file: !3, line: 554, type: !42)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 553, column: 3)
!1372 = !DILocation(line: 554, column: 13, scope: !1371)
!1373 = !DILocation(line: 554, column: 23, scope: !1371)
!1374 = !DILocation(line: 554, column: 18, scope: !1371)
!1375 = !DILocalVariable(name: "yi", scope: !1371, file: !3, line: 555, type: !42)
!1376 = !DILocation(line: 555, column: 13, scope: !1371)
!1377 = !DILocation(line: 555, column: 28, scope: !1371)
!1378 = !DILocation(line: 555, column: 18, scope: !1371)
!1379 = !DILocation(line: 556, column: 25, scope: !1371)
!1380 = !DILocation(line: 556, column: 15, scope: !1371)
!1381 = !DILocation(line: 556, column: 40, scope: !1371)
!1382 = !DILocation(line: 556, column: 30, scope: !1371)
!1383 = !DILocation(line: 556, column: 28, scope: !1371)
!1384 = !DILocation(line: 556, column: 10, scope: !1371)
!1385 = !DILocation(line: 556, column: 5, scope: !1371)
!1386 = !DILocation(line: 556, column: 13, scope: !1371)
!1387 = !DILocation(line: 557, column: 3, scope: !1371)
!1388 = !DILocation(line: 552, column: 36, scope: !1367)
!1389 = !DILocation(line: 552, column: 3, scope: !1367)
!1390 = distinct !{!1390, !1369, !1391, !132}
!1391 = !DILocation(line: 557, column: 3, scope: !1363)
!1392 = !DILocalVariable(name: "opad", scope: !1305, file: !3, line: 558, type: !1317)
!1393 = !DILocation(line: 558, column: 11, scope: !1305)
!1394 = !DILocation(line: 559, column: 3, scope: !1305)
!1395 = !DILocalVariable(name: "i", scope: !1396, file: !3, line: 560, type: !5)
!1396 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 560, column: 3)
!1397 = !DILocation(line: 560, column: 17, scope: !1396)
!1398 = !DILocation(line: 560, column: 8, scope: !1396)
!1399 = !DILocation(line: 560, column: 25, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 560, column: 3)
!1401 = !DILocation(line: 560, column: 27, scope: !1400)
!1402 = !DILocation(line: 560, column: 3, scope: !1396)
!1403 = !DILocalVariable(name: "xi", scope: !1404, file: !3, line: 562, type: !42)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 561, column: 3)
!1405 = !DILocation(line: 562, column: 13, scope: !1404)
!1406 = !DILocation(line: 562, column: 23, scope: !1404)
!1407 = !DILocation(line: 562, column: 18, scope: !1404)
!1408 = !DILocalVariable(name: "yi", scope: !1404, file: !3, line: 563, type: !42)
!1409 = !DILocation(line: 563, column: 13, scope: !1404)
!1410 = !DILocation(line: 563, column: 28, scope: !1404)
!1411 = !DILocation(line: 563, column: 18, scope: !1404)
!1412 = !DILocation(line: 564, column: 25, scope: !1404)
!1413 = !DILocation(line: 564, column: 15, scope: !1404)
!1414 = !DILocation(line: 564, column: 40, scope: !1404)
!1415 = !DILocation(line: 564, column: 30, scope: !1404)
!1416 = !DILocation(line: 564, column: 28, scope: !1404)
!1417 = !DILocation(line: 564, column: 10, scope: !1404)
!1418 = !DILocation(line: 564, column: 5, scope: !1404)
!1419 = !DILocation(line: 564, column: 13, scope: !1404)
!1420 = !DILocation(line: 565, column: 3, scope: !1404)
!1421 = !DILocation(line: 560, column: 36, scope: !1400)
!1422 = !DILocation(line: 560, column: 3, scope: !1400)
!1423 = distinct !{!1423, !1402, !1424, !132}
!1424 = !DILocation(line: 565, column: 3, scope: !1396)
!1425 = !DILocalVariable(name: "st", scope: !1305, file: !3, line: 566, type: !1426)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, elements: !23)
!1427 = !DILocation(line: 566, column: 12, scope: !1305)
!1428 = !DILocation(line: 567, column: 3, scope: !1305)
!1429 = !DILocalVariable(name: "i", scope: !1430, file: !3, line: 567, type: !5)
!1430 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 567, column: 3)
!1431 = !DILocation(line: 567, column: 3, scope: !1430)
!1432 = !DILocalVariable(name: "os", scope: !1433, file: !3, line: 567, type: !1434)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 567, column: 3)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!1435 = !DILocation(line: 567, column: 3, scope: !1433)
!1436 = !DILocalVariable(name: "x", scope: !1433, file: !3, line: 567, type: !10)
!1437 = !DILocalVariable(name: "os", scope: !1438, file: !3, line: 567, type: !1434)
!1438 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 567, column: 3)
!1439 = !DILocation(line: 567, column: 3, scope: !1438)
!1440 = !DILocalVariable(name: "x", scope: !1438, file: !3, line: 567, type: !10)
!1441 = !DILocalVariable(name: "os", scope: !1442, file: !3, line: 567, type: !1434)
!1442 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 567, column: 3)
!1443 = !DILocation(line: 567, column: 3, scope: !1442)
!1444 = !DILocalVariable(name: "x", scope: !1442, file: !3, line: 567, type: !10)
!1445 = !DILocalVariable(name: "os", scope: !1446, file: !3, line: 567, type: !1434)
!1446 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 567, column: 3)
!1447 = !DILocation(line: 567, column: 3, scope: !1446)
!1448 = !DILocalVariable(name: "x", scope: !1446, file: !3, line: 567, type: !10)
!1449 = !DILocalVariable(name: "os", scope: !1450, file: !3, line: 567, type: !1434)
!1450 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 567, column: 3)
!1451 = !DILocation(line: 567, column: 3, scope: !1450)
!1452 = !DILocalVariable(name: "x", scope: !1450, file: !3, line: 567, type: !10)
!1453 = !DILocalVariable(name: "os", scope: !1454, file: !3, line: 567, type: !1434)
!1454 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 567, column: 3)
!1455 = !DILocation(line: 567, column: 3, scope: !1454)
!1456 = !DILocalVariable(name: "x", scope: !1454, file: !3, line: 567, type: !10)
!1457 = !DILocalVariable(name: "os", scope: !1458, file: !3, line: 567, type: !1434)
!1458 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 567, column: 3)
!1459 = !DILocation(line: 567, column: 3, scope: !1458)
!1460 = !DILocalVariable(name: "x", scope: !1458, file: !3, line: 567, type: !10)
!1461 = !DILocalVariable(name: "os", scope: !1462, file: !3, line: 567, type: !1434)
!1462 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 567, column: 3)
!1463 = !DILocation(line: 567, column: 3, scope: !1462)
!1464 = !DILocalVariable(name: "x", scope: !1462, file: !3, line: 567, type: !10)
!1465 = !DILocalVariable(name: "s", scope: !1305, file: !3, line: 574, type: !1434)
!1466 = !DILocation(line: 574, column: 13, scope: !1305)
!1467 = !DILocation(line: 574, column: 17, scope: !1305)
!1468 = !DILocalVariable(name: "dst1", scope: !1305, file: !3, line: 575, type: !41)
!1469 = !DILocation(line: 575, column: 12, scope: !1305)
!1470 = !DILocation(line: 575, column: 19, scope: !1305)
!1471 = !DILocation(line: 576, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 576, column: 7)
!1473 = !DILocation(line: 576, column: 16, scope: !1472)
!1474 = !DILocation(line: 576, column: 7, scope: !1305)
!1475 = !DILocation(line: 578, column: 57, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 577, column: 3)
!1477 = !DILocation(line: 579, column: 9, scope: !1476)
!1478 = !DILocation(line: 578, column: 39, scope: !1476)
!1479 = !DILocation(line: 581, column: 7, scope: !1476)
!1480 = !DILocation(line: 582, column: 7, scope: !1476)
!1481 = !DILocation(line: 578, column: 5, scope: !1476)
!1482 = !DILocation(line: 583, column: 3, scope: !1476)
!1483 = !DILocalVariable(name: "block_len", scope: !1484, file: !3, line: 586, type: !5)
!1484 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 585, column: 3)
!1485 = !DILocation(line: 586, column: 14, scope: !1484)
!1486 = !DILocalVariable(name: "n_blocks0", scope: !1484, file: !3, line: 587, type: !5)
!1487 = !DILocation(line: 587, column: 14, scope: !1484)
!1488 = !DILocation(line: 587, column: 26, scope: !1484)
!1489 = !DILocation(line: 587, column: 37, scope: !1484)
!1490 = !DILocation(line: 587, column: 35, scope: !1484)
!1491 = !DILocalVariable(name: "rem0", scope: !1484, file: !3, line: 588, type: !5)
!1492 = !DILocation(line: 588, column: 14, scope: !1484)
!1493 = !DILocation(line: 588, column: 21, scope: !1484)
!1494 = !DILocation(line: 588, column: 32, scope: !1484)
!1495 = !DILocation(line: 588, column: 30, scope: !1484)
!1496 = !DILocalVariable(name: "scrut", scope: !1484, file: !3, line: 589, type: !197)
!1497 = !DILocation(line: 589, column: 27, scope: !1484)
!1498 = !DILocation(line: 590, column: 9, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 590, column: 9)
!1500 = !DILocation(line: 590, column: 19, scope: !1499)
!1501 = !DILocation(line: 590, column: 24, scope: !1499)
!1502 = !DILocation(line: 590, column: 27, scope: !1499)
!1503 = !DILocation(line: 590, column: 32, scope: !1499)
!1504 = !DILocation(line: 590, column: 9, scope: !1484)
!1505 = !DILocalVariable(name: "n_blocks_", scope: !1506, file: !3, line: 592, type: !5)
!1506 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 591, column: 5)
!1507 = !DILocation(line: 592, column: 16, scope: !1506)
!1508 = !DILocation(line: 592, column: 28, scope: !1506)
!1509 = !DILocation(line: 592, column: 38, scope: !1506)
!1510 = !DILocation(line: 593, column: 39, scope: !1506)
!1511 = !DILocation(line: 593, column: 48, scope: !1506)
!1512 = !DILocation(line: 593, column: 66, scope: !1506)
!1513 = !DILocation(line: 593, column: 77, scope: !1506)
!1514 = !DILocation(line: 593, column: 89, scope: !1506)
!1515 = !DILocation(line: 593, column: 87, scope: !1506)
!1516 = !DILocation(line: 593, column: 75, scope: !1506)
!1517 = !DILocation(line: 593, column: 16, scope: !1506)
!1518 = !DILocation(line: 594, column: 5, scope: !1506)
!1519 = !DILocation(line: 597, column: 39, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 596, column: 5)
!1521 = !DILocation(line: 597, column: 48, scope: !1520)
!1522 = !DILocation(line: 597, column: 66, scope: !1520)
!1523 = !DILocation(line: 597, column: 16, scope: !1520)
!1524 = !DILocalVariable(name: "n_blocks", scope: !1484, file: !3, line: 599, type: !5)
!1525 = !DILocation(line: 599, column: 14, scope: !1484)
!1526 = !DILocation(line: 599, column: 31, scope: !1484)
!1527 = !DILocalVariable(name: "rem_len", scope: !1484, file: !3, line: 600, type: !5)
!1528 = !DILocation(line: 600, column: 14, scope: !1484)
!1529 = !DILocation(line: 600, column: 30, scope: !1484)
!1530 = !DILocalVariable(name: "full_blocks_len", scope: !1484, file: !3, line: 601, type: !5)
!1531 = !DILocation(line: 601, column: 14, scope: !1484)
!1532 = !DILocation(line: 601, column: 32, scope: !1484)
!1533 = !DILocation(line: 601, column: 43, scope: !1484)
!1534 = !DILocation(line: 601, column: 41, scope: !1484)
!1535 = !DILocalVariable(name: "full_blocks", scope: !1484, file: !3, line: 602, type: !41)
!1536 = !DILocation(line: 602, column: 14, scope: !1484)
!1537 = !DILocation(line: 602, column: 28, scope: !1484)
!1538 = !DILocalVariable(name: "rem", scope: !1484, file: !3, line: 603, type: !41)
!1539 = !DILocation(line: 603, column: 14, scope: !1484)
!1540 = !DILocation(line: 603, column: 20, scope: !1484)
!1541 = !DILocation(line: 603, column: 27, scope: !1484)
!1542 = !DILocation(line: 603, column: 25, scope: !1484)
!1543 = !DILocation(line: 604, column: 48, scope: !1484)
!1544 = !DILocation(line: 604, column: 54, scope: !1484)
!1545 = !DILocation(line: 604, column: 5, scope: !1484)
!1546 = !DILocation(line: 605, column: 42, scope: !1484)
!1547 = !DILocation(line: 605, column: 51, scope: !1484)
!1548 = !DILocation(line: 605, column: 59, scope: !1484)
!1549 = !DILocation(line: 605, column: 72, scope: !1484)
!1550 = !DILocation(line: 605, column: 5, scope: !1484)
!1551 = !DILocation(line: 606, column: 75, scope: !1484)
!1552 = !DILocation(line: 607, column: 53, scope: !1484)
!1553 = !DILocation(line: 607, column: 43, scope: !1484)
!1554 = !DILocation(line: 607, column: 11, scope: !1484)
!1555 = !DILocation(line: 606, column: 57, scope: !1484)
!1556 = !DILocation(line: 608, column: 51, scope: !1484)
!1557 = !DILocation(line: 608, column: 41, scope: !1484)
!1558 = !DILocation(line: 608, column: 9, scope: !1484)
!1559 = !DILocation(line: 606, column: 39, scope: !1484)
!1560 = !DILocation(line: 609, column: 7, scope: !1484)
!1561 = !DILocation(line: 610, column: 7, scope: !1484)
!1562 = !DILocation(line: 611, column: 7, scope: !1484)
!1563 = !DILocation(line: 606, column: 5, scope: !1484)
!1564 = !DILocation(line: 613, column: 32, scope: !1305)
!1565 = !DILocation(line: 613, column: 35, scope: !1305)
!1566 = !DILocation(line: 613, column: 3, scope: !1305)
!1567 = !DILocalVariable(name: "hash1", scope: !1305, file: !3, line: 614, type: !41)
!1568 = !DILocation(line: 614, column: 12, scope: !1305)
!1569 = !DILocation(line: 614, column: 20, scope: !1305)
!1570 = !DILocation(line: 615, column: 30, scope: !1305)
!1571 = !DILocation(line: 615, column: 3, scope: !1305)
!1572 = !DILocalVariable(name: "block_len", scope: !1305, file: !3, line: 616, type: !5)
!1573 = !DILocation(line: 616, column: 12, scope: !1305)
!1574 = !DILocalVariable(name: "n_blocks0", scope: !1305, file: !3, line: 617, type: !5)
!1575 = !DILocation(line: 617, column: 12, scope: !1305)
!1576 = !DILocation(line: 617, column: 30, scope: !1305)
!1577 = !DILocation(line: 617, column: 28, scope: !1305)
!1578 = !DILocalVariable(name: "rem0", scope: !1305, file: !3, line: 618, type: !5)
!1579 = !DILocation(line: 618, column: 12, scope: !1305)
!1580 = !DILocation(line: 618, column: 25, scope: !1305)
!1581 = !DILocation(line: 618, column: 23, scope: !1305)
!1582 = !DILocalVariable(name: "scrut", scope: !1305, file: !3, line: 619, type: !197)
!1583 = !DILocation(line: 619, column: 25, scope: !1305)
!1584 = !DILocation(line: 620, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 620, column: 7)
!1586 = !DILocation(line: 620, column: 17, scope: !1585)
!1587 = !DILocation(line: 620, column: 22, scope: !1585)
!1588 = !DILocation(line: 620, column: 25, scope: !1585)
!1589 = !DILocation(line: 620, column: 30, scope: !1585)
!1590 = !DILocation(line: 620, column: 7, scope: !1305)
!1591 = !DILocalVariable(name: "n_blocks_", scope: !1592, file: !3, line: 622, type: !5)
!1592 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 621, column: 3)
!1593 = !DILocation(line: 622, column: 14, scope: !1592)
!1594 = !DILocation(line: 622, column: 26, scope: !1592)
!1595 = !DILocation(line: 622, column: 36, scope: !1592)
!1596 = !DILocation(line: 623, column: 37, scope: !1592)
!1597 = !DILocation(line: 623, column: 46, scope: !1592)
!1598 = !DILocation(line: 623, column: 70, scope: !1592)
!1599 = !DILocation(line: 623, column: 82, scope: !1592)
!1600 = !DILocation(line: 623, column: 80, scope: !1592)
!1601 = !DILocation(line: 623, column: 68, scope: !1592)
!1602 = !DILocation(line: 623, column: 14, scope: !1592)
!1603 = !DILocation(line: 624, column: 3, scope: !1592)
!1604 = !DILocation(line: 627, column: 37, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 626, column: 3)
!1606 = !DILocation(line: 627, column: 46, scope: !1605)
!1607 = !DILocation(line: 627, column: 64, scope: !1605)
!1608 = !DILocation(line: 627, column: 14, scope: !1605)
!1609 = !DILocalVariable(name: "n_blocks", scope: !1305, file: !3, line: 629, type: !5)
!1610 = !DILocation(line: 629, column: 12, scope: !1305)
!1611 = !DILocation(line: 629, column: 29, scope: !1305)
!1612 = !DILocalVariable(name: "rem_len", scope: !1305, file: !3, line: 630, type: !5)
!1613 = !DILocation(line: 630, column: 12, scope: !1305)
!1614 = !DILocation(line: 630, column: 28, scope: !1305)
!1615 = !DILocalVariable(name: "full_blocks_len", scope: !1305, file: !3, line: 631, type: !5)
!1616 = !DILocation(line: 631, column: 12, scope: !1305)
!1617 = !DILocation(line: 631, column: 30, scope: !1305)
!1618 = !DILocation(line: 631, column: 41, scope: !1305)
!1619 = !DILocation(line: 631, column: 39, scope: !1305)
!1620 = !DILocalVariable(name: "full_blocks", scope: !1305, file: !3, line: 632, type: !41)
!1621 = !DILocation(line: 632, column: 12, scope: !1305)
!1622 = !DILocation(line: 632, column: 26, scope: !1305)
!1623 = !DILocalVariable(name: "rem", scope: !1305, file: !3, line: 633, type: !41)
!1624 = !DILocation(line: 633, column: 12, scope: !1305)
!1625 = !DILocation(line: 633, column: 18, scope: !1305)
!1626 = !DILocation(line: 633, column: 26, scope: !1305)
!1627 = !DILocation(line: 633, column: 24, scope: !1305)
!1628 = !DILocation(line: 634, column: 46, scope: !1305)
!1629 = !DILocation(line: 634, column: 52, scope: !1305)
!1630 = !DILocation(line: 634, column: 3, scope: !1305)
!1631 = !DILocation(line: 635, column: 40, scope: !1305)
!1632 = !DILocation(line: 635, column: 49, scope: !1305)
!1633 = !DILocation(line: 635, column: 57, scope: !1305)
!1634 = !DILocation(line: 635, column: 70, scope: !1305)
!1635 = !DILocation(line: 635, column: 3, scope: !1305)
!1636 = !DILocation(line: 636, column: 73, scope: !1305)
!1637 = !DILocation(line: 637, column: 51, scope: !1305)
!1638 = !DILocation(line: 637, column: 41, scope: !1305)
!1639 = !DILocation(line: 637, column: 9, scope: !1305)
!1640 = !DILocation(line: 636, column: 55, scope: !1305)
!1641 = !DILocation(line: 638, column: 49, scope: !1305)
!1642 = !DILocation(line: 638, column: 39, scope: !1305)
!1643 = !DILocation(line: 638, column: 7, scope: !1305)
!1644 = !DILocation(line: 636, column: 37, scope: !1305)
!1645 = !DILocation(line: 639, column: 5, scope: !1305)
!1646 = !DILocation(line: 640, column: 5, scope: !1305)
!1647 = !DILocation(line: 641, column: 5, scope: !1305)
!1648 = !DILocation(line: 636, column: 3, scope: !1305)
!1649 = !DILocation(line: 642, column: 32, scope: !1305)
!1650 = !DILocation(line: 642, column: 35, scope: !1305)
!1651 = !DILocation(line: 642, column: 3, scope: !1305)
!1652 = !DILocation(line: 643, column: 1, scope: !1305)
!1653 = distinct !DISubprogram(name: "FStar_UInt128_add", scope: !1654, file: !1654, line: 54, type: !1655, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !45)
!1654 = !DIFile(filename: "../karamel/krmllib/dist/minimal/fstar_uint128_gcc64.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "6520ae73a4e2574d2e17f6f035237610")
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!15, !13, !13}
!1657 = !DILocalVariable(name: "x", arg: 1, scope: !1653, file: !1654, line: 54, type: !13)
!1658 = !DILocation(line: 54, column: 53, scope: !1653)
!1659 = !DILocalVariable(name: "y", arg: 2, scope: !1653, file: !1654, line: 54, type: !13)
!1660 = !DILocation(line: 54, column: 66, scope: !1653)
!1661 = !DILocation(line: 55, column: 10, scope: !1653)
!1662 = !DILocation(line: 55, column: 14, scope: !1653)
!1663 = !DILocation(line: 55, column: 12, scope: !1653)
!1664 = !DILocation(line: 55, column: 3, scope: !1653)
!1665 = distinct !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !1654, file: !1654, line: 98, type: !1666, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !45)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!15, !10}
!1668 = !DILocalVariable(name: "x", arg: 1, scope: !1665, file: !1654, line: 98, type: !10)
!1669 = !DILocation(line: 98, column: 66, scope: !1665)
!1670 = !DILocation(line: 99, column: 21, scope: !1665)
!1671 = !DILocation(line: 99, column: 10, scope: !1665)
!1672 = !DILocation(line: 99, column: 3, scope: !1665)
!1673 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha2_512", scope: !3, file: !3, line: 652, type: !39, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!1674 = !DILocalVariable(name: "dst", arg: 1, scope: !1673, file: !3, line: 653, type: !41)
!1675 = !DILocation(line: 653, column: 12, scope: !1673)
!1676 = !DILocalVariable(name: "key", arg: 2, scope: !1673, file: !3, line: 654, type: !41)
!1677 = !DILocation(line: 654, column: 12, scope: !1673)
!1678 = !DILocalVariable(name: "key_len", arg: 3, scope: !1673, file: !3, line: 655, type: !5)
!1679 = !DILocation(line: 655, column: 12, scope: !1673)
!1680 = !DILocalVariable(name: "data", arg: 4, scope: !1673, file: !3, line: 656, type: !41)
!1681 = !DILocation(line: 656, column: 12, scope: !1673)
!1682 = !DILocalVariable(name: "data_len", arg: 5, scope: !1673, file: !3, line: 657, type: !5)
!1683 = !DILocation(line: 657, column: 12, scope: !1673)
!1684 = !DILocalVariable(name: "key_block", scope: !1673, file: !3, line: 660, type: !1317)
!1685 = !DILocation(line: 660, column: 11, scope: !1673)
!1686 = !DILocation(line: 661, column: 3, scope: !1673)
!1687 = !DILocalVariable(name: "nkey", scope: !1673, file: !3, line: 662, type: !41)
!1688 = !DILocation(line: 662, column: 12, scope: !1673)
!1689 = !DILocation(line: 662, column: 19, scope: !1673)
!1690 = !DILocalVariable(name: "ite", scope: !1673, file: !3, line: 663, type: !5)
!1691 = !DILocation(line: 663, column: 12, scope: !1673)
!1692 = !DILocation(line: 664, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 664, column: 7)
!1694 = !DILocation(line: 664, column: 15, scope: !1693)
!1695 = !DILocation(line: 664, column: 7, scope: !1673)
!1696 = !DILocation(line: 666, column: 11, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 665, column: 3)
!1698 = !DILocation(line: 666, column: 9, scope: !1697)
!1699 = !DILocation(line: 667, column: 3, scope: !1697)
!1700 = !DILocation(line: 670, column: 9, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 669, column: 3)
!1702 = !DILocalVariable(name: "zeroes", scope: !1673, file: !3, line: 672, type: !41)
!1703 = !DILocation(line: 672, column: 12, scope: !1673)
!1704 = !DILocation(line: 672, column: 21, scope: !1673)
!1705 = !DILocation(line: 672, column: 33, scope: !1673)
!1706 = !DILocation(line: 672, column: 31, scope: !1673)
!1707 = !DILocation(line: 673, column: 3, scope: !1673)
!1708 = !DILocation(line: 674, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 674, column: 7)
!1710 = !DILocation(line: 674, column: 15, scope: !1709)
!1711 = !DILocation(line: 674, column: 7, scope: !1673)
!1712 = !DILocation(line: 676, column: 12, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 675, column: 3)
!1714 = !DILocation(line: 676, column: 18, scope: !1713)
!1715 = !DILocation(line: 676, column: 23, scope: !1713)
!1716 = !DILocation(line: 676, column: 31, scope: !1713)
!1717 = !DILocation(line: 676, column: 5, scope: !1713)
!1718 = !DILocation(line: 677, column: 3, scope: !1713)
!1719 = !DILocation(line: 680, column: 29, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 679, column: 3)
!1721 = !DILocation(line: 680, column: 35, scope: !1720)
!1722 = !DILocation(line: 680, column: 40, scope: !1720)
!1723 = !DILocation(line: 680, column: 5, scope: !1720)
!1724 = !DILocalVariable(name: "ipad", scope: !1673, file: !3, line: 682, type: !1317)
!1725 = !DILocation(line: 682, column: 11, scope: !1673)
!1726 = !DILocation(line: 683, column: 3, scope: !1673)
!1727 = !DILocalVariable(name: "i", scope: !1728, file: !3, line: 684, type: !5)
!1728 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 684, column: 3)
!1729 = !DILocation(line: 684, column: 17, scope: !1728)
!1730 = !DILocation(line: 684, column: 8, scope: !1728)
!1731 = !DILocation(line: 684, column: 25, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 684, column: 3)
!1733 = !DILocation(line: 684, column: 27, scope: !1732)
!1734 = !DILocation(line: 684, column: 3, scope: !1728)
!1735 = !DILocalVariable(name: "xi", scope: !1736, file: !3, line: 686, type: !42)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 685, column: 3)
!1737 = !DILocation(line: 686, column: 13, scope: !1736)
!1738 = !DILocation(line: 686, column: 23, scope: !1736)
!1739 = !DILocation(line: 686, column: 18, scope: !1736)
!1740 = !DILocalVariable(name: "yi", scope: !1736, file: !3, line: 687, type: !42)
!1741 = !DILocation(line: 687, column: 13, scope: !1736)
!1742 = !DILocation(line: 687, column: 28, scope: !1736)
!1743 = !DILocation(line: 687, column: 18, scope: !1736)
!1744 = !DILocation(line: 688, column: 25, scope: !1736)
!1745 = !DILocation(line: 688, column: 15, scope: !1736)
!1746 = !DILocation(line: 688, column: 40, scope: !1736)
!1747 = !DILocation(line: 688, column: 30, scope: !1736)
!1748 = !DILocation(line: 688, column: 28, scope: !1736)
!1749 = !DILocation(line: 688, column: 10, scope: !1736)
!1750 = !DILocation(line: 688, column: 5, scope: !1736)
!1751 = !DILocation(line: 688, column: 13, scope: !1736)
!1752 = !DILocation(line: 689, column: 3, scope: !1736)
!1753 = !DILocation(line: 684, column: 36, scope: !1732)
!1754 = !DILocation(line: 684, column: 3, scope: !1732)
!1755 = distinct !{!1755, !1734, !1756, !132}
!1756 = !DILocation(line: 689, column: 3, scope: !1728)
!1757 = !DILocalVariable(name: "opad", scope: !1673, file: !3, line: 690, type: !1317)
!1758 = !DILocation(line: 690, column: 11, scope: !1673)
!1759 = !DILocation(line: 691, column: 3, scope: !1673)
!1760 = !DILocalVariable(name: "i", scope: !1761, file: !3, line: 692, type: !5)
!1761 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 692, column: 3)
!1762 = !DILocation(line: 692, column: 17, scope: !1761)
!1763 = !DILocation(line: 692, column: 8, scope: !1761)
!1764 = !DILocation(line: 692, column: 25, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 692, column: 3)
!1766 = !DILocation(line: 692, column: 27, scope: !1765)
!1767 = !DILocation(line: 692, column: 3, scope: !1761)
!1768 = !DILocalVariable(name: "xi", scope: !1769, file: !3, line: 694, type: !42)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 693, column: 3)
!1770 = !DILocation(line: 694, column: 13, scope: !1769)
!1771 = !DILocation(line: 694, column: 23, scope: !1769)
!1772 = !DILocation(line: 694, column: 18, scope: !1769)
!1773 = !DILocalVariable(name: "yi", scope: !1769, file: !3, line: 695, type: !42)
!1774 = !DILocation(line: 695, column: 13, scope: !1769)
!1775 = !DILocation(line: 695, column: 28, scope: !1769)
!1776 = !DILocation(line: 695, column: 18, scope: !1769)
!1777 = !DILocation(line: 696, column: 25, scope: !1769)
!1778 = !DILocation(line: 696, column: 15, scope: !1769)
!1779 = !DILocation(line: 696, column: 40, scope: !1769)
!1780 = !DILocation(line: 696, column: 30, scope: !1769)
!1781 = !DILocation(line: 696, column: 28, scope: !1769)
!1782 = !DILocation(line: 696, column: 10, scope: !1769)
!1783 = !DILocation(line: 696, column: 5, scope: !1769)
!1784 = !DILocation(line: 696, column: 13, scope: !1769)
!1785 = !DILocation(line: 697, column: 3, scope: !1769)
!1786 = !DILocation(line: 692, column: 36, scope: !1765)
!1787 = !DILocation(line: 692, column: 3, scope: !1765)
!1788 = distinct !{!1788, !1767, !1789, !132}
!1789 = !DILocation(line: 697, column: 3, scope: !1761)
!1790 = !DILocalVariable(name: "st", scope: !1673, file: !3, line: 698, type: !1426)
!1791 = !DILocation(line: 698, column: 12, scope: !1673)
!1792 = !DILocation(line: 699, column: 3, scope: !1673)
!1793 = !DILocalVariable(name: "i", scope: !1794, file: !3, line: 699, type: !5)
!1794 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 699, column: 3)
!1795 = !DILocation(line: 699, column: 3, scope: !1794)
!1796 = !DILocalVariable(name: "os", scope: !1797, file: !3, line: 699, type: !1434)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 699, column: 3)
!1798 = !DILocation(line: 699, column: 3, scope: !1797)
!1799 = !DILocalVariable(name: "x", scope: !1797, file: !3, line: 699, type: !10)
!1800 = !DILocalVariable(name: "os", scope: !1801, file: !3, line: 699, type: !1434)
!1801 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 699, column: 3)
!1802 = !DILocation(line: 699, column: 3, scope: !1801)
!1803 = !DILocalVariable(name: "x", scope: !1801, file: !3, line: 699, type: !10)
!1804 = !DILocalVariable(name: "os", scope: !1805, file: !3, line: 699, type: !1434)
!1805 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 699, column: 3)
!1806 = !DILocation(line: 699, column: 3, scope: !1805)
!1807 = !DILocalVariable(name: "x", scope: !1805, file: !3, line: 699, type: !10)
!1808 = !DILocalVariable(name: "os", scope: !1809, file: !3, line: 699, type: !1434)
!1809 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 699, column: 3)
!1810 = !DILocation(line: 699, column: 3, scope: !1809)
!1811 = !DILocalVariable(name: "x", scope: !1809, file: !3, line: 699, type: !10)
!1812 = !DILocalVariable(name: "os", scope: !1813, file: !3, line: 699, type: !1434)
!1813 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 699, column: 3)
!1814 = !DILocation(line: 699, column: 3, scope: !1813)
!1815 = !DILocalVariable(name: "x", scope: !1813, file: !3, line: 699, type: !10)
!1816 = !DILocalVariable(name: "os", scope: !1817, file: !3, line: 699, type: !1434)
!1817 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 699, column: 3)
!1818 = !DILocation(line: 699, column: 3, scope: !1817)
!1819 = !DILocalVariable(name: "x", scope: !1817, file: !3, line: 699, type: !10)
!1820 = !DILocalVariable(name: "os", scope: !1821, file: !3, line: 699, type: !1434)
!1821 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 699, column: 3)
!1822 = !DILocation(line: 699, column: 3, scope: !1821)
!1823 = !DILocalVariable(name: "x", scope: !1821, file: !3, line: 699, type: !10)
!1824 = !DILocalVariable(name: "os", scope: !1825, file: !3, line: 699, type: !1434)
!1825 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 699, column: 3)
!1826 = !DILocation(line: 699, column: 3, scope: !1825)
!1827 = !DILocalVariable(name: "x", scope: !1825, file: !3, line: 699, type: !10)
!1828 = !DILocalVariable(name: "s", scope: !1673, file: !3, line: 706, type: !1434)
!1829 = !DILocation(line: 706, column: 13, scope: !1673)
!1830 = !DILocation(line: 706, column: 17, scope: !1673)
!1831 = !DILocalVariable(name: "dst1", scope: !1673, file: !3, line: 707, type: !41)
!1832 = !DILocation(line: 707, column: 12, scope: !1673)
!1833 = !DILocation(line: 707, column: 19, scope: !1673)
!1834 = !DILocation(line: 708, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 708, column: 7)
!1836 = !DILocation(line: 708, column: 16, scope: !1835)
!1837 = !DILocation(line: 708, column: 7, scope: !1673)
!1838 = !DILocation(line: 710, column: 57, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 709, column: 3)
!1840 = !DILocation(line: 711, column: 9, scope: !1839)
!1841 = !DILocation(line: 710, column: 39, scope: !1839)
!1842 = !DILocation(line: 713, column: 7, scope: !1839)
!1843 = !DILocation(line: 714, column: 7, scope: !1839)
!1844 = !DILocation(line: 710, column: 5, scope: !1839)
!1845 = !DILocation(line: 715, column: 3, scope: !1839)
!1846 = !DILocalVariable(name: "block_len", scope: !1847, file: !3, line: 718, type: !5)
!1847 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 717, column: 3)
!1848 = !DILocation(line: 718, column: 14, scope: !1847)
!1849 = !DILocalVariable(name: "n_blocks0", scope: !1847, file: !3, line: 719, type: !5)
!1850 = !DILocation(line: 719, column: 14, scope: !1847)
!1851 = !DILocation(line: 719, column: 26, scope: !1847)
!1852 = !DILocation(line: 719, column: 37, scope: !1847)
!1853 = !DILocation(line: 719, column: 35, scope: !1847)
!1854 = !DILocalVariable(name: "rem0", scope: !1847, file: !3, line: 720, type: !5)
!1855 = !DILocation(line: 720, column: 14, scope: !1847)
!1856 = !DILocation(line: 720, column: 21, scope: !1847)
!1857 = !DILocation(line: 720, column: 32, scope: !1847)
!1858 = !DILocation(line: 720, column: 30, scope: !1847)
!1859 = !DILocalVariable(name: "scrut", scope: !1847, file: !3, line: 721, type: !197)
!1860 = !DILocation(line: 721, column: 27, scope: !1847)
!1861 = !DILocation(line: 722, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 722, column: 9)
!1863 = !DILocation(line: 722, column: 19, scope: !1862)
!1864 = !DILocation(line: 722, column: 24, scope: !1862)
!1865 = !DILocation(line: 722, column: 27, scope: !1862)
!1866 = !DILocation(line: 722, column: 32, scope: !1862)
!1867 = !DILocation(line: 722, column: 9, scope: !1847)
!1868 = !DILocalVariable(name: "n_blocks_", scope: !1869, file: !3, line: 724, type: !5)
!1869 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 723, column: 5)
!1870 = !DILocation(line: 724, column: 16, scope: !1869)
!1871 = !DILocation(line: 724, column: 28, scope: !1869)
!1872 = !DILocation(line: 724, column: 38, scope: !1869)
!1873 = !DILocation(line: 725, column: 39, scope: !1869)
!1874 = !DILocation(line: 725, column: 48, scope: !1869)
!1875 = !DILocation(line: 725, column: 66, scope: !1869)
!1876 = !DILocation(line: 725, column: 77, scope: !1869)
!1877 = !DILocation(line: 725, column: 89, scope: !1869)
!1878 = !DILocation(line: 725, column: 87, scope: !1869)
!1879 = !DILocation(line: 725, column: 75, scope: !1869)
!1880 = !DILocation(line: 725, column: 16, scope: !1869)
!1881 = !DILocation(line: 726, column: 5, scope: !1869)
!1882 = !DILocation(line: 729, column: 39, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 728, column: 5)
!1884 = !DILocation(line: 729, column: 48, scope: !1883)
!1885 = !DILocation(line: 729, column: 66, scope: !1883)
!1886 = !DILocation(line: 729, column: 16, scope: !1883)
!1887 = !DILocalVariable(name: "n_blocks", scope: !1847, file: !3, line: 731, type: !5)
!1888 = !DILocation(line: 731, column: 14, scope: !1847)
!1889 = !DILocation(line: 731, column: 31, scope: !1847)
!1890 = !DILocalVariable(name: "rem_len", scope: !1847, file: !3, line: 732, type: !5)
!1891 = !DILocation(line: 732, column: 14, scope: !1847)
!1892 = !DILocation(line: 732, column: 30, scope: !1847)
!1893 = !DILocalVariable(name: "full_blocks_len", scope: !1847, file: !3, line: 733, type: !5)
!1894 = !DILocation(line: 733, column: 14, scope: !1847)
!1895 = !DILocation(line: 733, column: 32, scope: !1847)
!1896 = !DILocation(line: 733, column: 43, scope: !1847)
!1897 = !DILocation(line: 733, column: 41, scope: !1847)
!1898 = !DILocalVariable(name: "full_blocks", scope: !1847, file: !3, line: 734, type: !41)
!1899 = !DILocation(line: 734, column: 14, scope: !1847)
!1900 = !DILocation(line: 734, column: 28, scope: !1847)
!1901 = !DILocalVariable(name: "rem", scope: !1847, file: !3, line: 735, type: !41)
!1902 = !DILocation(line: 735, column: 14, scope: !1847)
!1903 = !DILocation(line: 735, column: 20, scope: !1847)
!1904 = !DILocation(line: 735, column: 27, scope: !1847)
!1905 = !DILocation(line: 735, column: 25, scope: !1847)
!1906 = !DILocation(line: 736, column: 48, scope: !1847)
!1907 = !DILocation(line: 736, column: 54, scope: !1847)
!1908 = !DILocation(line: 736, column: 5, scope: !1847)
!1909 = !DILocation(line: 737, column: 42, scope: !1847)
!1910 = !DILocation(line: 737, column: 51, scope: !1847)
!1911 = !DILocation(line: 737, column: 59, scope: !1847)
!1912 = !DILocation(line: 737, column: 72, scope: !1847)
!1913 = !DILocation(line: 737, column: 5, scope: !1847)
!1914 = !DILocation(line: 738, column: 75, scope: !1847)
!1915 = !DILocation(line: 739, column: 53, scope: !1847)
!1916 = !DILocation(line: 739, column: 43, scope: !1847)
!1917 = !DILocation(line: 739, column: 11, scope: !1847)
!1918 = !DILocation(line: 738, column: 57, scope: !1847)
!1919 = !DILocation(line: 740, column: 51, scope: !1847)
!1920 = !DILocation(line: 740, column: 41, scope: !1847)
!1921 = !DILocation(line: 740, column: 9, scope: !1847)
!1922 = !DILocation(line: 738, column: 39, scope: !1847)
!1923 = !DILocation(line: 741, column: 7, scope: !1847)
!1924 = !DILocation(line: 742, column: 7, scope: !1847)
!1925 = !DILocation(line: 743, column: 7, scope: !1847)
!1926 = !DILocation(line: 738, column: 5, scope: !1847)
!1927 = !DILocation(line: 745, column: 32, scope: !1673)
!1928 = !DILocation(line: 745, column: 35, scope: !1673)
!1929 = !DILocation(line: 745, column: 3, scope: !1673)
!1930 = !DILocalVariable(name: "hash1", scope: !1673, file: !3, line: 746, type: !41)
!1931 = !DILocation(line: 746, column: 12, scope: !1673)
!1932 = !DILocation(line: 746, column: 20, scope: !1673)
!1933 = !DILocation(line: 747, column: 30, scope: !1673)
!1934 = !DILocation(line: 747, column: 3, scope: !1673)
!1935 = !DILocalVariable(name: "block_len", scope: !1673, file: !3, line: 748, type: !5)
!1936 = !DILocation(line: 748, column: 12, scope: !1673)
!1937 = !DILocalVariable(name: "n_blocks0", scope: !1673, file: !3, line: 749, type: !5)
!1938 = !DILocation(line: 749, column: 12, scope: !1673)
!1939 = !DILocation(line: 749, column: 30, scope: !1673)
!1940 = !DILocation(line: 749, column: 28, scope: !1673)
!1941 = !DILocalVariable(name: "rem0", scope: !1673, file: !3, line: 750, type: !5)
!1942 = !DILocation(line: 750, column: 12, scope: !1673)
!1943 = !DILocation(line: 750, column: 25, scope: !1673)
!1944 = !DILocation(line: 750, column: 23, scope: !1673)
!1945 = !DILocalVariable(name: "scrut", scope: !1673, file: !3, line: 751, type: !197)
!1946 = !DILocation(line: 751, column: 25, scope: !1673)
!1947 = !DILocation(line: 752, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 752, column: 7)
!1949 = !DILocation(line: 752, column: 17, scope: !1948)
!1950 = !DILocation(line: 752, column: 22, scope: !1948)
!1951 = !DILocation(line: 752, column: 25, scope: !1948)
!1952 = !DILocation(line: 752, column: 30, scope: !1948)
!1953 = !DILocation(line: 752, column: 7, scope: !1673)
!1954 = !DILocalVariable(name: "n_blocks_", scope: !1955, file: !3, line: 754, type: !5)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 753, column: 3)
!1956 = !DILocation(line: 754, column: 14, scope: !1955)
!1957 = !DILocation(line: 754, column: 26, scope: !1955)
!1958 = !DILocation(line: 754, column: 36, scope: !1955)
!1959 = !DILocation(line: 755, column: 37, scope: !1955)
!1960 = !DILocation(line: 755, column: 46, scope: !1955)
!1961 = !DILocation(line: 755, column: 70, scope: !1955)
!1962 = !DILocation(line: 755, column: 82, scope: !1955)
!1963 = !DILocation(line: 755, column: 80, scope: !1955)
!1964 = !DILocation(line: 755, column: 68, scope: !1955)
!1965 = !DILocation(line: 755, column: 14, scope: !1955)
!1966 = !DILocation(line: 756, column: 3, scope: !1955)
!1967 = !DILocation(line: 759, column: 37, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 758, column: 3)
!1969 = !DILocation(line: 759, column: 46, scope: !1968)
!1970 = !DILocation(line: 759, column: 64, scope: !1968)
!1971 = !DILocation(line: 759, column: 14, scope: !1968)
!1972 = !DILocalVariable(name: "n_blocks", scope: !1673, file: !3, line: 761, type: !5)
!1973 = !DILocation(line: 761, column: 12, scope: !1673)
!1974 = !DILocation(line: 761, column: 29, scope: !1673)
!1975 = !DILocalVariable(name: "rem_len", scope: !1673, file: !3, line: 762, type: !5)
!1976 = !DILocation(line: 762, column: 12, scope: !1673)
!1977 = !DILocation(line: 762, column: 28, scope: !1673)
!1978 = !DILocalVariable(name: "full_blocks_len", scope: !1673, file: !3, line: 763, type: !5)
!1979 = !DILocation(line: 763, column: 12, scope: !1673)
!1980 = !DILocation(line: 763, column: 30, scope: !1673)
!1981 = !DILocation(line: 763, column: 41, scope: !1673)
!1982 = !DILocation(line: 763, column: 39, scope: !1673)
!1983 = !DILocalVariable(name: "full_blocks", scope: !1673, file: !3, line: 764, type: !41)
!1984 = !DILocation(line: 764, column: 12, scope: !1673)
!1985 = !DILocation(line: 764, column: 26, scope: !1673)
!1986 = !DILocalVariable(name: "rem", scope: !1673, file: !3, line: 765, type: !41)
!1987 = !DILocation(line: 765, column: 12, scope: !1673)
!1988 = !DILocation(line: 765, column: 18, scope: !1673)
!1989 = !DILocation(line: 765, column: 26, scope: !1673)
!1990 = !DILocation(line: 765, column: 24, scope: !1673)
!1991 = !DILocation(line: 766, column: 46, scope: !1673)
!1992 = !DILocation(line: 766, column: 52, scope: !1673)
!1993 = !DILocation(line: 766, column: 3, scope: !1673)
!1994 = !DILocation(line: 767, column: 40, scope: !1673)
!1995 = !DILocation(line: 767, column: 49, scope: !1673)
!1996 = !DILocation(line: 767, column: 57, scope: !1673)
!1997 = !DILocation(line: 767, column: 70, scope: !1673)
!1998 = !DILocation(line: 767, column: 3, scope: !1673)
!1999 = !DILocation(line: 768, column: 73, scope: !1673)
!2000 = !DILocation(line: 769, column: 51, scope: !1673)
!2001 = !DILocation(line: 769, column: 41, scope: !1673)
!2002 = !DILocation(line: 769, column: 9, scope: !1673)
!2003 = !DILocation(line: 768, column: 55, scope: !1673)
!2004 = !DILocation(line: 770, column: 49, scope: !1673)
!2005 = !DILocation(line: 770, column: 39, scope: !1673)
!2006 = !DILocation(line: 770, column: 7, scope: !1673)
!2007 = !DILocation(line: 768, column: 37, scope: !1673)
!2008 = !DILocation(line: 771, column: 5, scope: !1673)
!2009 = !DILocation(line: 772, column: 5, scope: !1673)
!2010 = !DILocation(line: 773, column: 5, scope: !1673)
!2011 = !DILocation(line: 768, column: 3, scope: !1673)
!2012 = !DILocation(line: 774, column: 32, scope: !1673)
!2013 = !DILocation(line: 774, column: 35, scope: !1673)
!2014 = !DILocation(line: 774, column: 3, scope: !1673)
!2015 = !DILocation(line: 775, column: 1, scope: !1673)
!2016 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha3_224", scope: !3, file: !3, line: 784, type: !39, scopeLine: 791, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!2017 = !DILocalVariable(name: "dst", arg: 1, scope: !2016, file: !3, line: 785, type: !41)
!2018 = !DILocation(line: 785, column: 12, scope: !2016)
!2019 = !DILocalVariable(name: "key", arg: 2, scope: !2016, file: !3, line: 786, type: !41)
!2020 = !DILocation(line: 786, column: 12, scope: !2016)
!2021 = !DILocalVariable(name: "key_len", arg: 3, scope: !2016, file: !3, line: 787, type: !5)
!2022 = !DILocation(line: 787, column: 12, scope: !2016)
!2023 = !DILocalVariable(name: "data", arg: 4, scope: !2016, file: !3, line: 788, type: !41)
!2024 = !DILocation(line: 788, column: 12, scope: !2016)
!2025 = !DILocalVariable(name: "data_len", arg: 5, scope: !2016, file: !3, line: 789, type: !5)
!2026 = !DILocation(line: 789, column: 12, scope: !2016)
!2027 = !DILocalVariable(name: "key_block", scope: !2016, file: !3, line: 792, type: !2028)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1152, elements: !2029)
!2029 = !{!2030}
!2030 = !DISubrange(count: 144)
!2031 = !DILocation(line: 792, column: 11, scope: !2016)
!2032 = !DILocation(line: 793, column: 3, scope: !2016)
!2033 = !DILocalVariable(name: "nkey", scope: !2016, file: !3, line: 794, type: !41)
!2034 = !DILocation(line: 794, column: 12, scope: !2016)
!2035 = !DILocation(line: 794, column: 19, scope: !2016)
!2036 = !DILocalVariable(name: "ite", scope: !2016, file: !3, line: 795, type: !5)
!2037 = !DILocation(line: 795, column: 12, scope: !2016)
!2038 = !DILocation(line: 796, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 796, column: 7)
!2040 = !DILocation(line: 796, column: 15, scope: !2039)
!2041 = !DILocation(line: 796, column: 7, scope: !2016)
!2042 = !DILocation(line: 798, column: 11, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 797, column: 3)
!2044 = !DILocation(line: 798, column: 9, scope: !2043)
!2045 = !DILocation(line: 799, column: 3, scope: !2043)
!2046 = !DILocation(line: 802, column: 9, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 801, column: 3)
!2048 = !DILocalVariable(name: "zeroes", scope: !2016, file: !3, line: 804, type: !41)
!2049 = !DILocation(line: 804, column: 12, scope: !2016)
!2050 = !DILocation(line: 804, column: 21, scope: !2016)
!2051 = !DILocation(line: 804, column: 33, scope: !2016)
!2052 = !DILocation(line: 804, column: 31, scope: !2016)
!2053 = !DILocation(line: 805, column: 3, scope: !2016)
!2054 = !DILocation(line: 806, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 806, column: 7)
!2056 = !DILocation(line: 806, column: 15, scope: !2055)
!2057 = !DILocation(line: 806, column: 7, scope: !2016)
!2058 = !DILocation(line: 808, column: 12, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 807, column: 3)
!2060 = !DILocation(line: 808, column: 18, scope: !2059)
!2061 = !DILocation(line: 808, column: 23, scope: !2059)
!2062 = !DILocation(line: 808, column: 31, scope: !2059)
!2063 = !DILocation(line: 808, column: 5, scope: !2059)
!2064 = !DILocation(line: 809, column: 3, scope: !2059)
!2065 = !DILocation(line: 812, column: 29, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 811, column: 3)
!2067 = !DILocation(line: 812, column: 35, scope: !2066)
!2068 = !DILocation(line: 812, column: 40, scope: !2066)
!2069 = !DILocation(line: 812, column: 5, scope: !2066)
!2070 = !DILocalVariable(name: "ipad", scope: !2016, file: !3, line: 814, type: !2028)
!2071 = !DILocation(line: 814, column: 11, scope: !2016)
!2072 = !DILocation(line: 815, column: 3, scope: !2016)
!2073 = !DILocalVariable(name: "i", scope: !2074, file: !3, line: 816, type: !5)
!2074 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 816, column: 3)
!2075 = !DILocation(line: 816, column: 17, scope: !2074)
!2076 = !DILocation(line: 816, column: 8, scope: !2074)
!2077 = !DILocation(line: 816, column: 25, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 816, column: 3)
!2079 = !DILocation(line: 816, column: 27, scope: !2078)
!2080 = !DILocation(line: 816, column: 3, scope: !2074)
!2081 = !DILocalVariable(name: "xi", scope: !2082, file: !3, line: 818, type: !42)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 817, column: 3)
!2083 = !DILocation(line: 818, column: 13, scope: !2082)
!2084 = !DILocation(line: 818, column: 23, scope: !2082)
!2085 = !DILocation(line: 818, column: 18, scope: !2082)
!2086 = !DILocalVariable(name: "yi", scope: !2082, file: !3, line: 819, type: !42)
!2087 = !DILocation(line: 819, column: 13, scope: !2082)
!2088 = !DILocation(line: 819, column: 28, scope: !2082)
!2089 = !DILocation(line: 819, column: 18, scope: !2082)
!2090 = !DILocation(line: 820, column: 25, scope: !2082)
!2091 = !DILocation(line: 820, column: 15, scope: !2082)
!2092 = !DILocation(line: 820, column: 40, scope: !2082)
!2093 = !DILocation(line: 820, column: 30, scope: !2082)
!2094 = !DILocation(line: 820, column: 28, scope: !2082)
!2095 = !DILocation(line: 820, column: 10, scope: !2082)
!2096 = !DILocation(line: 820, column: 5, scope: !2082)
!2097 = !DILocation(line: 820, column: 13, scope: !2082)
!2098 = !DILocation(line: 821, column: 3, scope: !2082)
!2099 = !DILocation(line: 816, column: 36, scope: !2078)
!2100 = !DILocation(line: 816, column: 3, scope: !2078)
!2101 = distinct !{!2101, !2080, !2102, !132}
!2102 = !DILocation(line: 821, column: 3, scope: !2074)
!2103 = !DILocalVariable(name: "opad", scope: !2016, file: !3, line: 822, type: !2028)
!2104 = !DILocation(line: 822, column: 11, scope: !2016)
!2105 = !DILocation(line: 823, column: 3, scope: !2016)
!2106 = !DILocalVariable(name: "i", scope: !2107, file: !3, line: 824, type: !5)
!2107 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 824, column: 3)
!2108 = !DILocation(line: 824, column: 17, scope: !2107)
!2109 = !DILocation(line: 824, column: 8, scope: !2107)
!2110 = !DILocation(line: 824, column: 25, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 824, column: 3)
!2112 = !DILocation(line: 824, column: 27, scope: !2111)
!2113 = !DILocation(line: 824, column: 3, scope: !2107)
!2114 = !DILocalVariable(name: "xi", scope: !2115, file: !3, line: 826, type: !42)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 825, column: 3)
!2116 = !DILocation(line: 826, column: 13, scope: !2115)
!2117 = !DILocation(line: 826, column: 23, scope: !2115)
!2118 = !DILocation(line: 826, column: 18, scope: !2115)
!2119 = !DILocalVariable(name: "yi", scope: !2115, file: !3, line: 827, type: !42)
!2120 = !DILocation(line: 827, column: 13, scope: !2115)
!2121 = !DILocation(line: 827, column: 28, scope: !2115)
!2122 = !DILocation(line: 827, column: 18, scope: !2115)
!2123 = !DILocation(line: 828, column: 25, scope: !2115)
!2124 = !DILocation(line: 828, column: 15, scope: !2115)
!2125 = !DILocation(line: 828, column: 40, scope: !2115)
!2126 = !DILocation(line: 828, column: 30, scope: !2115)
!2127 = !DILocation(line: 828, column: 28, scope: !2115)
!2128 = !DILocation(line: 828, column: 10, scope: !2115)
!2129 = !DILocation(line: 828, column: 5, scope: !2115)
!2130 = !DILocation(line: 828, column: 13, scope: !2115)
!2131 = !DILocation(line: 829, column: 3, scope: !2115)
!2132 = !DILocation(line: 824, column: 36, scope: !2111)
!2133 = !DILocation(line: 824, column: 3, scope: !2111)
!2134 = distinct !{!2134, !2113, !2135, !132}
!2135 = !DILocation(line: 829, column: 3, scope: !2107)
!2136 = !DILocalVariable(name: "s", scope: !2016, file: !3, line: 830, type: !2137)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1600, elements: !2138)
!2138 = !{!2139}
!2139 = !DISubrange(count: 25)
!2140 = !DILocation(line: 830, column: 12, scope: !2016)
!2141 = !DILocalVariable(name: "dst1", scope: !2016, file: !3, line: 831, type: !41)
!2142 = !DILocation(line: 831, column: 12, scope: !2016)
!2143 = !DILocation(line: 831, column: 19, scope: !2016)
!2144 = !DILocation(line: 832, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 832, column: 7)
!2146 = !DILocation(line: 832, column: 16, scope: !2145)
!2147 = !DILocation(line: 832, column: 7, scope: !2016)
!2148 = !DILocation(line: 834, column: 69, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 833, column: 3)
!2150 = !DILocation(line: 834, column: 72, scope: !2149)
!2151 = !DILocation(line: 834, column: 5, scope: !2149)
!2152 = !DILocation(line: 835, column: 3, scope: !2149)
!2153 = !DILocalVariable(name: "block_len", scope: !2154, file: !3, line: 838, type: !5)
!2154 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 837, column: 3)
!2155 = !DILocation(line: 838, column: 14, scope: !2154)
!2156 = !DILocalVariable(name: "n_blocks0", scope: !2154, file: !3, line: 839, type: !5)
!2157 = !DILocation(line: 839, column: 14, scope: !2154)
!2158 = !DILocation(line: 839, column: 26, scope: !2154)
!2159 = !DILocation(line: 839, column: 37, scope: !2154)
!2160 = !DILocation(line: 839, column: 35, scope: !2154)
!2161 = !DILocalVariable(name: "rem0", scope: !2154, file: !3, line: 840, type: !5)
!2162 = !DILocation(line: 840, column: 14, scope: !2154)
!2163 = !DILocation(line: 840, column: 21, scope: !2154)
!2164 = !DILocation(line: 840, column: 32, scope: !2154)
!2165 = !DILocation(line: 840, column: 30, scope: !2154)
!2166 = !DILocalVariable(name: "scrut", scope: !2154, file: !3, line: 841, type: !197)
!2167 = !DILocation(line: 841, column: 27, scope: !2154)
!2168 = !DILocation(line: 842, column: 9, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 842, column: 9)
!2170 = !DILocation(line: 842, column: 19, scope: !2169)
!2171 = !DILocation(line: 842, column: 24, scope: !2169)
!2172 = !DILocation(line: 842, column: 27, scope: !2169)
!2173 = !DILocation(line: 842, column: 32, scope: !2169)
!2174 = !DILocation(line: 842, column: 9, scope: !2154)
!2175 = !DILocalVariable(name: "n_blocks_", scope: !2176, file: !3, line: 844, type: !5)
!2176 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 843, column: 5)
!2177 = !DILocation(line: 844, column: 16, scope: !2176)
!2178 = !DILocation(line: 844, column: 28, scope: !2176)
!2179 = !DILocation(line: 844, column: 38, scope: !2176)
!2180 = !DILocation(line: 845, column: 39, scope: !2176)
!2181 = !DILocation(line: 845, column: 48, scope: !2176)
!2182 = !DILocation(line: 845, column: 66, scope: !2176)
!2183 = !DILocation(line: 845, column: 77, scope: !2176)
!2184 = !DILocation(line: 845, column: 89, scope: !2176)
!2185 = !DILocation(line: 845, column: 87, scope: !2176)
!2186 = !DILocation(line: 845, column: 75, scope: !2176)
!2187 = !DILocation(line: 845, column: 16, scope: !2176)
!2188 = !DILocation(line: 846, column: 5, scope: !2176)
!2189 = !DILocation(line: 849, column: 39, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 848, column: 5)
!2191 = !DILocation(line: 849, column: 48, scope: !2190)
!2192 = !DILocation(line: 849, column: 66, scope: !2190)
!2193 = !DILocation(line: 849, column: 16, scope: !2190)
!2194 = !DILocalVariable(name: "n_blocks", scope: !2154, file: !3, line: 851, type: !5)
!2195 = !DILocation(line: 851, column: 14, scope: !2154)
!2196 = !DILocation(line: 851, column: 31, scope: !2154)
!2197 = !DILocalVariable(name: "rem_len", scope: !2154, file: !3, line: 852, type: !5)
!2198 = !DILocation(line: 852, column: 14, scope: !2154)
!2199 = !DILocation(line: 852, column: 30, scope: !2154)
!2200 = !DILocalVariable(name: "full_blocks_len", scope: !2154, file: !3, line: 853, type: !5)
!2201 = !DILocation(line: 853, column: 14, scope: !2154)
!2202 = !DILocation(line: 853, column: 32, scope: !2154)
!2203 = !DILocation(line: 853, column: 43, scope: !2154)
!2204 = !DILocation(line: 853, column: 41, scope: !2154)
!2205 = !DILocalVariable(name: "full_blocks", scope: !2154, file: !3, line: 854, type: !41)
!2206 = !DILocation(line: 854, column: 14, scope: !2154)
!2207 = !DILocation(line: 854, column: 28, scope: !2154)
!2208 = !DILocalVariable(name: "rem", scope: !2154, file: !3, line: 855, type: !41)
!2209 = !DILocation(line: 855, column: 14, scope: !2154)
!2210 = !DILocation(line: 855, column: 20, scope: !2154)
!2211 = !DILocation(line: 855, column: 27, scope: !2154)
!2212 = !DILocation(line: 855, column: 25, scope: !2154)
!2213 = !DILocation(line: 856, column: 70, scope: !2154)
!2214 = !DILocation(line: 856, column: 73, scope: !2154)
!2215 = !DILocation(line: 856, column: 5, scope: !2154)
!2216 = !DILocation(line: 857, column: 70, scope: !2154)
!2217 = !DILocation(line: 857, column: 73, scope: !2154)
!2218 = !DILocation(line: 857, column: 86, scope: !2154)
!2219 = !DILocation(line: 857, column: 5, scope: !2154)
!2220 = !DILocation(line: 858, column: 69, scope: !2154)
!2221 = !DILocation(line: 858, column: 72, scope: !2154)
!2222 = !DILocation(line: 858, column: 77, scope: !2154)
!2223 = !DILocation(line: 858, column: 5, scope: !2154)
!2224 = !DILocalVariable(name: "remOut", scope: !2016, file: !3, line: 860, type: !5)
!2225 = !DILocation(line: 860, column: 12, scope: !2016)
!2226 = !DILocalVariable(name: "hbuf0", scope: !2016, file: !3, line: 861, type: !2227)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !2228)
!2228 = !{!2229}
!2229 = !DISubrange(count: 256)
!2230 = !DILocation(line: 861, column: 11, scope: !2016)
!2231 = !DILocalVariable(name: "ws0", scope: !2016, file: !3, line: 862, type: !2232)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !2233)
!2233 = !{!2234}
!2234 = !DISubrange(count: 32)
!2235 = !DILocation(line: 862, column: 12, scope: !2016)
!2236 = !DILocation(line: 863, column: 3, scope: !2016)
!2237 = !DILocalVariable(name: "i", scope: !2238, file: !3, line: 864, type: !5)
!2238 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 864, column: 3)
!2239 = !DILocation(line: 864, column: 17, scope: !2238)
!2240 = !DILocation(line: 864, column: 8, scope: !2238)
!2241 = !DILocation(line: 864, column: 25, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 864, column: 3)
!2243 = !DILocation(line: 864, column: 27, scope: !2242)
!2244 = !DILocation(line: 864, column: 3, scope: !2238)
!2245 = !DILocation(line: 866, column: 5, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 865, column: 3)
!2247 = !DILocation(line: 867, column: 3, scope: !2246)
!2248 = !DILocation(line: 864, column: 35, scope: !2242)
!2249 = !DILocation(line: 864, column: 3, scope: !2242)
!2250 = distinct !{!2250, !2244, !2251, !132}
!2251 = !DILocation(line: 867, column: 3, scope: !2238)
!2252 = !DILocation(line: 868, column: 10, scope: !2016)
!2253 = !DILocation(line: 868, column: 15, scope: !2016)
!2254 = !DILocation(line: 868, column: 23, scope: !2016)
!2255 = !DILocation(line: 868, column: 21, scope: !2016)
!2256 = !DILocation(line: 868, column: 3, scope: !2016)
!2257 = !DILocation(line: 868, column: 38, scope: !2016)
!2258 = !DILocation(line: 868, column: 45, scope: !2016)
!2259 = !DILocalVariable(name: "hash1", scope: !2016, file: !3, line: 869, type: !41)
!2260 = !DILocation(line: 869, column: 12, scope: !2016)
!2261 = !DILocation(line: 869, column: 20, scope: !2016)
!2262 = !DILocation(line: 870, column: 56, scope: !2016)
!2263 = !DILocation(line: 870, column: 3, scope: !2016)
!2264 = !DILocalVariable(name: "block_len", scope: !2016, file: !3, line: 871, type: !5)
!2265 = !DILocation(line: 871, column: 12, scope: !2016)
!2266 = !DILocalVariable(name: "n_blocks0", scope: !2016, file: !3, line: 872, type: !5)
!2267 = !DILocation(line: 872, column: 12, scope: !2016)
!2268 = !DILocation(line: 872, column: 30, scope: !2016)
!2269 = !DILocation(line: 872, column: 28, scope: !2016)
!2270 = !DILocalVariable(name: "rem0", scope: !2016, file: !3, line: 873, type: !5)
!2271 = !DILocation(line: 873, column: 12, scope: !2016)
!2272 = !DILocation(line: 873, column: 25, scope: !2016)
!2273 = !DILocation(line: 873, column: 23, scope: !2016)
!2274 = !DILocalVariable(name: "scrut", scope: !2016, file: !3, line: 874, type: !197)
!2275 = !DILocation(line: 874, column: 25, scope: !2016)
!2276 = !DILocation(line: 875, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 875, column: 7)
!2278 = !DILocation(line: 875, column: 17, scope: !2277)
!2279 = !DILocation(line: 875, column: 22, scope: !2277)
!2280 = !DILocation(line: 875, column: 25, scope: !2277)
!2281 = !DILocation(line: 875, column: 30, scope: !2277)
!2282 = !DILocation(line: 875, column: 7, scope: !2016)
!2283 = !DILocalVariable(name: "n_blocks_", scope: !2284, file: !3, line: 877, type: !5)
!2284 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 876, column: 3)
!2285 = !DILocation(line: 877, column: 14, scope: !2284)
!2286 = !DILocation(line: 877, column: 26, scope: !2284)
!2287 = !DILocation(line: 877, column: 36, scope: !2284)
!2288 = !DILocation(line: 878, column: 37, scope: !2284)
!2289 = !DILocation(line: 878, column: 46, scope: !2284)
!2290 = !DILocation(line: 878, column: 70, scope: !2284)
!2291 = !DILocation(line: 878, column: 82, scope: !2284)
!2292 = !DILocation(line: 878, column: 80, scope: !2284)
!2293 = !DILocation(line: 878, column: 68, scope: !2284)
!2294 = !DILocation(line: 878, column: 14, scope: !2284)
!2295 = !DILocation(line: 879, column: 3, scope: !2284)
!2296 = !DILocation(line: 882, column: 37, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 881, column: 3)
!2298 = !DILocation(line: 882, column: 46, scope: !2297)
!2299 = !DILocation(line: 882, column: 64, scope: !2297)
!2300 = !DILocation(line: 882, column: 14, scope: !2297)
!2301 = !DILocalVariable(name: "n_blocks", scope: !2016, file: !3, line: 884, type: !5)
!2302 = !DILocation(line: 884, column: 12, scope: !2016)
!2303 = !DILocation(line: 884, column: 29, scope: !2016)
!2304 = !DILocalVariable(name: "rem_len", scope: !2016, file: !3, line: 885, type: !5)
!2305 = !DILocation(line: 885, column: 12, scope: !2016)
!2306 = !DILocation(line: 885, column: 28, scope: !2016)
!2307 = !DILocalVariable(name: "full_blocks_len", scope: !2016, file: !3, line: 886, type: !5)
!2308 = !DILocation(line: 886, column: 12, scope: !2016)
!2309 = !DILocation(line: 886, column: 30, scope: !2016)
!2310 = !DILocation(line: 886, column: 41, scope: !2016)
!2311 = !DILocation(line: 886, column: 39, scope: !2016)
!2312 = !DILocalVariable(name: "full_blocks", scope: !2016, file: !3, line: 887, type: !41)
!2313 = !DILocation(line: 887, column: 12, scope: !2016)
!2314 = !DILocation(line: 887, column: 26, scope: !2016)
!2315 = !DILocalVariable(name: "rem", scope: !2016, file: !3, line: 888, type: !41)
!2316 = !DILocation(line: 888, column: 12, scope: !2016)
!2317 = !DILocation(line: 888, column: 18, scope: !2016)
!2318 = !DILocation(line: 888, column: 26, scope: !2016)
!2319 = !DILocation(line: 888, column: 24, scope: !2016)
!2320 = !DILocation(line: 889, column: 68, scope: !2016)
!2321 = !DILocation(line: 889, column: 71, scope: !2016)
!2322 = !DILocation(line: 889, column: 3, scope: !2016)
!2323 = !DILocation(line: 890, column: 68, scope: !2016)
!2324 = !DILocation(line: 890, column: 71, scope: !2016)
!2325 = !DILocation(line: 890, column: 84, scope: !2016)
!2326 = !DILocation(line: 890, column: 3, scope: !2016)
!2327 = !DILocation(line: 891, column: 67, scope: !2016)
!2328 = !DILocation(line: 891, column: 70, scope: !2016)
!2329 = !DILocation(line: 891, column: 75, scope: !2016)
!2330 = !DILocation(line: 891, column: 3, scope: !2016)
!2331 = !DILocalVariable(name: "remOut0", scope: !2016, file: !3, line: 892, type: !5)
!2332 = !DILocation(line: 892, column: 12, scope: !2016)
!2333 = !DILocalVariable(name: "hbuf", scope: !2016, file: !3, line: 893, type: !2227)
!2334 = !DILocation(line: 893, column: 11, scope: !2016)
!2335 = !DILocalVariable(name: "ws", scope: !2016, file: !3, line: 894, type: !2232)
!2336 = !DILocation(line: 894, column: 12, scope: !2016)
!2337 = !DILocation(line: 895, column: 3, scope: !2016)
!2338 = !DILocalVariable(name: "i", scope: !2339, file: !3, line: 896, type: !5)
!2339 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 896, column: 3)
!2340 = !DILocation(line: 896, column: 17, scope: !2339)
!2341 = !DILocation(line: 896, column: 8, scope: !2339)
!2342 = !DILocation(line: 896, column: 25, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 896, column: 3)
!2344 = !DILocation(line: 896, column: 27, scope: !2343)
!2345 = !DILocation(line: 896, column: 3, scope: !2339)
!2346 = !DILocation(line: 898, column: 5, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 897, column: 3)
!2348 = !DILocation(line: 899, column: 3, scope: !2347)
!2349 = !DILocation(line: 896, column: 35, scope: !2343)
!2350 = !DILocation(line: 896, column: 3, scope: !2343)
!2351 = distinct !{!2351, !2345, !2352, !132}
!2352 = !DILocation(line: 899, column: 3, scope: !2339)
!2353 = !DILocation(line: 900, column: 10, scope: !2016)
!2354 = !DILocation(line: 900, column: 14, scope: !2016)
!2355 = !DILocation(line: 900, column: 22, scope: !2016)
!2356 = !DILocation(line: 900, column: 20, scope: !2016)
!2357 = !DILocation(line: 900, column: 3, scope: !2016)
!2358 = !DILocation(line: 900, column: 37, scope: !2016)
!2359 = !DILocation(line: 900, column: 45, scope: !2016)
!2360 = !DILocation(line: 901, column: 1, scope: !2016)
!2361 = distinct !DISubprogram(name: "store64", scope: !2362, file: !2362, line: 186, type: !2363, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !45)
!2362 = !DIFile(filename: "../karamel/include/krml/lowstar_endianness.h", directory: "/home/rss/Documents/hacl-star/dist/gcc-compatible", checksumkind: CSK_MD5, checksum: "3227c7c55ceb07f7a2effbf9fc3a9db8")
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !41, !10}
!2365 = !DILocalVariable(name: "b", arg: 1, scope: !2361, file: !2362, line: 186, type: !41)
!2366 = !DILocation(line: 186, column: 37, scope: !2361)
!2367 = !DILocalVariable(name: "i", arg: 2, scope: !2361, file: !2362, line: 186, type: !10)
!2368 = !DILocation(line: 186, column: 49, scope: !2361)
!2369 = !DILocation(line: 187, column: 10, scope: !2361)
!2370 = !DILocation(line: 187, column: 3, scope: !2361)
!2371 = !DILocation(line: 188, column: 1, scope: !2361)
!2372 = distinct !DISubprogram(name: "__uint64_identity", scope: !2373, file: !2373, line: 45, type: !2374, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !45)
!2373 = !DIFile(filename: "/usr/riscv64-linux-gnu/include/bits/uintn-identity.h", directory: "", checksumkind: CSK_MD5, checksum: "7942d3aff16dfeb682c4583e58e1a4f3")
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!11, !11}
!2376 = !DILocalVariable(name: "__x", arg: 1, scope: !2372, file: !2373, line: 45, type: !11)
!2377 = !DILocation(line: 45, column: 31, scope: !2372)
!2378 = !DILocation(line: 47, column: 10, scope: !2372)
!2379 = !DILocation(line: 47, column: 3, scope: !2372)
!2380 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha3_256", scope: !3, file: !3, line: 910, type: !39, scopeLine: 917, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!2381 = !DILocalVariable(name: "dst", arg: 1, scope: !2380, file: !3, line: 911, type: !41)
!2382 = !DILocation(line: 911, column: 12, scope: !2380)
!2383 = !DILocalVariable(name: "key", arg: 2, scope: !2380, file: !3, line: 912, type: !41)
!2384 = !DILocation(line: 912, column: 12, scope: !2380)
!2385 = !DILocalVariable(name: "key_len", arg: 3, scope: !2380, file: !3, line: 913, type: !5)
!2386 = !DILocation(line: 913, column: 12, scope: !2380)
!2387 = !DILocalVariable(name: "data", arg: 4, scope: !2380, file: !3, line: 914, type: !41)
!2388 = !DILocation(line: 914, column: 12, scope: !2380)
!2389 = !DILocalVariable(name: "data_len", arg: 5, scope: !2380, file: !3, line: 915, type: !5)
!2390 = !DILocation(line: 915, column: 12, scope: !2380)
!2391 = !DILocalVariable(name: "key_block", scope: !2380, file: !3, line: 918, type: !2392)
!2392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1088, elements: !2393)
!2393 = !{!2394}
!2394 = !DISubrange(count: 136)
!2395 = !DILocation(line: 918, column: 11, scope: !2380)
!2396 = !DILocation(line: 919, column: 3, scope: !2380)
!2397 = !DILocalVariable(name: "nkey", scope: !2380, file: !3, line: 920, type: !41)
!2398 = !DILocation(line: 920, column: 12, scope: !2380)
!2399 = !DILocation(line: 920, column: 19, scope: !2380)
!2400 = !DILocalVariable(name: "ite", scope: !2380, file: !3, line: 921, type: !5)
!2401 = !DILocation(line: 921, column: 12, scope: !2380)
!2402 = !DILocation(line: 922, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 922, column: 7)
!2404 = !DILocation(line: 922, column: 15, scope: !2403)
!2405 = !DILocation(line: 922, column: 7, scope: !2380)
!2406 = !DILocation(line: 924, column: 11, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 923, column: 3)
!2408 = !DILocation(line: 924, column: 9, scope: !2407)
!2409 = !DILocation(line: 925, column: 3, scope: !2407)
!2410 = !DILocation(line: 928, column: 9, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 927, column: 3)
!2412 = !DILocalVariable(name: "zeroes", scope: !2380, file: !3, line: 930, type: !41)
!2413 = !DILocation(line: 930, column: 12, scope: !2380)
!2414 = !DILocation(line: 930, column: 21, scope: !2380)
!2415 = !DILocation(line: 930, column: 33, scope: !2380)
!2416 = !DILocation(line: 930, column: 31, scope: !2380)
!2417 = !DILocation(line: 931, column: 3, scope: !2380)
!2418 = !DILocation(line: 932, column: 7, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 932, column: 7)
!2420 = !DILocation(line: 932, column: 15, scope: !2419)
!2421 = !DILocation(line: 932, column: 7, scope: !2380)
!2422 = !DILocation(line: 934, column: 12, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 933, column: 3)
!2424 = !DILocation(line: 934, column: 18, scope: !2423)
!2425 = !DILocation(line: 934, column: 23, scope: !2423)
!2426 = !DILocation(line: 934, column: 31, scope: !2423)
!2427 = !DILocation(line: 934, column: 5, scope: !2423)
!2428 = !DILocation(line: 935, column: 3, scope: !2423)
!2429 = !DILocation(line: 938, column: 29, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 937, column: 3)
!2431 = !DILocation(line: 938, column: 35, scope: !2430)
!2432 = !DILocation(line: 938, column: 40, scope: !2430)
!2433 = !DILocation(line: 938, column: 5, scope: !2430)
!2434 = !DILocalVariable(name: "ipad", scope: !2380, file: !3, line: 940, type: !2392)
!2435 = !DILocation(line: 940, column: 11, scope: !2380)
!2436 = !DILocation(line: 941, column: 3, scope: !2380)
!2437 = !DILocalVariable(name: "i", scope: !2438, file: !3, line: 942, type: !5)
!2438 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 942, column: 3)
!2439 = !DILocation(line: 942, column: 17, scope: !2438)
!2440 = !DILocation(line: 942, column: 8, scope: !2438)
!2441 = !DILocation(line: 942, column: 25, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 942, column: 3)
!2443 = !DILocation(line: 942, column: 27, scope: !2442)
!2444 = !DILocation(line: 942, column: 3, scope: !2438)
!2445 = !DILocalVariable(name: "xi", scope: !2446, file: !3, line: 944, type: !42)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 943, column: 3)
!2447 = !DILocation(line: 944, column: 13, scope: !2446)
!2448 = !DILocation(line: 944, column: 23, scope: !2446)
!2449 = !DILocation(line: 944, column: 18, scope: !2446)
!2450 = !DILocalVariable(name: "yi", scope: !2446, file: !3, line: 945, type: !42)
!2451 = !DILocation(line: 945, column: 13, scope: !2446)
!2452 = !DILocation(line: 945, column: 28, scope: !2446)
!2453 = !DILocation(line: 945, column: 18, scope: !2446)
!2454 = !DILocation(line: 946, column: 25, scope: !2446)
!2455 = !DILocation(line: 946, column: 15, scope: !2446)
!2456 = !DILocation(line: 946, column: 40, scope: !2446)
!2457 = !DILocation(line: 946, column: 30, scope: !2446)
!2458 = !DILocation(line: 946, column: 28, scope: !2446)
!2459 = !DILocation(line: 946, column: 10, scope: !2446)
!2460 = !DILocation(line: 946, column: 5, scope: !2446)
!2461 = !DILocation(line: 946, column: 13, scope: !2446)
!2462 = !DILocation(line: 947, column: 3, scope: !2446)
!2463 = !DILocation(line: 942, column: 36, scope: !2442)
!2464 = !DILocation(line: 942, column: 3, scope: !2442)
!2465 = distinct !{!2465, !2444, !2466, !132}
!2466 = !DILocation(line: 947, column: 3, scope: !2438)
!2467 = !DILocalVariable(name: "opad", scope: !2380, file: !3, line: 948, type: !2392)
!2468 = !DILocation(line: 948, column: 11, scope: !2380)
!2469 = !DILocation(line: 949, column: 3, scope: !2380)
!2470 = !DILocalVariable(name: "i", scope: !2471, file: !3, line: 950, type: !5)
!2471 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 950, column: 3)
!2472 = !DILocation(line: 950, column: 17, scope: !2471)
!2473 = !DILocation(line: 950, column: 8, scope: !2471)
!2474 = !DILocation(line: 950, column: 25, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 950, column: 3)
!2476 = !DILocation(line: 950, column: 27, scope: !2475)
!2477 = !DILocation(line: 950, column: 3, scope: !2471)
!2478 = !DILocalVariable(name: "xi", scope: !2479, file: !3, line: 952, type: !42)
!2479 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 951, column: 3)
!2480 = !DILocation(line: 952, column: 13, scope: !2479)
!2481 = !DILocation(line: 952, column: 23, scope: !2479)
!2482 = !DILocation(line: 952, column: 18, scope: !2479)
!2483 = !DILocalVariable(name: "yi", scope: !2479, file: !3, line: 953, type: !42)
!2484 = !DILocation(line: 953, column: 13, scope: !2479)
!2485 = !DILocation(line: 953, column: 28, scope: !2479)
!2486 = !DILocation(line: 953, column: 18, scope: !2479)
!2487 = !DILocation(line: 954, column: 25, scope: !2479)
!2488 = !DILocation(line: 954, column: 15, scope: !2479)
!2489 = !DILocation(line: 954, column: 40, scope: !2479)
!2490 = !DILocation(line: 954, column: 30, scope: !2479)
!2491 = !DILocation(line: 954, column: 28, scope: !2479)
!2492 = !DILocation(line: 954, column: 10, scope: !2479)
!2493 = !DILocation(line: 954, column: 5, scope: !2479)
!2494 = !DILocation(line: 954, column: 13, scope: !2479)
!2495 = !DILocation(line: 955, column: 3, scope: !2479)
!2496 = !DILocation(line: 950, column: 36, scope: !2475)
!2497 = !DILocation(line: 950, column: 3, scope: !2475)
!2498 = distinct !{!2498, !2477, !2499, !132}
!2499 = !DILocation(line: 955, column: 3, scope: !2471)
!2500 = !DILocalVariable(name: "s", scope: !2380, file: !3, line: 956, type: !2137)
!2501 = !DILocation(line: 956, column: 12, scope: !2380)
!2502 = !DILocalVariable(name: "dst1", scope: !2380, file: !3, line: 957, type: !41)
!2503 = !DILocation(line: 957, column: 12, scope: !2380)
!2504 = !DILocation(line: 957, column: 19, scope: !2380)
!2505 = !DILocation(line: 958, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 958, column: 7)
!2507 = !DILocation(line: 958, column: 16, scope: !2506)
!2508 = !DILocation(line: 958, column: 7, scope: !2380)
!2509 = !DILocation(line: 960, column: 69, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 959, column: 3)
!2511 = !DILocation(line: 960, column: 72, scope: !2510)
!2512 = !DILocation(line: 960, column: 5, scope: !2510)
!2513 = !DILocation(line: 961, column: 3, scope: !2510)
!2514 = !DILocalVariable(name: "block_len", scope: !2515, file: !3, line: 964, type: !5)
!2515 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 963, column: 3)
!2516 = !DILocation(line: 964, column: 14, scope: !2515)
!2517 = !DILocalVariable(name: "n_blocks0", scope: !2515, file: !3, line: 965, type: !5)
!2518 = !DILocation(line: 965, column: 14, scope: !2515)
!2519 = !DILocation(line: 965, column: 26, scope: !2515)
!2520 = !DILocation(line: 965, column: 37, scope: !2515)
!2521 = !DILocation(line: 965, column: 35, scope: !2515)
!2522 = !DILocalVariable(name: "rem0", scope: !2515, file: !3, line: 966, type: !5)
!2523 = !DILocation(line: 966, column: 14, scope: !2515)
!2524 = !DILocation(line: 966, column: 21, scope: !2515)
!2525 = !DILocation(line: 966, column: 32, scope: !2515)
!2526 = !DILocation(line: 966, column: 30, scope: !2515)
!2527 = !DILocalVariable(name: "scrut", scope: !2515, file: !3, line: 967, type: !197)
!2528 = !DILocation(line: 967, column: 27, scope: !2515)
!2529 = !DILocation(line: 968, column: 9, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 968, column: 9)
!2531 = !DILocation(line: 968, column: 19, scope: !2530)
!2532 = !DILocation(line: 968, column: 24, scope: !2530)
!2533 = !DILocation(line: 968, column: 27, scope: !2530)
!2534 = !DILocation(line: 968, column: 32, scope: !2530)
!2535 = !DILocation(line: 968, column: 9, scope: !2515)
!2536 = !DILocalVariable(name: "n_blocks_", scope: !2537, file: !3, line: 970, type: !5)
!2537 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 969, column: 5)
!2538 = !DILocation(line: 970, column: 16, scope: !2537)
!2539 = !DILocation(line: 970, column: 28, scope: !2537)
!2540 = !DILocation(line: 970, column: 38, scope: !2537)
!2541 = !DILocation(line: 971, column: 39, scope: !2537)
!2542 = !DILocation(line: 971, column: 48, scope: !2537)
!2543 = !DILocation(line: 971, column: 66, scope: !2537)
!2544 = !DILocation(line: 971, column: 77, scope: !2537)
!2545 = !DILocation(line: 971, column: 89, scope: !2537)
!2546 = !DILocation(line: 971, column: 87, scope: !2537)
!2547 = !DILocation(line: 971, column: 75, scope: !2537)
!2548 = !DILocation(line: 971, column: 16, scope: !2537)
!2549 = !DILocation(line: 972, column: 5, scope: !2537)
!2550 = !DILocation(line: 975, column: 39, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 974, column: 5)
!2552 = !DILocation(line: 975, column: 48, scope: !2551)
!2553 = !DILocation(line: 975, column: 66, scope: !2551)
!2554 = !DILocation(line: 975, column: 16, scope: !2551)
!2555 = !DILocalVariable(name: "n_blocks", scope: !2515, file: !3, line: 977, type: !5)
!2556 = !DILocation(line: 977, column: 14, scope: !2515)
!2557 = !DILocation(line: 977, column: 31, scope: !2515)
!2558 = !DILocalVariable(name: "rem_len", scope: !2515, file: !3, line: 978, type: !5)
!2559 = !DILocation(line: 978, column: 14, scope: !2515)
!2560 = !DILocation(line: 978, column: 30, scope: !2515)
!2561 = !DILocalVariable(name: "full_blocks_len", scope: !2515, file: !3, line: 979, type: !5)
!2562 = !DILocation(line: 979, column: 14, scope: !2515)
!2563 = !DILocation(line: 979, column: 32, scope: !2515)
!2564 = !DILocation(line: 979, column: 43, scope: !2515)
!2565 = !DILocation(line: 979, column: 41, scope: !2515)
!2566 = !DILocalVariable(name: "full_blocks", scope: !2515, file: !3, line: 980, type: !41)
!2567 = !DILocation(line: 980, column: 14, scope: !2515)
!2568 = !DILocation(line: 980, column: 28, scope: !2515)
!2569 = !DILocalVariable(name: "rem", scope: !2515, file: !3, line: 981, type: !41)
!2570 = !DILocation(line: 981, column: 14, scope: !2515)
!2571 = !DILocation(line: 981, column: 20, scope: !2515)
!2572 = !DILocation(line: 981, column: 27, scope: !2515)
!2573 = !DILocation(line: 981, column: 25, scope: !2515)
!2574 = !DILocation(line: 982, column: 70, scope: !2515)
!2575 = !DILocation(line: 982, column: 73, scope: !2515)
!2576 = !DILocation(line: 982, column: 5, scope: !2515)
!2577 = !DILocation(line: 983, column: 70, scope: !2515)
!2578 = !DILocation(line: 983, column: 73, scope: !2515)
!2579 = !DILocation(line: 983, column: 86, scope: !2515)
!2580 = !DILocation(line: 983, column: 5, scope: !2515)
!2581 = !DILocation(line: 984, column: 69, scope: !2515)
!2582 = !DILocation(line: 984, column: 72, scope: !2515)
!2583 = !DILocation(line: 984, column: 77, scope: !2515)
!2584 = !DILocation(line: 984, column: 5, scope: !2515)
!2585 = !DILocalVariable(name: "remOut", scope: !2380, file: !3, line: 986, type: !5)
!2586 = !DILocation(line: 986, column: 12, scope: !2380)
!2587 = !DILocalVariable(name: "hbuf0", scope: !2380, file: !3, line: 987, type: !2227)
!2588 = !DILocation(line: 987, column: 11, scope: !2380)
!2589 = !DILocalVariable(name: "ws0", scope: !2380, file: !3, line: 988, type: !2232)
!2590 = !DILocation(line: 988, column: 12, scope: !2380)
!2591 = !DILocation(line: 989, column: 3, scope: !2380)
!2592 = !DILocalVariable(name: "i", scope: !2593, file: !3, line: 990, type: !5)
!2593 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 990, column: 3)
!2594 = !DILocation(line: 990, column: 17, scope: !2593)
!2595 = !DILocation(line: 990, column: 8, scope: !2593)
!2596 = !DILocation(line: 990, column: 25, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 990, column: 3)
!2598 = !DILocation(line: 990, column: 27, scope: !2597)
!2599 = !DILocation(line: 990, column: 3, scope: !2593)
!2600 = !DILocation(line: 992, column: 5, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 991, column: 3)
!2602 = !DILocation(line: 993, column: 3, scope: !2601)
!2603 = !DILocation(line: 990, column: 35, scope: !2597)
!2604 = !DILocation(line: 990, column: 3, scope: !2597)
!2605 = distinct !{!2605, !2599, !2606, !132}
!2606 = !DILocation(line: 993, column: 3, scope: !2593)
!2607 = !DILocation(line: 994, column: 10, scope: !2380)
!2608 = !DILocation(line: 994, column: 15, scope: !2380)
!2609 = !DILocation(line: 994, column: 23, scope: !2380)
!2610 = !DILocation(line: 994, column: 21, scope: !2380)
!2611 = !DILocation(line: 994, column: 3, scope: !2380)
!2612 = !DILocation(line: 994, column: 38, scope: !2380)
!2613 = !DILocation(line: 994, column: 45, scope: !2380)
!2614 = !DILocalVariable(name: "hash1", scope: !2380, file: !3, line: 995, type: !41)
!2615 = !DILocation(line: 995, column: 12, scope: !2380)
!2616 = !DILocation(line: 995, column: 20, scope: !2380)
!2617 = !DILocation(line: 996, column: 56, scope: !2380)
!2618 = !DILocation(line: 996, column: 3, scope: !2380)
!2619 = !DILocalVariable(name: "block_len", scope: !2380, file: !3, line: 997, type: !5)
!2620 = !DILocation(line: 997, column: 12, scope: !2380)
!2621 = !DILocalVariable(name: "n_blocks0", scope: !2380, file: !3, line: 998, type: !5)
!2622 = !DILocation(line: 998, column: 12, scope: !2380)
!2623 = !DILocation(line: 998, column: 30, scope: !2380)
!2624 = !DILocation(line: 998, column: 28, scope: !2380)
!2625 = !DILocalVariable(name: "rem0", scope: !2380, file: !3, line: 999, type: !5)
!2626 = !DILocation(line: 999, column: 12, scope: !2380)
!2627 = !DILocation(line: 999, column: 25, scope: !2380)
!2628 = !DILocation(line: 999, column: 23, scope: !2380)
!2629 = !DILocalVariable(name: "scrut", scope: !2380, file: !3, line: 1000, type: !197)
!2630 = !DILocation(line: 1000, column: 25, scope: !2380)
!2631 = !DILocation(line: 1001, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1001, column: 7)
!2633 = !DILocation(line: 1001, column: 17, scope: !2632)
!2634 = !DILocation(line: 1001, column: 22, scope: !2632)
!2635 = !DILocation(line: 1001, column: 25, scope: !2632)
!2636 = !DILocation(line: 1001, column: 30, scope: !2632)
!2637 = !DILocation(line: 1001, column: 7, scope: !2380)
!2638 = !DILocalVariable(name: "n_blocks_", scope: !2639, file: !3, line: 1003, type: !5)
!2639 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1002, column: 3)
!2640 = !DILocation(line: 1003, column: 14, scope: !2639)
!2641 = !DILocation(line: 1003, column: 26, scope: !2639)
!2642 = !DILocation(line: 1003, column: 36, scope: !2639)
!2643 = !DILocation(line: 1004, column: 37, scope: !2639)
!2644 = !DILocation(line: 1004, column: 46, scope: !2639)
!2645 = !DILocation(line: 1004, column: 70, scope: !2639)
!2646 = !DILocation(line: 1004, column: 82, scope: !2639)
!2647 = !DILocation(line: 1004, column: 80, scope: !2639)
!2648 = !DILocation(line: 1004, column: 68, scope: !2639)
!2649 = !DILocation(line: 1004, column: 14, scope: !2639)
!2650 = !DILocation(line: 1005, column: 3, scope: !2639)
!2651 = !DILocation(line: 1008, column: 37, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1007, column: 3)
!2653 = !DILocation(line: 1008, column: 46, scope: !2652)
!2654 = !DILocation(line: 1008, column: 64, scope: !2652)
!2655 = !DILocation(line: 1008, column: 14, scope: !2652)
!2656 = !DILocalVariable(name: "n_blocks", scope: !2380, file: !3, line: 1010, type: !5)
!2657 = !DILocation(line: 1010, column: 12, scope: !2380)
!2658 = !DILocation(line: 1010, column: 29, scope: !2380)
!2659 = !DILocalVariable(name: "rem_len", scope: !2380, file: !3, line: 1011, type: !5)
!2660 = !DILocation(line: 1011, column: 12, scope: !2380)
!2661 = !DILocation(line: 1011, column: 28, scope: !2380)
!2662 = !DILocalVariable(name: "full_blocks_len", scope: !2380, file: !3, line: 1012, type: !5)
!2663 = !DILocation(line: 1012, column: 12, scope: !2380)
!2664 = !DILocation(line: 1012, column: 30, scope: !2380)
!2665 = !DILocation(line: 1012, column: 41, scope: !2380)
!2666 = !DILocation(line: 1012, column: 39, scope: !2380)
!2667 = !DILocalVariable(name: "full_blocks", scope: !2380, file: !3, line: 1013, type: !41)
!2668 = !DILocation(line: 1013, column: 12, scope: !2380)
!2669 = !DILocation(line: 1013, column: 26, scope: !2380)
!2670 = !DILocalVariable(name: "rem", scope: !2380, file: !3, line: 1014, type: !41)
!2671 = !DILocation(line: 1014, column: 12, scope: !2380)
!2672 = !DILocation(line: 1014, column: 18, scope: !2380)
!2673 = !DILocation(line: 1014, column: 26, scope: !2380)
!2674 = !DILocation(line: 1014, column: 24, scope: !2380)
!2675 = !DILocation(line: 1015, column: 68, scope: !2380)
!2676 = !DILocation(line: 1015, column: 71, scope: !2380)
!2677 = !DILocation(line: 1015, column: 3, scope: !2380)
!2678 = !DILocation(line: 1016, column: 68, scope: !2380)
!2679 = !DILocation(line: 1016, column: 71, scope: !2380)
!2680 = !DILocation(line: 1016, column: 84, scope: !2380)
!2681 = !DILocation(line: 1016, column: 3, scope: !2380)
!2682 = !DILocation(line: 1017, column: 67, scope: !2380)
!2683 = !DILocation(line: 1017, column: 70, scope: !2380)
!2684 = !DILocation(line: 1017, column: 75, scope: !2380)
!2685 = !DILocation(line: 1017, column: 3, scope: !2380)
!2686 = !DILocalVariable(name: "remOut0", scope: !2380, file: !3, line: 1018, type: !5)
!2687 = !DILocation(line: 1018, column: 12, scope: !2380)
!2688 = !DILocalVariable(name: "hbuf", scope: !2380, file: !3, line: 1019, type: !2227)
!2689 = !DILocation(line: 1019, column: 11, scope: !2380)
!2690 = !DILocalVariable(name: "ws", scope: !2380, file: !3, line: 1020, type: !2232)
!2691 = !DILocation(line: 1020, column: 12, scope: !2380)
!2692 = !DILocation(line: 1021, column: 3, scope: !2380)
!2693 = !DILocalVariable(name: "i", scope: !2694, file: !3, line: 1022, type: !5)
!2694 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1022, column: 3)
!2695 = !DILocation(line: 1022, column: 17, scope: !2694)
!2696 = !DILocation(line: 1022, column: 8, scope: !2694)
!2697 = !DILocation(line: 1022, column: 25, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1022, column: 3)
!2699 = !DILocation(line: 1022, column: 27, scope: !2698)
!2700 = !DILocation(line: 1022, column: 3, scope: !2694)
!2701 = !DILocation(line: 1024, column: 5, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1023, column: 3)
!2703 = !DILocation(line: 1025, column: 3, scope: !2702)
!2704 = !DILocation(line: 1022, column: 35, scope: !2698)
!2705 = !DILocation(line: 1022, column: 3, scope: !2698)
!2706 = distinct !{!2706, !2700, !2707, !132}
!2707 = !DILocation(line: 1025, column: 3, scope: !2694)
!2708 = !DILocation(line: 1026, column: 10, scope: !2380)
!2709 = !DILocation(line: 1026, column: 14, scope: !2380)
!2710 = !DILocation(line: 1026, column: 22, scope: !2380)
!2711 = !DILocation(line: 1026, column: 20, scope: !2380)
!2712 = !DILocation(line: 1026, column: 3, scope: !2380)
!2713 = !DILocation(line: 1026, column: 37, scope: !2380)
!2714 = !DILocation(line: 1026, column: 45, scope: !2380)
!2715 = !DILocation(line: 1027, column: 1, scope: !2380)
!2716 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha3_384", scope: !3, file: !3, line: 1036, type: !39, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!2717 = !DILocalVariable(name: "dst", arg: 1, scope: !2716, file: !3, line: 1037, type: !41)
!2718 = !DILocation(line: 1037, column: 12, scope: !2716)
!2719 = !DILocalVariable(name: "key", arg: 2, scope: !2716, file: !3, line: 1038, type: !41)
!2720 = !DILocation(line: 1038, column: 12, scope: !2716)
!2721 = !DILocalVariable(name: "key_len", arg: 3, scope: !2716, file: !3, line: 1039, type: !5)
!2722 = !DILocation(line: 1039, column: 12, scope: !2716)
!2723 = !DILocalVariable(name: "data", arg: 4, scope: !2716, file: !3, line: 1040, type: !41)
!2724 = !DILocation(line: 1040, column: 12, scope: !2716)
!2725 = !DILocalVariable(name: "data_len", arg: 5, scope: !2716, file: !3, line: 1041, type: !5)
!2726 = !DILocation(line: 1041, column: 12, scope: !2716)
!2727 = !DILocalVariable(name: "key_block", scope: !2716, file: !3, line: 1044, type: !2728)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 832, elements: !2729)
!2729 = !{!2730}
!2730 = !DISubrange(count: 104)
!2731 = !DILocation(line: 1044, column: 11, scope: !2716)
!2732 = !DILocation(line: 1045, column: 3, scope: !2716)
!2733 = !DILocalVariable(name: "nkey", scope: !2716, file: !3, line: 1046, type: !41)
!2734 = !DILocation(line: 1046, column: 12, scope: !2716)
!2735 = !DILocation(line: 1046, column: 19, scope: !2716)
!2736 = !DILocalVariable(name: "ite", scope: !2716, file: !3, line: 1047, type: !5)
!2737 = !DILocation(line: 1047, column: 12, scope: !2716)
!2738 = !DILocation(line: 1048, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1048, column: 7)
!2740 = !DILocation(line: 1048, column: 15, scope: !2739)
!2741 = !DILocation(line: 1048, column: 7, scope: !2716)
!2742 = !DILocation(line: 1050, column: 11, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1049, column: 3)
!2744 = !DILocation(line: 1050, column: 9, scope: !2743)
!2745 = !DILocation(line: 1051, column: 3, scope: !2743)
!2746 = !DILocation(line: 1054, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1053, column: 3)
!2748 = !DILocalVariable(name: "zeroes", scope: !2716, file: !3, line: 1056, type: !41)
!2749 = !DILocation(line: 1056, column: 12, scope: !2716)
!2750 = !DILocation(line: 1056, column: 21, scope: !2716)
!2751 = !DILocation(line: 1056, column: 33, scope: !2716)
!2752 = !DILocation(line: 1056, column: 31, scope: !2716)
!2753 = !DILocation(line: 1057, column: 3, scope: !2716)
!2754 = !DILocation(line: 1058, column: 7, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1058, column: 7)
!2756 = !DILocation(line: 1058, column: 15, scope: !2755)
!2757 = !DILocation(line: 1058, column: 7, scope: !2716)
!2758 = !DILocation(line: 1060, column: 12, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1059, column: 3)
!2760 = !DILocation(line: 1060, column: 18, scope: !2759)
!2761 = !DILocation(line: 1060, column: 23, scope: !2759)
!2762 = !DILocation(line: 1060, column: 31, scope: !2759)
!2763 = !DILocation(line: 1060, column: 5, scope: !2759)
!2764 = !DILocation(line: 1061, column: 3, scope: !2759)
!2765 = !DILocation(line: 1064, column: 29, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1063, column: 3)
!2767 = !DILocation(line: 1064, column: 35, scope: !2766)
!2768 = !DILocation(line: 1064, column: 40, scope: !2766)
!2769 = !DILocation(line: 1064, column: 5, scope: !2766)
!2770 = !DILocalVariable(name: "ipad", scope: !2716, file: !3, line: 1066, type: !2728)
!2771 = !DILocation(line: 1066, column: 11, scope: !2716)
!2772 = !DILocation(line: 1067, column: 3, scope: !2716)
!2773 = !DILocalVariable(name: "i", scope: !2774, file: !3, line: 1068, type: !5)
!2774 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1068, column: 3)
!2775 = !DILocation(line: 1068, column: 17, scope: !2774)
!2776 = !DILocation(line: 1068, column: 8, scope: !2774)
!2777 = !DILocation(line: 1068, column: 25, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1068, column: 3)
!2779 = !DILocation(line: 1068, column: 27, scope: !2778)
!2780 = !DILocation(line: 1068, column: 3, scope: !2774)
!2781 = !DILocalVariable(name: "xi", scope: !2782, file: !3, line: 1070, type: !42)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 1069, column: 3)
!2783 = !DILocation(line: 1070, column: 13, scope: !2782)
!2784 = !DILocation(line: 1070, column: 23, scope: !2782)
!2785 = !DILocation(line: 1070, column: 18, scope: !2782)
!2786 = !DILocalVariable(name: "yi", scope: !2782, file: !3, line: 1071, type: !42)
!2787 = !DILocation(line: 1071, column: 13, scope: !2782)
!2788 = !DILocation(line: 1071, column: 28, scope: !2782)
!2789 = !DILocation(line: 1071, column: 18, scope: !2782)
!2790 = !DILocation(line: 1072, column: 25, scope: !2782)
!2791 = !DILocation(line: 1072, column: 15, scope: !2782)
!2792 = !DILocation(line: 1072, column: 40, scope: !2782)
!2793 = !DILocation(line: 1072, column: 30, scope: !2782)
!2794 = !DILocation(line: 1072, column: 28, scope: !2782)
!2795 = !DILocation(line: 1072, column: 10, scope: !2782)
!2796 = !DILocation(line: 1072, column: 5, scope: !2782)
!2797 = !DILocation(line: 1072, column: 13, scope: !2782)
!2798 = !DILocation(line: 1073, column: 3, scope: !2782)
!2799 = !DILocation(line: 1068, column: 36, scope: !2778)
!2800 = !DILocation(line: 1068, column: 3, scope: !2778)
!2801 = distinct !{!2801, !2780, !2802, !132}
!2802 = !DILocation(line: 1073, column: 3, scope: !2774)
!2803 = !DILocalVariable(name: "opad", scope: !2716, file: !3, line: 1074, type: !2728)
!2804 = !DILocation(line: 1074, column: 11, scope: !2716)
!2805 = !DILocation(line: 1075, column: 3, scope: !2716)
!2806 = !DILocalVariable(name: "i", scope: !2807, file: !3, line: 1076, type: !5)
!2807 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1076, column: 3)
!2808 = !DILocation(line: 1076, column: 17, scope: !2807)
!2809 = !DILocation(line: 1076, column: 8, scope: !2807)
!2810 = !DILocation(line: 1076, column: 25, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 1076, column: 3)
!2812 = !DILocation(line: 1076, column: 27, scope: !2811)
!2813 = !DILocation(line: 1076, column: 3, scope: !2807)
!2814 = !DILocalVariable(name: "xi", scope: !2815, file: !3, line: 1078, type: !42)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 1077, column: 3)
!2816 = !DILocation(line: 1078, column: 13, scope: !2815)
!2817 = !DILocation(line: 1078, column: 23, scope: !2815)
!2818 = !DILocation(line: 1078, column: 18, scope: !2815)
!2819 = !DILocalVariable(name: "yi", scope: !2815, file: !3, line: 1079, type: !42)
!2820 = !DILocation(line: 1079, column: 13, scope: !2815)
!2821 = !DILocation(line: 1079, column: 28, scope: !2815)
!2822 = !DILocation(line: 1079, column: 18, scope: !2815)
!2823 = !DILocation(line: 1080, column: 25, scope: !2815)
!2824 = !DILocation(line: 1080, column: 15, scope: !2815)
!2825 = !DILocation(line: 1080, column: 40, scope: !2815)
!2826 = !DILocation(line: 1080, column: 30, scope: !2815)
!2827 = !DILocation(line: 1080, column: 28, scope: !2815)
!2828 = !DILocation(line: 1080, column: 10, scope: !2815)
!2829 = !DILocation(line: 1080, column: 5, scope: !2815)
!2830 = !DILocation(line: 1080, column: 13, scope: !2815)
!2831 = !DILocation(line: 1081, column: 3, scope: !2815)
!2832 = !DILocation(line: 1076, column: 36, scope: !2811)
!2833 = !DILocation(line: 1076, column: 3, scope: !2811)
!2834 = distinct !{!2834, !2813, !2835, !132}
!2835 = !DILocation(line: 1081, column: 3, scope: !2807)
!2836 = !DILocalVariable(name: "s", scope: !2716, file: !3, line: 1082, type: !2137)
!2837 = !DILocation(line: 1082, column: 12, scope: !2716)
!2838 = !DILocalVariable(name: "dst1", scope: !2716, file: !3, line: 1083, type: !41)
!2839 = !DILocation(line: 1083, column: 12, scope: !2716)
!2840 = !DILocation(line: 1083, column: 19, scope: !2716)
!2841 = !DILocation(line: 1084, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1084, column: 7)
!2843 = !DILocation(line: 1084, column: 16, scope: !2842)
!2844 = !DILocation(line: 1084, column: 7, scope: !2716)
!2845 = !DILocation(line: 1086, column: 69, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1085, column: 3)
!2847 = !DILocation(line: 1086, column: 72, scope: !2846)
!2848 = !DILocation(line: 1086, column: 5, scope: !2846)
!2849 = !DILocation(line: 1087, column: 3, scope: !2846)
!2850 = !DILocalVariable(name: "block_len", scope: !2851, file: !3, line: 1090, type: !5)
!2851 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1089, column: 3)
!2852 = !DILocation(line: 1090, column: 14, scope: !2851)
!2853 = !DILocalVariable(name: "n_blocks0", scope: !2851, file: !3, line: 1091, type: !5)
!2854 = !DILocation(line: 1091, column: 14, scope: !2851)
!2855 = !DILocation(line: 1091, column: 26, scope: !2851)
!2856 = !DILocation(line: 1091, column: 37, scope: !2851)
!2857 = !DILocation(line: 1091, column: 35, scope: !2851)
!2858 = !DILocalVariable(name: "rem0", scope: !2851, file: !3, line: 1092, type: !5)
!2859 = !DILocation(line: 1092, column: 14, scope: !2851)
!2860 = !DILocation(line: 1092, column: 21, scope: !2851)
!2861 = !DILocation(line: 1092, column: 32, scope: !2851)
!2862 = !DILocation(line: 1092, column: 30, scope: !2851)
!2863 = !DILocalVariable(name: "scrut", scope: !2851, file: !3, line: 1093, type: !197)
!2864 = !DILocation(line: 1093, column: 27, scope: !2851)
!2865 = !DILocation(line: 1094, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 1094, column: 9)
!2867 = !DILocation(line: 1094, column: 19, scope: !2866)
!2868 = !DILocation(line: 1094, column: 24, scope: !2866)
!2869 = !DILocation(line: 1094, column: 27, scope: !2866)
!2870 = !DILocation(line: 1094, column: 32, scope: !2866)
!2871 = !DILocation(line: 1094, column: 9, scope: !2851)
!2872 = !DILocalVariable(name: "n_blocks_", scope: !2873, file: !3, line: 1096, type: !5)
!2873 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1095, column: 5)
!2874 = !DILocation(line: 1096, column: 16, scope: !2873)
!2875 = !DILocation(line: 1096, column: 28, scope: !2873)
!2876 = !DILocation(line: 1096, column: 38, scope: !2873)
!2877 = !DILocation(line: 1097, column: 39, scope: !2873)
!2878 = !DILocation(line: 1097, column: 48, scope: !2873)
!2879 = !DILocation(line: 1097, column: 66, scope: !2873)
!2880 = !DILocation(line: 1097, column: 77, scope: !2873)
!2881 = !DILocation(line: 1097, column: 89, scope: !2873)
!2882 = !DILocation(line: 1097, column: 87, scope: !2873)
!2883 = !DILocation(line: 1097, column: 75, scope: !2873)
!2884 = !DILocation(line: 1097, column: 16, scope: !2873)
!2885 = !DILocation(line: 1098, column: 5, scope: !2873)
!2886 = !DILocation(line: 1101, column: 39, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1100, column: 5)
!2888 = !DILocation(line: 1101, column: 48, scope: !2887)
!2889 = !DILocation(line: 1101, column: 66, scope: !2887)
!2890 = !DILocation(line: 1101, column: 16, scope: !2887)
!2891 = !DILocalVariable(name: "n_blocks", scope: !2851, file: !3, line: 1103, type: !5)
!2892 = !DILocation(line: 1103, column: 14, scope: !2851)
!2893 = !DILocation(line: 1103, column: 31, scope: !2851)
!2894 = !DILocalVariable(name: "rem_len", scope: !2851, file: !3, line: 1104, type: !5)
!2895 = !DILocation(line: 1104, column: 14, scope: !2851)
!2896 = !DILocation(line: 1104, column: 30, scope: !2851)
!2897 = !DILocalVariable(name: "full_blocks_len", scope: !2851, file: !3, line: 1105, type: !5)
!2898 = !DILocation(line: 1105, column: 14, scope: !2851)
!2899 = !DILocation(line: 1105, column: 32, scope: !2851)
!2900 = !DILocation(line: 1105, column: 43, scope: !2851)
!2901 = !DILocation(line: 1105, column: 41, scope: !2851)
!2902 = !DILocalVariable(name: "full_blocks", scope: !2851, file: !3, line: 1106, type: !41)
!2903 = !DILocation(line: 1106, column: 14, scope: !2851)
!2904 = !DILocation(line: 1106, column: 28, scope: !2851)
!2905 = !DILocalVariable(name: "rem", scope: !2851, file: !3, line: 1107, type: !41)
!2906 = !DILocation(line: 1107, column: 14, scope: !2851)
!2907 = !DILocation(line: 1107, column: 20, scope: !2851)
!2908 = !DILocation(line: 1107, column: 27, scope: !2851)
!2909 = !DILocation(line: 1107, column: 25, scope: !2851)
!2910 = !DILocation(line: 1108, column: 70, scope: !2851)
!2911 = !DILocation(line: 1108, column: 73, scope: !2851)
!2912 = !DILocation(line: 1108, column: 5, scope: !2851)
!2913 = !DILocation(line: 1109, column: 70, scope: !2851)
!2914 = !DILocation(line: 1109, column: 73, scope: !2851)
!2915 = !DILocation(line: 1109, column: 86, scope: !2851)
!2916 = !DILocation(line: 1109, column: 5, scope: !2851)
!2917 = !DILocation(line: 1110, column: 69, scope: !2851)
!2918 = !DILocation(line: 1110, column: 72, scope: !2851)
!2919 = !DILocation(line: 1110, column: 77, scope: !2851)
!2920 = !DILocation(line: 1110, column: 5, scope: !2851)
!2921 = !DILocalVariable(name: "remOut", scope: !2716, file: !3, line: 1112, type: !5)
!2922 = !DILocation(line: 1112, column: 12, scope: !2716)
!2923 = !DILocalVariable(name: "hbuf0", scope: !2716, file: !3, line: 1113, type: !2227)
!2924 = !DILocation(line: 1113, column: 11, scope: !2716)
!2925 = !DILocalVariable(name: "ws0", scope: !2716, file: !3, line: 1114, type: !2232)
!2926 = !DILocation(line: 1114, column: 12, scope: !2716)
!2927 = !DILocation(line: 1115, column: 3, scope: !2716)
!2928 = !DILocalVariable(name: "i", scope: !2929, file: !3, line: 1116, type: !5)
!2929 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1116, column: 3)
!2930 = !DILocation(line: 1116, column: 17, scope: !2929)
!2931 = !DILocation(line: 1116, column: 8, scope: !2929)
!2932 = !DILocation(line: 1116, column: 25, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 1116, column: 3)
!2934 = !DILocation(line: 1116, column: 27, scope: !2933)
!2935 = !DILocation(line: 1116, column: 3, scope: !2929)
!2936 = !DILocation(line: 1118, column: 5, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 1117, column: 3)
!2938 = !DILocation(line: 1119, column: 3, scope: !2937)
!2939 = !DILocation(line: 1116, column: 35, scope: !2933)
!2940 = !DILocation(line: 1116, column: 3, scope: !2933)
!2941 = distinct !{!2941, !2935, !2942, !132}
!2942 = !DILocation(line: 1119, column: 3, scope: !2929)
!2943 = !DILocation(line: 1120, column: 10, scope: !2716)
!2944 = !DILocation(line: 1120, column: 15, scope: !2716)
!2945 = !DILocation(line: 1120, column: 23, scope: !2716)
!2946 = !DILocation(line: 1120, column: 21, scope: !2716)
!2947 = !DILocation(line: 1120, column: 3, scope: !2716)
!2948 = !DILocation(line: 1120, column: 38, scope: !2716)
!2949 = !DILocation(line: 1120, column: 45, scope: !2716)
!2950 = !DILocalVariable(name: "hash1", scope: !2716, file: !3, line: 1121, type: !41)
!2951 = !DILocation(line: 1121, column: 12, scope: !2716)
!2952 = !DILocation(line: 1121, column: 20, scope: !2716)
!2953 = !DILocation(line: 1122, column: 56, scope: !2716)
!2954 = !DILocation(line: 1122, column: 3, scope: !2716)
!2955 = !DILocalVariable(name: "block_len", scope: !2716, file: !3, line: 1123, type: !5)
!2956 = !DILocation(line: 1123, column: 12, scope: !2716)
!2957 = !DILocalVariable(name: "n_blocks0", scope: !2716, file: !3, line: 1124, type: !5)
!2958 = !DILocation(line: 1124, column: 12, scope: !2716)
!2959 = !DILocation(line: 1124, column: 30, scope: !2716)
!2960 = !DILocation(line: 1124, column: 28, scope: !2716)
!2961 = !DILocalVariable(name: "rem0", scope: !2716, file: !3, line: 1125, type: !5)
!2962 = !DILocation(line: 1125, column: 12, scope: !2716)
!2963 = !DILocation(line: 1125, column: 25, scope: !2716)
!2964 = !DILocation(line: 1125, column: 23, scope: !2716)
!2965 = !DILocalVariable(name: "scrut", scope: !2716, file: !3, line: 1126, type: !197)
!2966 = !DILocation(line: 1126, column: 25, scope: !2716)
!2967 = !DILocation(line: 1127, column: 7, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1127, column: 7)
!2969 = !DILocation(line: 1127, column: 17, scope: !2968)
!2970 = !DILocation(line: 1127, column: 22, scope: !2968)
!2971 = !DILocation(line: 1127, column: 25, scope: !2968)
!2972 = !DILocation(line: 1127, column: 30, scope: !2968)
!2973 = !DILocation(line: 1127, column: 7, scope: !2716)
!2974 = !DILocalVariable(name: "n_blocks_", scope: !2975, file: !3, line: 1129, type: !5)
!2975 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 1128, column: 3)
!2976 = !DILocation(line: 1129, column: 14, scope: !2975)
!2977 = !DILocation(line: 1129, column: 26, scope: !2975)
!2978 = !DILocation(line: 1129, column: 36, scope: !2975)
!2979 = !DILocation(line: 1130, column: 37, scope: !2975)
!2980 = !DILocation(line: 1130, column: 46, scope: !2975)
!2981 = !DILocation(line: 1130, column: 70, scope: !2975)
!2982 = !DILocation(line: 1130, column: 82, scope: !2975)
!2983 = !DILocation(line: 1130, column: 80, scope: !2975)
!2984 = !DILocation(line: 1130, column: 68, scope: !2975)
!2985 = !DILocation(line: 1130, column: 14, scope: !2975)
!2986 = !DILocation(line: 1131, column: 3, scope: !2975)
!2987 = !DILocation(line: 1134, column: 37, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 1133, column: 3)
!2989 = !DILocation(line: 1134, column: 46, scope: !2988)
!2990 = !DILocation(line: 1134, column: 64, scope: !2988)
!2991 = !DILocation(line: 1134, column: 14, scope: !2988)
!2992 = !DILocalVariable(name: "n_blocks", scope: !2716, file: !3, line: 1136, type: !5)
!2993 = !DILocation(line: 1136, column: 12, scope: !2716)
!2994 = !DILocation(line: 1136, column: 29, scope: !2716)
!2995 = !DILocalVariable(name: "rem_len", scope: !2716, file: !3, line: 1137, type: !5)
!2996 = !DILocation(line: 1137, column: 12, scope: !2716)
!2997 = !DILocation(line: 1137, column: 28, scope: !2716)
!2998 = !DILocalVariable(name: "full_blocks_len", scope: !2716, file: !3, line: 1138, type: !5)
!2999 = !DILocation(line: 1138, column: 12, scope: !2716)
!3000 = !DILocation(line: 1138, column: 30, scope: !2716)
!3001 = !DILocation(line: 1138, column: 41, scope: !2716)
!3002 = !DILocation(line: 1138, column: 39, scope: !2716)
!3003 = !DILocalVariable(name: "full_blocks", scope: !2716, file: !3, line: 1139, type: !41)
!3004 = !DILocation(line: 1139, column: 12, scope: !2716)
!3005 = !DILocation(line: 1139, column: 26, scope: !2716)
!3006 = !DILocalVariable(name: "rem", scope: !2716, file: !3, line: 1140, type: !41)
!3007 = !DILocation(line: 1140, column: 12, scope: !2716)
!3008 = !DILocation(line: 1140, column: 18, scope: !2716)
!3009 = !DILocation(line: 1140, column: 26, scope: !2716)
!3010 = !DILocation(line: 1140, column: 24, scope: !2716)
!3011 = !DILocation(line: 1141, column: 68, scope: !2716)
!3012 = !DILocation(line: 1141, column: 71, scope: !2716)
!3013 = !DILocation(line: 1141, column: 3, scope: !2716)
!3014 = !DILocation(line: 1142, column: 68, scope: !2716)
!3015 = !DILocation(line: 1142, column: 71, scope: !2716)
!3016 = !DILocation(line: 1142, column: 84, scope: !2716)
!3017 = !DILocation(line: 1142, column: 3, scope: !2716)
!3018 = !DILocation(line: 1143, column: 67, scope: !2716)
!3019 = !DILocation(line: 1143, column: 70, scope: !2716)
!3020 = !DILocation(line: 1143, column: 75, scope: !2716)
!3021 = !DILocation(line: 1143, column: 3, scope: !2716)
!3022 = !DILocalVariable(name: "remOut0", scope: !2716, file: !3, line: 1144, type: !5)
!3023 = !DILocation(line: 1144, column: 12, scope: !2716)
!3024 = !DILocalVariable(name: "hbuf", scope: !2716, file: !3, line: 1145, type: !2227)
!3025 = !DILocation(line: 1145, column: 11, scope: !2716)
!3026 = !DILocalVariable(name: "ws", scope: !2716, file: !3, line: 1146, type: !2232)
!3027 = !DILocation(line: 1146, column: 12, scope: !2716)
!3028 = !DILocation(line: 1147, column: 3, scope: !2716)
!3029 = !DILocalVariable(name: "i", scope: !3030, file: !3, line: 1148, type: !5)
!3030 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1148, column: 3)
!3031 = !DILocation(line: 1148, column: 17, scope: !3030)
!3032 = !DILocation(line: 1148, column: 8, scope: !3030)
!3033 = !DILocation(line: 1148, column: 25, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 1148, column: 3)
!3035 = !DILocation(line: 1148, column: 27, scope: !3034)
!3036 = !DILocation(line: 1148, column: 3, scope: !3030)
!3037 = !DILocation(line: 1150, column: 5, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1149, column: 3)
!3039 = !DILocation(line: 1151, column: 3, scope: !3038)
!3040 = !DILocation(line: 1148, column: 35, scope: !3034)
!3041 = !DILocation(line: 1148, column: 3, scope: !3034)
!3042 = distinct !{!3042, !3036, !3043, !132}
!3043 = !DILocation(line: 1151, column: 3, scope: !3030)
!3044 = !DILocation(line: 1152, column: 10, scope: !2716)
!3045 = !DILocation(line: 1152, column: 14, scope: !2716)
!3046 = !DILocation(line: 1152, column: 22, scope: !2716)
!3047 = !DILocation(line: 1152, column: 20, scope: !2716)
!3048 = !DILocation(line: 1152, column: 3, scope: !2716)
!3049 = !DILocation(line: 1152, column: 37, scope: !2716)
!3050 = !DILocation(line: 1152, column: 45, scope: !2716)
!3051 = !DILocation(line: 1153, column: 1, scope: !2716)
!3052 = distinct !DISubprogram(name: "Hacl_HMAC_compute_sha3_512", scope: !3, file: !3, line: 1162, type: !39, scopeLine: 1169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!3053 = !DILocalVariable(name: "dst", arg: 1, scope: !3052, file: !3, line: 1163, type: !41)
!3054 = !DILocation(line: 1163, column: 12, scope: !3052)
!3055 = !DILocalVariable(name: "key", arg: 2, scope: !3052, file: !3, line: 1164, type: !41)
!3056 = !DILocation(line: 1164, column: 12, scope: !3052)
!3057 = !DILocalVariable(name: "key_len", arg: 3, scope: !3052, file: !3, line: 1165, type: !5)
!3058 = !DILocation(line: 1165, column: 12, scope: !3052)
!3059 = !DILocalVariable(name: "data", arg: 4, scope: !3052, file: !3, line: 1166, type: !41)
!3060 = !DILocation(line: 1166, column: 12, scope: !3052)
!3061 = !DILocalVariable(name: "data_len", arg: 5, scope: !3052, file: !3, line: 1167, type: !5)
!3062 = !DILocation(line: 1167, column: 12, scope: !3052)
!3063 = !DILocalVariable(name: "key_block", scope: !3052, file: !3, line: 1170, type: !3064)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 576, elements: !3065)
!3065 = !{!3066}
!3066 = !DISubrange(count: 72)
!3067 = !DILocation(line: 1170, column: 11, scope: !3052)
!3068 = !DILocation(line: 1171, column: 3, scope: !3052)
!3069 = !DILocalVariable(name: "nkey", scope: !3052, file: !3, line: 1172, type: !41)
!3070 = !DILocation(line: 1172, column: 12, scope: !3052)
!3071 = !DILocation(line: 1172, column: 19, scope: !3052)
!3072 = !DILocalVariable(name: "ite", scope: !3052, file: !3, line: 1173, type: !5)
!3073 = !DILocation(line: 1173, column: 12, scope: !3052)
!3074 = !DILocation(line: 1174, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1174, column: 7)
!3076 = !DILocation(line: 1174, column: 15, scope: !3075)
!3077 = !DILocation(line: 1174, column: 7, scope: !3052)
!3078 = !DILocation(line: 1176, column: 11, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 1175, column: 3)
!3080 = !DILocation(line: 1176, column: 9, scope: !3079)
!3081 = !DILocation(line: 1177, column: 3, scope: !3079)
!3082 = !DILocation(line: 1180, column: 9, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 1179, column: 3)
!3084 = !DILocalVariable(name: "zeroes", scope: !3052, file: !3, line: 1182, type: !41)
!3085 = !DILocation(line: 1182, column: 12, scope: !3052)
!3086 = !DILocation(line: 1182, column: 21, scope: !3052)
!3087 = !DILocation(line: 1182, column: 33, scope: !3052)
!3088 = !DILocation(line: 1182, column: 31, scope: !3052)
!3089 = !DILocation(line: 1183, column: 3, scope: !3052)
!3090 = !DILocation(line: 1184, column: 7, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1184, column: 7)
!3092 = !DILocation(line: 1184, column: 15, scope: !3091)
!3093 = !DILocation(line: 1184, column: 7, scope: !3052)
!3094 = !DILocation(line: 1186, column: 12, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1185, column: 3)
!3096 = !DILocation(line: 1186, column: 18, scope: !3095)
!3097 = !DILocation(line: 1186, column: 23, scope: !3095)
!3098 = !DILocation(line: 1186, column: 31, scope: !3095)
!3099 = !DILocation(line: 1186, column: 5, scope: !3095)
!3100 = !DILocation(line: 1187, column: 3, scope: !3095)
!3101 = !DILocation(line: 1190, column: 29, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1189, column: 3)
!3103 = !DILocation(line: 1190, column: 35, scope: !3102)
!3104 = !DILocation(line: 1190, column: 40, scope: !3102)
!3105 = !DILocation(line: 1190, column: 5, scope: !3102)
!3106 = !DILocalVariable(name: "ipad", scope: !3052, file: !3, line: 1192, type: !3064)
!3107 = !DILocation(line: 1192, column: 11, scope: !3052)
!3108 = !DILocation(line: 1193, column: 3, scope: !3052)
!3109 = !DILocalVariable(name: "i", scope: !3110, file: !3, line: 1194, type: !5)
!3110 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1194, column: 3)
!3111 = !DILocation(line: 1194, column: 17, scope: !3110)
!3112 = !DILocation(line: 1194, column: 8, scope: !3110)
!3113 = !DILocation(line: 1194, column: 25, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 1194, column: 3)
!3115 = !DILocation(line: 1194, column: 27, scope: !3114)
!3116 = !DILocation(line: 1194, column: 3, scope: !3110)
!3117 = !DILocalVariable(name: "xi", scope: !3118, file: !3, line: 1196, type: !42)
!3118 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 1195, column: 3)
!3119 = !DILocation(line: 1196, column: 13, scope: !3118)
!3120 = !DILocation(line: 1196, column: 23, scope: !3118)
!3121 = !DILocation(line: 1196, column: 18, scope: !3118)
!3122 = !DILocalVariable(name: "yi", scope: !3118, file: !3, line: 1197, type: !42)
!3123 = !DILocation(line: 1197, column: 13, scope: !3118)
!3124 = !DILocation(line: 1197, column: 28, scope: !3118)
!3125 = !DILocation(line: 1197, column: 18, scope: !3118)
!3126 = !DILocation(line: 1198, column: 25, scope: !3118)
!3127 = !DILocation(line: 1198, column: 15, scope: !3118)
!3128 = !DILocation(line: 1198, column: 40, scope: !3118)
!3129 = !DILocation(line: 1198, column: 30, scope: !3118)
!3130 = !DILocation(line: 1198, column: 28, scope: !3118)
!3131 = !DILocation(line: 1198, column: 10, scope: !3118)
!3132 = !DILocation(line: 1198, column: 5, scope: !3118)
!3133 = !DILocation(line: 1198, column: 13, scope: !3118)
!3134 = !DILocation(line: 1199, column: 3, scope: !3118)
!3135 = !DILocation(line: 1194, column: 35, scope: !3114)
!3136 = !DILocation(line: 1194, column: 3, scope: !3114)
!3137 = distinct !{!3137, !3116, !3138, !132}
!3138 = !DILocation(line: 1199, column: 3, scope: !3110)
!3139 = !DILocalVariable(name: "opad", scope: !3052, file: !3, line: 1200, type: !3064)
!3140 = !DILocation(line: 1200, column: 11, scope: !3052)
!3141 = !DILocation(line: 1201, column: 3, scope: !3052)
!3142 = !DILocalVariable(name: "i", scope: !3143, file: !3, line: 1202, type: !5)
!3143 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1202, column: 3)
!3144 = !DILocation(line: 1202, column: 17, scope: !3143)
!3145 = !DILocation(line: 1202, column: 8, scope: !3143)
!3146 = !DILocation(line: 1202, column: 25, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1202, column: 3)
!3148 = !DILocation(line: 1202, column: 27, scope: !3147)
!3149 = !DILocation(line: 1202, column: 3, scope: !3143)
!3150 = !DILocalVariable(name: "xi", scope: !3151, file: !3, line: 1204, type: !42)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 1203, column: 3)
!3152 = !DILocation(line: 1204, column: 13, scope: !3151)
!3153 = !DILocation(line: 1204, column: 23, scope: !3151)
!3154 = !DILocation(line: 1204, column: 18, scope: !3151)
!3155 = !DILocalVariable(name: "yi", scope: !3151, file: !3, line: 1205, type: !42)
!3156 = !DILocation(line: 1205, column: 13, scope: !3151)
!3157 = !DILocation(line: 1205, column: 28, scope: !3151)
!3158 = !DILocation(line: 1205, column: 18, scope: !3151)
!3159 = !DILocation(line: 1206, column: 25, scope: !3151)
!3160 = !DILocation(line: 1206, column: 15, scope: !3151)
!3161 = !DILocation(line: 1206, column: 40, scope: !3151)
!3162 = !DILocation(line: 1206, column: 30, scope: !3151)
!3163 = !DILocation(line: 1206, column: 28, scope: !3151)
!3164 = !DILocation(line: 1206, column: 10, scope: !3151)
!3165 = !DILocation(line: 1206, column: 5, scope: !3151)
!3166 = !DILocation(line: 1206, column: 13, scope: !3151)
!3167 = !DILocation(line: 1207, column: 3, scope: !3151)
!3168 = !DILocation(line: 1202, column: 35, scope: !3147)
!3169 = !DILocation(line: 1202, column: 3, scope: !3147)
!3170 = distinct !{!3170, !3149, !3171, !132}
!3171 = !DILocation(line: 1207, column: 3, scope: !3143)
!3172 = !DILocalVariable(name: "s", scope: !3052, file: !3, line: 1208, type: !2137)
!3173 = !DILocation(line: 1208, column: 12, scope: !3052)
!3174 = !DILocalVariable(name: "dst1", scope: !3052, file: !3, line: 1209, type: !41)
!3175 = !DILocation(line: 1209, column: 12, scope: !3052)
!3176 = !DILocation(line: 1209, column: 19, scope: !3052)
!3177 = !DILocation(line: 1210, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1210, column: 7)
!3179 = !DILocation(line: 1210, column: 16, scope: !3178)
!3180 = !DILocation(line: 1210, column: 7, scope: !3052)
!3181 = !DILocation(line: 1212, column: 69, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1211, column: 3)
!3183 = !DILocation(line: 1212, column: 72, scope: !3182)
!3184 = !DILocation(line: 1212, column: 5, scope: !3182)
!3185 = !DILocation(line: 1213, column: 3, scope: !3182)
!3186 = !DILocalVariable(name: "block_len", scope: !3187, file: !3, line: 1216, type: !5)
!3187 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1215, column: 3)
!3188 = !DILocation(line: 1216, column: 14, scope: !3187)
!3189 = !DILocalVariable(name: "n_blocks0", scope: !3187, file: !3, line: 1217, type: !5)
!3190 = !DILocation(line: 1217, column: 14, scope: !3187)
!3191 = !DILocation(line: 1217, column: 26, scope: !3187)
!3192 = !DILocation(line: 1217, column: 37, scope: !3187)
!3193 = !DILocation(line: 1217, column: 35, scope: !3187)
!3194 = !DILocalVariable(name: "rem0", scope: !3187, file: !3, line: 1218, type: !5)
!3195 = !DILocation(line: 1218, column: 14, scope: !3187)
!3196 = !DILocation(line: 1218, column: 21, scope: !3187)
!3197 = !DILocation(line: 1218, column: 32, scope: !3187)
!3198 = !DILocation(line: 1218, column: 30, scope: !3187)
!3199 = !DILocalVariable(name: "scrut", scope: !3187, file: !3, line: 1219, type: !197)
!3200 = !DILocation(line: 1219, column: 27, scope: !3187)
!3201 = !DILocation(line: 1220, column: 9, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 1220, column: 9)
!3203 = !DILocation(line: 1220, column: 19, scope: !3202)
!3204 = !DILocation(line: 1220, column: 24, scope: !3202)
!3205 = !DILocation(line: 1220, column: 27, scope: !3202)
!3206 = !DILocation(line: 1220, column: 32, scope: !3202)
!3207 = !DILocation(line: 1220, column: 9, scope: !3187)
!3208 = !DILocalVariable(name: "n_blocks_", scope: !3209, file: !3, line: 1222, type: !5)
!3209 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 1221, column: 5)
!3210 = !DILocation(line: 1222, column: 16, scope: !3209)
!3211 = !DILocation(line: 1222, column: 28, scope: !3209)
!3212 = !DILocation(line: 1222, column: 38, scope: !3209)
!3213 = !DILocation(line: 1223, column: 39, scope: !3209)
!3214 = !DILocation(line: 1223, column: 48, scope: !3209)
!3215 = !DILocation(line: 1223, column: 66, scope: !3209)
!3216 = !DILocation(line: 1223, column: 77, scope: !3209)
!3217 = !DILocation(line: 1223, column: 89, scope: !3209)
!3218 = !DILocation(line: 1223, column: 87, scope: !3209)
!3219 = !DILocation(line: 1223, column: 75, scope: !3209)
!3220 = !DILocation(line: 1223, column: 16, scope: !3209)
!3221 = !DILocation(line: 1224, column: 5, scope: !3209)
!3222 = !DILocation(line: 1227, column: 39, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 1226, column: 5)
!3224 = !DILocation(line: 1227, column: 48, scope: !3223)
!3225 = !DILocation(line: 1227, column: 66, scope: !3223)
!3226 = !DILocation(line: 1227, column: 16, scope: !3223)
!3227 = !DILocalVariable(name: "n_blocks", scope: !3187, file: !3, line: 1229, type: !5)
!3228 = !DILocation(line: 1229, column: 14, scope: !3187)
!3229 = !DILocation(line: 1229, column: 31, scope: !3187)
!3230 = !DILocalVariable(name: "rem_len", scope: !3187, file: !3, line: 1230, type: !5)
!3231 = !DILocation(line: 1230, column: 14, scope: !3187)
!3232 = !DILocation(line: 1230, column: 30, scope: !3187)
!3233 = !DILocalVariable(name: "full_blocks_len", scope: !3187, file: !3, line: 1231, type: !5)
!3234 = !DILocation(line: 1231, column: 14, scope: !3187)
!3235 = !DILocation(line: 1231, column: 32, scope: !3187)
!3236 = !DILocation(line: 1231, column: 43, scope: !3187)
!3237 = !DILocation(line: 1231, column: 41, scope: !3187)
!3238 = !DILocalVariable(name: "full_blocks", scope: !3187, file: !3, line: 1232, type: !41)
!3239 = !DILocation(line: 1232, column: 14, scope: !3187)
!3240 = !DILocation(line: 1232, column: 28, scope: !3187)
!3241 = !DILocalVariable(name: "rem", scope: !3187, file: !3, line: 1233, type: !41)
!3242 = !DILocation(line: 1233, column: 14, scope: !3187)
!3243 = !DILocation(line: 1233, column: 20, scope: !3187)
!3244 = !DILocation(line: 1233, column: 27, scope: !3187)
!3245 = !DILocation(line: 1233, column: 25, scope: !3187)
!3246 = !DILocation(line: 1234, column: 70, scope: !3187)
!3247 = !DILocation(line: 1234, column: 73, scope: !3187)
!3248 = !DILocation(line: 1234, column: 5, scope: !3187)
!3249 = !DILocation(line: 1235, column: 70, scope: !3187)
!3250 = !DILocation(line: 1235, column: 73, scope: !3187)
!3251 = !DILocation(line: 1235, column: 86, scope: !3187)
!3252 = !DILocation(line: 1235, column: 5, scope: !3187)
!3253 = !DILocation(line: 1236, column: 69, scope: !3187)
!3254 = !DILocation(line: 1236, column: 72, scope: !3187)
!3255 = !DILocation(line: 1236, column: 77, scope: !3187)
!3256 = !DILocation(line: 1236, column: 5, scope: !3187)
!3257 = !DILocalVariable(name: "remOut", scope: !3052, file: !3, line: 1238, type: !5)
!3258 = !DILocation(line: 1238, column: 12, scope: !3052)
!3259 = !DILocalVariable(name: "hbuf0", scope: !3052, file: !3, line: 1239, type: !2227)
!3260 = !DILocation(line: 1239, column: 11, scope: !3052)
!3261 = !DILocalVariable(name: "ws0", scope: !3052, file: !3, line: 1240, type: !2232)
!3262 = !DILocation(line: 1240, column: 12, scope: !3052)
!3263 = !DILocation(line: 1241, column: 3, scope: !3052)
!3264 = !DILocalVariable(name: "i", scope: !3265, file: !3, line: 1242, type: !5)
!3265 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1242, column: 3)
!3266 = !DILocation(line: 1242, column: 17, scope: !3265)
!3267 = !DILocation(line: 1242, column: 8, scope: !3265)
!3268 = !DILocation(line: 1242, column: 25, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 1242, column: 3)
!3270 = !DILocation(line: 1242, column: 27, scope: !3269)
!3271 = !DILocation(line: 1242, column: 3, scope: !3265)
!3272 = !DILocation(line: 1244, column: 5, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1243, column: 3)
!3274 = !DILocation(line: 1245, column: 3, scope: !3273)
!3275 = !DILocation(line: 1242, column: 35, scope: !3269)
!3276 = !DILocation(line: 1242, column: 3, scope: !3269)
!3277 = distinct !{!3277, !3271, !3278, !132}
!3278 = !DILocation(line: 1245, column: 3, scope: !3265)
!3279 = !DILocation(line: 1246, column: 10, scope: !3052)
!3280 = !DILocation(line: 1246, column: 15, scope: !3052)
!3281 = !DILocation(line: 1246, column: 23, scope: !3052)
!3282 = !DILocation(line: 1246, column: 21, scope: !3052)
!3283 = !DILocation(line: 1246, column: 3, scope: !3052)
!3284 = !DILocation(line: 1246, column: 38, scope: !3052)
!3285 = !DILocation(line: 1246, column: 45, scope: !3052)
!3286 = !DILocalVariable(name: "hash1", scope: !3052, file: !3, line: 1247, type: !41)
!3287 = !DILocation(line: 1247, column: 12, scope: !3052)
!3288 = !DILocation(line: 1247, column: 20, scope: !3052)
!3289 = !DILocation(line: 1248, column: 56, scope: !3052)
!3290 = !DILocation(line: 1248, column: 3, scope: !3052)
!3291 = !DILocalVariable(name: "block_len", scope: !3052, file: !3, line: 1249, type: !5)
!3292 = !DILocation(line: 1249, column: 12, scope: !3052)
!3293 = !DILocalVariable(name: "n_blocks0", scope: !3052, file: !3, line: 1250, type: !5)
!3294 = !DILocation(line: 1250, column: 12, scope: !3052)
!3295 = !DILocation(line: 1250, column: 30, scope: !3052)
!3296 = !DILocation(line: 1250, column: 28, scope: !3052)
!3297 = !DILocalVariable(name: "rem0", scope: !3052, file: !3, line: 1251, type: !5)
!3298 = !DILocation(line: 1251, column: 12, scope: !3052)
!3299 = !DILocation(line: 1251, column: 25, scope: !3052)
!3300 = !DILocation(line: 1251, column: 23, scope: !3052)
!3301 = !DILocalVariable(name: "scrut", scope: !3052, file: !3, line: 1252, type: !197)
!3302 = !DILocation(line: 1252, column: 25, scope: !3052)
!3303 = !DILocation(line: 1253, column: 7, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1253, column: 7)
!3305 = !DILocation(line: 1253, column: 17, scope: !3304)
!3306 = !DILocation(line: 1253, column: 22, scope: !3304)
!3307 = !DILocation(line: 1253, column: 25, scope: !3304)
!3308 = !DILocation(line: 1253, column: 30, scope: !3304)
!3309 = !DILocation(line: 1253, column: 7, scope: !3052)
!3310 = !DILocalVariable(name: "n_blocks_", scope: !3311, file: !3, line: 1255, type: !5)
!3311 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 1254, column: 3)
!3312 = !DILocation(line: 1255, column: 14, scope: !3311)
!3313 = !DILocation(line: 1255, column: 26, scope: !3311)
!3314 = !DILocation(line: 1255, column: 36, scope: !3311)
!3315 = !DILocation(line: 1256, column: 37, scope: !3311)
!3316 = !DILocation(line: 1256, column: 46, scope: !3311)
!3317 = !DILocation(line: 1256, column: 70, scope: !3311)
!3318 = !DILocation(line: 1256, column: 82, scope: !3311)
!3319 = !DILocation(line: 1256, column: 80, scope: !3311)
!3320 = !DILocation(line: 1256, column: 68, scope: !3311)
!3321 = !DILocation(line: 1256, column: 14, scope: !3311)
!3322 = !DILocation(line: 1257, column: 3, scope: !3311)
!3323 = !DILocation(line: 1260, column: 37, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 1259, column: 3)
!3325 = !DILocation(line: 1260, column: 46, scope: !3324)
!3326 = !DILocation(line: 1260, column: 64, scope: !3324)
!3327 = !DILocation(line: 1260, column: 14, scope: !3324)
!3328 = !DILocalVariable(name: "n_blocks", scope: !3052, file: !3, line: 1262, type: !5)
!3329 = !DILocation(line: 1262, column: 12, scope: !3052)
!3330 = !DILocation(line: 1262, column: 29, scope: !3052)
!3331 = !DILocalVariable(name: "rem_len", scope: !3052, file: !3, line: 1263, type: !5)
!3332 = !DILocation(line: 1263, column: 12, scope: !3052)
!3333 = !DILocation(line: 1263, column: 28, scope: !3052)
!3334 = !DILocalVariable(name: "full_blocks_len", scope: !3052, file: !3, line: 1264, type: !5)
!3335 = !DILocation(line: 1264, column: 12, scope: !3052)
!3336 = !DILocation(line: 1264, column: 30, scope: !3052)
!3337 = !DILocation(line: 1264, column: 41, scope: !3052)
!3338 = !DILocation(line: 1264, column: 39, scope: !3052)
!3339 = !DILocalVariable(name: "full_blocks", scope: !3052, file: !3, line: 1265, type: !41)
!3340 = !DILocation(line: 1265, column: 12, scope: !3052)
!3341 = !DILocation(line: 1265, column: 26, scope: !3052)
!3342 = !DILocalVariable(name: "rem", scope: !3052, file: !3, line: 1266, type: !41)
!3343 = !DILocation(line: 1266, column: 12, scope: !3052)
!3344 = !DILocation(line: 1266, column: 18, scope: !3052)
!3345 = !DILocation(line: 1266, column: 26, scope: !3052)
!3346 = !DILocation(line: 1266, column: 24, scope: !3052)
!3347 = !DILocation(line: 1267, column: 68, scope: !3052)
!3348 = !DILocation(line: 1267, column: 71, scope: !3052)
!3349 = !DILocation(line: 1267, column: 3, scope: !3052)
!3350 = !DILocation(line: 1268, column: 68, scope: !3052)
!3351 = !DILocation(line: 1268, column: 71, scope: !3052)
!3352 = !DILocation(line: 1268, column: 84, scope: !3052)
!3353 = !DILocation(line: 1268, column: 3, scope: !3052)
!3354 = !DILocation(line: 1269, column: 67, scope: !3052)
!3355 = !DILocation(line: 1269, column: 70, scope: !3052)
!3356 = !DILocation(line: 1269, column: 75, scope: !3052)
!3357 = !DILocation(line: 1269, column: 3, scope: !3052)
!3358 = !DILocalVariable(name: "remOut0", scope: !3052, file: !3, line: 1270, type: !5)
!3359 = !DILocation(line: 1270, column: 12, scope: !3052)
!3360 = !DILocalVariable(name: "hbuf", scope: !3052, file: !3, line: 1271, type: !2227)
!3361 = !DILocation(line: 1271, column: 11, scope: !3052)
!3362 = !DILocalVariable(name: "ws", scope: !3052, file: !3, line: 1272, type: !2232)
!3363 = !DILocation(line: 1272, column: 12, scope: !3052)
!3364 = !DILocation(line: 1273, column: 3, scope: !3052)
!3365 = !DILocalVariable(name: "i", scope: !3366, file: !3, line: 1274, type: !5)
!3366 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1274, column: 3)
!3367 = !DILocation(line: 1274, column: 17, scope: !3366)
!3368 = !DILocation(line: 1274, column: 8, scope: !3366)
!3369 = !DILocation(line: 1274, column: 25, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 1274, column: 3)
!3371 = !DILocation(line: 1274, column: 27, scope: !3370)
!3372 = !DILocation(line: 1274, column: 3, scope: !3366)
!3373 = !DILocation(line: 1276, column: 5, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 1275, column: 3)
!3375 = !DILocation(line: 1277, column: 3, scope: !3374)
!3376 = !DILocation(line: 1274, column: 35, scope: !3370)
!3377 = !DILocation(line: 1274, column: 3, scope: !3370)
!3378 = distinct !{!3378, !3372, !3379, !132}
!3379 = !DILocation(line: 1277, column: 3, scope: !3366)
!3380 = !DILocation(line: 1278, column: 10, scope: !3052)
!3381 = !DILocation(line: 1278, column: 14, scope: !3052)
!3382 = !DILocation(line: 1278, column: 22, scope: !3052)
!3383 = !DILocation(line: 1278, column: 20, scope: !3052)
!3384 = !DILocation(line: 1278, column: 3, scope: !3052)
!3385 = !DILocation(line: 1278, column: 37, scope: !3052)
!3386 = !DILocation(line: 1278, column: 45, scope: !3052)
!3387 = !DILocation(line: 1279, column: 1, scope: !3052)
!3388 = distinct !DISubprogram(name: "Hacl_HMAC_compute_blake2s_32", scope: !3, file: !3, line: 1288, type: !39, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!3389 = !DILocalVariable(name: "dst", arg: 1, scope: !3388, file: !3, line: 1289, type: !41)
!3390 = !DILocation(line: 1289, column: 12, scope: !3388)
!3391 = !DILocalVariable(name: "key", arg: 2, scope: !3388, file: !3, line: 1290, type: !41)
!3392 = !DILocation(line: 1290, column: 12, scope: !3388)
!3393 = !DILocalVariable(name: "key_len", arg: 3, scope: !3388, file: !3, line: 1291, type: !5)
!3394 = !DILocation(line: 1291, column: 12, scope: !3388)
!3395 = !DILocalVariable(name: "data", arg: 4, scope: !3388, file: !3, line: 1292, type: !41)
!3396 = !DILocation(line: 1292, column: 12, scope: !3388)
!3397 = !DILocalVariable(name: "data_len", arg: 5, scope: !3388, file: !3, line: 1293, type: !5)
!3398 = !DILocation(line: 1293, column: 12, scope: !3388)
!3399 = !DILocalVariable(name: "key_block", scope: !3388, file: !3, line: 1296, type: !57)
!3400 = !DILocation(line: 1296, column: 11, scope: !3388)
!3401 = !DILocation(line: 1297, column: 3, scope: !3388)
!3402 = !DILocalVariable(name: "nkey", scope: !3388, file: !3, line: 1298, type: !41)
!3403 = !DILocation(line: 1298, column: 12, scope: !3388)
!3404 = !DILocation(line: 1298, column: 19, scope: !3388)
!3405 = !DILocalVariable(name: "ite", scope: !3388, file: !3, line: 1299, type: !5)
!3406 = !DILocation(line: 1299, column: 12, scope: !3388)
!3407 = !DILocation(line: 1300, column: 7, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1300, column: 7)
!3409 = !DILocation(line: 1300, column: 15, scope: !3408)
!3410 = !DILocation(line: 1300, column: 7, scope: !3388)
!3411 = !DILocation(line: 1302, column: 11, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 1301, column: 3)
!3413 = !DILocation(line: 1302, column: 9, scope: !3412)
!3414 = !DILocation(line: 1303, column: 3, scope: !3412)
!3415 = !DILocation(line: 1306, column: 9, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 1305, column: 3)
!3417 = !DILocalVariable(name: "zeroes", scope: !3388, file: !3, line: 1308, type: !41)
!3418 = !DILocation(line: 1308, column: 12, scope: !3388)
!3419 = !DILocation(line: 1308, column: 21, scope: !3388)
!3420 = !DILocation(line: 1308, column: 33, scope: !3388)
!3421 = !DILocation(line: 1308, column: 31, scope: !3388)
!3422 = !DILocation(line: 1309, column: 3, scope: !3388)
!3423 = !DILocation(line: 1310, column: 7, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1310, column: 7)
!3425 = !DILocation(line: 1310, column: 15, scope: !3424)
!3426 = !DILocation(line: 1310, column: 7, scope: !3388)
!3427 = !DILocation(line: 1312, column: 12, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 1311, column: 3)
!3429 = !DILocation(line: 1312, column: 18, scope: !3428)
!3430 = !DILocation(line: 1312, column: 23, scope: !3428)
!3431 = !DILocation(line: 1312, column: 31, scope: !3428)
!3432 = !DILocation(line: 1312, column: 5, scope: !3428)
!3433 = !DILocation(line: 1313, column: 3, scope: !3428)
!3434 = !DILocation(line: 1316, column: 37, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 1315, column: 3)
!3436 = !DILocation(line: 1316, column: 48, scope: !3435)
!3437 = !DILocation(line: 1316, column: 53, scope: !3435)
!3438 = !DILocation(line: 1316, column: 5, scope: !3435)
!3439 = !DILocalVariable(name: "ipad", scope: !3388, file: !3, line: 1318, type: !57)
!3440 = !DILocation(line: 1318, column: 11, scope: !3388)
!3441 = !DILocation(line: 1319, column: 3, scope: !3388)
!3442 = !DILocalVariable(name: "i", scope: !3443, file: !3, line: 1320, type: !5)
!3443 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1320, column: 3)
!3444 = !DILocation(line: 1320, column: 17, scope: !3443)
!3445 = !DILocation(line: 1320, column: 8, scope: !3443)
!3446 = !DILocation(line: 1320, column: 25, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 1320, column: 3)
!3448 = !DILocation(line: 1320, column: 27, scope: !3447)
!3449 = !DILocation(line: 1320, column: 3, scope: !3443)
!3450 = !DILocalVariable(name: "xi", scope: !3451, file: !3, line: 1322, type: !42)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 1321, column: 3)
!3452 = !DILocation(line: 1322, column: 13, scope: !3451)
!3453 = !DILocation(line: 1322, column: 23, scope: !3451)
!3454 = !DILocation(line: 1322, column: 18, scope: !3451)
!3455 = !DILocalVariable(name: "yi", scope: !3451, file: !3, line: 1323, type: !42)
!3456 = !DILocation(line: 1323, column: 13, scope: !3451)
!3457 = !DILocation(line: 1323, column: 28, scope: !3451)
!3458 = !DILocation(line: 1323, column: 18, scope: !3451)
!3459 = !DILocation(line: 1324, column: 25, scope: !3451)
!3460 = !DILocation(line: 1324, column: 15, scope: !3451)
!3461 = !DILocation(line: 1324, column: 40, scope: !3451)
!3462 = !DILocation(line: 1324, column: 30, scope: !3451)
!3463 = !DILocation(line: 1324, column: 28, scope: !3451)
!3464 = !DILocation(line: 1324, column: 10, scope: !3451)
!3465 = !DILocation(line: 1324, column: 5, scope: !3451)
!3466 = !DILocation(line: 1324, column: 13, scope: !3451)
!3467 = !DILocation(line: 1325, column: 3, scope: !3451)
!3468 = !DILocation(line: 1320, column: 35, scope: !3447)
!3469 = !DILocation(line: 1320, column: 3, scope: !3447)
!3470 = distinct !{!3470, !3449, !3471, !132}
!3471 = !DILocation(line: 1325, column: 3, scope: !3443)
!3472 = !DILocalVariable(name: "opad", scope: !3388, file: !3, line: 1326, type: !57)
!3473 = !DILocation(line: 1326, column: 11, scope: !3388)
!3474 = !DILocation(line: 1327, column: 3, scope: !3388)
!3475 = !DILocalVariable(name: "i", scope: !3476, file: !3, line: 1328, type: !5)
!3476 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1328, column: 3)
!3477 = !DILocation(line: 1328, column: 17, scope: !3476)
!3478 = !DILocation(line: 1328, column: 8, scope: !3476)
!3479 = !DILocation(line: 1328, column: 25, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 1328, column: 3)
!3481 = !DILocation(line: 1328, column: 27, scope: !3480)
!3482 = !DILocation(line: 1328, column: 3, scope: !3476)
!3483 = !DILocalVariable(name: "xi", scope: !3484, file: !3, line: 1330, type: !42)
!3484 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 1329, column: 3)
!3485 = !DILocation(line: 1330, column: 13, scope: !3484)
!3486 = !DILocation(line: 1330, column: 23, scope: !3484)
!3487 = !DILocation(line: 1330, column: 18, scope: !3484)
!3488 = !DILocalVariable(name: "yi", scope: !3484, file: !3, line: 1331, type: !42)
!3489 = !DILocation(line: 1331, column: 13, scope: !3484)
!3490 = !DILocation(line: 1331, column: 28, scope: !3484)
!3491 = !DILocation(line: 1331, column: 18, scope: !3484)
!3492 = !DILocation(line: 1332, column: 25, scope: !3484)
!3493 = !DILocation(line: 1332, column: 15, scope: !3484)
!3494 = !DILocation(line: 1332, column: 40, scope: !3484)
!3495 = !DILocation(line: 1332, column: 30, scope: !3484)
!3496 = !DILocation(line: 1332, column: 28, scope: !3484)
!3497 = !DILocation(line: 1332, column: 10, scope: !3484)
!3498 = !DILocation(line: 1332, column: 5, scope: !3484)
!3499 = !DILocation(line: 1332, column: 13, scope: !3484)
!3500 = !DILocation(line: 1333, column: 3, scope: !3484)
!3501 = !DILocation(line: 1328, column: 35, scope: !3480)
!3502 = !DILocation(line: 1328, column: 3, scope: !3480)
!3503 = distinct !{!3503, !3482, !3504, !132}
!3504 = !DILocation(line: 1333, column: 3, scope: !3476)
!3505 = !DILocalVariable(name: "s", scope: !3388, file: !3, line: 1334, type: !3506)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !3507)
!3507 = !{!3508}
!3508 = !DISubrange(count: 16)
!3509 = !DILocation(line: 1334, column: 12, scope: !3388)
!3510 = !DILocation(line: 1335, column: 26, scope: !3388)
!3511 = !DILocation(line: 1335, column: 3, scope: !3388)
!3512 = !DILocalVariable(name: "s0", scope: !3388, file: !3, line: 1336, type: !761)
!3513 = !DILocation(line: 1336, column: 13, scope: !3388)
!3514 = !DILocation(line: 1336, column: 18, scope: !3388)
!3515 = !DILocalVariable(name: "dst1", scope: !3388, file: !3, line: 1337, type: !41)
!3516 = !DILocation(line: 1337, column: 12, scope: !3388)
!3517 = !DILocation(line: 1337, column: 19, scope: !3388)
!3518 = !DILocation(line: 1338, column: 7, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1338, column: 7)
!3520 = !DILocation(line: 1338, column: 16, scope: !3519)
!3521 = !DILocation(line: 1338, column: 7, scope: !3388)
!3522 = !DILocalVariable(name: "wv", scope: !3523, file: !3, line: 1340, type: !3506)
!3523 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 1339, column: 3)
!3524 = !DILocation(line: 1340, column: 14, scope: !3523)
!3525 = !DILocation(line: 1341, column: 40, scope: !3523)
!3526 = !DILocation(line: 1341, column: 44, scope: !3523)
!3527 = !DILocation(line: 1341, column: 66, scope: !3523)
!3528 = !DILocation(line: 1341, column: 5, scope: !3523)
!3529 = !DILocation(line: 1342, column: 3, scope: !3523)
!3530 = !DILocalVariable(name: "block_len", scope: !3531, file: !3, line: 1345, type: !5)
!3531 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 1344, column: 3)
!3532 = !DILocation(line: 1345, column: 14, scope: !3531)
!3533 = !DILocalVariable(name: "n_blocks0", scope: !3531, file: !3, line: 1346, type: !5)
!3534 = !DILocation(line: 1346, column: 14, scope: !3531)
!3535 = !DILocation(line: 1346, column: 26, scope: !3531)
!3536 = !DILocation(line: 1346, column: 37, scope: !3531)
!3537 = !DILocation(line: 1346, column: 35, scope: !3531)
!3538 = !DILocalVariable(name: "rem0", scope: !3531, file: !3, line: 1347, type: !5)
!3539 = !DILocation(line: 1347, column: 14, scope: !3531)
!3540 = !DILocation(line: 1347, column: 21, scope: !3531)
!3541 = !DILocation(line: 1347, column: 32, scope: !3531)
!3542 = !DILocation(line: 1347, column: 30, scope: !3531)
!3543 = !DILocalVariable(name: "scrut", scope: !3531, file: !3, line: 1348, type: !197)
!3544 = !DILocation(line: 1348, column: 27, scope: !3531)
!3545 = !DILocation(line: 1349, column: 9, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1349, column: 9)
!3547 = !DILocation(line: 1349, column: 19, scope: !3546)
!3548 = !DILocation(line: 1349, column: 24, scope: !3546)
!3549 = !DILocation(line: 1349, column: 27, scope: !3546)
!3550 = !DILocation(line: 1349, column: 32, scope: !3546)
!3551 = !DILocation(line: 1349, column: 9, scope: !3531)
!3552 = !DILocalVariable(name: "n_blocks_", scope: !3553, file: !3, line: 1351, type: !5)
!3553 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 1350, column: 5)
!3554 = !DILocation(line: 1351, column: 16, scope: !3553)
!3555 = !DILocation(line: 1351, column: 28, scope: !3553)
!3556 = !DILocation(line: 1351, column: 38, scope: !3553)
!3557 = !DILocation(line: 1352, column: 39, scope: !3553)
!3558 = !DILocation(line: 1352, column: 48, scope: !3553)
!3559 = !DILocation(line: 1352, column: 66, scope: !3553)
!3560 = !DILocation(line: 1352, column: 77, scope: !3553)
!3561 = !DILocation(line: 1352, column: 89, scope: !3553)
!3562 = !DILocation(line: 1352, column: 87, scope: !3553)
!3563 = !DILocation(line: 1352, column: 75, scope: !3553)
!3564 = !DILocation(line: 1352, column: 16, scope: !3553)
!3565 = !DILocation(line: 1353, column: 5, scope: !3553)
!3566 = !DILocation(line: 1356, column: 39, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 1355, column: 5)
!3568 = !DILocation(line: 1356, column: 48, scope: !3567)
!3569 = !DILocation(line: 1356, column: 66, scope: !3567)
!3570 = !DILocation(line: 1356, column: 16, scope: !3567)
!3571 = !DILocalVariable(name: "n_blocks", scope: !3531, file: !3, line: 1358, type: !5)
!3572 = !DILocation(line: 1358, column: 14, scope: !3531)
!3573 = !DILocation(line: 1358, column: 31, scope: !3531)
!3574 = !DILocalVariable(name: "rem_len", scope: !3531, file: !3, line: 1359, type: !5)
!3575 = !DILocation(line: 1359, column: 14, scope: !3531)
!3576 = !DILocation(line: 1359, column: 30, scope: !3531)
!3577 = !DILocalVariable(name: "full_blocks_len", scope: !3531, file: !3, line: 1360, type: !5)
!3578 = !DILocation(line: 1360, column: 14, scope: !3531)
!3579 = !DILocation(line: 1360, column: 32, scope: !3531)
!3580 = !DILocation(line: 1360, column: 43, scope: !3531)
!3581 = !DILocation(line: 1360, column: 41, scope: !3531)
!3582 = !DILocalVariable(name: "full_blocks", scope: !3531, file: !3, line: 1361, type: !41)
!3583 = !DILocation(line: 1361, column: 14, scope: !3531)
!3584 = !DILocation(line: 1361, column: 28, scope: !3531)
!3585 = !DILocalVariable(name: "rem", scope: !3531, file: !3, line: 1362, type: !41)
!3586 = !DILocation(line: 1362, column: 14, scope: !3531)
!3587 = !DILocation(line: 1362, column: 20, scope: !3531)
!3588 = !DILocation(line: 1362, column: 27, scope: !3531)
!3589 = !DILocation(line: 1362, column: 25, scope: !3531)
!3590 = !DILocalVariable(name: "wv", scope: !3531, file: !3, line: 1363, type: !3506)
!3591 = !DILocation(line: 1363, column: 14, scope: !3531)
!3592 = !DILocation(line: 1364, column: 41, scope: !3531)
!3593 = !DILocation(line: 1364, column: 45, scope: !3531)
!3594 = !DILocation(line: 1364, column: 55, scope: !3531)
!3595 = !DILocation(line: 1364, column: 5, scope: !3531)
!3596 = !DILocalVariable(name: "wv0", scope: !3531, file: !3, line: 1365, type: !3506)
!3597 = !DILocation(line: 1365, column: 14, scope: !3531)
!3598 = !DILocation(line: 1366, column: 36, scope: !3531)
!3599 = !DILocation(line: 1366, column: 45, scope: !3531)
!3600 = !DILocation(line: 1367, column: 7, scope: !3531)
!3601 = !DILocation(line: 1368, column: 7, scope: !3531)
!3602 = !DILocation(line: 1369, column: 17, scope: !3531)
!3603 = !DILocation(line: 1369, column: 7, scope: !3531)
!3604 = !DILocation(line: 1370, column: 7, scope: !3531)
!3605 = !DILocation(line: 1371, column: 7, scope: !3531)
!3606 = !DILocation(line: 1366, column: 5, scope: !3531)
!3607 = !DILocalVariable(name: "wv1", scope: !3531, file: !3, line: 1372, type: !3506)
!3608 = !DILocation(line: 1372, column: 14, scope: !3531)
!3609 = !DILocation(line: 1373, column: 35, scope: !3531)
!3610 = !DILocation(line: 1374, column: 7, scope: !3531)
!3611 = !DILocation(line: 1375, column: 7, scope: !3531)
!3612 = !DILocation(line: 1377, column: 33, scope: !3531)
!3613 = !DILocation(line: 1377, column: 23, scope: !3531)
!3614 = !DILocation(line: 1377, column: 21, scope: !3531)
!3615 = !DILocation(line: 1378, column: 7, scope: !3531)
!3616 = !DILocation(line: 1379, column: 7, scope: !3531)
!3617 = !DILocation(line: 1373, column: 5, scope: !3531)
!3618 = !DILocation(line: 1381, column: 33, scope: !3388)
!3619 = !DILocation(line: 1381, column: 39, scope: !3388)
!3620 = !DILocation(line: 1381, column: 3, scope: !3388)
!3621 = !DILocalVariable(name: "hash1", scope: !3388, file: !3, line: 1382, type: !41)
!3622 = !DILocation(line: 1382, column: 12, scope: !3388)
!3623 = !DILocation(line: 1382, column: 20, scope: !3388)
!3624 = !DILocation(line: 1383, column: 26, scope: !3388)
!3625 = !DILocation(line: 1383, column: 3, scope: !3388)
!3626 = !DILocalVariable(name: "block_len", scope: !3388, file: !3, line: 1384, type: !5)
!3627 = !DILocation(line: 1384, column: 12, scope: !3388)
!3628 = !DILocalVariable(name: "n_blocks0", scope: !3388, file: !3, line: 1385, type: !5)
!3629 = !DILocation(line: 1385, column: 12, scope: !3388)
!3630 = !DILocation(line: 1385, column: 30, scope: !3388)
!3631 = !DILocation(line: 1385, column: 28, scope: !3388)
!3632 = !DILocalVariable(name: "rem0", scope: !3388, file: !3, line: 1386, type: !5)
!3633 = !DILocation(line: 1386, column: 12, scope: !3388)
!3634 = !DILocation(line: 1386, column: 25, scope: !3388)
!3635 = !DILocation(line: 1386, column: 23, scope: !3388)
!3636 = !DILocalVariable(name: "scrut", scope: !3388, file: !3, line: 1387, type: !197)
!3637 = !DILocation(line: 1387, column: 25, scope: !3388)
!3638 = !DILocation(line: 1388, column: 7, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1388, column: 7)
!3640 = !DILocation(line: 1388, column: 17, scope: !3639)
!3641 = !DILocation(line: 1388, column: 22, scope: !3639)
!3642 = !DILocation(line: 1388, column: 25, scope: !3639)
!3643 = !DILocation(line: 1388, column: 30, scope: !3639)
!3644 = !DILocation(line: 1388, column: 7, scope: !3388)
!3645 = !DILocalVariable(name: "n_blocks_", scope: !3646, file: !3, line: 1390, type: !5)
!3646 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 1389, column: 3)
!3647 = !DILocation(line: 1390, column: 14, scope: !3646)
!3648 = !DILocation(line: 1390, column: 26, scope: !3646)
!3649 = !DILocation(line: 1390, column: 36, scope: !3646)
!3650 = !DILocation(line: 1391, column: 37, scope: !3646)
!3651 = !DILocation(line: 1391, column: 46, scope: !3646)
!3652 = !DILocation(line: 1391, column: 70, scope: !3646)
!3653 = !DILocation(line: 1391, column: 82, scope: !3646)
!3654 = !DILocation(line: 1391, column: 80, scope: !3646)
!3655 = !DILocation(line: 1391, column: 68, scope: !3646)
!3656 = !DILocation(line: 1391, column: 14, scope: !3646)
!3657 = !DILocation(line: 1392, column: 3, scope: !3646)
!3658 = !DILocation(line: 1395, column: 37, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 1394, column: 3)
!3660 = !DILocation(line: 1395, column: 46, scope: !3659)
!3661 = !DILocation(line: 1395, column: 64, scope: !3659)
!3662 = !DILocation(line: 1395, column: 14, scope: !3659)
!3663 = !DILocalVariable(name: "n_blocks", scope: !3388, file: !3, line: 1397, type: !5)
!3664 = !DILocation(line: 1397, column: 12, scope: !3388)
!3665 = !DILocation(line: 1397, column: 29, scope: !3388)
!3666 = !DILocalVariable(name: "rem_len", scope: !3388, file: !3, line: 1398, type: !5)
!3667 = !DILocation(line: 1398, column: 12, scope: !3388)
!3668 = !DILocation(line: 1398, column: 28, scope: !3388)
!3669 = !DILocalVariable(name: "full_blocks_len", scope: !3388, file: !3, line: 1399, type: !5)
!3670 = !DILocation(line: 1399, column: 12, scope: !3388)
!3671 = !DILocation(line: 1399, column: 30, scope: !3388)
!3672 = !DILocation(line: 1399, column: 41, scope: !3388)
!3673 = !DILocation(line: 1399, column: 39, scope: !3388)
!3674 = !DILocalVariable(name: "full_blocks", scope: !3388, file: !3, line: 1400, type: !41)
!3675 = !DILocation(line: 1400, column: 12, scope: !3388)
!3676 = !DILocation(line: 1400, column: 26, scope: !3388)
!3677 = !DILocalVariable(name: "rem", scope: !3388, file: !3, line: 1401, type: !41)
!3678 = !DILocation(line: 1401, column: 12, scope: !3388)
!3679 = !DILocation(line: 1401, column: 18, scope: !3388)
!3680 = !DILocation(line: 1401, column: 26, scope: !3388)
!3681 = !DILocation(line: 1401, column: 24, scope: !3388)
!3682 = !DILocalVariable(name: "wv", scope: !3388, file: !3, line: 1402, type: !3506)
!3683 = !DILocation(line: 1402, column: 12, scope: !3388)
!3684 = !DILocation(line: 1403, column: 39, scope: !3388)
!3685 = !DILocation(line: 1403, column: 43, scope: !3388)
!3686 = !DILocation(line: 1403, column: 53, scope: !3388)
!3687 = !DILocation(line: 1403, column: 3, scope: !3388)
!3688 = !DILocalVariable(name: "wv0", scope: !3388, file: !3, line: 1404, type: !3506)
!3689 = !DILocation(line: 1404, column: 12, scope: !3388)
!3690 = !DILocation(line: 1405, column: 34, scope: !3388)
!3691 = !DILocation(line: 1405, column: 43, scope: !3388)
!3692 = !DILocation(line: 1406, column: 5, scope: !3388)
!3693 = !DILocation(line: 1407, column: 5, scope: !3388)
!3694 = !DILocation(line: 1408, column: 15, scope: !3388)
!3695 = !DILocation(line: 1408, column: 5, scope: !3388)
!3696 = !DILocation(line: 1409, column: 5, scope: !3388)
!3697 = !DILocation(line: 1410, column: 5, scope: !3388)
!3698 = !DILocation(line: 1405, column: 3, scope: !3388)
!3699 = !DILocalVariable(name: "wv1", scope: !3388, file: !3, line: 1411, type: !3506)
!3700 = !DILocation(line: 1411, column: 12, scope: !3388)
!3701 = !DILocation(line: 1412, column: 33, scope: !3388)
!3702 = !DILocation(line: 1413, column: 5, scope: !3388)
!3703 = !DILocation(line: 1414, column: 5, scope: !3388)
!3704 = !DILocation(line: 1416, column: 31, scope: !3388)
!3705 = !DILocation(line: 1416, column: 21, scope: !3388)
!3706 = !DILocation(line: 1416, column: 19, scope: !3388)
!3707 = !DILocation(line: 1417, column: 5, scope: !3388)
!3708 = !DILocation(line: 1418, column: 5, scope: !3388)
!3709 = !DILocation(line: 1412, column: 3, scope: !3388)
!3710 = !DILocation(line: 1419, column: 33, scope: !3388)
!3711 = !DILocation(line: 1419, column: 38, scope: !3388)
!3712 = !DILocation(line: 1419, column: 3, scope: !3388)
!3713 = !DILocation(line: 1420, column: 1, scope: !3388)
!3714 = distinct !DISubprogram(name: "Hacl_HMAC_compute_blake2b_32", scope: !3, file: !3, line: 1429, type: !39, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!3715 = !DILocalVariable(name: "dst", arg: 1, scope: !3714, file: !3, line: 1430, type: !41)
!3716 = !DILocation(line: 1430, column: 12, scope: !3714)
!3717 = !DILocalVariable(name: "key", arg: 2, scope: !3714, file: !3, line: 1431, type: !41)
!3718 = !DILocation(line: 1431, column: 12, scope: !3714)
!3719 = !DILocalVariable(name: "key_len", arg: 3, scope: !3714, file: !3, line: 1432, type: !5)
!3720 = !DILocation(line: 1432, column: 12, scope: !3714)
!3721 = !DILocalVariable(name: "data", arg: 4, scope: !3714, file: !3, line: 1433, type: !41)
!3722 = !DILocation(line: 1433, column: 12, scope: !3714)
!3723 = !DILocalVariable(name: "data_len", arg: 5, scope: !3714, file: !3, line: 1434, type: !5)
!3724 = !DILocation(line: 1434, column: 12, scope: !3714)
!3725 = !DILocalVariable(name: "key_block", scope: !3714, file: !3, line: 1437, type: !1317)
!3726 = !DILocation(line: 1437, column: 11, scope: !3714)
!3727 = !DILocation(line: 1438, column: 3, scope: !3714)
!3728 = !DILocalVariable(name: "nkey", scope: !3714, file: !3, line: 1439, type: !41)
!3729 = !DILocation(line: 1439, column: 12, scope: !3714)
!3730 = !DILocation(line: 1439, column: 19, scope: !3714)
!3731 = !DILocalVariable(name: "ite", scope: !3714, file: !3, line: 1440, type: !5)
!3732 = !DILocation(line: 1440, column: 12, scope: !3714)
!3733 = !DILocation(line: 1441, column: 7, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1441, column: 7)
!3735 = !DILocation(line: 1441, column: 15, scope: !3734)
!3736 = !DILocation(line: 1441, column: 7, scope: !3714)
!3737 = !DILocation(line: 1443, column: 11, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1442, column: 3)
!3739 = !DILocation(line: 1443, column: 9, scope: !3738)
!3740 = !DILocation(line: 1444, column: 3, scope: !3738)
!3741 = !DILocation(line: 1447, column: 9, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1446, column: 3)
!3743 = !DILocalVariable(name: "zeroes", scope: !3714, file: !3, line: 1449, type: !41)
!3744 = !DILocation(line: 1449, column: 12, scope: !3714)
!3745 = !DILocation(line: 1449, column: 21, scope: !3714)
!3746 = !DILocation(line: 1449, column: 33, scope: !3714)
!3747 = !DILocation(line: 1449, column: 31, scope: !3714)
!3748 = !DILocation(line: 1450, column: 3, scope: !3714)
!3749 = !DILocation(line: 1451, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1451, column: 7)
!3751 = !DILocation(line: 1451, column: 15, scope: !3750)
!3752 = !DILocation(line: 1451, column: 7, scope: !3714)
!3753 = !DILocation(line: 1453, column: 12, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 1452, column: 3)
!3755 = !DILocation(line: 1453, column: 18, scope: !3754)
!3756 = !DILocation(line: 1453, column: 23, scope: !3754)
!3757 = !DILocation(line: 1453, column: 31, scope: !3754)
!3758 = !DILocation(line: 1453, column: 5, scope: !3754)
!3759 = !DILocation(line: 1454, column: 3, scope: !3754)
!3760 = !DILocation(line: 1457, column: 37, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 1456, column: 3)
!3762 = !DILocation(line: 1457, column: 48, scope: !3761)
!3763 = !DILocation(line: 1457, column: 53, scope: !3761)
!3764 = !DILocation(line: 1457, column: 5, scope: !3761)
!3765 = !DILocalVariable(name: "ipad", scope: !3714, file: !3, line: 1459, type: !1317)
!3766 = !DILocation(line: 1459, column: 11, scope: !3714)
!3767 = !DILocation(line: 1460, column: 3, scope: !3714)
!3768 = !DILocalVariable(name: "i", scope: !3769, file: !3, line: 1461, type: !5)
!3769 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1461, column: 3)
!3770 = !DILocation(line: 1461, column: 17, scope: !3769)
!3771 = !DILocation(line: 1461, column: 8, scope: !3769)
!3772 = !DILocation(line: 1461, column: 25, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1461, column: 3)
!3774 = !DILocation(line: 1461, column: 27, scope: !3773)
!3775 = !DILocation(line: 1461, column: 3, scope: !3769)
!3776 = !DILocalVariable(name: "xi", scope: !3777, file: !3, line: 1463, type: !42)
!3777 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 1462, column: 3)
!3778 = !DILocation(line: 1463, column: 13, scope: !3777)
!3779 = !DILocation(line: 1463, column: 23, scope: !3777)
!3780 = !DILocation(line: 1463, column: 18, scope: !3777)
!3781 = !DILocalVariable(name: "yi", scope: !3777, file: !3, line: 1464, type: !42)
!3782 = !DILocation(line: 1464, column: 13, scope: !3777)
!3783 = !DILocation(line: 1464, column: 28, scope: !3777)
!3784 = !DILocation(line: 1464, column: 18, scope: !3777)
!3785 = !DILocation(line: 1465, column: 25, scope: !3777)
!3786 = !DILocation(line: 1465, column: 15, scope: !3777)
!3787 = !DILocation(line: 1465, column: 40, scope: !3777)
!3788 = !DILocation(line: 1465, column: 30, scope: !3777)
!3789 = !DILocation(line: 1465, column: 28, scope: !3777)
!3790 = !DILocation(line: 1465, column: 10, scope: !3777)
!3791 = !DILocation(line: 1465, column: 5, scope: !3777)
!3792 = !DILocation(line: 1465, column: 13, scope: !3777)
!3793 = !DILocation(line: 1466, column: 3, scope: !3777)
!3794 = !DILocation(line: 1461, column: 36, scope: !3773)
!3795 = !DILocation(line: 1461, column: 3, scope: !3773)
!3796 = distinct !{!3796, !3775, !3797, !132}
!3797 = !DILocation(line: 1466, column: 3, scope: !3769)
!3798 = !DILocalVariable(name: "opad", scope: !3714, file: !3, line: 1467, type: !1317)
!3799 = !DILocation(line: 1467, column: 11, scope: !3714)
!3800 = !DILocation(line: 1468, column: 3, scope: !3714)
!3801 = !DILocalVariable(name: "i", scope: !3802, file: !3, line: 1469, type: !5)
!3802 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1469, column: 3)
!3803 = !DILocation(line: 1469, column: 17, scope: !3802)
!3804 = !DILocation(line: 1469, column: 8, scope: !3802)
!3805 = !DILocation(line: 1469, column: 25, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3802, file: !3, line: 1469, column: 3)
!3807 = !DILocation(line: 1469, column: 27, scope: !3806)
!3808 = !DILocation(line: 1469, column: 3, scope: !3802)
!3809 = !DILocalVariable(name: "xi", scope: !3810, file: !3, line: 1471, type: !42)
!3810 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 1470, column: 3)
!3811 = !DILocation(line: 1471, column: 13, scope: !3810)
!3812 = !DILocation(line: 1471, column: 23, scope: !3810)
!3813 = !DILocation(line: 1471, column: 18, scope: !3810)
!3814 = !DILocalVariable(name: "yi", scope: !3810, file: !3, line: 1472, type: !42)
!3815 = !DILocation(line: 1472, column: 13, scope: !3810)
!3816 = !DILocation(line: 1472, column: 28, scope: !3810)
!3817 = !DILocation(line: 1472, column: 18, scope: !3810)
!3818 = !DILocation(line: 1473, column: 25, scope: !3810)
!3819 = !DILocation(line: 1473, column: 15, scope: !3810)
!3820 = !DILocation(line: 1473, column: 40, scope: !3810)
!3821 = !DILocation(line: 1473, column: 30, scope: !3810)
!3822 = !DILocation(line: 1473, column: 28, scope: !3810)
!3823 = !DILocation(line: 1473, column: 10, scope: !3810)
!3824 = !DILocation(line: 1473, column: 5, scope: !3810)
!3825 = !DILocation(line: 1473, column: 13, scope: !3810)
!3826 = !DILocation(line: 1474, column: 3, scope: !3810)
!3827 = !DILocation(line: 1469, column: 36, scope: !3806)
!3828 = !DILocation(line: 1469, column: 3, scope: !3806)
!3829 = distinct !{!3829, !3808, !3830, !132}
!3830 = !DILocation(line: 1474, column: 3, scope: !3802)
!3831 = !DILocalVariable(name: "s", scope: !3714, file: !3, line: 1475, type: !3832)
!3832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !3507)
!3833 = !DILocation(line: 1475, column: 12, scope: !3714)
!3834 = !DILocation(line: 1476, column: 26, scope: !3714)
!3835 = !DILocation(line: 1476, column: 3, scope: !3714)
!3836 = !DILocalVariable(name: "s0", scope: !3714, file: !3, line: 1477, type: !1434)
!3837 = !DILocation(line: 1477, column: 13, scope: !3714)
!3838 = !DILocation(line: 1477, column: 18, scope: !3714)
!3839 = !DILocalVariable(name: "dst1", scope: !3714, file: !3, line: 1478, type: !41)
!3840 = !DILocation(line: 1478, column: 12, scope: !3714)
!3841 = !DILocation(line: 1478, column: 19, scope: !3714)
!3842 = !DILocation(line: 1479, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1479, column: 7)
!3844 = !DILocation(line: 1479, column: 16, scope: !3843)
!3845 = !DILocation(line: 1479, column: 7, scope: !3714)
!3846 = !DILocalVariable(name: "wv", scope: !3847, file: !3, line: 1481, type: !3832)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1480, column: 3)
!3848 = !DILocation(line: 1481, column: 14, scope: !3847)
!3849 = !DILocation(line: 1483, column: 7, scope: !3847)
!3850 = !DILocation(line: 1484, column: 7, scope: !3847)
!3851 = !DILocation(line: 1486, column: 7, scope: !3847)
!3852 = !DILocation(line: 1488, column: 7, scope: !3847)
!3853 = !DILocation(line: 1482, column: 5, scope: !3847)
!3854 = !DILocation(line: 1489, column: 3, scope: !3847)
!3855 = !DILocalVariable(name: "block_len", scope: !3856, file: !3, line: 1492, type: !5)
!3856 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1491, column: 3)
!3857 = !DILocation(line: 1492, column: 14, scope: !3856)
!3858 = !DILocalVariable(name: "n_blocks0", scope: !3856, file: !3, line: 1493, type: !5)
!3859 = !DILocation(line: 1493, column: 14, scope: !3856)
!3860 = !DILocation(line: 1493, column: 26, scope: !3856)
!3861 = !DILocation(line: 1493, column: 37, scope: !3856)
!3862 = !DILocation(line: 1493, column: 35, scope: !3856)
!3863 = !DILocalVariable(name: "rem0", scope: !3856, file: !3, line: 1494, type: !5)
!3864 = !DILocation(line: 1494, column: 14, scope: !3856)
!3865 = !DILocation(line: 1494, column: 21, scope: !3856)
!3866 = !DILocation(line: 1494, column: 32, scope: !3856)
!3867 = !DILocation(line: 1494, column: 30, scope: !3856)
!3868 = !DILocalVariable(name: "scrut", scope: !3856, file: !3, line: 1495, type: !197)
!3869 = !DILocation(line: 1495, column: 27, scope: !3856)
!3870 = !DILocation(line: 1496, column: 9, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 1496, column: 9)
!3872 = !DILocation(line: 1496, column: 19, scope: !3871)
!3873 = !DILocation(line: 1496, column: 24, scope: !3871)
!3874 = !DILocation(line: 1496, column: 27, scope: !3871)
!3875 = !DILocation(line: 1496, column: 32, scope: !3871)
!3876 = !DILocation(line: 1496, column: 9, scope: !3856)
!3877 = !DILocalVariable(name: "n_blocks_", scope: !3878, file: !3, line: 1498, type: !5)
!3878 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 1497, column: 5)
!3879 = !DILocation(line: 1498, column: 16, scope: !3878)
!3880 = !DILocation(line: 1498, column: 28, scope: !3878)
!3881 = !DILocation(line: 1498, column: 38, scope: !3878)
!3882 = !DILocation(line: 1499, column: 39, scope: !3878)
!3883 = !DILocation(line: 1499, column: 48, scope: !3878)
!3884 = !DILocation(line: 1499, column: 66, scope: !3878)
!3885 = !DILocation(line: 1499, column: 77, scope: !3878)
!3886 = !DILocation(line: 1499, column: 89, scope: !3878)
!3887 = !DILocation(line: 1499, column: 87, scope: !3878)
!3888 = !DILocation(line: 1499, column: 75, scope: !3878)
!3889 = !DILocation(line: 1499, column: 16, scope: !3878)
!3890 = !DILocation(line: 1500, column: 5, scope: !3878)
!3891 = !DILocation(line: 1503, column: 39, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 1502, column: 5)
!3893 = !DILocation(line: 1503, column: 48, scope: !3892)
!3894 = !DILocation(line: 1503, column: 66, scope: !3892)
!3895 = !DILocation(line: 1503, column: 16, scope: !3892)
!3896 = !DILocalVariable(name: "n_blocks", scope: !3856, file: !3, line: 1505, type: !5)
!3897 = !DILocation(line: 1505, column: 14, scope: !3856)
!3898 = !DILocation(line: 1505, column: 31, scope: !3856)
!3899 = !DILocalVariable(name: "rem_len", scope: !3856, file: !3, line: 1506, type: !5)
!3900 = !DILocation(line: 1506, column: 14, scope: !3856)
!3901 = !DILocation(line: 1506, column: 30, scope: !3856)
!3902 = !DILocalVariable(name: "full_blocks_len", scope: !3856, file: !3, line: 1507, type: !5)
!3903 = !DILocation(line: 1507, column: 14, scope: !3856)
!3904 = !DILocation(line: 1507, column: 32, scope: !3856)
!3905 = !DILocation(line: 1507, column: 43, scope: !3856)
!3906 = !DILocation(line: 1507, column: 41, scope: !3856)
!3907 = !DILocalVariable(name: "full_blocks", scope: !3856, file: !3, line: 1508, type: !41)
!3908 = !DILocation(line: 1508, column: 14, scope: !3856)
!3909 = !DILocation(line: 1508, column: 28, scope: !3856)
!3910 = !DILocalVariable(name: "rem", scope: !3856, file: !3, line: 1509, type: !41)
!3911 = !DILocation(line: 1509, column: 14, scope: !3856)
!3912 = !DILocation(line: 1509, column: 20, scope: !3856)
!3913 = !DILocation(line: 1509, column: 27, scope: !3856)
!3914 = !DILocation(line: 1509, column: 25, scope: !3856)
!3915 = !DILocalVariable(name: "wv", scope: !3856, file: !3, line: 1510, type: !3832)
!3916 = !DILocation(line: 1510, column: 14, scope: !3856)
!3917 = !DILocation(line: 1511, column: 42, scope: !3856)
!3918 = !DILocation(line: 1511, column: 46, scope: !3856)
!3919 = !DILocation(line: 1511, column: 50, scope: !3856)
!3920 = !DILocation(line: 1511, column: 89, scope: !3856)
!3921 = !DILocation(line: 1511, column: 5, scope: !3856)
!3922 = !DILocalVariable(name: "wv0", scope: !3856, file: !3, line: 1512, type: !3832)
!3923 = !DILocation(line: 1512, column: 14, scope: !3856)
!3924 = !DILocation(line: 1513, column: 36, scope: !3856)
!3925 = !DILocation(line: 1513, column: 45, scope: !3856)
!3926 = !DILocation(line: 1514, column: 7, scope: !3856)
!3927 = !DILocation(line: 1515, column: 7, scope: !3856)
!3928 = !DILocation(line: 1516, column: 49, scope: !3856)
!3929 = !DILocation(line: 1516, column: 39, scope: !3856)
!3930 = !DILocation(line: 1516, column: 7, scope: !3856)
!3931 = !DILocation(line: 1517, column: 7, scope: !3856)
!3932 = !DILocation(line: 1518, column: 7, scope: !3856)
!3933 = !DILocation(line: 1513, column: 5, scope: !3856)
!3934 = !DILocalVariable(name: "wv1", scope: !3856, file: !3, line: 1519, type: !3832)
!3935 = !DILocation(line: 1519, column: 14, scope: !3856)
!3936 = !DILocation(line: 1520, column: 35, scope: !3856)
!3937 = !DILocation(line: 1521, column: 7, scope: !3856)
!3938 = !DILocation(line: 1522, column: 7, scope: !3856)
!3939 = !DILocation(line: 1524, column: 25, scope: !3856)
!3940 = !DILocation(line: 1525, column: 51, scope: !3856)
!3941 = !DILocation(line: 1525, column: 41, scope: !3856)
!3942 = !DILocation(line: 1525, column: 9, scope: !3856)
!3943 = !DILocation(line: 1524, column: 7, scope: !3856)
!3944 = !DILocation(line: 1526, column: 7, scope: !3856)
!3945 = !DILocation(line: 1527, column: 7, scope: !3856)
!3946 = !DILocation(line: 1520, column: 5, scope: !3856)
!3947 = !DILocation(line: 1529, column: 33, scope: !3714)
!3948 = !DILocation(line: 1529, column: 39, scope: !3714)
!3949 = !DILocation(line: 1529, column: 3, scope: !3714)
!3950 = !DILocalVariable(name: "hash1", scope: !3714, file: !3, line: 1530, type: !41)
!3951 = !DILocation(line: 1530, column: 12, scope: !3714)
!3952 = !DILocation(line: 1530, column: 20, scope: !3714)
!3953 = !DILocation(line: 1531, column: 26, scope: !3714)
!3954 = !DILocation(line: 1531, column: 3, scope: !3714)
!3955 = !DILocalVariable(name: "block_len", scope: !3714, file: !3, line: 1532, type: !5)
!3956 = !DILocation(line: 1532, column: 12, scope: !3714)
!3957 = !DILocalVariable(name: "n_blocks0", scope: !3714, file: !3, line: 1533, type: !5)
!3958 = !DILocation(line: 1533, column: 12, scope: !3714)
!3959 = !DILocation(line: 1533, column: 30, scope: !3714)
!3960 = !DILocation(line: 1533, column: 28, scope: !3714)
!3961 = !DILocalVariable(name: "rem0", scope: !3714, file: !3, line: 1534, type: !5)
!3962 = !DILocation(line: 1534, column: 12, scope: !3714)
!3963 = !DILocation(line: 1534, column: 25, scope: !3714)
!3964 = !DILocation(line: 1534, column: 23, scope: !3714)
!3965 = !DILocalVariable(name: "scrut", scope: !3714, file: !3, line: 1535, type: !197)
!3966 = !DILocation(line: 1535, column: 25, scope: !3714)
!3967 = !DILocation(line: 1536, column: 7, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1536, column: 7)
!3969 = !DILocation(line: 1536, column: 17, scope: !3968)
!3970 = !DILocation(line: 1536, column: 22, scope: !3968)
!3971 = !DILocation(line: 1536, column: 25, scope: !3968)
!3972 = !DILocation(line: 1536, column: 30, scope: !3968)
!3973 = !DILocation(line: 1536, column: 7, scope: !3714)
!3974 = !DILocalVariable(name: "n_blocks_", scope: !3975, file: !3, line: 1538, type: !5)
!3975 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 1537, column: 3)
!3976 = !DILocation(line: 1538, column: 14, scope: !3975)
!3977 = !DILocation(line: 1538, column: 26, scope: !3975)
!3978 = !DILocation(line: 1538, column: 36, scope: !3975)
!3979 = !DILocation(line: 1539, column: 37, scope: !3975)
!3980 = !DILocation(line: 1539, column: 46, scope: !3975)
!3981 = !DILocation(line: 1539, column: 70, scope: !3975)
!3982 = !DILocation(line: 1539, column: 82, scope: !3975)
!3983 = !DILocation(line: 1539, column: 80, scope: !3975)
!3984 = !DILocation(line: 1539, column: 68, scope: !3975)
!3985 = !DILocation(line: 1539, column: 14, scope: !3975)
!3986 = !DILocation(line: 1540, column: 3, scope: !3975)
!3987 = !DILocation(line: 1543, column: 37, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 1542, column: 3)
!3989 = !DILocation(line: 1543, column: 46, scope: !3988)
!3990 = !DILocation(line: 1543, column: 64, scope: !3988)
!3991 = !DILocation(line: 1543, column: 14, scope: !3988)
!3992 = !DILocalVariable(name: "n_blocks", scope: !3714, file: !3, line: 1545, type: !5)
!3993 = !DILocation(line: 1545, column: 12, scope: !3714)
!3994 = !DILocation(line: 1545, column: 29, scope: !3714)
!3995 = !DILocalVariable(name: "rem_len", scope: !3714, file: !3, line: 1546, type: !5)
!3996 = !DILocation(line: 1546, column: 12, scope: !3714)
!3997 = !DILocation(line: 1546, column: 28, scope: !3714)
!3998 = !DILocalVariable(name: "full_blocks_len", scope: !3714, file: !3, line: 1547, type: !5)
!3999 = !DILocation(line: 1547, column: 12, scope: !3714)
!4000 = !DILocation(line: 1547, column: 30, scope: !3714)
!4001 = !DILocation(line: 1547, column: 41, scope: !3714)
!4002 = !DILocation(line: 1547, column: 39, scope: !3714)
!4003 = !DILocalVariable(name: "full_blocks", scope: !3714, file: !3, line: 1548, type: !41)
!4004 = !DILocation(line: 1548, column: 12, scope: !3714)
!4005 = !DILocation(line: 1548, column: 26, scope: !3714)
!4006 = !DILocalVariable(name: "rem", scope: !3714, file: !3, line: 1549, type: !41)
!4007 = !DILocation(line: 1549, column: 12, scope: !3714)
!4008 = !DILocation(line: 1549, column: 18, scope: !3714)
!4009 = !DILocation(line: 1549, column: 26, scope: !3714)
!4010 = !DILocation(line: 1549, column: 24, scope: !3714)
!4011 = !DILocalVariable(name: "wv", scope: !3714, file: !3, line: 1550, type: !3832)
!4012 = !DILocation(line: 1550, column: 12, scope: !3714)
!4013 = !DILocation(line: 1551, column: 40, scope: !3714)
!4014 = !DILocation(line: 1551, column: 44, scope: !3714)
!4015 = !DILocation(line: 1551, column: 48, scope: !3714)
!4016 = !DILocation(line: 1551, column: 87, scope: !3714)
!4017 = !DILocation(line: 1551, column: 3, scope: !3714)
!4018 = !DILocalVariable(name: "wv0", scope: !3714, file: !3, line: 1552, type: !3832)
!4019 = !DILocation(line: 1552, column: 12, scope: !3714)
!4020 = !DILocation(line: 1553, column: 34, scope: !3714)
!4021 = !DILocation(line: 1553, column: 43, scope: !3714)
!4022 = !DILocation(line: 1554, column: 5, scope: !3714)
!4023 = !DILocation(line: 1555, column: 5, scope: !3714)
!4024 = !DILocation(line: 1556, column: 47, scope: !3714)
!4025 = !DILocation(line: 1556, column: 37, scope: !3714)
!4026 = !DILocation(line: 1556, column: 5, scope: !3714)
!4027 = !DILocation(line: 1557, column: 5, scope: !3714)
!4028 = !DILocation(line: 1558, column: 5, scope: !3714)
!4029 = !DILocation(line: 1553, column: 3, scope: !3714)
!4030 = !DILocalVariable(name: "wv1", scope: !3714, file: !3, line: 1559, type: !3832)
!4031 = !DILocation(line: 1559, column: 12, scope: !3714)
!4032 = !DILocation(line: 1560, column: 33, scope: !3714)
!4033 = !DILocation(line: 1561, column: 5, scope: !3714)
!4034 = !DILocation(line: 1562, column: 5, scope: !3714)
!4035 = !DILocation(line: 1564, column: 23, scope: !3714)
!4036 = !DILocation(line: 1565, column: 49, scope: !3714)
!4037 = !DILocation(line: 1565, column: 39, scope: !3714)
!4038 = !DILocation(line: 1565, column: 7, scope: !3714)
!4039 = !DILocation(line: 1564, column: 5, scope: !3714)
!4040 = !DILocation(line: 1566, column: 5, scope: !3714)
!4041 = !DILocation(line: 1567, column: 5, scope: !3714)
!4042 = !DILocation(line: 1560, column: 3, scope: !3714)
!4043 = !DILocation(line: 1568, column: 33, scope: !3714)
!4044 = !DILocation(line: 1568, column: 38, scope: !3714)
!4045 = !DILocation(line: 1568, column: 3, scope: !3714)
!4046 = !DILocation(line: 1569, column: 1, scope: !3714)
