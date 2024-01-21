; ModuleID = 'klee/correlation.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"corr\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@polybench_papi_counters_threadid = dso_local global i32 0, align 4, !dbg !0
@polybench_program_total_flops = dso_local global double 0.000000e+00, align 8, !dbg !10
@.str.10 = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1.11 = private unnamed_addr constant [22 x i8] c"utilities/polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local global double 0.000000e+00, align 8, !dbg !12
@polybench_t_end = dso_local global double 0.000000e+00, align 8, !dbg !14
@.str.2.12 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local global i64 0, align 8, !dbg !16
@polybench_c_end = dso_local global i64 0, align 8, !dbg !19
@polybench_inter_array_padding_sz = internal global i64 0, align 8, !dbg !21
@stderr = external global %struct._IO_FILE*, align 8
@.str.3.15 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !49 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca [1400 x [1200 x double]]*, align 8
  %10 = alloca [1200 x [1200 x double]]*, align 8
  %11 = alloca [1200 x double]*, align 8
  %12 = alloca [1200 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !56, metadata !DIExpression()), !dbg !57
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %6, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 1400, i32* %6, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %7, metadata !62, metadata !DIExpression()), !dbg !63
  store i32 1200, i32* %7, align 4, !dbg !63
  %13 = bitcast i32* %6 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* %13, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %14 = bitcast i32* %7 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* %14, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !67
  call void @llvm.dbg.declare(metadata double* %8, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [1400 x [1200 x double]]** %9, metadata !70, metadata !DIExpression()), !dbg !71
  %15 = call i8* @polybench_alloc_data(i64 1680000, i32 8), !dbg !71
  %16 = bitcast i8* %15 to [1400 x [1200 x double]]*, !dbg !71
  store [1400 x [1200 x double]]* %16, [1400 x [1200 x double]]** %9, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata [1200 x [1200 x double]]** %10, metadata !72, metadata !DIExpression()), !dbg !73
  %17 = call i8* @polybench_alloc_data(i64 1440000, i32 8), !dbg !73
  %18 = bitcast i8* %17 to [1200 x [1200 x double]]*, !dbg !73
  store [1200 x [1200 x double]]* %18, [1200 x [1200 x double]]** %10, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata [1200 x double]** %11, metadata !74, metadata !DIExpression()), !dbg !75
  %19 = call i8* @polybench_alloc_data(i64 1200, i32 8), !dbg !75
  %20 = bitcast i8* %19 to [1200 x double]*, !dbg !75
  store [1200 x double]* %20, [1200 x double]** %11, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata [1200 x double]** %12, metadata !76, metadata !DIExpression()), !dbg !77
  %21 = call i8* @polybench_alloc_data(i64 1200, i32 8), !dbg !77
  %22 = bitcast i8* %21 to [1200 x double]*, !dbg !77
  store [1200 x double]* %22, [1200 x double]** %12, align 8, !dbg !77
  %23 = load i32, i32* %7, align 4, !dbg !78
  %24 = load i32, i32* %6, align 4, !dbg !79
  %25 = load [1400 x [1200 x double]]*, [1400 x [1200 x double]]** %9, align 8, !dbg !80
  %26 = getelementptr inbounds [1400 x [1200 x double]], [1400 x [1200 x double]]* %25, i64 0, i64 0, !dbg !80
  call void @init_array(i32 %23, i32 %24, double* %8, [1200 x double]* %26), !dbg !81
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !82
  %28 = load i32, i32* %7, align 4, !dbg !83
  %29 = load i32, i32* %6, align 4, !dbg !84
  %30 = load double, double* %8, align 8, !dbg !85
  %31 = load [1400 x [1200 x double]]*, [1400 x [1200 x double]]** %9, align 8, !dbg !86
  %32 = getelementptr inbounds [1400 x [1200 x double]], [1400 x [1200 x double]]* %31, i64 0, i64 0, !dbg !86
  %33 = load [1200 x [1200 x double]]*, [1200 x [1200 x double]]** %10, align 8, !dbg !87
  %34 = getelementptr inbounds [1200 x [1200 x double]], [1200 x [1200 x double]]* %33, i64 0, i64 0, !dbg !87
  %35 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !88
  %36 = getelementptr inbounds [1200 x double], [1200 x double]* %35, i64 0, i64 0, !dbg !88
  %37 = load [1200 x double]*, [1200 x double]** %12, align 8, !dbg !89
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %37, i64 0, i64 0, !dbg !89
  call void @kernel_correlation(i32 %28, i32 %29, double %30, [1200 x double]* %32, [1200 x double]* %34, double* %36, double* %38), !dbg !90
  %39 = load i32, i32* %4, align 4, !dbg !91
  %40 = icmp sgt i32 %39, 42, !dbg !91
  br i1 %40, label %41, label %51, !dbg !91

41:                                               ; preds = %2
  %42 = load i8**, i8*** %5, align 8, !dbg !91
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !91
  %44 = load i8*, i8** %43, align 8, !dbg !91
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !91
  %46 = icmp ne i32 %45, 0, !dbg !91
  br i1 %46, label %51, label %47, !dbg !93

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4, !dbg !91
  %49 = load [1200 x [1200 x double]]*, [1200 x [1200 x double]]** %10, align 8, !dbg !91
  %50 = getelementptr inbounds [1200 x [1200 x double]], [1200 x [1200 x double]]* %49, i64 0, i64 0, !dbg !91
  call void @print_array(i32 %48, [1200 x double]* %50), !dbg !91
  br label %51, !dbg !91

51:                                               ; preds = %47, %41, %2
  %52 = load [1400 x [1200 x double]]*, [1400 x [1200 x double]]** %9, align 8, !dbg !94
  %53 = bitcast [1400 x [1200 x double]]* %52 to i8*, !dbg !94
  call void @free(i8* %53) #7, !dbg !94
  %54 = load [1200 x [1200 x double]]*, [1200 x [1200 x double]]** %10, align 8, !dbg !95
  %55 = bitcast [1200 x [1200 x double]]* %54 to i8*, !dbg !95
  call void @free(i8* %55) #7, !dbg !95
  %56 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !96
  %57 = bitcast [1200 x double]* %56 to i8*, !dbg !96
  call void @free(i8* %57) #7, !dbg !96
  %58 = load [1200 x double]*, [1200 x double]** %12, align 8, !dbg !97
  %59 = bitcast [1200 x double]* %58 to i8*, !dbg !97
  call void @free(i8* %59) #7, !dbg !97
  ret i32 0, !dbg !98
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @init_array(i32 %0, i32 %1, double* %2, [1200 x double]* %3) #0 !dbg !99 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca [1200 x double]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !104, metadata !DIExpression()), !dbg !105
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !106, metadata !DIExpression()), !dbg !107
  store [1200 x double]* %3, [1200 x double]** %8, align 8
  call void @llvm.dbg.declare(metadata [1200 x double]** %8, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %9, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %10, metadata !112, metadata !DIExpression()), !dbg !113
  %11 = load double*, double** %7, align 8, !dbg !114
  store double 1.400000e+03, double* %11, align 8, !dbg !115
  store i32 0, i32* %9, align 4, !dbg !116
  br label %12, !dbg !118

12:                                               ; preds = %37, %4
  %13 = load i32, i32* %9, align 4, !dbg !119
  %14 = icmp slt i32 %13, 1400, !dbg !121
  br i1 %14, label %15, label %40, !dbg !122

15:                                               ; preds = %12
  store i32 0, i32* %10, align 4, !dbg !123
  br label %16, !dbg !125

16:                                               ; preds = %19, %15
  %17 = load i32, i32* %10, align 4, !dbg !126
  %18 = icmp slt i32 %17, 1200, !dbg !128
  br i1 %18, label %19, label %37, !dbg !129

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4, !dbg !130
  %21 = load i32, i32* %10, align 4, !dbg !131
  %22 = mul nsw i32 %20, %21, !dbg !132
  %23 = sitofp i32 %22 to double, !dbg !133
  %24 = fdiv double %23, 1.200000e+03, !dbg !134
  %25 = load i32, i32* %9, align 4, !dbg !135
  %26 = sitofp i32 %25 to double, !dbg !135
  %27 = fadd double %24, %26, !dbg !136
  %28 = load [1200 x double]*, [1200 x double]** %8, align 8, !dbg !137
  %29 = load i32, i32* %9, align 4, !dbg !138
  %30 = sext i32 %29 to i64, !dbg !137
  %31 = getelementptr inbounds [1200 x double], [1200 x double]* %28, i64 %30, !dbg !137
  %32 = load i32, i32* %10, align 4, !dbg !139
  %33 = sext i32 %32 to i64, !dbg !137
  %34 = getelementptr inbounds [1200 x double], [1200 x double]* %31, i64 0, i64 %33, !dbg !137
  store double %27, double* %34, align 8, !dbg !140
  %35 = load i32, i32* %10, align 4, !dbg !141
  %36 = add nsw i32 %35, 1, !dbg !141
  store i32 %36, i32* %10, align 4, !dbg !141
  br label %16, !dbg !142, !llvm.loop !143

37:                                               ; preds = %16
  %38 = load i32, i32* %9, align 4, !dbg !146
  %39 = add nsw i32 %38, 1, !dbg !146
  store i32 %39, i32* %9, align 4, !dbg !146
  br label %12, !dbg !147, !llvm.loop !148

40:                                               ; preds = %12
  ret void, !dbg !150
}

