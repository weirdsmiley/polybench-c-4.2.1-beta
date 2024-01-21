; ModuleID = 'klee/trisolv.bc'
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
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
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
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !45 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2000 x [2000 x double]]*, align 8
  %8 = alloca [2000 x double]*, align 8
  %9 = alloca [2000 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !52, metadata !DIExpression()), !dbg !53
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %6, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 2000, i32* %6, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata [2000 x [2000 x double]]** %7, metadata !58, metadata !DIExpression()), !dbg !59
  %10 = call i8* @polybench_alloc_data(i64 4000000, i32 8), !dbg !59
  %11 = bitcast i8* %10 to [2000 x [2000 x double]]*, !dbg !59
  store [2000 x [2000 x double]]* %11, [2000 x [2000 x double]]** %7, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata [2000 x double]** %8, metadata !60, metadata !DIExpression()), !dbg !61
  %12 = call i8* @polybench_alloc_data(i64 2000, i32 8), !dbg !61
  %13 = bitcast i8* %12 to [2000 x double]*, !dbg !61
  store [2000 x double]* %13, [2000 x double]** %8, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata [2000 x double]** %9, metadata !62, metadata !DIExpression()), !dbg !63
  %14 = call i8* @polybench_alloc_data(i64 2000, i32 8), !dbg !63
  %15 = bitcast i8* %14 to [2000 x double]*, !dbg !63
  store [2000 x double]* %15, [2000 x double]** %9, align 8, !dbg !63
  %16 = load i32, i32* %6, align 4, !dbg !64
  %17 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %7, align 8, !dbg !65
  %18 = getelementptr inbounds [2000 x [2000 x double]], [2000 x [2000 x double]]* %17, i64 0, i64 0, !dbg !65
  %19 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !66
  %20 = getelementptr inbounds [2000 x double], [2000 x double]* %19, i64 0, i64 0, !dbg !66
  %21 = load [2000 x double]*, [2000 x double]** %9, align 8, !dbg !67
  %22 = getelementptr inbounds [2000 x double], [2000 x double]* %21, i64 0, i64 0, !dbg !67
  call void @init_array(i32 %16, [2000 x double]* %18, double* %20, double* %22), !dbg !68
  %23 = load i32, i32* %6, align 4, !dbg !69
  %24 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %7, align 8, !dbg !70
  %25 = getelementptr inbounds [2000 x [2000 x double]], [2000 x [2000 x double]]* %24, i64 0, i64 0, !dbg !70
  %26 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !71
  %27 = getelementptr inbounds [2000 x double], [2000 x double]* %26, i64 0, i64 0, !dbg !71
  %28 = load [2000 x double]*, [2000 x double]** %9, align 8, !dbg !72
  %29 = getelementptr inbounds [2000 x double], [2000 x double]* %28, i64 0, i64 0, !dbg !72
  call void @kernel_trisolv(i32 %23, [2000 x double]* %25, double* %27, double* %29), !dbg !73
  %30 = load i32, i32* %4, align 4, !dbg !74
  %31 = icmp sgt i32 %30, 42, !dbg !74
  br i1 %31, label %32, label %42, !dbg !74

32:                                               ; preds = %2
  %33 = load i8**, i8*** %5, align 8, !dbg !74
  %34 = getelementptr inbounds i8*, i8** %33, i64 0, !dbg !74
  %35 = load i8*, i8** %34, align 8, !dbg !74
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6, !dbg !74
  %37 = icmp ne i32 %36, 0, !dbg !74
  br i1 %37, label %42, label %38, !dbg !76

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4, !dbg !74
  %40 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !74
  %41 = getelementptr inbounds [2000 x double], [2000 x double]* %40, i64 0, i64 0, !dbg !74
  call void @print_array(i32 %39, double* %41), !dbg !74
  br label %42, !dbg !74

42:                                               ; preds = %38, %32, %2
  %43 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %7, align 8, !dbg !77
  %44 = bitcast [2000 x [2000 x double]]* %43 to i8*, !dbg !77
  call void @free(i8* %44) #7, !dbg !77
  %45 = load [2000 x double]*, [2000 x double]** %8, align 8, !dbg !78
  %46 = bitcast [2000 x double]* %45 to i8*, !dbg !78
  call void @free(i8* %46) #7, !dbg !78
  %47 = load [2000 x double]*, [2000 x double]** %9, align 8, !dbg !79
  %48 = bitcast [2000 x double]* %47 to i8*, !dbg !79
  call void @free(i8* %48) #7, !dbg !79
  ret i32 0, !dbg !80
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @init_array(i32 %0, [2000 x double]* %1, double* %2, double* %3) #0 !dbg !81 {
  %5 = alloca i32, align 4
  %6 = alloca [2000 x double]*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !84, metadata !DIExpression()), !dbg !85
  store [2000 x double]* %1, [2000 x double]** %6, align 8
  call void @llvm.dbg.declare(metadata [2000 x double]** %6, metadata !86, metadata !DIExpression()), !dbg !87
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !88, metadata !DIExpression()), !dbg !89
  store double* %3, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %9, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %10, metadata !94, metadata !DIExpression()), !dbg !95
  store i32 0, i32* %9, align 4, !dbg !96
  br label %11, !dbg !98

11:                                               ; preds = %51, %4
  %12 = load i32, i32* %9, align 4, !dbg !99
  %13 = load i32, i32* %5, align 4, !dbg !101
  %14 = icmp slt i32 %12, %13, !dbg !102
  br i1 %14, label %15, label %54, !dbg !103

