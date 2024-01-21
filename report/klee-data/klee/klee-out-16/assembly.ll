; ModuleID = 'klee/durbin.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@polybench_papi_counters_threadid = dso_local global i32 0, align 4, !dbg !0
@polybench_program_total_flops = dso_local global double 0.000000e+00, align 8, !dbg !10
@.str.8 = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1.9 = private unnamed_addr constant [22 x i8] c"utilities/polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local global double 0.000000e+00, align 8, !dbg !12
@polybench_t_end = dso_local global double 0.000000e+00, align 8, !dbg !14
@.str.2.10 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local global i64 0, align 8, !dbg !16
@polybench_c_end = dso_local global i64 0, align 8, !dbg !19
@polybench_inter_array_padding_sz = internal global i64 0, align 8, !dbg !21
@stderr = external global %struct._IO_FILE*, align 8
@.str.3.13 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !42 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2000 x double]*, align 8
  %8 = alloca [2000 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !50
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %6, metadata !53, metadata !DIExpression()), !dbg !54
  store i32 2000, i32* %6, align 4, !dbg !54
  call void @llvm.dbg.declare(metadata [2000 x double]** %7, metadata !55, metadata !DIExpression()), !dbg !56
  %9 = call i8* @polybench_alloc_data(i64 2000, i32 8), !dbg !56
  %10 = bitcast i8* %9 to [2000 x double]*, !dbg !56
  store [2000 x double]* %10, [2000 x double]** %7, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata [2000 x double]** %8, metadata !57, metadata !DIExpression()), !dbg !58
  %11 = call i8* @polybench_alloc_data(i64 2000, i32 8), !dbg !58
  %12 = bitcast i8* %11 to [2000 x double]*, !dbg !58
  store [2000 x double]* %12, [2000 x double]** %8, align 8, !dbg !58
  %13 = load i32, i32* %6, align 4, !dbg !59
  %14 = load [2000 x double]*, [2000 x double]** %7, align 8, !dbg !60
  %15 = getelementptr inbounds [2000 x double], [2000 x double]* %14, i64 0, i64 0, !dbg !60
  call void @init_array(i32 %13, double* %15), !dbg !61
  %16 = load i32, i32* %6, align 4, !dbg !62
  %17 = load [2000 x double]*, [2000 x double]** %7, align 8, !dbg !63
  %18 = getelementptr inbounds [2000 x double], [2000 x double]* %17, i64 0, i64 0, !dbg !63
  %19 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !64
  %20 = getelementptr inbounds [2000 x double], [2000 x double]* %19, i64 0, i64 0, !dbg !64
  call void @kernel_durbin(i32 %16, double* %18, double* %20), !dbg !65
  %21 = load i32, i32* %4, align 4, !dbg !66
  %22 = icmp sgt i32 %21, 42, !dbg !66
  br i1 %22, label %23, label %33, !dbg !66

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8, !dbg !66
  %25 = getelementptr inbounds i8*, i8** %24, i64 0, !dbg !66
  %26 = load i8*, i8** %25, align 8, !dbg !66
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6, !dbg !66
  %28 = icmp ne i32 %27, 0, !dbg !66
  br i1 %28, label %33, label %29, !dbg !68

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4, !dbg !66
  %31 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !66
  %32 = getelementptr inbounds [2000 x double], [2000 x double]* %31, i64 0, i64 0, !dbg !66
  call void @print_array(i32 %30, double* %32), !dbg !66
  br label %33, !dbg !66

33:                                               ; preds = %29, %23, %2
  %34 = load [2000 x double]*, [2000 x double]** %7, align 8, !dbg !69
  %35 = bitcast [2000 x double]* %34 to i8*, !dbg !69
  call void @free(i8* %35) #7, !dbg !69
  %36 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !70
  %37 = bitcast [2000 x double]* %36 to i8*, !dbg !70
  call void @free(i8* %37) #7, !dbg !70
  ret i32 0, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @init_array(i32 %0, double* %1) #0 !dbg !72 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !75, metadata !DIExpression()), !dbg !76
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %5, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %6, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 0, i32* %5, align 4, !dbg !83
  br label %7, !dbg !85

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %5, align 4, !dbg !86
  %9 = load i32, i32* %3, align 4, !dbg !88
  %10 = icmp slt i32 %8, %9, !dbg !89
  br i1 %10, label %11, label %23, !dbg !90

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !91
  %13 = add nsw i32 %12, 1, !dbg !93
  %14 = load i32, i32* %5, align 4, !dbg !94
  %15 = sub nsw i32 %13, %14, !dbg !95
  %16 = sitofp i32 %15 to double, !dbg !96
  %17 = load double*, double** %4, align 8, !dbg !97
  %18 = load i32, i32* %5, align 4, !dbg !98
  %19 = sext i32 %18 to i64, !dbg !97
  %20 = getelementptr inbounds double, double* %17, i64 %19, !dbg !97
  store double %16, double* %20, align 8, !dbg !99
  %21 = load i32, i32* %5, align 4, !dbg !100
  %22 = add nsw i32 %21, 1, !dbg !100
  store i32 %22, i32* %5, align 4, !dbg !100
  br label %7, !dbg !101, !llvm.loop !102