declare i32 @assert(...) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @kernel_correlation(i32 %0, i32 %1, double %2, [1200 x double]* %3, [1200 x double]* %4, double* %5, double* %6) #0 !dbg !151 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca [1200 x double]*, align 8
  %12 = alloca [1200 x double]*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !156, metadata !DIExpression()), !dbg !157
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !158, metadata !DIExpression()), !dbg !159
  store [1200 x double]* %3, [1200 x double]** %11, align 8
  call void @llvm.dbg.declare(metadata [1200 x double]** %11, metadata !160, metadata !DIExpression()), !dbg !161
  store [1200 x double]* %4, [1200 x double]** %12, align 8
  call void @llvm.dbg.declare(metadata [1200 x double]** %12, metadata !162, metadata !DIExpression()), !dbg !163
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !164, metadata !DIExpression()), !dbg !165
  store double* %6, double** %14, align 8
  call void @llvm.dbg.declare(metadata double** %14, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %15, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %16, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %17, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata double* %18, metadata !174, metadata !DIExpression()), !dbg !175
  store double 1.000000e-01, double* %18, align 8, !dbg !175
  store i32 0, i32* %16, align 4, !dbg !176
  br label %19, !dbg !178

19:                                               ; preds = %49, %7
  %20 = load i32, i32* %16, align 4, !dbg !179
  %21 = load i32, i32* %8, align 4, !dbg !181
  %22 = icmp slt i32 %20, %21, !dbg !182
  br i1 %22, label %23, label %59, !dbg !183

23:                                               ; preds = %19
  %24 = load double*, double** %13, align 8, !dbg !184
  %25 = load i32, i32* %16, align 4, !dbg !186
  %26 = sext i32 %25 to i64, !dbg !184
  %27 = getelementptr inbounds double, double* %24, i64 %26, !dbg !184
  store double 0.000000e+00, double* %27, align 8, !dbg !187
  store i32 0, i32* %15, align 4, !dbg !188
  br label %28, !dbg !190

28:                                               ; preds = %32, %23
  %29 = load i32, i32* %15, align 4, !dbg !191
  %30 = load i32, i32* %9, align 4, !dbg !193
  %31 = icmp slt i32 %29, %30, !dbg !194
  br i1 %31, label %32, label %49, !dbg !195

32:                                               ; preds = %28
  %33 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !196
  %34 = load i32, i32* %15, align 4, !dbg !197
  %35 = sext i32 %34 to i64, !dbg !196
  %36 = getelementptr inbounds [1200 x double], [1200 x double]* %33, i64 %35, !dbg !196
  %37 = load i32, i32* %16, align 4, !dbg !198
  %38 = sext i32 %37 to i64, !dbg !196
  %39 = getelementptr inbounds [1200 x double], [1200 x double]* %36, i64 0, i64 %38, !dbg !196
  %40 = load double, double* %39, align 8, !dbg !196
  %41 = load double*, double** %13, align 8, !dbg !199
  %42 = load i32, i32* %16, align 4, !dbg !200
  %43 = sext i32 %42 to i64, !dbg !199
  %44 = getelementptr inbounds double, double* %41, i64 %43, !dbg !199
  %45 = load double, double* %44, align 8, !dbg !201
  %46 = fadd double %45, %40, !dbg !201
  store double %46, double* %44, align 8, !dbg !201
  %47 = load i32, i32* %15, align 4, !dbg !202
  %48 = add nsw i32 %47, 1, !dbg !202
  store i32 %48, i32* %15, align 4, !dbg !202
  br label %28, !dbg !203, !llvm.loop !204

49:                                               ; preds = %28
  %50 = load double, double* %10, align 8, !dbg !206
  %51 = load double*, double** %13, align 8, !dbg !207
  %52 = load i32, i32* %16, align 4, !dbg !208
  %53 = sext i32 %52 to i64, !dbg !207
  %54 = getelementptr inbounds double, double* %51, i64 %53, !dbg !207
  %55 = load double, double* %54, align 8, !dbg !209
  %56 = fdiv double %55, %50, !dbg !209
  store double %56, double* %54, align 8, !dbg !209
  %57 = load i32, i32* %16, align 4, !dbg !210
  %58 = add nsw i32 %57, 1, !dbg !210
  store i32 %58, i32* %16, align 4, !dbg !210
  br label %19, !dbg !211, !llvm.loop !212

59:                                               ; preds = %19
  store i32 0, i32* %16, align 4, !dbg !214
  br label %60, !dbg !216

60:                                               ; preds = %142, %59
  %61 = load i32, i32* %16, align 4, !dbg !217
  %62 = load i32, i32* %8, align 4, !dbg !219
  %63 = icmp slt i32 %61, %62, !dbg !220
  br i1 %63, label %64, label %150, !dbg !221

64:                                               ; preds = %60
  %65 = load double*, double** %14, align 8, !dbg !222
  %66 = load i32, i32* %16, align 4, !dbg !224
  %67 = sext i32 %66 to i64, !dbg !222
  %68 = getelementptr inbounds double, double* %65, i64 %67, !dbg !222
  store double 0.000000e+00, double* %68, align 8, !dbg !225
  store i32 0, i32* %15, align 4, !dbg !226
  br label %69, !dbg !228

69:                                               ; preds = %73, %64
  %70 = load i32, i32* %15, align 4, !dbg !229
  %71 = load i32, i32* %9, align 4, !dbg !231
  %72 = icmp slt i32 %70, %71, !dbg !232
  br i1 %72, label %73, label %111, !dbg !233

73:                                               ; preds = %69
  %74 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !234
  %75 = load i32, i32* %15, align 4, !dbg !235
  %76 = sext i32 %75 to i64, !dbg !234
  %77 = getelementptr inbounds [1200 x double], [1200 x double]* %74, i64 %76, !dbg !234
  %78 = load i32, i32* %16, align 4, !dbg !236
  %79 = sext i32 %78 to i64, !dbg !234
  %80 = getelementptr inbounds [1200 x double], [1200 x double]* %77, i64 0, i64 %79, !dbg !234
  %81 = load double, double* %80, align 8, !dbg !234
  %82 = load double*, double** %13, align 8, !dbg !237
  %83 = load i32, i32* %16, align 4, !dbg !238
  %84 = sext i32 %83 to i64, !dbg !237
  %85 = getelementptr inbounds double, double* %82, i64 %84, !dbg !237
  %86 = load double, double* %85, align 8, !dbg !237
  %87 = fsub double %81, %86, !dbg !239
  %88 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !240
  %89 = load i32, i32* %15, align 4, !dbg !241
  %90 = sext i32 %89 to i64, !dbg !240
  %91 = getelementptr inbounds [1200 x double], [1200 x double]* %88, i64 %90, !dbg !240
  %92 = load i32, i32* %16, align 4, !dbg !242
  %93 = sext i32 %92 to i64, !dbg !240
  %94 = getelementptr inbounds [1200 x double], [1200 x double]* %91, i64 0, i64 %93, !dbg !240
  %95 = load double, double* %94, align 8, !dbg !240
  %96 = load double*, double** %13, align 8, !dbg !243
  %97 = load i32, i32* %16, align 4, !dbg !244
  %98 = sext i32 %97 to i64, !dbg !243
  %99 = getelementptr inbounds double, double* %96, i64 %98, !dbg !243
  %100 = load double, double* %99, align 8, !dbg !243
  %101 = fsub double %95, %100, !dbg !245
  %102 = fmul double %87, %101, !dbg !246
  %103 = load double*, double** %14, align 8, !dbg !247
  %104 = load i32, i32* %16, align 4, !dbg !248
  %105 = sext i32 %104 to i64, !dbg !247
  %106 = getelementptr inbounds double, double* %103, i64 %105, !dbg !247
  %107 = load double, double* %106, align 8, !dbg !249
  %108 = fadd double %107, %102, !dbg !249
  store double %108, double* %106, align 8, !dbg !249
  %109 = load i32, i32* %15, align 4, !dbg !250
  %110 = add nsw i32 %109, 1, !dbg !250
  store i32 %110, i32* %15, align 4, !dbg !250
  br label %69, !dbg !251, !llvm.loop !252

111:                                              ; preds = %69
  %112 = load double, double* %10, align 8, !dbg !254
  %113 = load double*, double** %14, align 8, !dbg !255
  %114 = load i32, i32* %16, align 4, !dbg !256
  %115 = sext i32 %114 to i64, !dbg !255
  %116 = getelementptr inbounds double, double* %113, i64 %115, !dbg !255
  %117 = load double, double* %116, align 8, !dbg !257
  %118 = fdiv double %117, %112, !dbg !257
  store double %118, double* %116, align 8, !dbg !257
  %119 = load double*, double** %14, align 8, !dbg !258
  %120 = load i32, i32* %16, align 4, !dbg !258
  %121 = sext i32 %120 to i64, !dbg !258
  %122 = getelementptr inbounds double, double* %119, i64 %121, !dbg !258
  %123 = load double, double* %122, align 8, !dbg !258
  %124 = call double @sqrt(double %123) #7, !dbg !258
  %125 = load double*, double** %14, align 8, !dbg !259
  %126 = load i32, i32* %16, align 4, !dbg !260
  %127 = sext i32 %126 to i64, !dbg !259
  %128 = getelementptr inbounds double, double* %125, i64 %127, !dbg !259
  store double %124, double* %128, align 8, !dbg !261
  %129 = load double*, double** %14, align 8, !dbg !262
  %130 = load i32, i32* %16, align 4, !dbg !263
  %131 = sext i32 %130 to i64, !dbg !262
  %132 = getelementptr inbounds double, double* %129, i64 %131, !dbg !262
  %133 = load double, double* %132, align 8, !dbg !262
  %134 = load double, double* %18, align 8, !dbg !264
  %135 = fcmp ole double %133, %134, !dbg !265
  br i1 %135, label %142, label %136, !dbg !262

