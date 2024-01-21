; ModuleID = 'klee/jacobi-1d.bc'
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
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
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
  %7 = alloca i32, align 4
  %8 = alloca [2000 x double]*, align 8
  %9 = alloca [2000 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !50
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %6, metadata !53, metadata !DIExpression()), !dbg !54
  store i32 2000, i32* %6, align 4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %7, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 500, i32* %7, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata [2000 x double]** %8, metadata !57, metadata !DIExpression()), !dbg !58
  %10 = call i8* @polybench_alloc_data(i64 2000, i32 8), !dbg !58
  %11 = bitcast i8* %10 to [2000 x double]*, !dbg !58
  store [2000 x double]* %11, [2000 x double]** %8, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata [2000 x double]** %9, metadata !59, metadata !DIExpression()), !dbg !60
  %12 = call i8* @polybench_alloc_data(i64 2000, i32 8), !dbg !60
  %13 = bitcast i8* %12 to [2000 x double]*, !dbg !60
  store [2000 x double]* %13, [2000 x double]** %9, align 8, !dbg !60
  %14 = load i32, i32* %6, align 4, !dbg !61
  %15 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !62
  %16 = getelementptr inbounds [2000 x double], [2000 x double]* %15, i64 0, i64 0, !dbg !62
  %17 = load [2000 x double]*, [2000 x double]** %9, align 8, !dbg !63
  %18 = getelementptr inbounds [2000 x double], [2000 x double]* %17, i64 0, i64 0, !dbg !63
  call void @init_array(i32 %14, double* %16, double* %18), !dbg !64
  %19 = load i32, i32* %7, align 4, !dbg !65
  %20 = load i32, i32* %6, align 4, !dbg !66
  %21 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !67
  %22 = getelementptr inbounds [2000 x double], [2000 x double]* %21, i64 0, i64 0, !dbg !67
  %23 = load [2000 x double]*, [2000 x double]** %9, align 8, !dbg !68
  %24 = getelementptr inbounds [2000 x double], [2000 x double]* %23, i64 0, i64 0, !dbg !68
  call void @kernel_jacobi_1d(i32 %19, i32 %20, double* %22, double* %24), !dbg !69
  %25 = load i32, i32* %4, align 4, !dbg !70
  %26 = icmp sgt i32 %25, 42, !dbg !70
  br i1 %26, label %27, label %37, !dbg !70

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8, !dbg !70
  %29 = getelementptr inbounds i8*, i8** %28, i64 0, !dbg !70
  %30 = load i8*, i8** %29, align 8, !dbg !70
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6, !dbg !70
  %32 = icmp ne i32 %31, 0, !dbg !70
  br i1 %32, label %37, label %33, !dbg !72

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4, !dbg !70
  %35 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !70
  %36 = getelementptr inbounds [2000 x double], [2000 x double]* %35, i64 0, i64 0, !dbg !70
  call void @print_array(i32 %34, double* %36), !dbg !70
  br label %37, !dbg !70

37:                                               ; preds = %33, %27, %2
  %38 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !73
  %39 = bitcast [2000 x double]* %38 to i8*, !dbg !73
  call void @free(i8* %39) #7, !dbg !73
  %40 = load [2000 x double]*, [2000 x double]** %9, align 8, !dbg !74
  %41 = bitcast [2000 x double]* %40 to i8*, !dbg !74
  call void @free(i8* %41) #7, !dbg !74
  ret i32 0, !dbg !75
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @init_array(i32 %0, double* %1, double* %2) #0 !dbg !76 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !79, metadata !DIExpression()), !dbg !80
  store double* %1, double** %5, align 8
  call void @llvm.dbg.declare(metadata double** %5, metadata !81, metadata !DIExpression()), !dbg !82
  store double* %2, double** %6, align 8
  call void @llvm.dbg.declare(metadata double** %6, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %7, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %7, align 4, !dbg !87
  br label %8, !dbg !89

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %7, align 4, !dbg !90
  %10 = load i32, i32* %4, align 4, !dbg !92
  %11 = icmp slt i32 %9, %10, !dbg !93
  br i1 %11, label %12, label %35, !dbg !94

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4, !dbg !95
  %14 = sitofp i32 %13 to double, !dbg !97
  %15 = fadd double %14, 2.000000e+00, !dbg !98
  %16 = load i32, i32* %4, align 4, !dbg !99
  %17 = sitofp i32 %16 to double, !dbg !99
  %18 = fdiv double %15, %17, !dbg !100
  %19 = load double*, double** %5, align 8, !dbg !101
  %20 = load i32, i32* %7, align 4, !dbg !102
  %21 = sext i32 %20 to i64, !dbg !101
  %22 = getelementptr inbounds double, double* %19, i64 %21, !dbg !101
  store double %18, double* %22, align 8, !dbg !103
  %23 = load i32, i32* %7, align 4, !dbg !104
  %24 = sitofp i32 %23 to double, !dbg !105
  %25 = fadd double %24, 3.000000e+00, !dbg !106
  %26 = load i32, i32* %4, align 4, !dbg !107
  %27 = sitofp i32 %26 to double, !dbg !107
  %28 = fdiv double %25, %27, !dbg !108
  %29 = load double*, double** %6, align 8, !dbg !109
  %30 = load i32, i32* %7, align 4, !dbg !110
  %31 = sext i32 %30 to i64, !dbg !109
  %32 = getelementptr inbounds double, double* %29, i64 %31, !dbg !109
  store double %28, double* %32, align 8, !dbg !111
  %33 = load i32, i32* %7, align 4, !dbg !112
  %34 = add nsw i32 %33, 1, !dbg !112
  store i32 %34, i32* %7, align 4, !dbg !112
  br label %8, !dbg !113, !llvm.loop !114

35:                                               ; preds = %8
  ret void, !dbg !117
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @kernel_jacobi_1d(i32 %0, i32 %1, double* %2, double* %3) #0 !dbg !118 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !121, metadata !DIExpression()), !dbg !122
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !123, metadata !DIExpression()), !dbg !124
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !125, metadata !DIExpression()), !dbg !126
  store double* %3, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %9, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %10, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 0, i32* %9, align 4, !dbg !133
  br label %11, !dbg !135