23:                                               ; preds = %7
  ret void, !dbg !105
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @kernel_durbin(i32 %0, double* %1, double* %2) #0 !dbg !106 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca [2000 x double], align 16
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !109, metadata !DIExpression()), !dbg !110
  store double* %1, double** %5, align 8
  call void @llvm.dbg.declare(metadata double** %5, metadata !111, metadata !DIExpression()), !dbg !112
  store double* %2, double** %6, align 8
  call void @llvm.dbg.declare(metadata double** %6, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata [2000 x double]* %7, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata double* %8, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata double* %9, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata double* %10, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %11, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %12, metadata !125, metadata !DIExpression()), !dbg !126
  %13 = load double*, double** %5, align 8, !dbg !127
  %14 = getelementptr inbounds double, double* %13, i64 0, !dbg !127
  %15 = load double, double* %14, align 8, !dbg !127
  %16 = fneg double %15, !dbg !128
  %17 = load double*, double** %6, align 8, !dbg !129
  %18 = getelementptr inbounds double, double* %17, i64 0, !dbg !129
  store double %16, double* %18, align 8, !dbg !130
  store double 1.000000e+00, double* %9, align 8, !dbg !131
  %19 = load double*, double** %5, align 8, !dbg !132
  %20 = getelementptr inbounds double, double* %19, i64 0, !dbg !132
  %21 = load double, double* %20, align 8, !dbg !132
  %22 = fneg double %21, !dbg !133
  store double %22, double* %8, align 8, !dbg !134
  store i32 1, i32* %12, align 4, !dbg !135
  br label %23, !dbg !137

23:                                               ; preds = %110, %3
  %24 = load i32, i32* %12, align 4, !dbg !138
  %25 = load i32, i32* %4, align 4, !dbg !140
  %26 = icmp slt i32 %24, %25, !dbg !141
  br i1 %26, label %27, label %118, !dbg !142

27:                                               ; preds = %23
  %28 = load double, double* %8, align 8, !dbg !143
  %29 = load double, double* %8, align 8, !dbg !145
  %30 = fmul double %28, %29, !dbg !146
  %31 = fsub double 1.000000e+00, %30, !dbg !147
  %32 = load double, double* %9, align 8, !dbg !148
  %33 = fmul double %31, %32, !dbg !149
  store double %33, double* %9, align 8, !dbg !150
  store double 0.000000e+00, double* %10, align 8, !dbg !151
  store i32 0, i32* %11, align 4, !dbg !152
  br label %34, !dbg !154

34:                                               ; preds = %38, %27
  %35 = load i32, i32* %11, align 4, !dbg !155
  %36 = load i32, i32* %12, align 4, !dbg !157
  %37 = icmp slt i32 %35, %36, !dbg !158
  br i1 %37, label %38, label %57, !dbg !159

38:                                               ; preds = %34
  %39 = load double*, double** %5, align 8, !dbg !160
  %40 = load i32, i32* %12, align 4, !dbg !162
  %41 = load i32, i32* %11, align 4, !dbg !163
  %42 = sub nsw i32 %40, %41, !dbg !164
  %43 = sub nsw i32 %42, 1, !dbg !165
  %44 = sext i32 %43 to i64, !dbg !160
  %45 = getelementptr inbounds double, double* %39, i64 %44, !dbg !160
  %46 = load double, double* %45, align 8, !dbg !160
  %47 = load double*, double** %6, align 8, !dbg !166
  %48 = load i32, i32* %11, align 4, !dbg !167
  %49 = sext i32 %48 to i64, !dbg !166
  %50 = getelementptr inbounds double, double* %47, i64 %49, !dbg !166
  %51 = load double, double* %50, align 8, !dbg !166
  %52 = fmul double %46, %51, !dbg !168
  %53 = load double, double* %10, align 8, !dbg !169
  %54 = fadd double %53, %52, !dbg !169
  store double %54, double* %10, align 8, !dbg !169
  %55 = load i32, i32* %11, align 4, !dbg !170
  %56 = add nsw i32 %55, 1, !dbg !170
  store i32 %56, i32* %11, align 4, !dbg !170
  br label %34, !dbg !171, !llvm.loop !172

57:                                               ; preds = %34
  %58 = load double*, double** %5, align 8, !dbg !174
  %59 = load i32, i32* %12, align 4, !dbg !175
  %60 = sext i32 %59 to i64, !dbg !174
  %61 = getelementptr inbounds double, double* %58, i64 %60, !dbg !174
  %62 = load double, double* %61, align 8, !dbg !174
  %63 = load double, double* %10, align 8, !dbg !176
  %64 = fadd double %62, %63, !dbg !177
  %65 = fneg double %64, !dbg !178
  %66 = load double, double* %9, align 8, !dbg !179
  %67 = fdiv double %65, %66, !dbg !180
  store double %67, double* %8, align 8, !dbg !181
  store i32 0, i32* %11, align 4, !dbg !182
  br label %68, !dbg !184

68:                                               ; preds = %72, %57
  %69 = load i32, i32* %11, align 4, !dbg !185
  %70 = load i32, i32* %12, align 4, !dbg !187
  %71 = icmp slt i32 %69, %70, !dbg !188
  br i1 %71, label %72, label %94, !dbg !189

72:                                               ; preds = %68
  %73 = load double*, double** %6, align 8, !dbg !190
  %74 = load i32, i32* %11, align 4, !dbg !192
  %75 = sext i32 %74 to i64, !dbg !190
  %76 = getelementptr inbounds double, double* %73, i64 %75, !dbg !190
  %77 = load double, double* %76, align 8, !dbg !190
  %78 = load double, double* %8, align 8, !dbg !193
  %79 = load double*, double** %6, align 8, !dbg !194
  %80 = load i32, i32* %12, align 4, !dbg !195
  %81 = load i32, i32* %11, align 4, !dbg !196
  %82 = sub nsw i32 %80, %81, !dbg !197
  %83 = sub nsw i32 %82, 1, !dbg !198
  %84 = sext i32 %83 to i64, !dbg !194
  %85 = getelementptr inbounds double, double* %79, i64 %84, !dbg !194
  %86 = load double, double* %85, align 8, !dbg !194
  %87 = fmul double %78, %86, !dbg !199
  %88 = fadd double %77, %87, !dbg !200
  %89 = load i32, i32* %11, align 4, !dbg !201
  %90 = sext i32 %89 to i64, !dbg !202
  %91 = getelementptr inbounds [2000 x double], [2000 x double]* %7, i64 0, i64 %90, !dbg !202
  store double %88, double* %91, align 8, !dbg !203
  %92 = load i32, i32* %11, align 4, !dbg !204
  %93 = add nsw i32 %92, 1, !dbg !204
  store i32 %93, i32* %11, align 4, !dbg !204
  br label %68, !dbg !205, !llvm.loop !206