136:                                              ; preds = %111
  %137 = load double*, double** %14, align 8, !dbg !266
  %138 = load i32, i32* %16, align 4, !dbg !267
  %139 = sext i32 %138 to i64, !dbg !266
  %140 = getelementptr inbounds double, double* %137, i64 %139, !dbg !266
  %141 = load double, double* %140, align 8, !dbg !266
  br label %142, !dbg !262

142:                                              ; preds = %111, %136
  %143 = phi double [ %141, %136 ], [ 1.000000e+00, %111 ], !dbg !262
  %144 = load double*, double** %14, align 8, !dbg !268
  %145 = load i32, i32* %16, align 4, !dbg !269
  %146 = sext i32 %145 to i64, !dbg !268
  %147 = getelementptr inbounds double, double* %144, i64 %146, !dbg !268
  store double %143, double* %147, align 8, !dbg !270
  %148 = load i32, i32* %16, align 4, !dbg !271
  %149 = add nsw i32 %148, 1, !dbg !271
  store i32 %149, i32* %16, align 4, !dbg !271
  br label %60, !dbg !272, !llvm.loop !273

150:                                              ; preds = %60
  store i32 0, i32* %15, align 4, !dbg !275
  br label %151, !dbg !277

151:                                              ; preds = %194, %150
  %152 = load i32, i32* %15, align 4, !dbg !278
  %153 = load i32, i32* %9, align 4, !dbg !280
  %154 = icmp slt i32 %152, %153, !dbg !281
  br i1 %154, label %155, label %197, !dbg !282

155:                                              ; preds = %151
  store i32 0, i32* %16, align 4, !dbg !283
  br label %156, !dbg !285

156:                                              ; preds = %160, %155
  %157 = load i32, i32* %16, align 4, !dbg !286
  %158 = load i32, i32* %8, align 4, !dbg !288
  %159 = icmp slt i32 %157, %158, !dbg !289
  br i1 %159, label %160, label %194, !dbg !290

160:                                              ; preds = %156
  %161 = load double*, double** %13, align 8, !dbg !291
  %162 = load i32, i32* %16, align 4, !dbg !293
  %163 = sext i32 %162 to i64, !dbg !291
  %164 = getelementptr inbounds double, double* %161, i64 %163, !dbg !291
  %165 = load double, double* %164, align 8, !dbg !291
  %166 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !294
  %167 = load i32, i32* %15, align 4, !dbg !295
  %168 = sext i32 %167 to i64, !dbg !294
  %169 = getelementptr inbounds [1200 x double], [1200 x double]* %166, i64 %168, !dbg !294
  %170 = load i32, i32* %16, align 4, !dbg !296
  %171 = sext i32 %170 to i64, !dbg !294
  %172 = getelementptr inbounds [1200 x double], [1200 x double]* %169, i64 0, i64 %171, !dbg !294
  %173 = load double, double* %172, align 8, !dbg !297
  %174 = fsub double %173, %165, !dbg !297
  store double %174, double* %172, align 8, !dbg !297
  %175 = load double, double* %10, align 8, !dbg !298
  %176 = call double @sqrt(double %175) #7, !dbg !298
  %177 = load double*, double** %14, align 8, !dbg !299
  %178 = load i32, i32* %16, align 4, !dbg !300
  %179 = sext i32 %178 to i64, !dbg !299
  %180 = getelementptr inbounds double, double* %177, i64 %179, !dbg !299
  %181 = load double, double* %180, align 8, !dbg !299
  %182 = fmul double %176, %181, !dbg !301
  %183 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !302
  %184 = load i32, i32* %15, align 4, !dbg !303
  %185 = sext i32 %184 to i64, !dbg !302
  %186 = getelementptr inbounds [1200 x double], [1200 x double]* %183, i64 %185, !dbg !302
  %187 = load i32, i32* %16, align 4, !dbg !304
  %188 = sext i32 %187 to i64, !dbg !302
  %189 = getelementptr inbounds [1200 x double], [1200 x double]* %186, i64 0, i64 %188, !dbg !302
  %190 = load double, double* %189, align 8, !dbg !305
  %191 = fdiv double %190, %182, !dbg !305
  store double %191, double* %189, align 8, !dbg !305
  %192 = load i32, i32* %16, align 4, !dbg !306
  %193 = add nsw i32 %192, 1, !dbg !306
  store i32 %193, i32* %16, align 4, !dbg !306
  br label %156, !dbg !307, !llvm.loop !308

194:                                              ; preds = %156
  %195 = load i32, i32* %15, align 4, !dbg !310
  %196 = add nsw i32 %195, 1, !dbg !310
  store i32 %196, i32* %15, align 4, !dbg !310
  br label %151, !dbg !311, !llvm.loop !312

197:                                              ; preds = %151
  store i32 0, i32* %15, align 4, !dbg !314
  br label %198, !dbg !316

198:                                              ; preds = %276, %197
  %199 = load i32, i32* %15, align 4, !dbg !317
  %200 = load i32, i32* %8, align 4, !dbg !319
  %201 = sub nsw i32 %200, 1, !dbg !320
  %202 = icmp slt i32 %199, %201, !dbg !321
  br i1 %202, label %203, label %279, !dbg !322

203:                                              ; preds = %198
  %204 = load [1200 x double]*, [1200 x double]** %12, align 8, !dbg !323
  %205 = load i32, i32* %15, align 4, !dbg !325
  %206 = sext i32 %205 to i64, !dbg !323
  %207 = getelementptr inbounds [1200 x double], [1200 x double]* %204, i64 %206, !dbg !323
  %208 = load i32, i32* %15, align 4, !dbg !326
  %209 = sext i32 %208 to i64, !dbg !323
  %210 = getelementptr inbounds [1200 x double], [1200 x double]* %207, i64 0, i64 %209, !dbg !323
  store double 1.000000e+00, double* %210, align 8, !dbg !327
  %211 = load i32, i32* %15, align 4, !dbg !328
  %212 = add nsw i32 %211, 1, !dbg !330
  store i32 %212, i32* %16, align 4, !dbg !331
  br label %213, !dbg !332

213:                                              ; preds = %258, %203
  %214 = load i32, i32* %16, align 4, !dbg !333
  %215 = load i32, i32* %8, align 4, !dbg !335
  %216 = icmp slt i32 %214, %215, !dbg !336
  br i1 %216, label %217, label %276, !dbg !337

217:                                              ; preds = %213
  %218 = load [1200 x double]*, [1200 x double]** %12, align 8, !dbg !338
  %219 = load i32, i32* %15, align 4, !dbg !340
  %220 = sext i32 %219 to i64, !dbg !338
  %221 = getelementptr inbounds [1200 x double], [1200 x double]* %218, i64 %220, !dbg !338
  %222 = load i32, i32* %16, align 4, !dbg !341
  %223 = sext i32 %222 to i64, !dbg !338
  %224 = getelementptr inbounds [1200 x double], [1200 x double]* %221, i64 0, i64 %223, !dbg !338
  store double 0.000000e+00, double* %224, align 8, !dbg !342
  store i32 0, i32* %17, align 4, !dbg !343
  br label %225, !dbg !345

225:                                              ; preds = %229, %217
  %226 = load i32, i32* %17, align 4, !dbg !346
  %227 = load i32, i32* %9, align 4, !dbg !348
  %228 = icmp slt i32 %226, %227, !dbg !349
  br i1 %228, label %229, label %258, !dbg !350

229:                                              ; preds = %225
  %230 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !351
  %231 = load i32, i32* %17, align 4, !dbg !352
  %232 = sext i32 %231 to i64, !dbg !351
  %233 = getelementptr inbounds [1200 x double], [1200 x double]* %230, i64 %232, !dbg !351
  %234 = load i32, i32* %15, align 4, !dbg !353
  %235 = sext i32 %234 to i64, !dbg !351
  %236 = getelementptr inbounds [1200 x double], [1200 x double]* %233, i64 0, i64 %235, !dbg !351
  %237 = load double, double* %236, align 8, !dbg !351
  %238 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !354
  %239 = load i32, i32* %17, align 4, !dbg !355
  %240 = sext i32 %239 to i64, !dbg !354
  %241 = getelementptr inbounds [1200 x double], [1200 x double]* %238, i64 %240, !dbg !354
  %242 = load i32, i32* %16, align 4, !dbg !356
  %243 = sext i32 %242 to i64, !dbg !354
  %244 = getelementptr inbounds [1200 x double], [1200 x double]* %241, i64 0, i64 %243, !dbg !354
  %245 = load double, double* %244, align 8, !dbg !354
  %246 = fmul double %237, %245, !dbg !357
  %247 = load [1200 x double]*, [1200 x double]** %12, align 8, !dbg !358
  %248 = load i32, i32* %15, align 4, !dbg !359
  %249 = sext i32 %248 to i64, !dbg !358
  %250 = getelementptr inbounds [1200 x double], [1200 x double]* %247, i64 %249, !dbg !358
  %251 = load i32, i32* %16, align 4, !dbg !360
  %252 = sext i32 %251 to i64, !dbg !358
  %253 = getelementptr inbounds [1200 x double], [1200 x double]* %250, i64 0, i64 %252, !dbg !358
  %254 = load double, double* %253, align 8, !dbg !361
  %255 = fadd double %254, %246, !dbg !361
  store double %255, double* %253, align 8, !dbg !361
  %256 = load i32, i32* %17, align 4, !dbg !362
  %257 = add nsw i32 %256, 1, !dbg !362
  store i32 %257, i32* %17, align 4, !dbg !362
  br label %225, !dbg !363, !llvm.loop !364