11:                                               ; preds = %81, %4
  %12 = load i32, i32* %9, align 4, !dbg !136
  %13 = load i32, i32* %5, align 4, !dbg !138
  %14 = icmp slt i32 %12, %13, !dbg !139
  br i1 %14, label %15, label %84, !dbg !140

15:                                               ; preds = %11
  store i32 1, i32* %10, align 4, !dbg !141
  br label %16, !dbg !144

16:                                               ; preds = %21, %15
  %17 = load i32, i32* %10, align 4, !dbg !145
  %18 = load i32, i32* %6, align 4, !dbg !147
  %19 = sub nsw i32 %18, 1, !dbg !148
  %20 = icmp slt i32 %17, %19, !dbg !149
  br i1 %20, label %21, label %48, !dbg !150

21:                                               ; preds = %16
  %22 = load double*, double** %7, align 8, !dbg !151
  %23 = load i32, i32* %10, align 4, !dbg !152
  %24 = sub nsw i32 %23, 1, !dbg !153
  %25 = sext i32 %24 to i64, !dbg !151
  %26 = getelementptr inbounds double, double* %22, i64 %25, !dbg !151
  %27 = load double, double* %26, align 8, !dbg !151
  %28 = load double*, double** %7, align 8, !dbg !154
  %29 = load i32, i32* %10, align 4, !dbg !155
  %30 = sext i32 %29 to i64, !dbg !154
  %31 = getelementptr inbounds double, double* %28, i64 %30, !dbg !154
  %32 = load double, double* %31, align 8, !dbg !154
  %33 = fadd double %27, %32, !dbg !156
  %34 = load double*, double** %7, align 8, !dbg !157
  %35 = load i32, i32* %10, align 4, !dbg !158
  %36 = add nsw i32 %35, 1, !dbg !159
  %37 = sext i32 %36 to i64, !dbg !157
  %38 = getelementptr inbounds double, double* %34, i64 %37, !dbg !157
  %39 = load double, double* %38, align 8, !dbg !157
  %40 = fadd double %33, %39, !dbg !160
  %41 = fmul double 3.333300e-01, %40, !dbg !161
  %42 = load double*, double** %8, align 8, !dbg !162
  %43 = load i32, i32* %10, align 4, !dbg !163
  %44 = sext i32 %43 to i64, !dbg !162
  %45 = getelementptr inbounds double, double* %42, i64 %44, !dbg !162
  store double %41, double* %45, align 8, !dbg !164
  %46 = load i32, i32* %10, align 4, !dbg !165
  %47 = add nsw i32 %46, 1, !dbg !165
  store i32 %47, i32* %10, align 4, !dbg !165
  br label %16, !dbg !166, !llvm.loop !167

48:                                               ; preds = %16
  store i32 1, i32* %10, align 4, !dbg !169
  br label %49, !dbg !171

49:                                               ; preds = %54, %48
  %50 = load i32, i32* %10, align 4, !dbg !172
  %51 = load i32, i32* %6, align 4, !dbg !174
  %52 = sub nsw i32 %51, 1, !dbg !175
  %53 = icmp slt i32 %50, %52, !dbg !176
  br i1 %53, label %54, label %81, !dbg !177