15:                                               ; preds = %11
  %16 = load double*, double** %7, align 8, !dbg !104
  %17 = load i32, i32* %9, align 4, !dbg !106
  %18 = sext i32 %17 to i64, !dbg !104
  %19 = getelementptr inbounds double, double* %16, i64 %18, !dbg !104
  store double -9.990000e+02, double* %19, align 8, !dbg !107
  %20 = load i32, i32* %9, align 4, !dbg !108
  %21 = sitofp i32 %20 to double, !dbg !108
  %22 = load double*, double** %8, align 8, !dbg !109
  %23 = load i32, i32* %9, align 4, !dbg !110
  %24 = sext i32 %23 to i64, !dbg !109
  %25 = getelementptr inbounds double, double* %22, i64 %24, !dbg !109
  store double %21, double* %25, align 8, !dbg !111
  store i32 0, i32* %10, align 4, !dbg !112
  br label %26, !dbg !114

26:                                               ; preds = %30, %15
  %27 = load i32, i32* %10, align 4, !dbg !115
  %28 = load i32, i32* %9, align 4, !dbg !117
  %29 = icmp sle i32 %27, %28, !dbg !118
  br i1 %29, label %30, label %51, !dbg !119

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4, !dbg !120
  %32 = load i32, i32* %5, align 4, !dbg !121
  %33 = add nsw i32 %31, %32, !dbg !122
  %34 = load i32, i32* %10, align 4, !dbg !123
  %35 = sub nsw i32 %33, %34, !dbg !124
  %36 = add nsw i32 %35, 1, !dbg !125
  %37 = sitofp i32 %36 to double, !dbg !126
  %38 = fmul double %37, 2.000000e+00, !dbg !127
  %39 = load i32, i32* %5, align 4, !dbg !128
  %40 = sitofp i32 %39 to double, !dbg !128
  %41 = fdiv double %38, %40, !dbg !129
  %42 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !130
  %43 = load i32, i32* %9, align 4, !dbg !131
  %44 = sext i32 %43 to i64, !dbg !130
  %45 = getelementptr inbounds [2000 x double], [2000 x double]* %42, i64 %44, !dbg !130
  %46 = load i32, i32* %10, align 4, !dbg !132
  %47 = sext i32 %46 to i64, !dbg !130
  %48 = getelementptr inbounds [2000 x double], [2000 x double]* %45, i64 0, i64 %47, !dbg !130
  store double %41, double* %48, align 8, !dbg !133
  %49 = load i32, i32* %10, align 4, !dbg !134
  %50 = add nsw i32 %49, 1, !dbg !134
  store i32 %50, i32* %10, align 4, !dbg !134
  br label %26, !dbg !135, !llvm.loop !136

51:                                               ; preds = %26
  %52 = load i32, i32* %9, align 4, !dbg !139
  %53 = add nsw i32 %52, 1, !dbg !139
  store i32 %53, i32* %9, align 4, !dbg !139
  br label %11, !dbg !140, !llvm.loop !141

54:                                               ; preds = %11
  ret void, !dbg !143
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @kernel_trisolv(i32 %0, [2000 x double]* %1, double* %2, double* %3) #0 !dbg !144 {
  %5 = alloca i32, align 4
  %6 = alloca [2000 x double]*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !145, metadata !DIExpression()), !dbg !146
  store [2000 x double]* %1, [2000 x double]** %6, align 8
  call void @llvm.dbg.declare(metadata [2000 x double]** %6, metadata !147, metadata !DIExpression()), !dbg !148
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !149, metadata !DIExpression()), !dbg !150
  store double* %3, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %9, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %10, metadata !155, metadata !DIExpression()), !dbg !156
  store i32 0, i32* %9, align 4, !dbg !157
  br label %11, !dbg !159

11:                                               ; preds = %52, %4
  %12 = load i32, i32* %9, align 4, !dbg !160
  %13 = load i32, i32* %5, align 4, !dbg !162
  %14 = icmp slt i32 %12, %13, !dbg !163
  br i1 %14, label %15, label %73, !dbg !164

15:                                               ; preds = %11
  %16 = load double*, double** %8, align 8, !dbg !165
  %17 = load i32, i32* %9, align 4, !dbg !167
  %18 = sext i32 %17 to i64, !dbg !165
  %19 = getelementptr inbounds double, double* %16, i64 %18, !dbg !165
  %20 = load double, double* %19, align 8, !dbg !165
  %21 = load double*, double** %7, align 8, !dbg !168
  %22 = load i32, i32* %9, align 4, !dbg !169
  %23 = sext i32 %22 to i64, !dbg !168
  %24 = getelementptr inbounds double, double* %21, i64 %23, !dbg !168
  store double %20, double* %24, align 8, !dbg !170
  store i32 0, i32* %10, align 4, !dbg !171
  br label %25, !dbg !173

25:                                               ; preds = %29, %15
  %26 = load i32, i32* %10, align 4, !dbg !174
  %27 = load i32, i32* %9, align 4, !dbg !176
  %28 = icmp slt i32 %26, %27, !dbg !177
  br i1 %28, label %29, label %52, !dbg !178