258:                                              ; preds = %225
  %259 = load [1200 x double]*, [1200 x double]** %12, align 8, !dbg !366
  %260 = load i32, i32* %15, align 4, !dbg !367
  %261 = sext i32 %260 to i64, !dbg !366
  %262 = getelementptr inbounds [1200 x double], [1200 x double]* %259, i64 %261, !dbg !366
  %263 = load i32, i32* %16, align 4, !dbg !368
  %264 = sext i32 %263 to i64, !dbg !366
  %265 = getelementptr inbounds [1200 x double], [1200 x double]* %262, i64 0, i64 %264, !dbg !366
  %266 = load double, double* %265, align 8, !dbg !366
  %267 = load [1200 x double]*, [1200 x double]** %12, align 8, !dbg !369
  %268 = load i32, i32* %16, align 4, !dbg !370
  %269 = sext i32 %268 to i64, !dbg !369
  %270 = getelementptr inbounds [1200 x double], [1200 x double]* %267, i64 %269, !dbg !369
  %271 = load i32, i32* %15, align 4, !dbg !371
  %272 = sext i32 %271 to i64, !dbg !369
  %273 = getelementptr inbounds [1200 x double], [1200 x double]* %270, i64 0, i64 %272, !dbg !369
  store double %266, double* %273, align 8, !dbg !372
  %274 = load i32, i32* %16, align 4, !dbg !373
  %275 = add nsw i32 %274, 1, !dbg !373
  store i32 %275, i32* %16, align 4, !dbg !373
  br label %213, !dbg !374, !llvm.loop !375

276:                                              ; preds = %213
  %277 = load i32, i32* %15, align 4, !dbg !377
  %278 = add nsw i32 %277, 1, !dbg !377
  store i32 %278, i32* %15, align 4, !dbg !377
  br label %198, !dbg !378, !llvm.loop !379

279:                                              ; preds = %198
  %280 = load [1200 x double]*, [1200 x double]** %12, align 8, !dbg !381
  %281 = load i32, i32* %8, align 4, !dbg !382
  %282 = sub nsw i32 %281, 1, !dbg !383
  %283 = sext i32 %282 to i64, !dbg !381
  %284 = getelementptr inbounds [1200 x double], [1200 x double]* %280, i64 %283, !dbg !381
  %285 = load i32, i32* %8, align 4, !dbg !384
  %286 = sub nsw i32 %285, 1, !dbg !385
  %287 = sext i32 %286 to i64, !dbg !381
  %288 = getelementptr inbounds [1200 x double], [1200 x double]* %284, i64 0, i64 %287, !dbg !381
  store double 1.000000e+00, double* %288, align 8, !dbg !386
  ret void, !dbg !387
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @print_array(i32 %0, [1200 x double]* %1) #0 !dbg !388 {
  %3 = alloca i32, align 4
  %4 = alloca [1200 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !391, metadata !DIExpression()), !dbg !392
  store [1200 x double]* %1, [1200 x double]** %4, align 8
  call void @llvm.dbg.declare(metadata [1200 x double]** %4, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %5, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata i32* %6, metadata !397, metadata !DIExpression()), !dbg !398
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !399
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)), !dbg !399
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !400
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !400
  store i32 0, i32* %5, align 4, !dbg !401
  br label %11, !dbg !403

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %5, align 4, !dbg !404
  %13 = load i32, i32* %3, align 4, !dbg !406
  %14 = icmp slt i32 %12, %13, !dbg !407
  br i1 %14, label %15, label %47, !dbg !408

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4, !dbg !409
  br label %16, !dbg !411

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %6, align 4, !dbg !412
  %18 = load i32, i32* %3, align 4, !dbg !414
  %19 = icmp slt i32 %17, %18, !dbg !415
  br i1 %19, label %20, label %44, !dbg !416

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4, !dbg !417
  %22 = load i32, i32* %3, align 4, !dbg !420
  %23 = mul nsw i32 %21, %22, !dbg !421
  %24 = load i32, i32* %6, align 4, !dbg !422
  %25 = add nsw i32 %23, %24, !dbg !423
  %26 = srem i32 %25, 20, !dbg !424
  %27 = icmp eq i32 %26, 0, !dbg !425
  br i1 %27, label %28, label %31, !dbg !426

28:                                               ; preds = %20
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !427
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !428
  br label %31, !dbg !428

31:                                               ; preds = %28, %20
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !429
  %33 = load [1200 x double]*, [1200 x double]** %4, align 8, !dbg !430
  %34 = load i32, i32* %5, align 4, !dbg !431
  %35 = sext i32 %34 to i64, !dbg !430
  %36 = getelementptr inbounds [1200 x double], [1200 x double]* %33, i64 %35, !dbg !430
  %37 = load i32, i32* %6, align 4, !dbg !432
  %38 = sext i32 %37 to i64, !dbg !430
  %39 = getelementptr inbounds [1200 x double], [1200 x double]* %36, i64 0, i64 %38, !dbg !430
  %40 = load double, double* %39, align 8, !dbg !430
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), double %40), !dbg !433
  %42 = load i32, i32* %6, align 4, !dbg !434
  %43 = add nsw i32 %42, 1, !dbg !434
  store i32 %43, i32* %6, align 4, !dbg !434
  br label %16, !dbg !435, !llvm.loop !436

44:                                               ; preds = %16
  %45 = load i32, i32* %5, align 4, !dbg !438
  %46 = add nsw i32 %45, 1, !dbg !438
  store i32 %46, i32* %5, align 4, !dbg !438
  br label %11, !dbg !439, !llvm.loop !440

47:                                               ; preds = %11
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !442
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !442
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !443
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_flush_cache() #0 !dbg !445 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !448, metadata !DIExpression()), !dbg !449
  store i32 4194560, i32* %1, align 4, !dbg !449
  call void @llvm.dbg.declare(metadata double** %2, metadata !450, metadata !DIExpression()), !dbg !451
  %5 = load i32, i32* %1, align 4, !dbg !452
  %6 = sext i32 %5 to i64, !dbg !452
  %7 = call noalias align 16 i8* @calloc(i64 %6, i64 8) #7, !dbg !453
  %8 = bitcast i8* %7 to double*, !dbg !454
  store double* %8, double** %2, align 8, !dbg !451
  call void @llvm.dbg.declare(metadata i32* %3, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata double* %4, metadata !457, metadata !DIExpression()), !dbg !458
  store double 0.000000e+00, double* %4, align 8, !dbg !458
  store i32 0, i32* %3, align 4, !dbg !459
  br label %9, !dbg !461

9:                                                ; preds = %13, %0
  %10 = load i32, i32* %3, align 4, !dbg !462
  %11 = load i32, i32* %1, align 4, !dbg !464
  %12 = icmp slt i32 %10, %11, !dbg !465
  br i1 %12, label %13, label %23, !dbg !466

13:                                               ; preds = %9
  %14 = load double*, double** %2, align 8, !dbg !467
  %15 = load i32, i32* %3, align 4, !dbg !468
  %16 = sext i32 %15 to i64, !dbg !467
  %17 = getelementptr inbounds double, double* %14, i64 %16, !dbg !467
  %18 = load double, double* %17, align 8, !dbg !467
  %19 = load double, double* %4, align 8, !dbg !469
  %20 = fadd double %19, %18, !dbg !469
  store double %20, double* %4, align 8, !dbg !469
  %21 = load i32, i32* %3, align 4, !dbg !470
  %22 = add nsw i32 %21, 1, !dbg !470
  store i32 %22, i32* %3, align 4, !dbg !470
  br label %9, !dbg !471, !llvm.loop !472

23:                                               ; preds = %9
  %24 = load double, double* %4, align 8, !dbg !474
  %25 = fcmp ole double %24, 1.000000e+01, !dbg !474
  br i1 %25, label %27, label %26, !dbg !477

26:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.11, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #8, !dbg !474
  unreachable, !dbg !474