54:                                               ; preds = %49
  %55 = load double*, double** %8, align 8, !dbg !178
  %56 = load i32, i32* %10, align 4, !dbg !179
  %57 = sub nsw i32 %56, 1, !dbg !180
  %58 = sext i32 %57 to i64, !dbg !178
  %59 = getelementptr inbounds double, double* %55, i64 %58, !dbg !178
  %60 = load double, double* %59, align 8, !dbg !178
  %61 = load double*, double** %8, align 8, !dbg !181
  %62 = load i32, i32* %10, align 4, !dbg !182
  %63 = sext i32 %62 to i64, !dbg !181
  %64 = getelementptr inbounds double, double* %61, i64 %63, !dbg !181
  %65 = load double, double* %64, align 8, !dbg !181
  %66 = fadd double %60, %65, !dbg !183
  %67 = load double*, double** %8, align 8, !dbg !184
  %68 = load i32, i32* %10, align 4, !dbg !185
  %69 = add nsw i32 %68, 1, !dbg !186
  %70 = sext i32 %69 to i64, !dbg !184
  %71 = getelementptr inbounds double, double* %67, i64 %70, !dbg !184
  %72 = load double, double* %71, align 8, !dbg !184
  %73 = fadd double %66, %72, !dbg !187
  %74 = fmul double 3.333300e-01, %73, !dbg !188
  %75 = load double*, double** %7, align 8, !dbg !189
  %76 = load i32, i32* %10, align 4, !dbg !190
  %77 = sext i32 %76 to i64, !dbg !189
  %78 = getelementptr inbounds double, double* %75, i64 %77, !dbg !189
  store double %74, double* %78, align 8, !dbg !191
  %79 = load i32, i32* %10, align 4, !dbg !192
  %80 = add nsw i32 %79, 1, !dbg !192
  store i32 %80, i32* %10, align 4, !dbg !192
  br label %49, !dbg !193, !llvm.loop !194

81:                                               ; preds = %49
  %82 = load i32, i32* %9, align 4, !dbg !196
  %83 = add nsw i32 %82, 1, !dbg !196
  store i32 %83, i32* %9, align 4, !dbg !196
  br label %11, !dbg !197, !llvm.loop !198

84:                                               ; preds = %11
  ret void, !dbg !200
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @print_array(i32 %0, double* %1) #0 !dbg !201 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !204, metadata !DIExpression()), !dbg !205
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %5, metadata !208, metadata !DIExpression()), !dbg !209
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !210
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)), !dbg !210
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !211
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !211
  store i32 0, i32* %5, align 4, !dbg !212
  br label %10, !dbg !214

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %5, align 4, !dbg !215
  %12 = load i32, i32* %3, align 4, !dbg !217
  %13 = icmp slt i32 %11, %12, !dbg !218
  br i1 %13, label %14, label %31, !dbg !219

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4, !dbg !220
  %16 = srem i32 %15, 20, !dbg !223
  %17 = icmp eq i32 %16, 0, !dbg !224
  br i1 %17, label %18, label %21, !dbg !225

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !226
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !227
  br label %21, !dbg !227

21:                                               ; preds = %18, %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !228
  %23 = load double*, double** %4, align 8, !dbg !229
  %24 = load i32, i32* %5, align 4, !dbg !230
  %25 = sext i32 %24 to i64, !dbg !229
  %26 = getelementptr inbounds double, double* %23, i64 %25, !dbg !229
  %27 = load double, double* %26, align 8, !dbg !229
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %27), !dbg !231
  %29 = load i32, i32* %5, align 4, !dbg !232
  %30 = add nsw i32 %29, 1, !dbg !232
  store i32 %30, i32* %5, align 4, !dbg !232
  br label %10, !dbg !233, !llvm.loop !234

31:                                               ; preds = %10
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !236
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !236
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !237
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)), !dbg !237
  ret void, !dbg !238
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_flush_cache() #0 !dbg !239 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !242, metadata !DIExpression()), !dbg !243
  store i32 4194560, i32* %1, align 4, !dbg !243
  call void @llvm.dbg.declare(metadata double** %2, metadata !244, metadata !DIExpression()), !dbg !245
  %5 = load i32, i32* %1, align 4, !dbg !246
  %6 = sext i32 %5 to i64, !dbg !246
  %7 = call noalias align 16 i8* @calloc(i64 %6, i64 8) #7, !dbg !247
  %8 = bitcast i8* %7 to double*, !dbg !248
  store double* %8, double** %2, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i32* %3, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata double* %4, metadata !251, metadata !DIExpression()), !dbg !252
  store double 0.000000e+00, double* %4, align 8, !dbg !252
  store i32 0, i32* %3, align 4, !dbg !253
  br label %9, !dbg !255

9:                                                ; preds = %13, %0
  %10 = load i32, i32* %3, align 4, !dbg !256
  %11 = load i32, i32* %1, align 4, !dbg !258
  %12 = icmp slt i32 %10, %11, !dbg !259
  br i1 %12, label %13, label %23, !dbg !260

13:                                               ; preds = %9
  %14 = load double*, double** %2, align 8, !dbg !261
  %15 = load i32, i32* %3, align 4, !dbg !262
  %16 = sext i32 %15 to i64, !dbg !261
  %17 = getelementptr inbounds double, double* %14, i64 %16, !dbg !261
  %18 = load double, double* %17, align 8, !dbg !261
  %19 = load double, double* %4, align 8, !dbg !263
  %20 = fadd double %19, %18, !dbg !263
  store double %20, double* %4, align 8, !dbg !263
  %21 = load i32, i32* %3, align 4, !dbg !264
  %22 = add nsw i32 %21, 1, !dbg !264
  store i32 %22, i32* %3, align 4, !dbg !264
  br label %9, !dbg !265, !llvm.loop !266

23:                                               ; preds = %9
  %24 = load double, double* %4, align 8, !dbg !268
  %25 = fcmp ole double %24, 1.000000e+01, !dbg !268
  br i1 %25, label %27, label %26, !dbg !271

26:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.9, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #8, !dbg !268
  unreachable, !dbg !268

27:                                               ; preds = %23
  %28 = load double*, double** %2, align 8, !dbg !272
  %29 = bitcast double* %28 to i8*, !dbg !272
  call void @free(i8* %29) #7, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_prepare_instruments() #0 !dbg !275 {
  call void @polybench_flush_cache(), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_start() #0 !dbg !278 {
  call void @polybench_prepare_instruments(), !dbg !279
  %1 = call double @rtclock(), !dbg !280
  store double %1, double* @polybench_t_start, align 8, !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal double @rtclock() #0 !dbg !283 {
  ret double 0.000000e+00, !dbg !286
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_stop() #0 !dbg !287 {
  %1 = call double @rtclock(), !dbg !288
  store double %1, double* @polybench_t_end, align 8, !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_print() #0 !dbg !291 {
  %1 = load double, double* @polybench_t_end, align 8, !dbg !292
  %2 = load double, double* @polybench_t_start, align 8, !dbg !293
  %3 = fsub double %1, %2, !dbg !294
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.10, i64 0, i64 0), double %3), !dbg !295
  ret void, !dbg !296
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_free_data(i8* %0) #0 !dbg !297 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !300, metadata !DIExpression()), !dbg !301
  %3 = load i8*, i8** %2, align 8, !dbg !302
  call void @free(i8* %3) #7, !dbg !303
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @polybench_alloc_data(i64 %0, i32 %1) #0 !dbg !305 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !308, metadata !DIExpression()), !dbg !309
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata i64* %5, metadata !312, metadata !DIExpression()), !dbg !313
  %7 = load i64, i64* %3, align 8, !dbg !314
  store i64 %7, i64* %5, align 8, !dbg !313
  %8 = load i32, i32* %4, align 4, !dbg !315
  %9 = sext i32 %8 to i64, !dbg !315
  %10 = load i64, i64* %5, align 8, !dbg !316
  %11 = mul i64 %10, %9, !dbg !316
  store i64 %11, i64* %5, align 8, !dbg !316
  call void @llvm.dbg.declare(metadata i8** %6, metadata !317, metadata !DIExpression()), !dbg !318
  %12 = load i64, i64* %5, align 8, !dbg !319
  %13 = call i8* @xmalloc(i64 %12), !dbg !320
  store i8* %13, i8** %6, align 8, !dbg !318
  %14 = load i8*, i8** %6, align 8, !dbg !321
  ret i8* %14, !dbg !322
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i8* @xmalloc(i64 %0) #0 !dbg !323 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata i8** %3, metadata !328, metadata !DIExpression()), !dbg !329
  store i8* null, i8** %3, align 8, !dbg !329
  %6 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !330
  %7 = add i64 %6, 0, !dbg !330
  store i64 %7, i64* @polybench_inter_array_padding_sz, align 8, !dbg !330
  call void @llvm.dbg.declare(metadata i64* %4, metadata !331, metadata !DIExpression()), !dbg !332
  %8 = load i64, i64* %2, align 8, !dbg !333
  %9 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !334
  %10 = add i64 %8, %9, !dbg !335
  store i64 %10, i64* %4, align 8, !dbg !332
  call void @llvm.dbg.declare(metadata i32* %5, metadata !336, metadata !DIExpression()), !dbg !337
  %11 = load i64, i64* %4, align 8, !dbg !338
  %12 = call i32 @posix_memalign(i8** %3, i64 4096, i64 %11) #7, !dbg !339
  store i32 %12, i32* %5, align 4, !dbg !337
  %13 = load i8*, i8** %3, align 8, !dbg !340
  %14 = icmp eq i8* %13, null, !dbg !340
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %or.cond = select i1 %14, i1 true, i1 %16, !dbg !342
  br i1 %or.cond, label %17, label %20, !dbg !342

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !343
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3.13, i64 0, i64 0)), !dbg !345
  call void @exit(i32 1) #8, !dbg !346
  unreachable, !dbg !346

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8, !dbg !347
  ret i8* %21, !dbg !348
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
!28 = !DIFile(filename: "stencils/jacobi-1d/jacobi-1d.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!29 = !{!30, !8, !7}
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
!42 = distinct !DISubprogram(name: "main", scope: !43, file: !43, line: 84, type: !44, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !4)
!43 = !DIFile(filename: "./stencils/jacobi-1d/jacobi-1d.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!44 = !DISubroutineType(types: !45)
!45 = !{!26, !26, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DILocalVariable(name: "argc", arg: 1, scope: !42, file: !43, line: 84, type: !26)
!50 = !DILocation(line: 84, column: 14, scope: !42)
!51 = !DILocalVariable(name: "argv", arg: 2, scope: !42, file: !43, line: 84, type: !46)
!52 = !DILocation(line: 84, column: 27, scope: !42)
!53 = !DILocalVariable(name: "n", scope: !42, file: !43, line: 87, type: !26)
!54 = !DILocation(line: 87, column: 7, scope: !42)
!55 = !DILocalVariable(name: "tsteps", scope: !42, file: !43, line: 88, type: !26)
!56 = !DILocation(line: 88, column: 7, scope: !42)
!57 = !DILocalVariable(name: "A", scope: !42, file: !43, line: 91, type: !30)
!58 = !DILocation(line: 91, column: 3, scope: !42)
!59 = !DILocalVariable(name: "B", scope: !42, file: !43, line: 92, type: !30)
!60 = !DILocation(line: 92, column: 3, scope: !42)
!61 = !DILocation(line: 96, column: 15, scope: !42)
!62 = !DILocation(line: 96, column: 18, scope: !42)
!63 = !DILocation(line: 96, column: 38, scope: !42)
!64 = !DILocation(line: 96, column: 3, scope: !42)
!65 = !DILocation(line: 102, column: 20, scope: !42)
!66 = !DILocation(line: 102, column: 28, scope: !42)
!67 = !DILocation(line: 102, column: 31, scope: !42)
!68 = !DILocation(line: 102, column: 51, scope: !42)
!69 = !DILocation(line: 102, column: 3, scope: !42)
!70 = !DILocation(line: 110, column: 3, scope: !71)
!71 = distinct !DILexicalBlock(scope: !42, file: !43, line: 110, column: 3)
!72 = !DILocation(line: 110, column: 3, scope: !42)
!73 = !DILocation(line: 113, column: 3, scope: !42)
!74 = !DILocation(line: 114, column: 3, scope: !42)
!75 = !DILocation(line: 116, column: 3, scope: !42)
!76 = distinct !DISubprogram(name: "init_array", scope: !43, file: !43, line: 26, type: !77, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !26, !6, !6}
!79 = !DILocalVariable(name: "n", arg: 1, scope: !76, file: !43, line: 26, type: !26)
!80 = !DILocation(line: 26, column: 22, scope: !76)
!81 = !DILocalVariable(name: "A", arg: 2, scope: !76, file: !43, line: 27, type: !6)
!82 = !DILocation(line: 27, column: 14, scope: !76)
!83 = !DILocalVariable(name: "B", arg: 3, scope: !76, file: !43, line: 28, type: !6)
!84 = !DILocation(line: 28, column: 14, scope: !76)
!85 = !DILocalVariable(name: "i", scope: !76, file: !43, line: 30, type: !26)
!86 = !DILocation(line: 30, column: 7, scope: !76)
!87 = !DILocation(line: 32, column: 10, scope: !88)
!88 = distinct !DILexicalBlock(scope: !76, file: !43, line: 32, column: 3)
!89 = !DILocation(line: 32, column: 8, scope: !88)
!90 = !DILocation(line: 32, column: 15, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !43, line: 32, column: 3)
!92 = !DILocation(line: 32, column: 19, scope: !91)
!93 = !DILocation(line: 32, column: 17, scope: !91)
!94 = !DILocation(line: 32, column: 3, scope: !88)
!95 = !DILocation(line: 34, column: 22, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !43, line: 33, column: 7)
!97 = !DILocation(line: 34, column: 10, scope: !96)
!98 = !DILocation(line: 34, column: 23, scope: !96)
!99 = !DILocation(line: 34, column: 30, scope: !96)
!100 = !DILocation(line: 34, column: 28, scope: !96)
!101 = !DILocation(line: 34, column: 2, scope: !96)
!102 = !DILocation(line: 34, column: 4, scope: !96)
!103 = !DILocation(line: 34, column: 7, scope: !96)
!104 = !DILocation(line: 35, column: 22, scope: !96)
!105 = !DILocation(line: 35, column: 10, scope: !96)
!106 = !DILocation(line: 35, column: 23, scope: !96)
!107 = !DILocation(line: 35, column: 30, scope: !96)
!108 = !DILocation(line: 35, column: 28, scope: !96)
!109 = !DILocation(line: 35, column: 2, scope: !96)
!110 = !DILocation(line: 35, column: 4, scope: !96)
!111 = !DILocation(line: 35, column: 7, scope: !96)
!112 = !DILocation(line: 32, column: 23, scope: !91)
!113 = !DILocation(line: 32, column: 3, scope: !91)
!114 = distinct !{!114, !94, !115, !116}
!115 = !DILocation(line: 36, column: 7, scope: !88)
!116 = !{!"llvm.loop.mustprogress"}
!117 = !DILocation(line: 37, column: 1, scope: !76)
!118 = distinct !DISubprogram(name: "kernel_jacobi_1d", scope: !43, file: !43, line: 64, type: !119, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !26, !26, !6, !6}
!121 = !DILocalVariable(name: "tsteps", arg: 1, scope: !118, file: !43, line: 64, type: !26)
!122 = !DILocation(line: 64, column: 27, scope: !118)
!123 = !DILocalVariable(name: "n", arg: 2, scope: !118, file: !43, line: 65, type: !26)
!124 = !DILocation(line: 65, column: 12, scope: !118)
!125 = !DILocalVariable(name: "A", arg: 3, scope: !118, file: !43, line: 66, type: !6)
!126 = !DILocation(line: 66, column: 18, scope: !118)
!127 = !DILocalVariable(name: "B", arg: 4, scope: !118, file: !43, line: 67, type: !6)
!128 = !DILocation(line: 67, column: 18, scope: !118)
!129 = !DILocalVariable(name: "t", scope: !118, file: !43, line: 69, type: !26)
!130 = !DILocation(line: 69, column: 7, scope: !118)
!131 = !DILocalVariable(name: "i", scope: !118, file: !43, line: 69, type: !26)
!132 = !DILocation(line: 69, column: 10, scope: !118)
!133 = !DILocation(line: 72, column: 10, scope: !134)
!134 = distinct !DILexicalBlock(scope: !118, file: !43, line: 72, column: 3)
!135 = !DILocation(line: 72, column: 8, scope: !134)
!136 = !DILocation(line: 72, column: 15, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !43, line: 72, column: 3)
!138 = !DILocation(line: 72, column: 19, scope: !137)
!139 = !DILocation(line: 72, column: 17, scope: !137)
!140 = !DILocation(line: 72, column: 3, scope: !134)
!141 = !DILocation(line: 74, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !43, line: 74, column: 7)
!143 = distinct !DILexicalBlock(scope: !137, file: !43, line: 73, column: 5)
!144 = !DILocation(line: 74, column: 12, scope: !142)
!145 = !DILocation(line: 74, column: 19, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !43, line: 74, column: 7)
!147 = !DILocation(line: 74, column: 23, scope: !146)
!148 = !DILocation(line: 74, column: 29, scope: !146)
!149 = !DILocation(line: 74, column: 21, scope: !146)
!150 = !DILocation(line: 74, column: 7, scope: !142)
!151 = !DILocation(line: 75, column: 20, scope: !146)
!152 = !DILocation(line: 75, column: 22, scope: !146)
!153 = !DILocation(line: 75, column: 23, scope: !146)
!154 = !DILocation(line: 75, column: 29, scope: !146)
!155 = !DILocation(line: 75, column: 31, scope: !146)
!156 = !DILocation(line: 75, column: 27, scope: !146)
!157 = !DILocation(line: 75, column: 36, scope: !146)
!158 = !DILocation(line: 75, column: 38, scope: !146)
!159 = !DILocation(line: 75, column: 40, scope: !146)
!160 = !DILocation(line: 75, column: 34, scope: !146)
!161 = !DILocation(line: 75, column: 17, scope: !146)
!162 = !DILocation(line: 75, column: 2, scope: !146)
!163 = !DILocation(line: 75, column: 4, scope: !146)
!164 = !DILocation(line: 75, column: 7, scope: !146)
!165 = !DILocation(line: 74, column: 35, scope: !146)
!166 = !DILocation(line: 74, column: 7, scope: !146)
!167 = distinct !{!167, !150, !168, !116}
!168 = !DILocation(line: 75, column: 44, scope: !142)
!169 = !DILocation(line: 76, column: 14, scope: !170)
!170 = distinct !DILexicalBlock(scope: !143, file: !43, line: 76, column: 7)
!171 = !DILocation(line: 76, column: 12, scope: !170)
!172 = !DILocation(line: 76, column: 19, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !43, line: 76, column: 7)
!174 = !DILocation(line: 76, column: 23, scope: !173)
!175 = !DILocation(line: 76, column: 29, scope: !173)
!176 = !DILocation(line: 76, column: 21, scope: !173)
!177 = !DILocation(line: 76, column: 7, scope: !170)
!178 = !DILocation(line: 77, column: 20, scope: !173)
!179 = !DILocation(line: 77, column: 22, scope: !173)
!180 = !DILocation(line: 77, column: 23, scope: !173)
!181 = !DILocation(line: 77, column: 29, scope: !173)
!182 = !DILocation(line: 77, column: 31, scope: !173)
!183 = !DILocation(line: 77, column: 27, scope: !173)
!184 = !DILocation(line: 77, column: 36, scope: !173)
!185 = !DILocation(line: 77, column: 38, scope: !173)
!186 = !DILocation(line: 77, column: 40, scope: !173)
!187 = !DILocation(line: 77, column: 34, scope: !173)
!188 = !DILocation(line: 77, column: 17, scope: !173)
!189 = !DILocation(line: 77, column: 2, scope: !173)
!190 = !DILocation(line: 77, column: 4, scope: !173)
!191 = !DILocation(line: 77, column: 7, scope: !173)
!192 = !DILocation(line: 76, column: 35, scope: !173)
!193 = !DILocation(line: 76, column: 7, scope: !173)
!194 = distinct !{!194, !177, !195, !116}
!195 = !DILocation(line: 77, column: 44, scope: !170)
!196 = !DILocation(line: 72, column: 32, scope: !137)
!197 = !DILocation(line: 72, column: 3, scope: !137)
!198 = distinct !{!198, !140, !199, !116}
!199 = !DILocation(line: 78, column: 5, scope: !134)
!200 = !DILocation(line: 81, column: 1, scope: !118)
!201 = distinct !DISubprogram(name: "print_array", scope: !43, file: !43, line: 43, type: !202, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !26, !6}
!204 = !DILocalVariable(name: "n", arg: 1, scope: !201, file: !43, line: 43, type: !26)
!205 = !DILocation(line: 43, column: 22, scope: !201)
!206 = !DILocalVariable(name: "A", arg: 2, scope: !201, file: !43, line: 44, type: !6)
!207 = !DILocation(line: 44, column: 14, scope: !201)
!208 = !DILocalVariable(name: "i", scope: !201, file: !43, line: 47, type: !26)
!209 = !DILocation(line: 47, column: 7, scope: !201)
!210 = !DILocation(line: 49, column: 3, scope: !201)
!211 = !DILocation(line: 50, column: 3, scope: !201)
!212 = !DILocation(line: 51, column: 10, scope: !213)
!213 = distinct !DILexicalBlock(scope: !201, file: !43, line: 51, column: 3)
!214 = !DILocation(line: 51, column: 8, scope: !213)
!215 = !DILocation(line: 51, column: 15, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !43, line: 51, column: 3)
!217 = !DILocation(line: 51, column: 19, scope: !216)
!218 = !DILocation(line: 51, column: 17, scope: !216)
!219 = !DILocation(line: 51, column: 3, scope: !213)
!220 = !DILocation(line: 53, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !43, line: 53, column: 11)
!222 = distinct !DILexicalBlock(scope: !216, file: !43, line: 52, column: 5)
!223 = !DILocation(line: 53, column: 13, scope: !221)
!224 = !DILocation(line: 53, column: 18, scope: !221)
!225 = !DILocation(line: 53, column: 11, scope: !222)
!226 = !DILocation(line: 53, column: 32, scope: !221)
!227 = !DILocation(line: 53, column: 24, scope: !221)
!228 = !DILocation(line: 54, column: 15, scope: !222)
!229 = !DILocation(line: 54, column: 60, scope: !222)
!230 = !DILocation(line: 54, column: 62, scope: !222)
!231 = !DILocation(line: 54, column: 7, scope: !222)
!232 = !DILocation(line: 51, column: 23, scope: !216)
!233 = !DILocation(line: 51, column: 3, scope: !216)
!234 = distinct !{!234, !219, !235, !116}
!235 = !DILocation(line: 55, column: 5, scope: !213)
!236 = !DILocation(line: 56, column: 3, scope: !201)
!237 = !DILocation(line: 57, column: 3, scope: !201)
!238 = !DILocation(line: 58, column: 1, scope: !201)
!239 = distinct !DISubprogram(name: "polybench_flush_cache", scope: !3, file: !3, line: 112, type: !240, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!240 = !DISubroutineType(types: !241)
!241 = !{null}
!242 = !DILocalVariable(name: "cs", scope: !239, file: !3, line: 114, type: !26)
!243 = !DILocation(line: 114, column: 7, scope: !239)
!244 = !DILocalVariable(name: "flush", scope: !239, file: !3, line: 115, type: !6)
!245 = !DILocation(line: 115, column: 11, scope: !239)
!246 = !DILocation(line: 115, column: 37, scope: !239)
!247 = !DILocation(line: 115, column: 29, scope: !239)
!248 = !DILocation(line: 115, column: 19, scope: !239)
!249 = !DILocalVariable(name: "i", scope: !239, file: !3, line: 116, type: !26)
!250 = !DILocation(line: 116, column: 7, scope: !239)
!251 = !DILocalVariable(name: "tmp", scope: !239, file: !3, line: 117, type: !7)
!252 = !DILocation(line: 117, column: 10, scope: !239)
!253 = !DILocation(line: 121, column: 10, scope: !254)
!254 = distinct !DILexicalBlock(scope: !239, file: !3, line: 121, column: 3)
!255 = !DILocation(line: 121, column: 8, scope: !254)
!256 = !DILocation(line: 121, column: 15, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !3, line: 121, column: 3)
!258 = !DILocation(line: 121, column: 19, scope: !257)
!259 = !DILocation(line: 121, column: 17, scope: !257)
!260 = !DILocation(line: 121, column: 3, scope: !254)
!261 = !DILocation(line: 122, column: 12, scope: !257)
!262 = !DILocation(line: 122, column: 18, scope: !257)
!263 = !DILocation(line: 122, column: 9, scope: !257)
!264 = !DILocation(line: 121, column: 24, scope: !257)
!265 = !DILocation(line: 121, column: 3, scope: !257)
!266 = distinct !{!266, !260, !267, !116}
!267 = !DILocation(line: 122, column: 19, scope: !254)
!268 = !DILocation(line: 123, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 123, column: 3)
!270 = distinct !DILexicalBlock(scope: !239, file: !3, line: 123, column: 3)
!271 = !DILocation(line: 123, column: 3, scope: !270)
!272 = !DILocation(line: 124, column: 9, scope: !239)
!273 = !DILocation(line: 124, column: 3, scope: !239)
!274 = !DILocation(line: 125, column: 1, scope: !239)
!275 = distinct !DISubprogram(name: "polybench_prepare_instruments", scope: !3, file: !3, line: 353, type: !240, scopeLine: 354, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!276 = !DILocation(line: 356, column: 3, scope: !275)
!277 = !DILocation(line: 361, column: 1, scope: !275)
!278 = distinct !DISubprogram(name: "polybench_timer_start", scope: !3, file: !3, line: 364, type: !240, scopeLine: 365, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!279 = !DILocation(line: 366, column: 3, scope: !278)
!280 = !DILocation(line: 368, column: 23, scope: !278)
!281 = !DILocation(line: 368, column: 21, scope: !278)
!282 = !DILocation(line: 372, column: 1, scope: !278)
!283 = distinct !DISubprogram(name: "rtclock", scope: !3, file: !3, line: 83, type: !284, scopeLine: 84, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!284 = !DISubroutineType(types: !285)
!285 = !{!7}
!286 = !DILocation(line: 93, column: 5, scope: !283)
!287 = distinct !DISubprogram(name: "polybench_timer_stop", scope: !3, file: !3, line: 375, type: !240, scopeLine: 376, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!288 = !DILocation(line: 378, column: 21, scope: !287)
!289 = !DILocation(line: 378, column: 19, scope: !287)
!290 = !DILocation(line: 385, column: 1, scope: !287)
!291 = distinct !DISubprogram(name: "polybench_timer_print", scope: !3, file: !3, line: 388, type: !240, scopeLine: 389, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!292 = !DILocation(line: 402, column: 26, scope: !291)
!293 = !DILocation(line: 402, column: 44, scope: !291)
!294 = !DILocation(line: 402, column: 42, scope: !291)
!295 = !DILocation(line: 402, column: 7, scope: !291)
!296 = !DILocation(line: 407, column: 1, scope: !291)
!297 = distinct !DISubprogram(name: "polybench_free_data", scope: !3, file: !3, line: 547, type: !298, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !8}
!300 = !DILocalVariable(name: "ptr", arg: 1, scope: !297, file: !3, line: 547, type: !8)
!301 = !DILocation(line: 547, column: 32, scope: !297)
!302 = !DILocation(line: 552, column: 9, scope: !297)
!303 = !DILocation(line: 552, column: 3, scope: !297)
!304 = !DILocation(line: 554, column: 1, scope: !297)
!305 = distinct !DISubprogram(name: "polybench_alloc_data", scope: !3, file: !3, line: 557, type: !306, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!306 = !DISubroutineType(types: !307)
!307 = !{!8, !18, !26}
!308 = !DILocalVariable(name: "n", arg: 1, scope: !305, file: !3, line: 557, type: !18)
!309 = !DILocation(line: 557, column: 51, scope: !305)
!310 = !DILocalVariable(name: "elt_size", arg: 2, scope: !305, file: !3, line: 557, type: !26)
!311 = !DILocation(line: 557, column: 58, scope: !305)
!312 = !DILocalVariable(name: "val", scope: !305, file: !3, line: 564, type: !23)
!313 = !DILocation(line: 564, column: 10, scope: !305)
!314 = !DILocation(line: 564, column: 16, scope: !305)
!315 = !DILocation(line: 565, column: 10, scope: !305)
!316 = !DILocation(line: 565, column: 7, scope: !305)
!317 = !DILocalVariable(name: "ret", scope: !305, file: !3, line: 566, type: !8)
!318 = !DILocation(line: 566, column: 9, scope: !305)
!319 = !DILocation(line: 566, column: 24, scope: !305)
!320 = !DILocation(line: 566, column: 15, scope: !305)
!321 = !DILocation(line: 568, column: 10, scope: !305)
!322 = !DILocation(line: 568, column: 3, scope: !305)
!323 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 517, type: !324, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!324 = !DISubroutineType(types: !325)
!325 = !{!8, !23}
!326 = !DILocalVariable(name: "alloc_sz", arg: 1, scope: !323, file: !3, line: 517, type: !23)
!327 = !DILocation(line: 517, column: 16, scope: !323)
!328 = !DILocalVariable(name: "ret", scope: !323, file: !3, line: 519, type: !8)
!329 = !DILocation(line: 519, column: 9, scope: !323)
!330 = !DILocation(line: 521, column: 36, scope: !323)
!331 = !DILocalVariable(name: "padded_sz", scope: !323, file: !3, line: 522, type: !23)
!332 = !DILocation(line: 522, column: 10, scope: !323)
!333 = !DILocation(line: 522, column: 22, scope: !323)
!334 = !DILocation(line: 522, column: 33, scope: !323)
!335 = !DILocation(line: 522, column: 31, scope: !323)
!336 = !DILocalVariable(name: "err", scope: !323, file: !3, line: 523, type: !26)
!337 = !DILocation(line: 523, column: 7, scope: !323)
!338 = !DILocation(line: 523, column: 41, scope: !323)
!339 = !DILocation(line: 523, column: 13, scope: !323)
!340 = !DILocation(line: 524, column: 9, scope: !341)
!341 = distinct !DILexicalBlock(scope: !323, file: !3, line: 524, column: 7)
!342 = !DILocation(line: 524, column: 13, scope: !341)
!343 = !DILocation(line: 526, column: 16, scope: !344)
!344 = distinct !DILexicalBlock(scope: !341, file: !3, line: 525, column: 5)
!345 = !DILocation(line: 526, column: 7, scope: !344)
!346 = !DILocation(line: 527, column: 7, scope: !344)
!347 = !DILocation(line: 543, column: 10, scope: !323)
!348 = !DILocation(line: 543, column: 3, scope: !323)