29:                                               ; preds = %25
  %30 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !179
  %31 = load i32, i32* %9, align 4, !dbg !180
  %32 = sext i32 %31 to i64, !dbg !179
  %33 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %32, !dbg !179
  %34 = load i32, i32* %10, align 4, !dbg !181
  %35 = sext i32 %34 to i64, !dbg !179
  %36 = getelementptr inbounds [2000 x double], [2000 x double]* %33, i64 0, i64 %35, !dbg !179
  %37 = load double, double* %36, align 8, !dbg !179
  %38 = load double*, double** %7, align 8, !dbg !182
  %39 = load i32, i32* %10, align 4, !dbg !183
  %40 = sext i32 %39 to i64, !dbg !182
  %41 = getelementptr inbounds double, double* %38, i64 %40, !dbg !182
  %42 = load double, double* %41, align 8, !dbg !182
  %43 = fmul double %37, %42, !dbg !184
  %44 = load double*, double** %7, align 8, !dbg !185
  %45 = load i32, i32* %9, align 4, !dbg !186
  %46 = sext i32 %45 to i64, !dbg !185
  %47 = getelementptr inbounds double, double* %44, i64 %46, !dbg !185
  %48 = load double, double* %47, align 8, !dbg !187
  %49 = fsub double %48, %43, !dbg !187
  store double %49, double* %47, align 8, !dbg !187
  %50 = load i32, i32* %10, align 4, !dbg !188
  %51 = add nsw i32 %50, 1, !dbg !188
  store i32 %51, i32* %10, align 4, !dbg !188
  br label %25, !dbg !189, !llvm.loop !190

52:                                               ; preds = %25
  %53 = load double*, double** %7, align 8, !dbg !192
  %54 = load i32, i32* %9, align 4, !dbg !193
  %55 = sext i32 %54 to i64, !dbg !192
  %56 = getelementptr inbounds double, double* %53, i64 %55, !dbg !192
  %57 = load double, double* %56, align 8, !dbg !192
  %58 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !194
  %59 = load i32, i32* %9, align 4, !dbg !195
  %60 = sext i32 %59 to i64, !dbg !194
  %61 = getelementptr inbounds [2000 x double], [2000 x double]* %58, i64 %60, !dbg !194
  %62 = load i32, i32* %9, align 4, !dbg !196
  %63 = sext i32 %62 to i64, !dbg !194
  %64 = getelementptr inbounds [2000 x double], [2000 x double]* %61, i64 0, i64 %63, !dbg !194
  %65 = load double, double* %64, align 8, !dbg !194
  %66 = fdiv double %57, %65, !dbg !197
  %67 = load double*, double** %7, align 8, !dbg !198
  %68 = load i32, i32* %9, align 4, !dbg !199
  %69 = sext i32 %68 to i64, !dbg !198
  %70 = getelementptr inbounds double, double* %67, i64 %69, !dbg !198
  store double %66, double* %70, align 8, !dbg !200
  %71 = load i32, i32* %9, align 4, !dbg !201
  %72 = add nsw i32 %71, 1, !dbg !201
  store i32 %72, i32* %9, align 4, !dbg !201
  br label %11, !dbg !202, !llvm.loop !203

73:                                               ; preds = %11
  ret void, !dbg !205
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @print_array(i32 %0, double* %1) #0 !dbg !206 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !209, metadata !DIExpression()), !dbg !210
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %5, metadata !213, metadata !DIExpression()), !dbg !214
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !215
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)), !dbg !215
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !216
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !216
  store i32 0, i32* %5, align 4, !dbg !217
  br label %10, !dbg !219

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %5, align 4, !dbg !220
  %12 = load i32, i32* %3, align 4, !dbg !222
  %13 = icmp slt i32 %11, %12, !dbg !223
  br i1 %13, label %14, label %31, !dbg !224

14:                                               ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !225
  %16 = load double*, double** %4, align 8, !dbg !227
  %17 = load i32, i32* %5, align 4, !dbg !228
  %18 = sext i32 %17 to i64, !dbg !227
  %19 = getelementptr inbounds double, double* %16, i64 %18, !dbg !227
  %20 = load double, double* %19, align 8, !dbg !227
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %20), !dbg !229
  %22 = load i32, i32* %5, align 4, !dbg !230
  %23 = srem i32 %22, 20, !dbg !232
  %24 = icmp eq i32 %23, 0, !dbg !233
  br i1 %24, label %25, label %28, !dbg !234

25:                                               ; preds = %14
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !235
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !236
  br label %28, !dbg !236

28:                                               ; preds = %14, %25
  %29 = load i32, i32* %5, align 4, !dbg !237
  %30 = add nsw i32 %29, 1, !dbg !237
  store i32 %30, i32* %5, align 4, !dbg !237
  br label %10, !dbg !238, !llvm.loop !239

31:                                               ; preds = %10
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !241
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !241
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !242
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_flush_cache() #0 !dbg !244 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 4194560, i32* %1, align 4, !dbg !248
  call void @llvm.dbg.declare(metadata double** %2, metadata !249, metadata !DIExpression()), !dbg !250
  %5 = load i32, i32* %1, align 4, !dbg !251
  %6 = sext i32 %5 to i64, !dbg !251
  %7 = call noalias align 16 i8* @calloc(i64 %6, i64 8) #7, !dbg !252
  %8 = bitcast i8* %7 to double*, !dbg !253
  store double* %8, double** %2, align 8, !dbg !250
  call void @llvm.dbg.declare(metadata i32* %3, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata double* %4, metadata !256, metadata !DIExpression()), !dbg !257
  store double 0.000000e+00, double* %4, align 8, !dbg !257
  store i32 0, i32* %3, align 4, !dbg !258
  br label %9, !dbg !260