94:                                               ; preds = %68
  store i32 0, i32* %11, align 4, !dbg !208
  br label %95, !dbg !210

95:                                               ; preds = %99, %94
  %96 = load i32, i32* %11, align 4, !dbg !211
  %97 = load i32, i32* %12, align 4, !dbg !213
  %98 = icmp slt i32 %96, %97, !dbg !214
  br i1 %98, label %99, label %110, !dbg !215

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4, !dbg !216
  %101 = sext i32 %100 to i64, !dbg !218
  %102 = getelementptr inbounds [2000 x double], [2000 x double]* %7, i64 0, i64 %101, !dbg !218
  %103 = load double, double* %102, align 8, !dbg !218
  %104 = load double*, double** %6, align 8, !dbg !219
  %105 = load i32, i32* %11, align 4, !dbg !220
  %106 = sext i32 %105 to i64, !dbg !219
  %107 = getelementptr inbounds double, double* %104, i64 %106, !dbg !219
  store double %103, double* %107, align 8, !dbg !221
  %108 = load i32, i32* %11, align 4, !dbg !222
  %109 = add nsw i32 %108, 1, !dbg !222
  store i32 %109, i32* %11, align 4, !dbg !222
  br label %95, !dbg !223, !llvm.loop !224

110:                                              ; preds = %95
  %111 = load double, double* %8, align 8, !dbg !226
  %112 = load double*, double** %6, align 8, !dbg !227
  %113 = load i32, i32* %12, align 4, !dbg !228
  %114 = sext i32 %113 to i64, !dbg !227
  %115 = getelementptr inbounds double, double* %112, i64 %114, !dbg !227
  store double %111, double* %115, align 8, !dbg !229
  %116 = load i32, i32* %12, align 4, !dbg !230
  %117 = add nsw i32 %116, 1, !dbg !230
  store i32 %117, i32* %12, align 4, !dbg !230
  br label %23, !dbg !231, !llvm.loop !232

118:                                              ; preds = %23
  ret void, !dbg !234
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @print_array(i32 %0, double* %1) #0 !dbg !235 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !236, metadata !DIExpression()), !dbg !237
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %5, metadata !240, metadata !DIExpression()), !dbg !241
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !242
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)), !dbg !242
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !243
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !243
  store i32 0, i32* %5, align 4, !dbg !244
  br label %10, !dbg !246

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %5, align 4, !dbg !247
  %12 = load i32, i32* %3, align 4, !dbg !249
  %13 = icmp slt i32 %11, %12, !dbg !250
  br i1 %13, label %14, label %31, !dbg !251

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4, !dbg !252
  %16 = srem i32 %15, 20, !dbg !255
  %17 = icmp eq i32 %16, 0, !dbg !256
  br i1 %17, label %18, label %21, !dbg !257

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !258
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !259
  br label %21, !dbg !259

21:                                               ; preds = %18, %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !260
  %23 = load double*, double** %4, align 8, !dbg !261
  %24 = load i32, i32* %5, align 4, !dbg !262
  %25 = sext i32 %24 to i64, !dbg !261
  %26 = getelementptr inbounds double, double* %23, i64 %25, !dbg !261
  %27 = load double, double* %26, align 8, !dbg !261
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %27), !dbg !263
  %29 = load i32, i32* %5, align 4, !dbg !264
  %30 = add nsw i32 %29, 1, !dbg !264
  store i32 %30, i32* %5, align 4, !dbg !264
  br label %10, !dbg !265, !llvm.loop !266

31:                                               ; preds = %10
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !268
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !268
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !269
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)), !dbg !269
  ret void, !dbg !270
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_flush_cache() #0 !dbg !271 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !274, metadata !DIExpression()), !dbg !275
  store i32 4194560, i32* %1, align 4, !dbg !275
  call void @llvm.dbg.declare(metadata double** %2, metadata !276, metadata !DIExpression()), !dbg !277
  %5 = load i32, i32* %1, align 4, !dbg !278
  %6 = sext i32 %5 to i64, !dbg !278
  %7 = call noalias align 16 i8* @calloc(i64 %6, i64 8) #7, !dbg !279
  %8 = bitcast i8* %7 to double*, !dbg !280
  store double* %8, double** %2, align 8, !dbg !277
  call void @llvm.dbg.declare(metadata i32* %3, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata double* %4, metadata !283, metadata !DIExpression()), !dbg !284
  store double 0.000000e+00, double* %4, align 8, !dbg !284
  store i32 0, i32* %3, align 4, !dbg !285
  br label %9, !dbg !287

9:                                                ; preds = %13, %0
  %10 = load i32, i32* %3, align 4, !dbg !288
  %11 = load i32, i32* %1, align 4, !dbg !290
  %12 = icmp slt i32 %10, %11, !dbg !291
  br i1 %12, label %13, label %23, !dbg !292

13:                                               ; preds = %9
  %14 = load double*, double** %2, align 8, !dbg !293
  %15 = load i32, i32* %3, align 4, !dbg !294
  %16 = sext i32 %15 to i64, !dbg !293
  %17 = getelementptr inbounds double, double* %14, i64 %16, !dbg !293
  %18 = load double, double* %17, align 8, !dbg !293
  %19 = load double, double* %4, align 8, !dbg !295
  %20 = fadd double %19, %18, !dbg !295
  store double %20, double* %4, align 8, !dbg !295
  %21 = load i32, i32* %3, align 4, !dbg !296
  %22 = add nsw i32 %21, 1, !dbg !296
  store i32 %22, i32* %3, align 4, !dbg !296
  br label %9, !dbg !297, !llvm.loop !298