27:                                               ; preds = %23
  %28 = load double*, double** %2, align 8, !dbg !478
  %29 = bitcast double* %28 to i8*, !dbg !478
  call void @free(i8* %29) #7, !dbg !479
  ret void, !dbg !480
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_prepare_instruments() #0 !dbg !481 {
  call void @polybench_flush_cache(), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_start() #0 !dbg !484 {
  call void @polybench_prepare_instruments(), !dbg !485
  %1 = call double @rtclock(), !dbg !486
  store double %1, double* @polybench_t_start, align 8, !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal double @rtclock() #0 !dbg !489 {
  ret double 0.000000e+00, !dbg !492
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_stop() #0 !dbg !493 {
  %1 = call double @rtclock(), !dbg !494
  store double %1, double* @polybench_t_end, align 8, !dbg !495
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_print() #0 !dbg !497 {
  %1 = load double, double* @polybench_t_end, align 8, !dbg !498
  %2 = load double, double* @polybench_t_start, align 8, !dbg !499
  %3 = fsub double %1, %2, !dbg !500
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.12, i64 0, i64 0), double %3), !dbg !501
  ret void, !dbg !502
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_free_data(i8* %0) #0 !dbg !503 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !506, metadata !DIExpression()), !dbg !507
  %3 = load i8*, i8** %2, align 8, !dbg !508
  call void @free(i8* %3) #7, !dbg !509
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @polybench_alloc_data(i64 %0, i32 %1) #0 !dbg !511 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !514, metadata !DIExpression()), !dbg !515
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata i64* %5, metadata !518, metadata !DIExpression()), !dbg !519
  %7 = load i64, i64* %3, align 8, !dbg !520
  store i64 %7, i64* %5, align 8, !dbg !519
  %8 = load i32, i32* %4, align 4, !dbg !521
  %9 = sext i32 %8 to i64, !dbg !521
  %10 = load i64, i64* %5, align 8, !dbg !522
  %11 = mul i64 %10, %9, !dbg !522
  store i64 %11, i64* %5, align 8, !dbg !522
  call void @llvm.dbg.declare(metadata i8** %6, metadata !523, metadata !DIExpression()), !dbg !524
  %12 = load i64, i64* %5, align 8, !dbg !525
  %13 = call i8* @xmalloc(i64 %12), !dbg !526
  store i8* %13, i8** %6, align 8, !dbg !524
  %14 = load i8*, i8** %6, align 8, !dbg !527
  ret i8* %14, !dbg !528
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i8* @xmalloc(i64 %0) #0 !dbg !529 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !532, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata i8** %3, metadata !534, metadata !DIExpression()), !dbg !535
  store i8* null, i8** %3, align 8, !dbg !535
  %6 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !536
  %7 = add i64 %6, 0, !dbg !536
  store i64 %7, i64* @polybench_inter_array_padding_sz, align 8, !dbg !536
  call void @llvm.dbg.declare(metadata i64* %4, metadata !537, metadata !DIExpression()), !dbg !538
  %8 = load i64, i64* %2, align 8, !dbg !539
  %9 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !540
  %10 = add i64 %8, %9, !dbg !541
  store i64 %10, i64* %4, align 8, !dbg !538
  call void @llvm.dbg.declare(metadata i32* %5, metadata !542, metadata !DIExpression()), !dbg !543
  %11 = load i64, i64* %4, align 8, !dbg !544
  %12 = call i32 @posix_memalign(i8** %3, i64 4096, i64 %11) #7, !dbg !545
  store i32 %12, i32* %5, align 4, !dbg !543
  %13 = load i8*, i8** %3, align 8, !dbg !546
  %14 = icmp eq i8* %13, null, !dbg !546
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %or.cond = select i1 %14, i1 true, i1 %16, !dbg !548
  br i1 %or.cond, label %17, label %20, !dbg !548

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !549
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3.15, i64 0, i64 0)), !dbg !551
  call void @exit(i32 1) #8, !dbg !552
  unreachable, !dbg !552

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8, !dbg !553
  ret i8* %21, !dbg !554
}