9:                                                ; preds = %13, %0
  %10 = load i32, i32* %3, align 4, !dbg !261
  %11 = load i32, i32* %1, align 4, !dbg !263
  %12 = icmp slt i32 %10, %11, !dbg !264
  br i1 %12, label %13, label %23, !dbg !265

13:                                               ; preds = %9
  %14 = load double*, double** %2, align 8, !dbg !266
  %15 = load i32, i32* %3, align 4, !dbg !267
  %16 = sext i32 %15 to i64, !dbg !266
  %17 = getelementptr inbounds double, double* %14, i64 %16, !dbg !266
  %18 = load double, double* %17, align 8, !dbg !266
  %19 = load double, double* %4, align 8, !dbg !268
  %20 = fadd double %19, %18, !dbg !268
  store double %20, double* %4, align 8, !dbg !268
  %21 = load i32, i32* %3, align 4, !dbg !269
  %22 = add nsw i32 %21, 1, !dbg !269
  store i32 %22, i32* %3, align 4, !dbg !269
  br label %9, !dbg !270, !llvm.loop !271

23:                                               ; preds = %9
  %24 = load double, double* %4, align 8, !dbg !273
  %25 = fcmp ole double %24, 1.000000e+01, !dbg !273
  br i1 %25, label %27, label %26, !dbg !276

26:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.9, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #8, !dbg !273
  unreachable, !dbg !273