23:                                               ; preds = %9
  %24 = load double, double* %4, align 8, !dbg !300
  %25 = fcmp ole double %24, 1.000000e+01, !dbg !300
  br i1 %25, label %27, label %26, !dbg !303

26:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.9, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #8, !dbg !300
  unreachable, !dbg !300

27:                                               ; preds = %23
  %28 = load double*, double** %2, align 8, !dbg !304
  %29 = bitcast double* %28 to i8*, !dbg !304
  call void @free(i8* %29) #7, !dbg !305
  ret void, !dbg !306
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_prepare_instruments() #0 !dbg !307 {
  call void @polybench_flush_cache(), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_start() #0 !dbg !310 {
  call void @polybench_prepare_instruments(), !dbg !311
  %1 = call double @rtclock(), !dbg !312
  store double %1, double* @polybench_t_start, align 8, !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal double @rtclock() #0 !dbg !315 {
  ret double 0.000000e+00, !dbg !318
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_stop() #0 !dbg !319 {
  %1 = call double @rtclock(), !dbg !320
  store double %1, double* @polybench_t_end, align 8, !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_print() #0 !dbg !323 {
  %1 = load double, double* @polybench_t_end, align 8, !dbg !324
  %2 = load double, double* @polybench_t_start, align 8, !dbg !325
  %3 = fsub double %1, %2, !dbg !326
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.10, i64 0, i64 0), double %3), !dbg !327
  ret void, !dbg !328
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_free_data(i8* %0) #0 !dbg !329 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !332, metadata !DIExpression()), !dbg !333
  %3 = load i8*, i8** %2, align 8, !dbg !334
  call void @free(i8* %3) #7, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @polybench_alloc_data(i64 %0, i32 %1) #0 !dbg !337 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata i64* %5, metadata !344, metadata !DIExpression()), !dbg !345
  %7 = load i64, i64* %3, align 8, !dbg !346
  store i64 %7, i64* %5, align 8, !dbg !345
  %8 = load i32, i32* %4, align 4, !dbg !347
  %9 = sext i32 %8 to i64, !dbg !347
  %10 = load i64, i64* %5, align 8, !dbg !348
  %11 = mul i64 %10, %9, !dbg !348
  store i64 %11, i64* %5, align 8, !dbg !348
  call void @llvm.dbg.declare(metadata i8** %6, metadata !349, metadata !DIExpression()), !dbg !350
  %12 = load i64, i64* %5, align 8, !dbg !351
  %13 = call i8* @xmalloc(i64 %12), !dbg !352
  store i8* %13, i8** %6, align 8, !dbg !350
  %14 = load i8*, i8** %6, align 8, !dbg !353
  ret i8* %14, !dbg !354
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i8* @xmalloc(i64 %0) #0 !dbg !355 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata i8** %3, metadata !360, metadata !DIExpression()), !dbg !361
  store i8* null, i8** %3, align 8, !dbg !361
  %6 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !362
  %7 = add i64 %6, 0, !dbg !362
  store i64 %7, i64* @polybench_inter_array_padding_sz, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata i64* %4, metadata !363, metadata !DIExpression()), !dbg !364
  %8 = load i64, i64* %2, align 8, !dbg !365
  %9 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !366
  %10 = add i64 %8, %9, !dbg !367
  store i64 %10, i64* %4, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata i32* %5, metadata !368, metadata !DIExpression()), !dbg !369
  %11 = load i64, i64* %4, align 8, !dbg !370
  %12 = call i32 @posix_memalign(i8** %3, i64 4096, i64 %11) #7, !dbg !371
  store i32 %12, i32* %5, align 4, !dbg !369
  %13 = load i8*, i8** %3, align 8, !dbg !372
  %14 = icmp eq i8* %13, null, !dbg !372
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %or.cond = select i1 %14, i1 true, i1 %16, !dbg !374
  br i1 %or.cond, label %17, label %20, !dbg !374

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !375
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3.13, i64 0, i64 0)), !dbg !377
  call void @exit(i32 1) #8, !dbg !378
  unreachable, !dbg !378

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8, !dbg !379
  ret i8* %21, !dbg !380
}