; Function Attrs: nounwind
declare i32 @posix_memalign(i8**, i64, i64) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!27, !2}
!llvm.ident = !{!41, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}

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
!28 = !DIFile(filename: "datamining/correlation/correlation.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!29 = !{!30, !35, !38, !8, !7}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 107520000, elements: !32)
!32 = !{!33, !34}
!33 = !DISubrange(count: 1400)
!34 = !DISubrange(count: 1200)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 92160000, elements: !37)
!37 = !{!34, !34}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 76800, elements: !40)
!40 = !{!34}
!41 = !{!"clang version 13.0.1"}
!42 = !{i32 7, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = distinct !DISubprogram(name: "main", scope: !50, file: !50, line: 128, type: !51, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !4)
!50 = !DIFile(filename: "./datamining/correlation/correlation.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!51 = !DISubroutineType(types: !52)
!52 = !{!26, !26, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DILocalVariable(name: "argc", arg: 1, scope: !49, file: !50, line: 128, type: !26)
!57 = !DILocation(line: 128, column: 14, scope: !49)
!58 = !DILocalVariable(name: "argv", arg: 2, scope: !49, file: !50, line: 128, type: !53)
!59 = !DILocation(line: 128, column: 27, scope: !49)
!60 = !DILocalVariable(name: "n", scope: !49, file: !50, line: 131, type: !26)
!61 = !DILocation(line: 131, column: 7, scope: !49)
!62 = !DILocalVariable(name: "m", scope: !49, file: !50, line: 132, type: !26)
!63 = !DILocation(line: 132, column: 7, scope: !49)
!64 = !DILocation(line: 133, column: 22, scope: !49)
!65 = !DILocation(line: 133, column: 3, scope: !49)
!66 = !DILocation(line: 134, column: 22, scope: !49)
!67 = !DILocation(line: 134, column: 3, scope: !49)
!68 = !DILocalVariable(name: "float_n", scope: !49, file: !50, line: 137, type: !7)
!69 = !DILocation(line: 137, column: 13, scope: !49)
!70 = !DILocalVariable(name: "data", scope: !49, file: !50, line: 138, type: !30)
!71 = !DILocation(line: 138, column: 3, scope: !49)
!72 = !DILocalVariable(name: "corr", scope: !49, file: !50, line: 139, type: !35)
!73 = !DILocation(line: 139, column: 3, scope: !49)
!74 = !DILocalVariable(name: "mean", scope: !49, file: !50, line: 140, type: !38)
!75 = !DILocation(line: 140, column: 3, scope: !49)
!76 = !DILocalVariable(name: "stddev", scope: !49, file: !50, line: 141, type: !38)
!77 = !DILocation(line: 141, column: 3, scope: !49)
!78 = !DILocation(line: 144, column: 15, scope: !49)
!79 = !DILocation(line: 144, column: 18, scope: !49)
!80 = !DILocation(line: 144, column: 31, scope: !49)
!81 = !DILocation(line: 144, column: 3, scope: !49)
!82 = !DILocation(line: 148, column: 3, scope: !49)
!83 = !DILocation(line: 151, column: 23, scope: !49)
!84 = !DILocation(line: 151, column: 26, scope: !49)
!85 = !DILocation(line: 151, column: 29, scope: !49)
!86 = !DILocation(line: 152, column: 9, scope: !49)
!87 = !DILocation(line: 153, column: 9, scope: !49)
!88 = !DILocation(line: 154, column: 9, scope: !49)
!89 = !DILocation(line: 155, column: 9, scope: !49)
!90 = !DILocation(line: 151, column: 3, scope: !49)
!91 = !DILocation(line: 163, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !49, file: !50, line: 163, column: 3)
!93 = !DILocation(line: 163, column: 3, scope: !49)
!94 = !DILocation(line: 166, column: 3, scope: !49)
!95 = !DILocation(line: 167, column: 3, scope: !49)
!96 = !DILocation(line: 168, column: 3, scope: !49)
!97 = !DILocation(line: 169, column: 3, scope: !49)
!98 = !DILocation(line: 171, column: 3, scope: !49)
!99 = distinct !DISubprogram(name: "init_array", scope: !50, file: !50, line: 27, type: !100, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !26, !26, !6, !38}
!102 = !DILocalVariable(name: "m", arg: 1, scope: !99, file: !50, line: 27, type: !26)
!103 = !DILocation(line: 27, column: 22, scope: !99)
!104 = !DILocalVariable(name: "n", arg: 2, scope: !99, file: !50, line: 28, type: !26)
!105 = !DILocation(line: 28, column: 8, scope: !99)
!106 = !DILocalVariable(name: "float_n", arg: 3, scope: !99, file: !50, line: 29, type: !6)
!107 = !DILocation(line: 29, column: 15, scope: !99)
!108 = !DILocalVariable(name: "data", arg: 4, scope: !99, file: !50, line: 30, type: !38)
!109 = !DILocation(line: 30, column: 14, scope: !99)
!110 = !DILocalVariable(name: "i", scope: !99, file: !50, line: 32, type: !26)
!111 = !DILocation(line: 32, column: 7, scope: !99)
!112 = !DILocalVariable(name: "j", scope: !99, file: !50, line: 32, type: !26)
!113 = !DILocation(line: 32, column: 10, scope: !99)
!114 = !DILocation(line: 34, column: 4, scope: !99)
!115 = !DILocation(line: 34, column: 12, scope: !99)
!116 = !DILocation(line: 36, column: 10, scope: !117)
!117 = distinct !DILexicalBlock(scope: !99, file: !50, line: 36, column: 3)
!118 = !DILocation(line: 36, column: 8, scope: !117)
!119 = !DILocation(line: 36, column: 15, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !50, line: 36, column: 3)
!121 = !DILocation(line: 36, column: 17, scope: !120)
!122 = !DILocation(line: 36, column: 3, scope: !117)
!123 = !DILocation(line: 37, column: 12, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !50, line: 37, column: 5)
!125 = !DILocation(line: 37, column: 10, scope: !124)
!126 = !DILocation(line: 37, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !50, line: 37, column: 5)
!128 = !DILocation(line: 37, column: 19, scope: !127)
!129 = !DILocation(line: 37, column: 5, scope: !124)
!130 = !DILocation(line: 38, column: 32, scope: !127)
!131 = !DILocation(line: 38, column: 34, scope: !127)
!132 = !DILocation(line: 38, column: 33, scope: !127)
!133 = !DILocation(line: 38, column: 20, scope: !127)
!134 = !DILocation(line: 38, column: 36, scope: !127)
!135 = !DILocation(line: 38, column: 41, scope: !127)
!136 = !DILocation(line: 38, column: 39, scope: !127)
!137 = !DILocation(line: 38, column: 7, scope: !127)
!138 = !DILocation(line: 38, column: 12, scope: !127)
!139 = !DILocation(line: 38, column: 15, scope: !127)
!140 = !DILocation(line: 38, column: 18, scope: !127)
!141 = !DILocation(line: 37, column: 25, scope: !127)
!142 = !DILocation(line: 37, column: 5, scope: !127)
!143 = distinct !{!143, !129, !144, !145}
!144 = !DILocation(line: 38, column: 41, scope: !124)
!145 = !{!"llvm.loop.mustprogress"}
!146 = !DILocation(line: 36, column: 23, scope: !120)
!147 = !DILocation(line: 36, column: 3, scope: !120)
!148 = distinct !{!148, !122, !149, !145}
!149 = !DILocation(line: 38, column: 41, scope: !117)
!150 = !DILocation(line: 40, column: 1, scope: !99)
!151 = distinct !DISubprogram(name: "kernel_correlation", scope: !50, file: !50, line: 67, type: !152, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !26, !26, !7, !38, !38, !6, !6}
!154 = !DILocalVariable(name: "m", arg: 1, scope: !151, file: !50, line: 67, type: !26)
!155 = !DILocation(line: 67, column: 29, scope: !151)
!156 = !DILocalVariable(name: "n", arg: 2, scope: !151, file: !50, line: 67, type: !26)
!157 = !DILocation(line: 67, column: 36, scope: !151)
!158 = !DILocalVariable(name: "float_n", arg: 3, scope: !151, file: !50, line: 68, type: !7)
!159 = !DILocation(line: 68, column: 14, scope: !151)
!160 = !DILocalVariable(name: "data", arg: 4, scope: !151, file: !50, line: 69, type: !38)
!161 = !DILocation(line: 69, column: 14, scope: !151)
!162 = !DILocalVariable(name: "corr", arg: 5, scope: !151, file: !50, line: 70, type: !38)
!163 = !DILocation(line: 70, column: 14, scope: !151)
!164 = !DILocalVariable(name: "mean", arg: 6, scope: !151, file: !50, line: 71, type: !6)
!165 = !DILocation(line: 71, column: 14, scope: !151)
!166 = !DILocalVariable(name: "stddev", arg: 7, scope: !151, file: !50, line: 72, type: !6)
!167 = !DILocation(line: 72, column: 14, scope: !151)
!168 = !DILocalVariable(name: "i", scope: !151, file: !50, line: 74, type: !26)
!169 = !DILocation(line: 74, column: 7, scope: !151)
!170 = !DILocalVariable(name: "j", scope: !151, file: !50, line: 74, type: !26)
!171 = !DILocation(line: 74, column: 10, scope: !151)
!172 = !DILocalVariable(name: "k", scope: !151, file: !50, line: 74, type: !26)
!173 = !DILocation(line: 74, column: 13, scope: !151)
!174 = !DILocalVariable(name: "eps", scope: !151, file: !50, line: 76, type: !7)
!175 = !DILocation(line: 76, column: 13, scope: !151)
!176 = !DILocation(line: 80, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !151, file: !50, line: 80, column: 3)
!178 = !DILocation(line: 80, column: 8, scope: !177)
!179 = !DILocation(line: 80, column: 15, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !50, line: 80, column: 3)
!181 = !DILocation(line: 80, column: 19, scope: !180)
!182 = !DILocation(line: 80, column: 17, scope: !180)
!183 = !DILocation(line: 80, column: 3, scope: !177)
!184 = !DILocation(line: 82, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !50, line: 81, column: 5)
!186 = !DILocation(line: 82, column: 12, scope: !185)
!187 = !DILocation(line: 82, column: 15, scope: !185)
!188 = !DILocation(line: 83, column: 14, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !50, line: 83, column: 7)
!190 = !DILocation(line: 83, column: 12, scope: !189)
!191 = !DILocation(line: 83, column: 19, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !50, line: 83, column: 7)
!193 = !DILocation(line: 83, column: 23, scope: !192)
!194 = !DILocation(line: 83, column: 21, scope: !192)
!195 = !DILocation(line: 83, column: 7, scope: !189)
!196 = !DILocation(line: 84, column: 13, scope: !192)
!197 = !DILocation(line: 84, column: 18, scope: !192)
!198 = !DILocation(line: 84, column: 21, scope: !192)
!199 = !DILocation(line: 84, column: 2, scope: !192)
!200 = !DILocation(line: 84, column: 7, scope: !192)
!201 = !DILocation(line: 84, column: 10, scope: !192)
!202 = !DILocation(line: 83, column: 31, scope: !192)
!203 = !DILocation(line: 83, column: 7, scope: !192)
!204 = distinct !{!204, !195, !205, !145}
!205 = !DILocation(line: 84, column: 22, scope: !189)
!206 = !DILocation(line: 85, column: 18, scope: !185)
!207 = !DILocation(line: 85, column: 7, scope: !185)
!208 = !DILocation(line: 85, column: 12, scope: !185)
!209 = !DILocation(line: 85, column: 15, scope: !185)
!210 = !DILocation(line: 80, column: 27, scope: !180)
!211 = !DILocation(line: 80, column: 3, scope: !180)
!212 = distinct !{!212, !183, !213, !145}
!213 = !DILocation(line: 86, column: 5, scope: !177)
!214 = !DILocation(line: 89, column: 11, scope: !215)
!215 = distinct !DILexicalBlock(scope: !151, file: !50, line: 89, column: 4)
!216 = !DILocation(line: 89, column: 9, scope: !215)
!217 = !DILocation(line: 89, column: 16, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !50, line: 89, column: 4)
!219 = !DILocation(line: 89, column: 20, scope: !218)
!220 = !DILocation(line: 89, column: 18, scope: !218)
!221 = !DILocation(line: 89, column: 4, scope: !215)
!222 = !DILocation(line: 91, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !50, line: 90, column: 5)
!224 = !DILocation(line: 91, column: 14, scope: !223)
!225 = !DILocation(line: 91, column: 17, scope: !223)
!226 = !DILocation(line: 92, column: 14, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !50, line: 92, column: 7)
!228 = !DILocation(line: 92, column: 12, scope: !227)
!229 = !DILocation(line: 92, column: 19, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !50, line: 92, column: 7)
!231 = !DILocation(line: 92, column: 23, scope: !230)
!232 = !DILocation(line: 92, column: 21, scope: !230)
!233 = !DILocation(line: 92, column: 7, scope: !227)
!234 = !DILocation(line: 93, column: 23, scope: !230)
!235 = !DILocation(line: 93, column: 28, scope: !230)
!236 = !DILocation(line: 93, column: 31, scope: !230)
!237 = !DILocation(line: 93, column: 36, scope: !230)
!238 = !DILocation(line: 93, column: 41, scope: !230)
!239 = !DILocation(line: 93, column: 34, scope: !230)
!240 = !DILocation(line: 93, column: 48, scope: !230)
!241 = !DILocation(line: 93, column: 53, scope: !230)
!242 = !DILocation(line: 93, column: 56, scope: !230)
!243 = !DILocation(line: 93, column: 61, scope: !230)
!244 = !DILocation(line: 93, column: 66, scope: !230)
!245 = !DILocation(line: 93, column: 59, scope: !230)
!246 = !DILocation(line: 93, column: 45, scope: !230)
!247 = !DILocation(line: 93, column: 9, scope: !230)
!248 = !DILocation(line: 93, column: 16, scope: !230)
!249 = !DILocation(line: 93, column: 19, scope: !230)
!250 = !DILocation(line: 92, column: 31, scope: !230)
!251 = !DILocation(line: 92, column: 7, scope: !230)
!252 = distinct !{!252, !233, !253, !145}
!253 = !DILocation(line: 93, column: 68, scope: !227)
!254 = !DILocation(line: 94, column: 20, scope: !223)
!255 = !DILocation(line: 94, column: 7, scope: !223)
!256 = !DILocation(line: 94, column: 14, scope: !223)
!257 = !DILocation(line: 94, column: 17, scope: !223)
!258 = !DILocation(line: 95, column: 19, scope: !223)
!259 = !DILocation(line: 95, column: 7, scope: !223)
!260 = !DILocation(line: 95, column: 14, scope: !223)
!261 = !DILocation(line: 95, column: 17, scope: !223)
!262 = !DILocation(line: 99, column: 19, scope: !223)
!263 = !DILocation(line: 99, column: 26, scope: !223)
!264 = !DILocation(line: 99, column: 32, scope: !223)
!265 = !DILocation(line: 99, column: 29, scope: !223)
!266 = !DILocation(line: 99, column: 56, scope: !223)
!267 = !DILocation(line: 99, column: 63, scope: !223)
!268 = !DILocation(line: 99, column: 7, scope: !223)
!269 = !DILocation(line: 99, column: 14, scope: !223)
!270 = !DILocation(line: 99, column: 17, scope: !223)
!271 = !DILocation(line: 89, column: 28, scope: !218)
!272 = !DILocation(line: 89, column: 4, scope: !218)
!273 = distinct !{!273, !221, !274, !145}
!274 = !DILocation(line: 100, column: 5, scope: !215)
!275 = !DILocation(line: 103, column: 10, scope: !276)
!276 = distinct !DILexicalBlock(scope: !151, file: !50, line: 103, column: 3)
!277 = !DILocation(line: 103, column: 8, scope: !276)
!278 = !DILocation(line: 103, column: 15, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !50, line: 103, column: 3)
!280 = !DILocation(line: 103, column: 19, scope: !279)
!281 = !DILocation(line: 103, column: 17, scope: !279)
!282 = !DILocation(line: 103, column: 3, scope: !276)
!283 = !DILocation(line: 104, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !50, line: 104, column: 5)
!285 = !DILocation(line: 104, column: 10, scope: !284)
!286 = !DILocation(line: 104, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !50, line: 104, column: 5)
!288 = !DILocation(line: 104, column: 21, scope: !287)
!289 = !DILocation(line: 104, column: 19, scope: !287)
!290 = !DILocation(line: 104, column: 5, scope: !284)
!291 = !DILocation(line: 106, column: 23, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !50, line: 105, column: 7)
!293 = !DILocation(line: 106, column: 28, scope: !292)
!294 = !DILocation(line: 106, column: 9, scope: !292)
!295 = !DILocation(line: 106, column: 14, scope: !292)
!296 = !DILocation(line: 106, column: 17, scope: !292)
!297 = !DILocation(line: 106, column: 20, scope: !292)
!298 = !DILocation(line: 107, column: 23, scope: !292)
!299 = !DILocation(line: 107, column: 43, scope: !292)
!300 = !DILocation(line: 107, column: 50, scope: !292)
!301 = !DILocation(line: 107, column: 41, scope: !292)
!302 = !DILocation(line: 107, column: 9, scope: !292)
!303 = !DILocation(line: 107, column: 14, scope: !292)
!304 = !DILocation(line: 107, column: 17, scope: !292)
!305 = !DILocation(line: 107, column: 20, scope: !292)
!306 = !DILocation(line: 104, column: 29, scope: !287)
!307 = !DILocation(line: 104, column: 5, scope: !287)
!308 = distinct !{!308, !290, !309, !145}
!309 = !DILocation(line: 108, column: 7, scope: !284)
!310 = !DILocation(line: 103, column: 27, scope: !279)
!311 = !DILocation(line: 103, column: 3, scope: !279)
!312 = distinct !{!312, !282, !313, !145}
!313 = !DILocation(line: 108, column: 7, scope: !276)
!314 = !DILocation(line: 111, column: 10, scope: !315)
!315 = distinct !DILexicalBlock(scope: !151, file: !50, line: 111, column: 3)
!316 = !DILocation(line: 111, column: 8, scope: !315)
!317 = !DILocation(line: 111, column: 15, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !50, line: 111, column: 3)
!319 = !DILocation(line: 111, column: 19, scope: !318)
!320 = !DILocation(line: 111, column: 24, scope: !318)
!321 = !DILocation(line: 111, column: 17, scope: !318)
!322 = !DILocation(line: 111, column: 3, scope: !315)
!323 = !DILocation(line: 113, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !318, file: !50, line: 112, column: 5)
!325 = !DILocation(line: 113, column: 12, scope: !324)
!326 = !DILocation(line: 113, column: 15, scope: !324)
!327 = !DILocation(line: 113, column: 18, scope: !324)
!328 = !DILocation(line: 114, column: 16, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !50, line: 114, column: 7)
!330 = !DILocation(line: 114, column: 17, scope: !329)
!331 = !DILocation(line: 114, column: 14, scope: !329)
!332 = !DILocation(line: 114, column: 12, scope: !329)
!333 = !DILocation(line: 114, column: 21, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !50, line: 114, column: 7)
!335 = !DILocation(line: 114, column: 25, scope: !334)
!336 = !DILocation(line: 114, column: 23, scope: !334)
!337 = !DILocation(line: 114, column: 7, scope: !329)
!338 = !DILocation(line: 116, column: 11, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !50, line: 115, column: 9)
!340 = !DILocation(line: 116, column: 16, scope: !339)
!341 = !DILocation(line: 116, column: 19, scope: !339)
!342 = !DILocation(line: 116, column: 22, scope: !339)
!343 = !DILocation(line: 117, column: 18, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !50, line: 117, column: 11)
!345 = !DILocation(line: 117, column: 16, scope: !344)
!346 = !DILocation(line: 117, column: 23, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !50, line: 117, column: 11)
!348 = !DILocation(line: 117, column: 27, scope: !347)
!349 = !DILocation(line: 117, column: 25, scope: !347)
!350 = !DILocation(line: 117, column: 11, scope: !344)
!351 = !DILocation(line: 118, column: 28, scope: !347)
!352 = !DILocation(line: 118, column: 33, scope: !347)
!353 = !DILocation(line: 118, column: 36, scope: !347)
!354 = !DILocation(line: 118, column: 41, scope: !347)
!355 = !DILocation(line: 118, column: 46, scope: !347)
!356 = !DILocation(line: 118, column: 49, scope: !347)
!357 = !DILocation(line: 118, column: 39, scope: !347)
!358 = !DILocation(line: 118, column: 13, scope: !347)
!359 = !DILocation(line: 118, column: 18, scope: !347)
!360 = !DILocation(line: 118, column: 21, scope: !347)
!361 = !DILocation(line: 118, column: 24, scope: !347)
!362 = !DILocation(line: 117, column: 35, scope: !347)
!363 = !DILocation(line: 117, column: 11, scope: !347)
!364 = distinct !{!364, !350, !365, !145}
!365 = !DILocation(line: 118, column: 51, scope: !344)
!366 = !DILocation(line: 119, column: 24, scope: !339)
!367 = !DILocation(line: 119, column: 29, scope: !339)
!368 = !DILocation(line: 119, column: 32, scope: !339)
!369 = !DILocation(line: 119, column: 11, scope: !339)
!370 = !DILocation(line: 119, column: 16, scope: !339)
!371 = !DILocation(line: 119, column: 19, scope: !339)
!372 = !DILocation(line: 119, column: 22, scope: !339)
!373 = !DILocation(line: 114, column: 33, scope: !334)
!374 = !DILocation(line: 114, column: 7, scope: !334)
!375 = distinct !{!375, !337, !376, !145}
!376 = !DILocation(line: 120, column: 9, scope: !329)
!377 = !DILocation(line: 111, column: 29, scope: !318)
!378 = !DILocation(line: 111, column: 3, scope: !318)
!379 = distinct !{!379, !322, !380, !145}
!380 = !DILocation(line: 121, column: 5, scope: !315)
!381 = !DILocation(line: 122, column: 3, scope: !151)
!382 = !DILocation(line: 122, column: 8, scope: !151)
!383 = !DILocation(line: 122, column: 13, scope: !151)
!384 = !DILocation(line: 122, column: 17, scope: !151)
!385 = !DILocation(line: 122, column: 22, scope: !151)
!386 = !DILocation(line: 122, column: 26, scope: !151)
!387 = !DILocation(line: 125, column: 1, scope: !151)
!388 = distinct !DISubprogram(name: "print_array", scope: !50, file: !50, line: 46, type: !389, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !26, !38}
!391 = !DILocalVariable(name: "m", arg: 1, scope: !388, file: !50, line: 46, type: !26)
!392 = !DILocation(line: 46, column: 22, scope: !388)
!393 = !DILocalVariable(name: "corr", arg: 2, scope: !388, file: !50, line: 47, type: !38)
!394 = !DILocation(line: 47, column: 14, scope: !388)
!395 = !DILocalVariable(name: "i", scope: !388, file: !50, line: 50, type: !26)
!396 = !DILocation(line: 50, column: 7, scope: !388)
!397 = !DILocalVariable(name: "j", scope: !388, file: !50, line: 50, type: !26)
!398 = !DILocation(line: 50, column: 10, scope: !388)
!399 = !DILocation(line: 52, column: 3, scope: !388)
!400 = !DILocation(line: 53, column: 3, scope: !388)
!401 = !DILocation(line: 54, column: 10, scope: !402)
!402 = distinct !DILexicalBlock(scope: !388, file: !50, line: 54, column: 3)
!403 = !DILocation(line: 54, column: 8, scope: !402)
!404 = !DILocation(line: 54, column: 15, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !50, line: 54, column: 3)
!406 = !DILocation(line: 54, column: 19, scope: !405)
!407 = !DILocation(line: 54, column: 17, scope: !405)
!408 = !DILocation(line: 54, column: 3, scope: !402)
!409 = !DILocation(line: 55, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !405, file: !50, line: 55, column: 5)
!411 = !DILocation(line: 55, column: 10, scope: !410)
!412 = !DILocation(line: 55, column: 17, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !50, line: 55, column: 5)
!414 = !DILocation(line: 55, column: 21, scope: !413)
!415 = !DILocation(line: 55, column: 19, scope: !413)
!416 = !DILocation(line: 55, column: 5, scope: !410)
!417 = !DILocation(line: 56, column: 12, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !50, line: 56, column: 11)
!419 = distinct !DILexicalBlock(scope: !413, file: !50, line: 55, column: 29)
!420 = !DILocation(line: 56, column: 16, scope: !418)
!421 = !DILocation(line: 56, column: 14, scope: !418)
!422 = !DILocation(line: 56, column: 20, scope: !418)
!423 = !DILocation(line: 56, column: 18, scope: !418)
!424 = !DILocation(line: 56, column: 23, scope: !418)
!425 = !DILocation(line: 56, column: 28, scope: !418)
!426 = !DILocation(line: 56, column: 11, scope: !419)
!427 = !DILocation(line: 56, column: 43, scope: !418)
!428 = !DILocation(line: 56, column: 34, scope: !418)
!429 = !DILocation(line: 57, column: 16, scope: !419)
!430 = !DILocation(line: 57, column: 61, scope: !419)
!431 = !DILocation(line: 57, column: 66, scope: !419)
!432 = !DILocation(line: 57, column: 69, scope: !419)
!433 = !DILocation(line: 57, column: 7, scope: !419)
!434 = !DILocation(line: 55, column: 25, scope: !413)
!435 = !DILocation(line: 55, column: 5, scope: !413)
!436 = distinct !{!436, !416, !437, !145}
!437 = !DILocation(line: 58, column: 5, scope: !410)
!438 = !DILocation(line: 54, column: 23, scope: !405)
!439 = !DILocation(line: 54, column: 3, scope: !405)
!440 = distinct !{!440, !408, !441, !145}
!441 = !DILocation(line: 58, column: 5, scope: !402)
!442 = !DILocation(line: 59, column: 3, scope: !388)
!443 = !DILocation(line: 60, column: 3, scope: !388)
!444 = !DILocation(line: 61, column: 1, scope: !388)
!445 = distinct !DISubprogram(name: "polybench_flush_cache", scope: !3, file: !3, line: 112, type: !446, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!446 = !DISubroutineType(types: !447)
!447 = !{null}
!448 = !DILocalVariable(name: "cs", scope: !445, file: !3, line: 114, type: !26)
!449 = !DILocation(line: 114, column: 7, scope: !445)
!450 = !DILocalVariable(name: "flush", scope: !445, file: !3, line: 115, type: !6)
!451 = !DILocation(line: 115, column: 11, scope: !445)
!452 = !DILocation(line: 115, column: 37, scope: !445)
!453 = !DILocation(line: 115, column: 29, scope: !445)
!454 = !DILocation(line: 115, column: 19, scope: !445)
!455 = !DILocalVariable(name: "i", scope: !445, file: !3, line: 116, type: !26)
!456 = !DILocation(line: 116, column: 7, scope: !445)
!457 = !DILocalVariable(name: "tmp", scope: !445, file: !3, line: 117, type: !7)
!458 = !DILocation(line: 117, column: 10, scope: !445)
!459 = !DILocation(line: 121, column: 10, scope: !460)
!460 = distinct !DILexicalBlock(scope: !445, file: !3, line: 121, column: 3)
!461 = !DILocation(line: 121, column: 8, scope: !460)
!462 = !DILocation(line: 121, column: 15, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !3, line: 121, column: 3)
!464 = !DILocation(line: 121, column: 19, scope: !463)
!465 = !DILocation(line: 121, column: 17, scope: !463)
!466 = !DILocation(line: 121, column: 3, scope: !460)
!467 = !DILocation(line: 122, column: 12, scope: !463)
!468 = !DILocation(line: 122, column: 18, scope: !463)
!469 = !DILocation(line: 122, column: 9, scope: !463)
!470 = !DILocation(line: 121, column: 24, scope: !463)
!471 = !DILocation(line: 121, column: 3, scope: !463)
!472 = distinct !{!472, !466, !473, !145}
!473 = !DILocation(line: 122, column: 19, scope: !460)
!474 = !DILocation(line: 123, column: 3, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 123, column: 3)
!476 = distinct !DILexicalBlock(scope: !445, file: !3, line: 123, column: 3)
!477 = !DILocation(line: 123, column: 3, scope: !476)
!478 = !DILocation(line: 124, column: 9, scope: !445)
!479 = !DILocation(line: 124, column: 3, scope: !445)
!480 = !DILocation(line: 125, column: 1, scope: !445)
!481 = distinct !DISubprogram(name: "polybench_prepare_instruments", scope: !3, file: !3, line: 353, type: !446, scopeLine: 354, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!482 = !DILocation(line: 356, column: 3, scope: !481)
!483 = !DILocation(line: 361, column: 1, scope: !481)
!484 = distinct !DISubprogram(name: "polybench_timer_start", scope: !3, file: !3, line: 364, type: !446, scopeLine: 365, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!485 = !DILocation(line: 366, column: 3, scope: !484)
!486 = !DILocation(line: 368, column: 23, scope: !484)
!487 = !DILocation(line: 368, column: 21, scope: !484)
!488 = !DILocation(line: 372, column: 1, scope: !484)
!489 = distinct !DISubprogram(name: "rtclock", scope: !3, file: !3, line: 83, type: !490, scopeLine: 84, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!490 = !DISubroutineType(types: !491)
!491 = !{!7}
!492 = !DILocation(line: 93, column: 5, scope: !489)
!493 = distinct !DISubprogram(name: "polybench_timer_stop", scope: !3, file: !3, line: 375, type: !446, scopeLine: 376, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!494 = !DILocation(line: 378, column: 21, scope: !493)
!495 = !DILocation(line: 378, column: 19, scope: !493)
!496 = !DILocation(line: 385, column: 1, scope: !493)
!497 = distinct !DISubprogram(name: "polybench_timer_print", scope: !3, file: !3, line: 388, type: !446, scopeLine: 389, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!498 = !DILocation(line: 402, column: 26, scope: !497)
!499 = !DILocation(line: 402, column: 44, scope: !497)
!500 = !DILocation(line: 402, column: 42, scope: !497)
!501 = !DILocation(line: 402, column: 7, scope: !497)
!502 = !DILocation(line: 407, column: 1, scope: !497)
!503 = distinct !DISubprogram(name: "polybench_free_data", scope: !3, file: !3, line: 547, type: !504, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !8}
!506 = !DILocalVariable(name: "ptr", arg: 1, scope: !503, file: !3, line: 547, type: !8)
!507 = !DILocation(line: 547, column: 32, scope: !503)
!508 = !DILocation(line: 552, column: 9, scope: !503)
!509 = !DILocation(line: 552, column: 3, scope: !503)
!510 = !DILocation(line: 554, column: 1, scope: !503)
!511 = distinct !DISubprogram(name: "polybench_alloc_data", scope: !3, file: !3, line: 557, type: !512, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!512 = !DISubroutineType(types: !513)
!513 = !{!8, !18, !26}
!514 = !DILocalVariable(name: "n", arg: 1, scope: !511, file: !3, line: 557, type: !18)
!515 = !DILocation(line: 557, column: 51, scope: !511)
!516 = !DILocalVariable(name: "elt_size", arg: 2, scope: !511, file: !3, line: 557, type: !26)
!517 = !DILocation(line: 557, column: 58, scope: !511)
!518 = !DILocalVariable(name: "val", scope: !511, file: !3, line: 564, type: !23)
!519 = !DILocation(line: 564, column: 10, scope: !511)
!520 = !DILocation(line: 564, column: 16, scope: !511)
!521 = !DILocation(line: 565, column: 10, scope: !511)
!522 = !DILocation(line: 565, column: 7, scope: !511)
!523 = !DILocalVariable(name: "ret", scope: !511, file: !3, line: 566, type: !8)
!524 = !DILocation(line: 566, column: 9, scope: !511)
!525 = !DILocation(line: 566, column: 24, scope: !511)
!526 = !DILocation(line: 566, column: 15, scope: !511)
!527 = !DILocation(line: 568, column: 10, scope: !511)
!528 = !DILocation(line: 568, column: 3, scope: !511)
!529 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 517, type: !530, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!530 = !DISubroutineType(types: !531)
!531 = !{!8, !23}
!532 = !DILocalVariable(name: "alloc_sz", arg: 1, scope: !529, file: !3, line: 517, type: !23)
!533 = !DILocation(line: 517, column: 16, scope: !529)
!534 = !DILocalVariable(name: "ret", scope: !529, file: !3, line: 519, type: !8)
!535 = !DILocation(line: 519, column: 9, scope: !529)
!536 = !DILocation(line: 521, column: 36, scope: !529)
!537 = !DILocalVariable(name: "padded_sz", scope: !529, file: !3, line: 522, type: !23)
!538 = !DILocation(line: 522, column: 10, scope: !529)
!539 = !DILocation(line: 522, column: 22, scope: !529)
!540 = !DILocation(line: 522, column: 33, scope: !529)
!541 = !DILocation(line: 522, column: 31, scope: !529)
!542 = !DILocalVariable(name: "err", scope: !529, file: !3, line: 523, type: !26)
!543 = !DILocation(line: 523, column: 7, scope: !529)
!544 = !DILocation(line: 523, column: 41, scope: !529)
!545 = !DILocation(line: 523, column: 13, scope: !529)
!546 = !DILocation(line: 524, column: 9, scope: !547)
!547 = distinct !DILexicalBlock(scope: !529, file: !3, line: 524, column: 7)
!548 = !DILocation(line: 524, column: 13, scope: !547)
!549 = !DILocation(line: 526, column: 16, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !3, line: 525, column: 5)
!551 = !DILocation(line: 526, column: 7, scope: !550)
!552 = !DILocation(line: 527, column: 7, scope: !550)
!553 = !DILocation(line: 543, column: 10, scope: !529)
!554 = !DILocation(line: 543, column: 3, scope: !529)