27:                                               ; preds = %23
  %28 = load double*, double** %2, align 8, !dbg !277
  %29 = bitcast double* %28 to i8*, !dbg !277
  call void @free(i8* %29) #7, !dbg !278
  ret void, !dbg !279
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_prepare_instruments() #0 !dbg !280 {
  call void @polybench_flush_cache(), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_start() #0 !dbg !283 {
  call void @polybench_prepare_instruments(), !dbg !284
  %1 = call double @rtclock(), !dbg !285
  store double %1, double* @polybench_t_start, align 8, !dbg !286
  ret void, !dbg !287
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal double @rtclock() #0 !dbg !288 {
  ret double 0.000000e+00, !dbg !291
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_stop() #0 !dbg !292 {
  %1 = call double @rtclock(), !dbg !293
  store double %1, double* @polybench_t_end, align 8, !dbg !294
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_print() #0 !dbg !296 {
  %1 = load double, double* @polybench_t_end, align 8, !dbg !297
  %2 = load double, double* @polybench_t_start, align 8, !dbg !298
  %3 = fsub double %1, %2, !dbg !299
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.10, i64 0, i64 0), double %3), !dbg !300
  ret void, !dbg !301
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_free_data(i8* %0) #0 !dbg !302 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !305, metadata !DIExpression()), !dbg !306
  %3 = load i8*, i8** %2, align 8, !dbg !307
  call void @free(i8* %3) #7, !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @polybench_alloc_data(i64 %0, i32 %1) #0 !dbg !310 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !313, metadata !DIExpression()), !dbg !314
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata i64* %5, metadata !317, metadata !DIExpression()), !dbg !318
  %7 = load i64, i64* %3, align 8, !dbg !319
  store i64 %7, i64* %5, align 8, !dbg !318
  %8 = load i32, i32* %4, align 4, !dbg !320
  %9 = sext i32 %8 to i64, !dbg !320
  %10 = load i64, i64* %5, align 8, !dbg !321
  %11 = mul i64 %10, %9, !dbg !321
  store i64 %11, i64* %5, align 8, !dbg !321
  call void @llvm.dbg.declare(metadata i8** %6, metadata !322, metadata !DIExpression()), !dbg !323
  %12 = load i64, i64* %5, align 8, !dbg !324
  %13 = call i8* @xmalloc(i64 %12), !dbg !325
  store i8* %13, i8** %6, align 8, !dbg !323
  %14 = load i8*, i8** %6, align 8, !dbg !326
  ret i8* %14, !dbg !327
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i8* @xmalloc(i64 %0) #0 !dbg !328 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i8** %3, metadata !333, metadata !DIExpression()), !dbg !334
  store i8* null, i8** %3, align 8, !dbg !334
  %6 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !335
  %7 = add i64 %6, 0, !dbg !335
  store i64 %7, i64* @polybench_inter_array_padding_sz, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata i64* %4, metadata !336, metadata !DIExpression()), !dbg !337
  %8 = load i64, i64* %2, align 8, !dbg !338
  %9 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !339
  %10 = add i64 %8, %9, !dbg !340
  store i64 %10, i64* %4, align 8, !dbg !337
  call void @llvm.dbg.declare(metadata i32* %5, metadata !341, metadata !DIExpression()), !dbg !342
  %11 = load i64, i64* %4, align 8, !dbg !343
  %12 = call i32 @posix_memalign(i8** %3, i64 4096, i64 %11) #7, !dbg !344
  store i32 %12, i32* %5, align 4, !dbg !342
  %13 = load i8*, i8** %3, align 8, !dbg !345
  %14 = icmp eq i8* %13, null, !dbg !345
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %or.cond = select i1 %14, i1 true, i1 %16, !dbg !347
  br i1 %or.cond, label %17, label %20, !dbg !347

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !348
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3.13, i64 0, i64 0)), !dbg !350
  call void @exit(i32 1) #8, !dbg !351
  unreachable, !dbg !351

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8, !dbg !352
  ret i8* %21, !dbg !353
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
!llvm.ident = !{!37, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44}

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
!28 = !DIFile(filename: "linear-algebra/solvers/trisolv/trisolv.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!29 = !{!30, !34, !8, !7}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256000000, elements: !32)
!32 = !{!33, !33}
!33 = !DISubrange(count: 2000)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128000, elements: !36)
!36 = !{!33}
!37 = !{!"clang version 13.0.1"}
!38 = !{i32 7, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = distinct !DISubprogram(name: "main", scope: !46, file: !46, line: 86, type: !47, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !4)
!46 = !DIFile(filename: "./linear-algebra/solvers/trisolv/trisolv.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!47 = !DISubroutineType(types: !48)
!48 = !{!26, !26, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DILocalVariable(name: "argc", arg: 1, scope: !45, file: !46, line: 86, type: !26)
!53 = !DILocation(line: 86, column: 14, scope: !45)
!54 = !DILocalVariable(name: "argv", arg: 2, scope: !45, file: !46, line: 86, type: !49)
!55 = !DILocation(line: 86, column: 27, scope: !45)
!56 = !DILocalVariable(name: "n", scope: !45, file: !46, line: 89, type: !26)
!57 = !DILocation(line: 89, column: 7, scope: !45)
!58 = !DILocalVariable(name: "L", scope: !45, file: !46, line: 92, type: !30)
!59 = !DILocation(line: 92, column: 3, scope: !45)
!60 = !DILocalVariable(name: "x", scope: !45, file: !46, line: 93, type: !34)
!61 = !DILocation(line: 93, column: 3, scope: !45)
!62 = !DILocalVariable(name: "b", scope: !45, file: !46, line: 94, type: !34)
!63 = !DILocation(line: 94, column: 3, scope: !45)
!64 = !DILocation(line: 98, column: 15, scope: !45)
!65 = !DILocation(line: 98, column: 18, scope: !45)
!66 = !DILocation(line: 98, column: 38, scope: !45)
!67 = !DILocation(line: 98, column: 58, scope: !45)
!68 = !DILocation(line: 98, column: 3, scope: !45)
!69 = !DILocation(line: 104, column: 19, scope: !45)
!70 = !DILocation(line: 104, column: 22, scope: !45)
!71 = !DILocation(line: 104, column: 42, scope: !45)
!72 = !DILocation(line: 104, column: 62, scope: !45)
!73 = !DILocation(line: 104, column: 3, scope: !45)
!74 = !DILocation(line: 112, column: 3, scope: !75)
!75 = distinct !DILexicalBlock(scope: !45, file: !46, line: 112, column: 3)
!76 = !DILocation(line: 112, column: 3, scope: !45)
!77 = !DILocation(line: 115, column: 3, scope: !45)
!78 = !DILocation(line: 116, column: 3, scope: !45)
!79 = !DILocation(line: 117, column: 3, scope: !45)
!80 = !DILocation(line: 119, column: 3, scope: !45)
!81 = distinct !DISubprogram(name: "init_array", scope: !46, file: !46, line: 26, type: !82, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !26, !34, !6, !6}
!84 = !DILocalVariable(name: "n", arg: 1, scope: !81, file: !46, line: 26, type: !26)
!85 = !DILocation(line: 26, column: 21, scope: !81)
!86 = !DILocalVariable(name: "L", arg: 2, scope: !81, file: !46, line: 27, type: !34)
!87 = !DILocation(line: 27, column: 13, scope: !81)
!88 = !DILocalVariable(name: "x", arg: 3, scope: !81, file: !46, line: 28, type: !6)
!89 = !DILocation(line: 28, column: 13, scope: !81)
!90 = !DILocalVariable(name: "b", arg: 4, scope: !81, file: !46, line: 29, type: !6)
!91 = !DILocation(line: 29, column: 13, scope: !81)
!92 = !DILocalVariable(name: "i", scope: !81, file: !46, line: 31, type: !26)
!93 = !DILocation(line: 31, column: 7, scope: !81)
!94 = !DILocalVariable(name: "j", scope: !81, file: !46, line: 31, type: !26)
!95 = !DILocation(line: 31, column: 10, scope: !81)
!96 = !DILocation(line: 33, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !81, file: !46, line: 33, column: 3)
!98 = !DILocation(line: 33, column: 8, scope: !97)
!99 = !DILocation(line: 33, column: 15, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !46, line: 33, column: 3)
!101 = !DILocation(line: 33, column: 19, scope: !100)
!102 = !DILocation(line: 33, column: 17, scope: !100)
!103 = !DILocation(line: 33, column: 3, scope: !97)
!104 = !DILocation(line: 35, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !46, line: 34, column: 5)
!106 = !DILocation(line: 35, column: 9, scope: !105)
!107 = !DILocation(line: 35, column: 12, scope: !105)
!108 = !DILocation(line: 36, column: 15, scope: !105)
!109 = !DILocation(line: 36, column: 7, scope: !105)
!110 = !DILocation(line: 36, column: 9, scope: !105)
!111 = !DILocation(line: 36, column: 12, scope: !105)
!112 = !DILocation(line: 37, column: 14, scope: !113)
!113 = distinct !DILexicalBlock(scope: !105, file: !46, line: 37, column: 7)
!114 = !DILocation(line: 37, column: 12, scope: !113)
!115 = !DILocation(line: 37, column: 19, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !46, line: 37, column: 7)
!117 = !DILocation(line: 37, column: 24, scope: !116)
!118 = !DILocation(line: 37, column: 21, scope: !116)
!119 = !DILocation(line: 37, column: 7, scope: !113)
!120 = !DILocation(line: 38, column: 25, scope: !116)
!121 = !DILocation(line: 38, column: 27, scope: !116)
!122 = !DILocation(line: 38, column: 26, scope: !116)
!123 = !DILocation(line: 38, column: 29, scope: !116)
!124 = !DILocation(line: 38, column: 28, scope: !116)
!125 = !DILocation(line: 38, column: 30, scope: !116)
!126 = !DILocation(line: 38, column: 12, scope: !116)
!127 = !DILocation(line: 38, column: 33, scope: !116)
!128 = !DILocation(line: 38, column: 36, scope: !116)
!129 = !DILocation(line: 38, column: 35, scope: !116)
!130 = !DILocation(line: 38, column: 2, scope: !116)
!131 = !DILocation(line: 38, column: 4, scope: !116)
!132 = !DILocation(line: 38, column: 7, scope: !116)
!133 = !DILocation(line: 38, column: 10, scope: !116)
!134 = !DILocation(line: 37, column: 28, scope: !116)
!135 = !DILocation(line: 37, column: 7, scope: !116)
!136 = distinct !{!136, !119, !137, !138}
!137 = !DILocation(line: 38, column: 36, scope: !113)
!138 = !{!"llvm.loop.mustprogress"}
!139 = !DILocation(line: 33, column: 23, scope: !100)
!140 = !DILocation(line: 33, column: 3, scope: !100)
!141 = distinct !{!141, !103, !142, !138}
!142 = !DILocation(line: 39, column: 5, scope: !97)
!143 = !DILocation(line: 40, column: 1, scope: !81)
!144 = distinct !DISubprogram(name: "kernel_trisolv", scope: !46, file: !46, line: 66, type: !82, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!145 = !DILocalVariable(name: "n", arg: 1, scope: !144, file: !46, line: 66, type: !26)
!146 = !DILocation(line: 66, column: 25, scope: !144)
!147 = !DILocalVariable(name: "L", arg: 2, scope: !144, file: !46, line: 67, type: !34)
!148 = !DILocation(line: 67, column: 17, scope: !144)
!149 = !DILocalVariable(name: "x", arg: 3, scope: !144, file: !46, line: 68, type: !6)
!150 = !DILocation(line: 68, column: 17, scope: !144)
!151 = !DILocalVariable(name: "b", arg: 4, scope: !144, file: !46, line: 69, type: !6)
!152 = !DILocation(line: 69, column: 17, scope: !144)
!153 = !DILocalVariable(name: "i", scope: !144, file: !46, line: 71, type: !26)
!154 = !DILocation(line: 71, column: 7, scope: !144)
!155 = !DILocalVariable(name: "j", scope: !144, file: !46, line: 71, type: !26)
!156 = !DILocation(line: 71, column: 10, scope: !144)
!157 = !DILocation(line: 74, column: 10, scope: !158)
!158 = distinct !DILexicalBlock(scope: !144, file: !46, line: 74, column: 3)
!159 = !DILocation(line: 74, column: 8, scope: !158)
!160 = !DILocation(line: 74, column: 15, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !46, line: 74, column: 3)
!162 = !DILocation(line: 74, column: 19, scope: !161)
!163 = !DILocation(line: 74, column: 17, scope: !161)
!164 = !DILocation(line: 74, column: 3, scope: !158)
!165 = !DILocation(line: 76, column: 14, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !46, line: 75, column: 5)
!167 = !DILocation(line: 76, column: 16, scope: !166)
!168 = !DILocation(line: 76, column: 7, scope: !166)
!169 = !DILocation(line: 76, column: 9, scope: !166)
!170 = !DILocation(line: 76, column: 12, scope: !166)
!171 = !DILocation(line: 77, column: 14, scope: !172)
!172 = distinct !DILexicalBlock(scope: !166, file: !46, line: 77, column: 7)
!173 = !DILocation(line: 77, column: 12, scope: !172)
!174 = !DILocation(line: 77, column: 19, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !46, line: 77, column: 7)
!176 = !DILocation(line: 77, column: 22, scope: !175)
!177 = !DILocation(line: 77, column: 21, scope: !175)
!178 = !DILocation(line: 77, column: 7, scope: !172)
!179 = !DILocation(line: 78, column: 17, scope: !175)
!180 = !DILocation(line: 78, column: 19, scope: !175)
!181 = !DILocation(line: 78, column: 22, scope: !175)
!182 = !DILocation(line: 78, column: 27, scope: !175)
!183 = !DILocation(line: 78, column: 29, scope: !175)
!184 = !DILocation(line: 78, column: 25, scope: !175)
!185 = !DILocation(line: 78, column: 9, scope: !175)
!186 = !DILocation(line: 78, column: 11, scope: !175)
!187 = !DILocation(line: 78, column: 14, scope: !175)
!188 = !DILocation(line: 77, column: 26, scope: !175)
!189 = !DILocation(line: 77, column: 7, scope: !175)
!190 = distinct !{!190, !178, !191, !138}
!191 = !DILocation(line: 78, column: 30, scope: !172)
!192 = !DILocation(line: 79, column: 14, scope: !166)
!193 = !DILocation(line: 79, column: 16, scope: !166)
!194 = !DILocation(line: 79, column: 21, scope: !166)
!195 = !DILocation(line: 79, column: 23, scope: !166)
!196 = !DILocation(line: 79, column: 26, scope: !166)
!197 = !DILocation(line: 79, column: 19, scope: !166)
!198 = !DILocation(line: 79, column: 7, scope: !166)
!199 = !DILocation(line: 79, column: 9, scope: !166)
!200 = !DILocation(line: 79, column: 12, scope: !166)
!201 = !DILocation(line: 74, column: 27, scope: !161)
!202 = !DILocation(line: 74, column: 3, scope: !161)
!203 = distinct !{!203, !164, !204, !138}
!204 = !DILocation(line: 80, column: 5, scope: !158)
!205 = !DILocation(line: 83, column: 1, scope: !144)
!206 = distinct !DISubprogram(name: "print_array", scope: !46, file: !46, line: 46, type: !207, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !26, !6}
!209 = !DILocalVariable(name: "n", arg: 1, scope: !206, file: !46, line: 46, type: !26)
!210 = !DILocation(line: 46, column: 22, scope: !206)
!211 = !DILocalVariable(name: "x", arg: 2, scope: !206, file: !46, line: 47, type: !6)
!212 = !DILocation(line: 47, column: 14, scope: !206)
!213 = !DILocalVariable(name: "i", scope: !206, file: !46, line: 50, type: !26)
!214 = !DILocation(line: 50, column: 7, scope: !206)
!215 = !DILocation(line: 52, column: 3, scope: !206)
!216 = !DILocation(line: 53, column: 3, scope: !206)
!217 = !DILocation(line: 54, column: 10, scope: !218)
!218 = distinct !DILexicalBlock(scope: !206, file: !46, line: 54, column: 3)
!219 = !DILocation(line: 54, column: 8, scope: !218)
!220 = !DILocation(line: 54, column: 15, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !46, line: 54, column: 3)
!222 = !DILocation(line: 54, column: 19, scope: !221)
!223 = !DILocation(line: 54, column: 17, scope: !221)
!224 = !DILocation(line: 54, column: 3, scope: !218)
!225 = !DILocation(line: 55, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !46, line: 54, column: 27)
!227 = !DILocation(line: 55, column: 59, scope: !226)
!228 = !DILocation(line: 55, column: 61, scope: !226)
!229 = !DILocation(line: 55, column: 5, scope: !226)
!230 = !DILocation(line: 56, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !46, line: 56, column: 9)
!232 = !DILocation(line: 56, column: 11, scope: !231)
!233 = !DILocation(line: 56, column: 16, scope: !231)
!234 = !DILocation(line: 56, column: 9, scope: !226)
!235 = !DILocation(line: 56, column: 31, scope: !231)
!236 = !DILocation(line: 56, column: 22, scope: !231)
!237 = !DILocation(line: 54, column: 23, scope: !221)
!238 = !DILocation(line: 54, column: 3, scope: !221)
!239 = distinct !{!239, !224, !240, !138}
!240 = !DILocation(line: 57, column: 3, scope: !218)
!241 = !DILocation(line: 58, column: 3, scope: !206)
!242 = !DILocation(line: 59, column: 3, scope: !206)
!243 = !DILocation(line: 60, column: 1, scope: !206)
!244 = distinct !DISubprogram(name: "polybench_flush_cache", scope: !3, file: !3, line: 112, type: !245, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!245 = !DISubroutineType(types: !246)
!246 = !{null}
!247 = !DILocalVariable(name: "cs", scope: !244, file: !3, line: 114, type: !26)
!248 = !DILocation(line: 114, column: 7, scope: !244)
!249 = !DILocalVariable(name: "flush", scope: !244, file: !3, line: 115, type: !6)
!250 = !DILocation(line: 115, column: 11, scope: !244)
!251 = !DILocation(line: 115, column: 37, scope: !244)
!252 = !DILocation(line: 115, column: 29, scope: !244)
!253 = !DILocation(line: 115, column: 19, scope: !244)
!254 = !DILocalVariable(name: "i", scope: !244, file: !3, line: 116, type: !26)
!255 = !DILocation(line: 116, column: 7, scope: !244)
!256 = !DILocalVariable(name: "tmp", scope: !244, file: !3, line: 117, type: !7)
!257 = !DILocation(line: 117, column: 10, scope: !244)
!258 = !DILocation(line: 121, column: 10, scope: !259)
!259 = distinct !DILexicalBlock(scope: !244, file: !3, line: 121, column: 3)
!260 = !DILocation(line: 121, column: 8, scope: !259)
!261 = !DILocation(line: 121, column: 15, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !3, line: 121, column: 3)
!263 = !DILocation(line: 121, column: 19, scope: !262)
!264 = !DILocation(line: 121, column: 17, scope: !262)
!265 = !DILocation(line: 121, column: 3, scope: !259)
!266 = !DILocation(line: 122, column: 12, scope: !262)
!267 = !DILocation(line: 122, column: 18, scope: !262)
!268 = !DILocation(line: 122, column: 9, scope: !262)
!269 = !DILocation(line: 121, column: 24, scope: !262)
!270 = !DILocation(line: 121, column: 3, scope: !262)
!271 = distinct !{!271, !265, !272, !138}
!272 = !DILocation(line: 122, column: 19, scope: !259)
!273 = !DILocation(line: 123, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 123, column: 3)
!275 = distinct !DILexicalBlock(scope: !244, file: !3, line: 123, column: 3)
!276 = !DILocation(line: 123, column: 3, scope: !275)
!277 = !DILocation(line: 124, column: 9, scope: !244)
!278 = !DILocation(line: 124, column: 3, scope: !244)
!279 = !DILocation(line: 125, column: 1, scope: !244)
!280 = distinct !DISubprogram(name: "polybench_prepare_instruments", scope: !3, file: !3, line: 353, type: !245, scopeLine: 354, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!281 = !DILocation(line: 356, column: 3, scope: !280)
!282 = !DILocation(line: 361, column: 1, scope: !280)
!283 = distinct !DISubprogram(name: "polybench_timer_start", scope: !3, file: !3, line: 364, type: !245, scopeLine: 365, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!284 = !DILocation(line: 366, column: 3, scope: !283)
!285 = !DILocation(line: 368, column: 23, scope: !283)
!286 = !DILocation(line: 368, column: 21, scope: !283)
!287 = !DILocation(line: 372, column: 1, scope: !283)
!288 = distinct !DISubprogram(name: "rtclock", scope: !3, file: !3, line: 83, type: !289, scopeLine: 84, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!289 = !DISubroutineType(types: !290)
!290 = !{!7}
!291 = !DILocation(line: 93, column: 5, scope: !288)
!292 = distinct !DISubprogram(name: "polybench_timer_stop", scope: !3, file: !3, line: 375, type: !245, scopeLine: 376, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!293 = !DILocation(line: 378, column: 21, scope: !292)
!294 = !DILocation(line: 378, column: 19, scope: !292)
!295 = !DILocation(line: 385, column: 1, scope: !292)
!296 = distinct !DISubprogram(name: "polybench_timer_print", scope: !3, file: !3, line: 388, type: !245, scopeLine: 389, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!297 = !DILocation(line: 402, column: 26, scope: !296)
!298 = !DILocation(line: 402, column: 44, scope: !296)
!299 = !DILocation(line: 402, column: 42, scope: !296)
!300 = !DILocation(line: 402, column: 7, scope: !296)
!301 = !DILocation(line: 407, column: 1, scope: !296)
!302 = distinct !DISubprogram(name: "polybench_free_data", scope: !3, file: !3, line: 547, type: !303, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !8}
!305 = !DILocalVariable(name: "ptr", arg: 1, scope: !302, file: !3, line: 547, type: !8)
!306 = !DILocation(line: 547, column: 32, scope: !302)
!307 = !DILocation(line: 552, column: 9, scope: !302)
!308 = !DILocation(line: 552, column: 3, scope: !302)
!309 = !DILocation(line: 554, column: 1, scope: !302)
!310 = distinct !DISubprogram(name: "polybench_alloc_data", scope: !3, file: !3, line: 557, type: !311, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!311 = !DISubroutineType(types: !312)
!312 = !{!8, !18, !26}
!313 = !DILocalVariable(name: "n", arg: 1, scope: !310, file: !3, line: 557, type: !18)
!314 = !DILocation(line: 557, column: 51, scope: !310)
!315 = !DILocalVariable(name: "elt_size", arg: 2, scope: !310, file: !3, line: 557, type: !26)
!316 = !DILocation(line: 557, column: 58, scope: !310)
!317 = !DILocalVariable(name: "val", scope: !310, file: !3, line: 564, type: !23)
!318 = !DILocation(line: 564, column: 10, scope: !310)
!319 = !DILocation(line: 564, column: 16, scope: !310)
!320 = !DILocation(line: 565, column: 10, scope: !310)
!321 = !DILocation(line: 565, column: 7, scope: !310)
!322 = !DILocalVariable(name: "ret", scope: !310, file: !3, line: 566, type: !8)
!323 = !DILocation(line: 566, column: 9, scope: !310)
!324 = !DILocation(line: 566, column: 24, scope: !310)
!325 = !DILocation(line: 566, column: 15, scope: !310)
!326 = !DILocation(line: 568, column: 10, scope: !310)
!327 = !DILocation(line: 568, column: 3, scope: !310)
!328 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 517, type: !329, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!329 = !DISubroutineType(types: !330)
!330 = !{!8, !23}
!331 = !DILocalVariable(name: "alloc_sz", arg: 1, scope: !328, file: !3, line: 517, type: !23)
!332 = !DILocation(line: 517, column: 16, scope: !328)
!333 = !DILocalVariable(name: "ret", scope: !328, file: !3, line: 519, type: !8)
!334 = !DILocation(line: 519, column: 9, scope: !328)
!335 = !DILocation(line: 521, column: 36, scope: !328)
!336 = !DILocalVariable(name: "padded_sz", scope: !328, file: !3, line: 522, type: !23)
!337 = !DILocation(line: 522, column: 10, scope: !328)
!338 = !DILocation(line: 522, column: 22, scope: !328)
!339 = !DILocation(line: 522, column: 33, scope: !328)
!340 = !DILocation(line: 522, column: 31, scope: !328)
!341 = !DILocalVariable(name: "err", scope: !328, file: !3, line: 523, type: !26)
!342 = !DILocation(line: 523, column: 7, scope: !328)
!343 = !DILocation(line: 523, column: 41, scope: !328)
!344 = !DILocation(line: 523, column: 13, scope: !328)
!345 = !DILocation(line: 524, column: 9, scope: !346)
!346 = distinct !DILexicalBlock(scope: !328, file: !3, line: 524, column: 7)
!347 = !DILocation(line: 524, column: 13, scope: !346)
!348 = !DILocation(line: 526, column: 16, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !3, line: 525, column: 5)
!350 = !DILocation(line: 526, column: 7, scope: !349)
!351 = !DILocation(line: 527, column: 7, scope: !349)
!352 = !DILocation(line: 543, column: 10, scope: !328)
!353 = !DILocation(line: 543, column: 3, scope: !328)