; Function Attrs: nounwind
declare i32 @posix_memalign(i8**, i64, i64) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!27, !2}
!llvm.ident = !{!34, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "polybench_papi_counters_threadid", scope: !2, file: !3, line: 45, type: !26, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "utilities/polybench.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!0, !10, !12, !14, !16, !19, !21}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "polybench_program_total_flops", scope: !2, file: !3, line: 46, type: !7, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "polybench_t_start", scope: !2, file: !3, line: 78, type: !7, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "polybench_t_end", scope: !2, file: !3, line: 78, type: !7, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "polybench_c_start", scope: !2, file: !3, line: 80, type: !18, isLocal: false, isDefinition: true)
!18 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "polybench_c_end", scope: !2, file: !3, line: 80, type: !18, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "polybench_inter_array_padding_sz", scope: !2, file: !3, line: 75, type: !23, isLocal: true, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 46, baseType: !25)
!24 = !DIFile(filename: "/usr/lib/clang/13.0.1/include/stddef.h", directory: "")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 13.0.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "linear-algebra/solvers/durbin/durbin.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!29 = !{!30, !8}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128000, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 2000)
!34 = !{!"clang version 13.0.1"}
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = distinct !DISubprogram(name: "main", scope: !43, file: !43, line: 98, type: !44, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !4)
!43 = !DIFile(filename: "./linear-algebra/solvers/durbin/durbin.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!44 = !DISubroutineType(types: !45)
!45 = !{!26, !26, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DILocalVariable(name: "argc", arg: 1, scope: !42, file: !43, line: 98, type: !26)
!50 = !DILocation(line: 98, column: 14, scope: !42)
!51 = !DILocalVariable(name: "argv", arg: 2, scope: !42, file: !43, line: 98, type: !46)
!52 = !DILocation(line: 98, column: 27, scope: !42)
!53 = !DILocalVariable(name: "n", scope: !42, file: !43, line: 101, type: !26)
!54 = !DILocation(line: 101, column: 7, scope: !42)
!55 = !DILocalVariable(name: "r", scope: !42, file: !43, line: 104, type: !30)
!56 = !DILocation(line: 104, column: 3, scope: !42)
!57 = !DILocalVariable(name: "y", scope: !42, file: !43, line: 105, type: !30)
!58 = !DILocation(line: 105, column: 3, scope: !42)
!59 = !DILocation(line: 109, column: 15, scope: !42)
!60 = !DILocation(line: 109, column: 18, scope: !42)
!61 = !DILocation(line: 109, column: 3, scope: !42)
!62 = !DILocation(line: 115, column: 18, scope: !42)
!63 = !DILocation(line: 116, column: 4, scope: !42)
!64 = !DILocation(line: 117, column: 4, scope: !42)
!65 = !DILocation(line: 115, column: 3, scope: !42)
!66 = !DILocation(line: 125, column: 3, scope: !67)
!67 = distinct !DILexicalBlock(scope: !42, file: !43, line: 125, column: 3)
!68 = !DILocation(line: 125, column: 3, scope: !42)
!69 = !DILocation(line: 128, column: 3, scope: !42)
!70 = !DILocation(line: 129, column: 3, scope: !42)
!71 = !DILocation(line: 131, column: 3, scope: !42)
!72 = distinct !DISubprogram(name: "init_array", scope: !43, file: !43, line: 26, type: !73, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !26, !6}
!75 = !DILocalVariable(name: "n", arg: 1, scope: !72, file: !43, line: 26, type: !26)
!76 = !DILocation(line: 26, column: 22, scope: !72)
!77 = !DILocalVariable(name: "r", arg: 2, scope: !72, file: !43, line: 27, type: !6)
!78 = !DILocation(line: 27, column: 14, scope: !72)
!79 = !DILocalVariable(name: "i", scope: !72, file: !43, line: 29, type: !26)
!80 = !DILocation(line: 29, column: 7, scope: !72)
!81 = !DILocalVariable(name: "j", scope: !72, file: !43, line: 29, type: !26)
!82 = !DILocation(line: 29, column: 10, scope: !72)
!83 = !DILocation(line: 31, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !72, file: !43, line: 31, column: 3)
!85 = !DILocation(line: 31, column: 8, scope: !84)
!86 = !DILocation(line: 31, column: 15, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !43, line: 31, column: 3)
!88 = !DILocation(line: 31, column: 19, scope: !87)
!89 = !DILocation(line: 31, column: 17, scope: !87)
!90 = !DILocation(line: 31, column: 3, scope: !84)
!91 = !DILocation(line: 33, column: 15, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !43, line: 32, column: 5)
!93 = !DILocation(line: 33, column: 16, scope: !92)
!94 = !DILocation(line: 33, column: 19, scope: !92)
!95 = !DILocation(line: 33, column: 18, scope: !92)
!96 = !DILocation(line: 33, column: 14, scope: !92)
!97 = !DILocation(line: 33, column: 7, scope: !92)
!98 = !DILocation(line: 33, column: 9, scope: !92)
!99 = !DILocation(line: 33, column: 12, scope: !92)
!100 = !DILocation(line: 31, column: 23, scope: !87)
!101 = !DILocation(line: 31, column: 3, scope: !87)
!102 = distinct !{!102, !90, !103, !104}
!103 = !DILocation(line: 34, column: 5, scope: !84)
!104 = !{!"llvm.loop.mustprogress"}
!105 = !DILocation(line: 35, column: 1, scope: !72)
!106 = distinct !DISubprogram(name: "kernel_durbin", scope: !43, file: !43, line: 61, type: !107, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !26, !6, !6}
!109 = !DILocalVariable(name: "n", arg: 1, scope: !106, file: !43, line: 61, type: !26)
!110 = !DILocation(line: 61, column: 24, scope: !106)
!111 = !DILocalVariable(name: "r", arg: 2, scope: !106, file: !43, line: 62, type: !6)
!112 = !DILocation(line: 62, column: 16, scope: !106)
!113 = !DILocalVariable(name: "y", arg: 3, scope: !106, file: !43, line: 63, type: !6)
!114 = !DILocation(line: 63, column: 16, scope: !106)
!115 = !DILocalVariable(name: "z", scope: !106, file: !43, line: 65, type: !31)
!116 = !DILocation(line: 65, column: 12, scope: !106)
!117 = !DILocalVariable(name: "alpha", scope: !106, file: !43, line: 66, type: !7)
!118 = !DILocation(line: 66, column: 12, scope: !106)
!119 = !DILocalVariable(name: "beta", scope: !106, file: !43, line: 67, type: !7)
!120 = !DILocation(line: 67, column: 12, scope: !106)
!121 = !DILocalVariable(name: "sum", scope: !106, file: !43, line: 68, type: !7)
!122 = !DILocation(line: 68, column: 12, scope: !106)
!123 = !DILocalVariable(name: "i", scope: !106, file: !43, line: 70, type: !26)
!124 = !DILocation(line: 70, column: 6, scope: !106)
!125 = !DILocalVariable(name: "k", scope: !106, file: !43, line: 70, type: !26)
!126 = !DILocation(line: 70, column: 8, scope: !106)
!127 = !DILocation(line: 73, column: 10, scope: !106)
!128 = !DILocation(line: 73, column: 9, scope: !106)
!129 = !DILocation(line: 73, column: 2, scope: !106)
!130 = !DILocation(line: 73, column: 7, scope: !106)
!131 = !DILocation(line: 74, column: 7, scope: !106)
!132 = !DILocation(line: 75, column: 11, scope: !106)
!133 = !DILocation(line: 75, column: 10, scope: !106)
!134 = !DILocation(line: 75, column: 8, scope: !106)
!135 = !DILocation(line: 77, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !106, file: !43, line: 77, column: 2)
!137 = !DILocation(line: 77, column: 7, scope: !136)
!138 = !DILocation(line: 77, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !43, line: 77, column: 2)
!140 = !DILocation(line: 77, column: 18, scope: !139)
!141 = !DILocation(line: 77, column: 16, scope: !139)
!142 = !DILocation(line: 77, column: 2, scope: !136)
!143 = !DILocation(line: 78, column: 14, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !43, line: 77, column: 30)
!145 = !DILocation(line: 78, column: 20, scope: !144)
!146 = !DILocation(line: 78, column: 19, scope: !144)
!147 = !DILocation(line: 78, column: 13, scope: !144)
!148 = !DILocation(line: 78, column: 27, scope: !144)
!149 = !DILocation(line: 78, column: 26, scope: !144)
!150 = !DILocation(line: 78, column: 9, scope: !144)
!151 = !DILocation(line: 79, column: 8, scope: !144)
!152 = !DILocation(line: 80, column: 10, scope: !153)
!153 = distinct !DILexicalBlock(scope: !144, file: !43, line: 80, column: 4)
!154 = !DILocation(line: 80, column: 9, scope: !153)
!155 = !DILocation(line: 80, column: 14, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !43, line: 80, column: 4)
!157 = !DILocation(line: 80, column: 16, scope: !156)
!158 = !DILocation(line: 80, column: 15, scope: !156)
!159 = !DILocation(line: 80, column: 4, scope: !153)
!160 = !DILocation(line: 81, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !43, line: 80, column: 24)
!162 = !DILocation(line: 81, column: 16, scope: !161)
!163 = !DILocation(line: 81, column: 18, scope: !161)
!164 = !DILocation(line: 81, column: 17, scope: !161)
!165 = !DILocation(line: 81, column: 19, scope: !161)
!166 = !DILocation(line: 81, column: 23, scope: !161)
!167 = !DILocation(line: 81, column: 25, scope: !161)
!168 = !DILocation(line: 81, column: 22, scope: !161)
!169 = !DILocation(line: 81, column: 11, scope: !161)
!170 = !DILocation(line: 80, column: 20, scope: !156)
!171 = !DILocation(line: 80, column: 4, scope: !156)
!172 = distinct !{!172, !159, !173, !104}
!173 = !DILocation(line: 82, column: 4, scope: !153)
!174 = !DILocation(line: 83, column: 15, scope: !144)
!175 = !DILocation(line: 83, column: 17, scope: !144)
!176 = !DILocation(line: 83, column: 22, scope: !144)
!177 = !DILocation(line: 83, column: 20, scope: !144)
!178 = !DILocation(line: 83, column: 12, scope: !144)
!179 = !DILocation(line: 83, column: 27, scope: !144)
!180 = !DILocation(line: 83, column: 26, scope: !144)
!181 = !DILocation(line: 83, column: 10, scope: !144)
!182 = !DILocation(line: 85, column: 10, scope: !183)
!183 = distinct !DILexicalBlock(scope: !144, file: !43, line: 85, column: 4)
!184 = !DILocation(line: 85, column: 9, scope: !183)
!185 = !DILocation(line: 85, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !43, line: 85, column: 4)
!187 = !DILocation(line: 85, column: 16, scope: !186)
!188 = !DILocation(line: 85, column: 15, scope: !186)
!189 = !DILocation(line: 85, column: 4, scope: !183)
!190 = !DILocation(line: 86, column: 14, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !43, line: 85, column: 24)
!192 = !DILocation(line: 86, column: 16, scope: !191)
!193 = !DILocation(line: 86, column: 21, scope: !191)
!194 = !DILocation(line: 86, column: 27, scope: !191)
!195 = !DILocation(line: 86, column: 29, scope: !191)
!196 = !DILocation(line: 86, column: 31, scope: !191)
!197 = !DILocation(line: 86, column: 30, scope: !191)
!198 = !DILocation(line: 86, column: 32, scope: !191)
!199 = !DILocation(line: 86, column: 26, scope: !191)
!200 = !DILocation(line: 86, column: 19, scope: !191)
!201 = !DILocation(line: 86, column: 9, scope: !191)
!202 = !DILocation(line: 86, column: 7, scope: !191)
!203 = !DILocation(line: 86, column: 12, scope: !191)
!204 = !DILocation(line: 85, column: 20, scope: !186)
!205 = !DILocation(line: 85, column: 4, scope: !186)
!206 = distinct !{!206, !189, !207, !104}
!207 = !DILocation(line: 87, column: 4, scope: !183)
!208 = !DILocation(line: 88, column: 10, scope: !209)
!209 = distinct !DILexicalBlock(scope: !144, file: !43, line: 88, column: 4)
!210 = !DILocation(line: 88, column: 9, scope: !209)
!211 = !DILocation(line: 88, column: 14, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !43, line: 88, column: 4)
!213 = !DILocation(line: 88, column: 16, scope: !212)
!214 = !DILocation(line: 88, column: 15, scope: !212)
!215 = !DILocation(line: 88, column: 4, scope: !209)
!216 = !DILocation(line: 89, column: 15, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !43, line: 88, column: 24)
!218 = !DILocation(line: 89, column: 13, scope: !217)
!219 = !DILocation(line: 89, column: 6, scope: !217)
!220 = !DILocation(line: 89, column: 8, scope: !217)
!221 = !DILocation(line: 89, column: 11, scope: !217)
!222 = !DILocation(line: 88, column: 20, scope: !212)
!223 = !DILocation(line: 88, column: 4, scope: !212)
!224 = distinct !{!224, !215, !225, !104}
!225 = !DILocation(line: 90, column: 4, scope: !209)
!226 = !DILocation(line: 91, column: 11, scope: !144)
!227 = !DILocation(line: 91, column: 4, scope: !144)
!228 = !DILocation(line: 91, column: 6, scope: !144)
!229 = !DILocation(line: 91, column: 9, scope: !144)
!230 = !DILocation(line: 77, column: 26, scope: !139)
!231 = !DILocation(line: 77, column: 2, scope: !139)
!232 = distinct !{!232, !142, !233, !104}
!233 = !DILocation(line: 92, column: 2, scope: !136)
!234 = !DILocation(line: 95, column: 1, scope: !106)
!235 = distinct !DISubprogram(name: "print_array", scope: !43, file: !43, line: 41, type: !73, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!236 = !DILocalVariable(name: "n", arg: 1, scope: !235, file: !43, line: 41, type: !26)
!237 = !DILocation(line: 41, column: 22, scope: !235)
!238 = !DILocalVariable(name: "y", arg: 2, scope: !235, file: !43, line: 42, type: !6)
!239 = !DILocation(line: 42, column: 14, scope: !235)
!240 = !DILocalVariable(name: "i", scope: !235, file: !43, line: 45, type: !26)
!241 = !DILocation(line: 45, column: 7, scope: !235)
!242 = !DILocation(line: 47, column: 3, scope: !235)
!243 = !DILocation(line: 48, column: 3, scope: !235)
!244 = !DILocation(line: 49, column: 10, scope: !245)
!245 = distinct !DILexicalBlock(scope: !235, file: !43, line: 49, column: 3)
!246 = !DILocation(line: 49, column: 8, scope: !245)
!247 = !DILocation(line: 49, column: 15, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !43, line: 49, column: 3)
!249 = !DILocation(line: 49, column: 19, scope: !248)
!250 = !DILocation(line: 49, column: 17, scope: !248)
!251 = !DILocation(line: 49, column: 3, scope: !245)
!252 = !DILocation(line: 50, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !43, line: 50, column: 9)
!254 = distinct !DILexicalBlock(scope: !248, file: !43, line: 49, column: 27)
!255 = !DILocation(line: 50, column: 11, scope: !253)
!256 = !DILocation(line: 50, column: 16, scope: !253)
!257 = !DILocation(line: 50, column: 9, scope: !254)
!258 = !DILocation(line: 50, column: 31, scope: !253)
!259 = !DILocation(line: 50, column: 22, scope: !253)
!260 = !DILocation(line: 51, column: 14, scope: !254)
!261 = !DILocation(line: 51, column: 59, scope: !254)
!262 = !DILocation(line: 51, column: 61, scope: !254)
!263 = !DILocation(line: 51, column: 5, scope: !254)
!264 = !DILocation(line: 49, column: 23, scope: !248)
!265 = !DILocation(line: 49, column: 3, scope: !248)
!266 = distinct !{!266, !251, !267, !104}
!267 = !DILocation(line: 52, column: 3, scope: !245)
!268 = !DILocation(line: 53, column: 3, scope: !235)
!269 = !DILocation(line: 54, column: 3, scope: !235)
!270 = !DILocation(line: 55, column: 1, scope: !235)
!271 = distinct !DISubprogram(name: "polybench_flush_cache", scope: !3, file: !3, line: 112, type: !272, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!272 = !DISubroutineType(types: !273)
!273 = !{null}
!274 = !DILocalVariable(name: "cs", scope: !271, file: !3, line: 114, type: !26)
!275 = !DILocation(line: 114, column: 7, scope: !271)
!276 = !DILocalVariable(name: "flush", scope: !271, file: !3, line: 115, type: !6)
!277 = !DILocation(line: 115, column: 11, scope: !271)
!278 = !DILocation(line: 115, column: 37, scope: !271)
!279 = !DILocation(line: 115, column: 29, scope: !271)
!280 = !DILocation(line: 115, column: 19, scope: !271)
!281 = !DILocalVariable(name: "i", scope: !271, file: !3, line: 116, type: !26)
!282 = !DILocation(line: 116, column: 7, scope: !271)
!283 = !DILocalVariable(name: "tmp", scope: !271, file: !3, line: 117, type: !7)
!284 = !DILocation(line: 117, column: 10, scope: !271)
!285 = !DILocation(line: 121, column: 10, scope: !286)
!286 = distinct !DILexicalBlock(scope: !271, file: !3, line: 121, column: 3)
!287 = !DILocation(line: 121, column: 8, scope: !286)
!288 = !DILocation(line: 121, column: 15, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !3, line: 121, column: 3)
!290 = !DILocation(line: 121, column: 19, scope: !289)
!291 = !DILocation(line: 121, column: 17, scope: !289)
!292 = !DILocation(line: 121, column: 3, scope: !286)
!293 = !DILocation(line: 122, column: 12, scope: !289)
!294 = !DILocation(line: 122, column: 18, scope: !289)
!295 = !DILocation(line: 122, column: 9, scope: !289)
!296 = !DILocation(line: 121, column: 24, scope: !289)
!297 = !DILocation(line: 121, column: 3, scope: !289)
!298 = distinct !{!298, !292, !299, !104}
!299 = !DILocation(line: 122, column: 19, scope: !286)
!300 = !DILocation(line: 123, column: 3, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 123, column: 3)
!302 = distinct !DILexicalBlock(scope: !271, file: !3, line: 123, column: 3)
!303 = !DILocation(line: 123, column: 3, scope: !302)
!304 = !DILocation(line: 124, column: 9, scope: !271)
!305 = !DILocation(line: 124, column: 3, scope: !271)
!306 = !DILocation(line: 125, column: 1, scope: !271)
!307 = distinct !DISubprogram(name: "polybench_prepare_instruments", scope: !3, file: !3, line: 353, type: !272, scopeLine: 354, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!308 = !DILocation(line: 356, column: 3, scope: !307)
!309 = !DILocation(line: 361, column: 1, scope: !307)
!310 = distinct !DISubprogram(name: "polybench_timer_start", scope: !3, file: !3, line: 364, type: !272, scopeLine: 365, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!311 = !DILocation(line: 366, column: 3, scope: !310)
!312 = !DILocation(line: 368, column: 23, scope: !310)
!313 = !DILocation(line: 368, column: 21, scope: !310)
!314 = !DILocation(line: 372, column: 1, scope: !310)
!315 = distinct !DISubprogram(name: "rtclock", scope: !3, file: !3, line: 83, type: !316, scopeLine: 84, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!316 = !DISubroutineType(types: !317)
!317 = !{!7}
!318 = !DILocation(line: 93, column: 5, scope: !315)
!319 = distinct !DISubprogram(name: "polybench_timer_stop", scope: !3, file: !3, line: 375, type: !272, scopeLine: 376, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!320 = !DILocation(line: 378, column: 21, scope: !319)
!321 = !DILocation(line: 378, column: 19, scope: !319)
!322 = !DILocation(line: 385, column: 1, scope: !319)
!323 = distinct !DISubprogram(name: "polybench_timer_print", scope: !3, file: !3, line: 388, type: !272, scopeLine: 389, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!324 = !DILocation(line: 402, column: 26, scope: !323)
!325 = !DILocation(line: 402, column: 44, scope: !323)
!326 = !DILocation(line: 402, column: 42, scope: !323)
!327 = !DILocation(line: 402, column: 7, scope: !323)
!328 = !DILocation(line: 407, column: 1, scope: !323)
!329 = distinct !DISubprogram(name: "polybench_free_data", scope: !3, file: !3, line: 547, type: !330, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !8}
!332 = !DILocalVariable(name: "ptr", arg: 1, scope: !329, file: !3, line: 547, type: !8)
!333 = !DILocation(line: 547, column: 32, scope: !329)
!334 = !DILocation(line: 552, column: 9, scope: !329)
!335 = !DILocation(line: 552, column: 3, scope: !329)
!336 = !DILocation(line: 554, column: 1, scope: !329)
!337 = distinct !DISubprogram(name: "polybench_alloc_data", scope: !3, file: !3, line: 557, type: !338, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!338 = !DISubroutineType(types: !339)
!339 = !{!8, !18, !26}
!340 = !DILocalVariable(name: "n", arg: 1, scope: !337, file: !3, line: 557, type: !18)
!341 = !DILocation(line: 557, column: 51, scope: !337)
!342 = !DILocalVariable(name: "elt_size", arg: 2, scope: !337, file: !3, line: 557, type: !26)
!343 = !DILocation(line: 557, column: 58, scope: !337)
!344 = !DILocalVariable(name: "val", scope: !337, file: !3, line: 564, type: !23)
!345 = !DILocation(line: 564, column: 10, scope: !337)
!346 = !DILocation(line: 564, column: 16, scope: !337)
!347 = !DILocation(line: 565, column: 10, scope: !337)
!348 = !DILocation(line: 565, column: 7, scope: !337)
!349 = !DILocalVariable(name: "ret", scope: !337, file: !3, line: 566, type: !8)
!350 = !DILocation(line: 566, column: 9, scope: !337)
!351 = !DILocation(line: 566, column: 24, scope: !337)
!352 = !DILocation(line: 566, column: 15, scope: !337)
!353 = !DILocation(line: 568, column: 10, scope: !337)
!354 = !DILocation(line: 568, column: 3, scope: !337)
!355 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 517, type: !356, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!356 = !DISubroutineType(types: !357)
!357 = !{!8, !23}
!358 = !DILocalVariable(name: "alloc_sz", arg: 1, scope: !355, file: !3, line: 517, type: !23)
!359 = !DILocation(line: 517, column: 16, scope: !355)
!360 = !DILocalVariable(name: "ret", scope: !355, file: !3, line: 519, type: !8)
!361 = !DILocation(line: 519, column: 9, scope: !355)
!362 = !DILocation(line: 521, column: 36, scope: !355)
!363 = !DILocalVariable(name: "padded_sz", scope: !355, file: !3, line: 522, type: !23)
!364 = !DILocation(line: 522, column: 10, scope: !355)
!365 = !DILocation(line: 522, column: 22, scope: !355)
!366 = !DILocation(line: 522, column: 33, scope: !355)
!367 = !DILocation(line: 522, column: 31, scope: !355)
!368 = !DILocalVariable(name: "err", scope: !355, file: !3, line: 523, type: !26)
!369 = !DILocation(line: 523, column: 7, scope: !355)
!370 = !DILocation(line: 523, column: 41, scope: !355)
!371 = !DILocation(line: 523, column: 13, scope: !355)
!372 = !DILocation(line: 524, column: 9, scope: !373)
!373 = distinct !DILexicalBlock(scope: !355, file: !3, line: 524, column: 7)
!374 = !DILocation(line: 524, column: 13, scope: !373)
!375 = !DILocation(line: 526, column: 16, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !3, line: 525, column: 5)
!377 = !DILocation(line: 526, column: 7, scope: !376)
!378 = !DILocation(line: 527, column: 7, scope: !376)
!379 = !DILocation(line: 543, column: 10, scope: !355)
!380 = !DILocation(line: 543, column: 3, scope: !355)
