; ModuleID = 'klee/covariance.bc'
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
@.str.5 = private unnamed_addr constant [4 x i8] c"cov\00", align 1
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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !56, metadata !DIExpression()), !dbg !57
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %6, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 1400, i32* %6, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %7, metadata !62, metadata !DIExpression()), !dbg !63
  store i32 1200, i32* %7, align 4, !dbg !63
  %12 = bitcast i32* %6 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* %12, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %13 = bitcast i32* %7 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* %13, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !67
  call void @llvm.dbg.declare(metadata double* %8, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [1400 x [1200 x double]]** %9, metadata !70, metadata !DIExpression()), !dbg !71
  %14 = call i8* @polybench_alloc_data(i64 1680000, i32 8), !dbg !71
  %15 = bitcast i8* %14 to [1400 x [1200 x double]]*, !dbg !71
  store [1400 x [1200 x double]]* %15, [1400 x [1200 x double]]** %9, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata [1200 x [1200 x double]]** %10, metadata !72, metadata !DIExpression()), !dbg !73
  %16 = call i8* @polybench_alloc_data(i64 1440000, i32 8), !dbg !73
  %17 = bitcast i8* %16 to [1200 x [1200 x double]]*, !dbg !73
  store [1200 x [1200 x double]]* %17, [1200 x [1200 x double]]** %10, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata [1200 x double]** %11, metadata !74, metadata !DIExpression()), !dbg !75
  %18 = call i8* @polybench_alloc_data(i64 1200, i32 8), !dbg !75
  %19 = bitcast i8* %18 to [1200 x double]*, !dbg !75
  store [1200 x double]* %19, [1200 x double]** %11, align 8, !dbg !75
  %20 = load i32, i32* %7, align 4, !dbg !76
  %21 = load i32, i32* %6, align 4, !dbg !77
  %22 = load [1400 x [1200 x double]]*, [1400 x [1200 x double]]** %9, align 8, !dbg !78
  %23 = getelementptr inbounds [1400 x [1200 x double]], [1400 x [1200 x double]]* %22, i64 0, i64 0, !dbg !78
  call void @init_array(i32 %20, i32 %21, double* %8, [1200 x double]* %23), !dbg !79
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !80
  %25 = load i32, i32* %7, align 4, !dbg !81
  %26 = load i32, i32* %6, align 4, !dbg !82
  %27 = load double, double* %8, align 8, !dbg !83
  %28 = load [1400 x [1200 x double]]*, [1400 x [1200 x double]]** %9, align 8, !dbg !84
  %29 = getelementptr inbounds [1400 x [1200 x double]], [1400 x [1200 x double]]* %28, i64 0, i64 0, !dbg !84
  %30 = load [1200 x [1200 x double]]*, [1200 x [1200 x double]]** %10, align 8, !dbg !85
  %31 = getelementptr inbounds [1200 x [1200 x double]], [1200 x [1200 x double]]* %30, i64 0, i64 0, !dbg !85
  %32 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !86
  %33 = getelementptr inbounds [1200 x double], [1200 x double]* %32, i64 0, i64 0, !dbg !86
  call void @kernel_covariance(i32 %25, i32 %26, double %27, [1200 x double]* %29, [1200 x double]* %31, double* %33), !dbg !87
  %34 = load i32, i32* %4, align 4, !dbg !88
  %35 = icmp sgt i32 %34, 42, !dbg !88
  br i1 %35, label %36, label %46, !dbg !88

36:                                               ; preds = %2
  %37 = load i8**, i8*** %5, align 8, !dbg !88
  %38 = getelementptr inbounds i8*, i8** %37, i64 0, !dbg !88
  %39 = load i8*, i8** %38, align 8, !dbg !88
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !88
  %41 = icmp ne i32 %40, 0, !dbg !88
  br i1 %41, label %46, label %42, !dbg !90

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4, !dbg !88
  %44 = load [1200 x [1200 x double]]*, [1200 x [1200 x double]]** %10, align 8, !dbg !88
  %45 = getelementptr inbounds [1200 x [1200 x double]], [1200 x [1200 x double]]* %44, i64 0, i64 0, !dbg !88
  call void @print_array(i32 %43, [1200 x double]* %45), !dbg !88
  br label %46, !dbg !88

46:                                               ; preds = %42, %36, %2
  %47 = load [1400 x [1200 x double]]*, [1400 x [1200 x double]]** %9, align 8, !dbg !91
  %48 = bitcast [1400 x [1200 x double]]* %47 to i8*, !dbg !91
  call void @free(i8* %48) #7, !dbg !91
  %49 = load [1200 x [1200 x double]]*, [1200 x [1200 x double]]** %10, align 8, !dbg !92
  %50 = bitcast [1200 x [1200 x double]]* %49 to i8*, !dbg !92
  call void @free(i8* %50) #7, !dbg !92
  %51 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !93
  %52 = bitcast [1200 x double]* %51 to i8*, !dbg !93
  call void @free(i8* %52) #7, !dbg !93
  ret i32 0, !dbg !94
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @init_array(i32 %0, i32 %1, double* %2, [1200 x double]* %3) #0 !dbg !95 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca [1200 x double]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !98, metadata !DIExpression()), !dbg !99
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !100, metadata !DIExpression()), !dbg !101
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !102, metadata !DIExpression()), !dbg !103
  store [1200 x double]* %3, [1200 x double]** %8, align 8
  call void @llvm.dbg.declare(metadata [1200 x double]** %8, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %9, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %10, metadata !108, metadata !DIExpression()), !dbg !109
  %11 = load i32, i32* %6, align 4, !dbg !110
  %12 = sitofp i32 %11 to double, !dbg !111
  %13 = load double*, double** %7, align 8, !dbg !112
  store double %12, double* %13, align 8, !dbg !113
  store i32 0, i32* %9, align 4, !dbg !114
  br label %14, !dbg !116

14:                                               ; preds = %37, %4
  %15 = load i32, i32* %9, align 4, !dbg !117
  %16 = icmp slt i32 %15, 1400, !dbg !119
  br i1 %16, label %17, label %40, !dbg !120

17:                                               ; preds = %14
  store i32 0, i32* %10, align 4, !dbg !121
  br label %18, !dbg !123

18:                                               ; preds = %21, %17
  %19 = load i32, i32* %10, align 4, !dbg !124
  %20 = icmp slt i32 %19, 1200, !dbg !126
  br i1 %20, label %21, label %37, !dbg !127

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4, !dbg !128
  %23 = sitofp i32 %22 to double, !dbg !129
  %24 = load i32, i32* %10, align 4, !dbg !130
  %25 = sitofp i32 %24 to double, !dbg !130
  %26 = fmul double %23, %25, !dbg !131
  %27 = fdiv double %26, 1.200000e+03, !dbg !132
  %28 = load [1200 x double]*, [1200 x double]** %8, align 8, !dbg !133
  %29 = load i32, i32* %9, align 4, !dbg !134
  %30 = sext i32 %29 to i64, !dbg !133
  %31 = getelementptr inbounds [1200 x double], [1200 x double]* %28, i64 %30, !dbg !133
  %32 = load i32, i32* %10, align 4, !dbg !135
  %33 = sext i32 %32 to i64, !dbg !133
  %34 = getelementptr inbounds [1200 x double], [1200 x double]* %31, i64 0, i64 %33, !dbg !133
  store double %27, double* %34, align 8, !dbg !136
  %35 = load i32, i32* %10, align 4, !dbg !137
  %36 = add nsw i32 %35, 1, !dbg !137
  store i32 %36, i32* %10, align 4, !dbg !137
  br label %18, !dbg !138, !llvm.loop !139

37:                                               ; preds = %18
  %38 = load i32, i32* %9, align 4, !dbg !142
  %39 = add nsw i32 %38, 1, !dbg !142
  store i32 %39, i32* %9, align 4, !dbg !142
  br label %14, !dbg !143, !llvm.loop !144

40:                                               ; preds = %14
  ret void, !dbg !146
}

declare i32 @assert(...) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @kernel_covariance(i32 %0, i32 %1, double %2, [1200 x double]* %3, [1200 x double]* %4, double* %5) #0 !dbg !147 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [1200 x double]*, align 8
  %11 = alloca [1200 x double]*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !152, metadata !DIExpression()), !dbg !153
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !154, metadata !DIExpression()), !dbg !155
  store [1200 x double]* %3, [1200 x double]** %10, align 8
  call void @llvm.dbg.declare(metadata [1200 x double]** %10, metadata !156, metadata !DIExpression()), !dbg !157
  store [1200 x double]* %4, [1200 x double]** %11, align 8
  call void @llvm.dbg.declare(metadata [1200 x double]** %11, metadata !158, metadata !DIExpression()), !dbg !159
  store double* %5, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %13, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata i32* %14, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %15, metadata !166, metadata !DIExpression()), !dbg !167
  store i32 0, i32* %14, align 4, !dbg !168
  br label %16, !dbg !170

16:                                               ; preds = %46, %6
  %17 = load i32, i32* %14, align 4, !dbg !171
  %18 = load i32, i32* %7, align 4, !dbg !173
  %19 = icmp slt i32 %17, %18, !dbg !174
  br i1 %19, label %20, label %56, !dbg !175

20:                                               ; preds = %16
  %21 = load double*, double** %12, align 8, !dbg !176
  %22 = load i32, i32* %14, align 4, !dbg !178
  %23 = sext i32 %22 to i64, !dbg !176
  %24 = getelementptr inbounds double, double* %21, i64 %23, !dbg !176
  store double 0.000000e+00, double* %24, align 8, !dbg !179
  store i32 0, i32* %13, align 4, !dbg !180
  br label %25, !dbg !182

25:                                               ; preds = %29, %20
  %26 = load i32, i32* %13, align 4, !dbg !183
  %27 = load i32, i32* %8, align 4, !dbg !185
  %28 = icmp slt i32 %26, %27, !dbg !186
  br i1 %28, label %29, label %46, !dbg !187

29:                                               ; preds = %25
  %30 = load [1200 x double]*, [1200 x double]** %10, align 8, !dbg !188
  %31 = load i32, i32* %13, align 4, !dbg !189
  %32 = sext i32 %31 to i64, !dbg !188
  %33 = getelementptr inbounds [1200 x double], [1200 x double]* %30, i64 %32, !dbg !188
  %34 = load i32, i32* %14, align 4, !dbg !190
  %35 = sext i32 %34 to i64, !dbg !188
  %36 = getelementptr inbounds [1200 x double], [1200 x double]* %33, i64 0, i64 %35, !dbg !188
  %37 = load double, double* %36, align 8, !dbg !188
  %38 = load double*, double** %12, align 8, !dbg !191
  %39 = load i32, i32* %14, align 4, !dbg !192
  %40 = sext i32 %39 to i64, !dbg !191
  %41 = getelementptr inbounds double, double* %38, i64 %40, !dbg !191
  %42 = load double, double* %41, align 8, !dbg !193
  %43 = fadd double %42, %37, !dbg !193
  store double %43, double* %41, align 8, !dbg !193
  %44 = load i32, i32* %13, align 4, !dbg !194
  %45 = add nsw i32 %44, 1, !dbg !194
  store i32 %45, i32* %13, align 4, !dbg !194
  br label %25, !dbg !195, !llvm.loop !196

46:                                               ; preds = %25
  %47 = load double, double* %9, align 8, !dbg !198
  %48 = load double*, double** %12, align 8, !dbg !199
  %49 = load i32, i32* %14, align 4, !dbg !200
  %50 = sext i32 %49 to i64, !dbg !199
  %51 = getelementptr inbounds double, double* %48, i64 %50, !dbg !199
  %52 = load double, double* %51, align 8, !dbg !201
  %53 = fdiv double %52, %47, !dbg !201
  store double %53, double* %51, align 8, !dbg !201
  %54 = load i32, i32* %14, align 4, !dbg !202
  %55 = add nsw i32 %54, 1, !dbg !202
  store i32 %55, i32* %14, align 4, !dbg !202
  br label %16, !dbg !203, !llvm.loop !204

56:                                               ; preds = %16
  store i32 0, i32* %13, align 4, !dbg !206
  br label %57, !dbg !208

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %13, align 4, !dbg !209
  %59 = load i32, i32* %8, align 4, !dbg !211
  %60 = icmp slt i32 %58, %59, !dbg !212
  br i1 %60, label %61, label %86, !dbg !213

61:                                               ; preds = %57
  store i32 0, i32* %14, align 4, !dbg !214
  br label %62, !dbg !216

62:                                               ; preds = %66, %61
  %63 = load i32, i32* %14, align 4, !dbg !217
  %64 = load i32, i32* %7, align 4, !dbg !219
  %65 = icmp slt i32 %63, %64, !dbg !220
  br i1 %65, label %66, label %83, !dbg !221

66:                                               ; preds = %62
  %67 = load double*, double** %12, align 8, !dbg !222
  %68 = load i32, i32* %14, align 4, !dbg !223
  %69 = sext i32 %68 to i64, !dbg !222
  %70 = getelementptr inbounds double, double* %67, i64 %69, !dbg !222
  %71 = load double, double* %70, align 8, !dbg !222
  %72 = load [1200 x double]*, [1200 x double]** %10, align 8, !dbg !224
  %73 = load i32, i32* %13, align 4, !dbg !225
  %74 = sext i32 %73 to i64, !dbg !224
  %75 = getelementptr inbounds [1200 x double], [1200 x double]* %72, i64 %74, !dbg !224
  %76 = load i32, i32* %14, align 4, !dbg !226
  %77 = sext i32 %76 to i64, !dbg !224
  %78 = getelementptr inbounds [1200 x double], [1200 x double]* %75, i64 0, i64 %77, !dbg !224
  %79 = load double, double* %78, align 8, !dbg !227
  %80 = fsub double %79, %71, !dbg !227
  store double %80, double* %78, align 8, !dbg !227
  %81 = load i32, i32* %14, align 4, !dbg !228
  %82 = add nsw i32 %81, 1, !dbg !228
  store i32 %82, i32* %14, align 4, !dbg !228
  br label %62, !dbg !229, !llvm.loop !230

83:                                               ; preds = %62
  %84 = load i32, i32* %13, align 4, !dbg !232
  %85 = add nsw i32 %84, 1, !dbg !232
  store i32 %85, i32* %13, align 4, !dbg !232
  br label %57, !dbg !233, !llvm.loop !234

86:                                               ; preds = %57
  store i32 0, i32* %13, align 4, !dbg !236
  br label %87, !dbg !238

87:                                               ; preds = %167, %86
  %88 = load i32, i32* %13, align 4, !dbg !239
  %89 = load i32, i32* %7, align 4, !dbg !241
  %90 = icmp slt i32 %88, %89, !dbg !242
  br i1 %90, label %91, label %170, !dbg !243

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4, !dbg !244
  store i32 %92, i32* %14, align 4, !dbg !246
  br label %93, !dbg !247

93:                                               ; preds = %138, %91
  %94 = load i32, i32* %14, align 4, !dbg !248
  %95 = load i32, i32* %7, align 4, !dbg !250
  %96 = icmp slt i32 %94, %95, !dbg !251
  br i1 %96, label %97, label %167, !dbg !252

97:                                               ; preds = %93
  %98 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !253
  %99 = load i32, i32* %13, align 4, !dbg !255
  %100 = sext i32 %99 to i64, !dbg !253
  %101 = getelementptr inbounds [1200 x double], [1200 x double]* %98, i64 %100, !dbg !253
  %102 = load i32, i32* %14, align 4, !dbg !256
  %103 = sext i32 %102 to i64, !dbg !253
  %104 = getelementptr inbounds [1200 x double], [1200 x double]* %101, i64 0, i64 %103, !dbg !253
  store double 0.000000e+00, double* %104, align 8, !dbg !257
  store i32 0, i32* %15, align 4, !dbg !258
  br label %105, !dbg !260

105:                                              ; preds = %109, %97
  %106 = load i32, i32* %15, align 4, !dbg !261
  %107 = load i32, i32* %8, align 4, !dbg !263
  %108 = icmp slt i32 %106, %107, !dbg !264
  br i1 %108, label %109, label %138, !dbg !265

109:                                              ; preds = %105
  %110 = load [1200 x double]*, [1200 x double]** %10, align 8, !dbg !266
  %111 = load i32, i32* %15, align 4, !dbg !267
  %112 = sext i32 %111 to i64, !dbg !266
  %113 = getelementptr inbounds [1200 x double], [1200 x double]* %110, i64 %112, !dbg !266
  %114 = load i32, i32* %13, align 4, !dbg !268
  %115 = sext i32 %114 to i64, !dbg !266
  %116 = getelementptr inbounds [1200 x double], [1200 x double]* %113, i64 0, i64 %115, !dbg !266
  %117 = load double, double* %116, align 8, !dbg !266
  %118 = load [1200 x double]*, [1200 x double]** %10, align 8, !dbg !269
  %119 = load i32, i32* %15, align 4, !dbg !270
  %120 = sext i32 %119 to i64, !dbg !269
  %121 = getelementptr inbounds [1200 x double], [1200 x double]* %118, i64 %120, !dbg !269
  %122 = load i32, i32* %14, align 4, !dbg !271
  %123 = sext i32 %122 to i64, !dbg !269
  %124 = getelementptr inbounds [1200 x double], [1200 x double]* %121, i64 0, i64 %123, !dbg !269
  %125 = load double, double* %124, align 8, !dbg !269
  %126 = fmul double %117, %125, !dbg !272
  %127 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !273
  %128 = load i32, i32* %13, align 4, !dbg !274
  %129 = sext i32 %128 to i64, !dbg !273
  %130 = getelementptr inbounds [1200 x double], [1200 x double]* %127, i64 %129, !dbg !273
  %131 = load i32, i32* %14, align 4, !dbg !275
  %132 = sext i32 %131 to i64, !dbg !273
  %133 = getelementptr inbounds [1200 x double], [1200 x double]* %130, i64 0, i64 %132, !dbg !273
  %134 = load double, double* %133, align 8, !dbg !276
  %135 = fadd double %134, %126, !dbg !276
  store double %135, double* %133, align 8, !dbg !276
  %136 = load i32, i32* %15, align 4, !dbg !277
  %137 = add nsw i32 %136, 1, !dbg !277
  store i32 %137, i32* %15, align 4, !dbg !277
  br label %105, !dbg !278, !llvm.loop !279

138:                                              ; preds = %105
  %139 = load double, double* %9, align 8, !dbg !281
  %140 = fsub double %139, 1.000000e+00, !dbg !282
  %141 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !283
  %142 = load i32, i32* %13, align 4, !dbg !284
  %143 = sext i32 %142 to i64, !dbg !283
  %144 = getelementptr inbounds [1200 x double], [1200 x double]* %141, i64 %143, !dbg !283
  %145 = load i32, i32* %14, align 4, !dbg !285
  %146 = sext i32 %145 to i64, !dbg !283
  %147 = getelementptr inbounds [1200 x double], [1200 x double]* %144, i64 0, i64 %146, !dbg !283
  %148 = load double, double* %147, align 8, !dbg !286
  %149 = fdiv double %148, %140, !dbg !286
  store double %149, double* %147, align 8, !dbg !286
  %150 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !287
  %151 = load i32, i32* %13, align 4, !dbg !288
  %152 = sext i32 %151 to i64, !dbg !287
  %153 = getelementptr inbounds [1200 x double], [1200 x double]* %150, i64 %152, !dbg !287
  %154 = load i32, i32* %14, align 4, !dbg !289
  %155 = sext i32 %154 to i64, !dbg !287
  %156 = getelementptr inbounds [1200 x double], [1200 x double]* %153, i64 0, i64 %155, !dbg !287
  %157 = load double, double* %156, align 8, !dbg !287
  %158 = load [1200 x double]*, [1200 x double]** %11, align 8, !dbg !290
  %159 = load i32, i32* %14, align 4, !dbg !291
  %160 = sext i32 %159 to i64, !dbg !290
  %161 = getelementptr inbounds [1200 x double], [1200 x double]* %158, i64 %160, !dbg !290
  %162 = load i32, i32* %13, align 4, !dbg !292
  %163 = sext i32 %162 to i64, !dbg !290
  %164 = getelementptr inbounds [1200 x double], [1200 x double]* %161, i64 0, i64 %163, !dbg !290
  store double %157, double* %164, align 8, !dbg !293
  %165 = load i32, i32* %14, align 4, !dbg !294
  %166 = add nsw i32 %165, 1, !dbg !294
  store i32 %166, i32* %14, align 4, !dbg !294
  br label %93, !dbg !295, !llvm.loop !296

167:                                              ; preds = %93
  %168 = load i32, i32* %13, align 4, !dbg !298
  %169 = add nsw i32 %168, 1, !dbg !298
  store i32 %169, i32* %13, align 4, !dbg !298
  br label %87, !dbg !299, !llvm.loop !300

170:                                              ; preds = %87
  ret void, !dbg !302
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @print_array(i32 %0, [1200 x double]* %1) #0 !dbg !303 {
  %3 = alloca i32, align 4
  %4 = alloca [1200 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !306, metadata !DIExpression()), !dbg !307
  store [1200 x double]* %1, [1200 x double]** %4, align 8
  call void @llvm.dbg.declare(metadata [1200 x double]** %4, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %5, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata i32* %6, metadata !312, metadata !DIExpression()), !dbg !313
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !314
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)), !dbg !314
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !315
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !315
  store i32 0, i32* %5, align 4, !dbg !316
  br label %11, !dbg !318

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %5, align 4, !dbg !319
  %13 = load i32, i32* %3, align 4, !dbg !321
  %14 = icmp slt i32 %12, %13, !dbg !322
  br i1 %14, label %15, label %47, !dbg !323

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4, !dbg !324
  br label %16, !dbg !326

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %6, align 4, !dbg !327
  %18 = load i32, i32* %3, align 4, !dbg !329
  %19 = icmp slt i32 %17, %18, !dbg !330
  br i1 %19, label %20, label %44, !dbg !331

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4, !dbg !332
  %22 = load i32, i32* %3, align 4, !dbg !335
  %23 = mul nsw i32 %21, %22, !dbg !336
  %24 = load i32, i32* %6, align 4, !dbg !337
  %25 = add nsw i32 %23, %24, !dbg !338
  %26 = srem i32 %25, 20, !dbg !339
  %27 = icmp eq i32 %26, 0, !dbg !340
  br i1 %27, label %28, label %31, !dbg !341

28:                                               ; preds = %20
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !342
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !343
  br label %31, !dbg !343

31:                                               ; preds = %28, %20
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !344
  %33 = load [1200 x double]*, [1200 x double]** %4, align 8, !dbg !345
  %34 = load i32, i32* %5, align 4, !dbg !346
  %35 = sext i32 %34 to i64, !dbg !345
  %36 = getelementptr inbounds [1200 x double], [1200 x double]* %33, i64 %35, !dbg !345
  %37 = load i32, i32* %6, align 4, !dbg !347
  %38 = sext i32 %37 to i64, !dbg !345
  %39 = getelementptr inbounds [1200 x double], [1200 x double]* %36, i64 0, i64 %38, !dbg !345
  %40 = load double, double* %39, align 8, !dbg !345
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), double %40), !dbg !348
  %42 = load i32, i32* %6, align 4, !dbg !349
  %43 = add nsw i32 %42, 1, !dbg !349
  store i32 %43, i32* %6, align 4, !dbg !349
  br label %16, !dbg !350, !llvm.loop !351

44:                                               ; preds = %16
  %45 = load i32, i32* %5, align 4, !dbg !353
  %46 = add nsw i32 %45, 1, !dbg !353
  store i32 %46, i32* %5, align 4, !dbg !353
  br label %11, !dbg !354, !llvm.loop !355

47:                                               ; preds = %11
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !357
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !357
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !358
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)), !dbg !358
  ret void, !dbg !359
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_flush_cache() #0 !dbg !360 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !363, metadata !DIExpression()), !dbg !364
  store i32 4194560, i32* %1, align 4, !dbg !364
  call void @llvm.dbg.declare(metadata double** %2, metadata !365, metadata !DIExpression()), !dbg !366
  %5 = load i32, i32* %1, align 4, !dbg !367
  %6 = sext i32 %5 to i64, !dbg !367
  %7 = call noalias align 16 i8* @calloc(i64 %6, i64 8) #7, !dbg !368
  %8 = bitcast i8* %7 to double*, !dbg !369
  store double* %8, double** %2, align 8, !dbg !366
  call void @llvm.dbg.declare(metadata i32* %3, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata double* %4, metadata !372, metadata !DIExpression()), !dbg !373
  store double 0.000000e+00, double* %4, align 8, !dbg !373
  store i32 0, i32* %3, align 4, !dbg !374
  br label %9, !dbg !376

9:                                                ; preds = %13, %0
  %10 = load i32, i32* %3, align 4, !dbg !377
  %11 = load i32, i32* %1, align 4, !dbg !379
  %12 = icmp slt i32 %10, %11, !dbg !380
  br i1 %12, label %13, label %23, !dbg !381

13:                                               ; preds = %9
  %14 = load double*, double** %2, align 8, !dbg !382
  %15 = load i32, i32* %3, align 4, !dbg !383
  %16 = sext i32 %15 to i64, !dbg !382
  %17 = getelementptr inbounds double, double* %14, i64 %16, !dbg !382
  %18 = load double, double* %17, align 8, !dbg !382
  %19 = load double, double* %4, align 8, !dbg !384
  %20 = fadd double %19, %18, !dbg !384
  store double %20, double* %4, align 8, !dbg !384
  %21 = load i32, i32* %3, align 4, !dbg !385
  %22 = add nsw i32 %21, 1, !dbg !385
  store i32 %22, i32* %3, align 4, !dbg !385
  br label %9, !dbg !386, !llvm.loop !387

23:                                               ; preds = %9
  %24 = load double, double* %4, align 8, !dbg !389
  %25 = fcmp ole double %24, 1.000000e+01, !dbg !389
  br i1 %25, label %27, label %26, !dbg !392

26:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.11, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #8, !dbg !389
  unreachable, !dbg !389

27:                                               ; preds = %23
  %28 = load double*, double** %2, align 8, !dbg !393
  %29 = bitcast double* %28 to i8*, !dbg !393
  call void @free(i8* %29) #7, !dbg !394
  ret void, !dbg !395
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_prepare_instruments() #0 !dbg !396 {
  call void @polybench_flush_cache(), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_start() #0 !dbg !399 {
  call void @polybench_prepare_instruments(), !dbg !400
  %1 = call double @rtclock(), !dbg !401
  store double %1, double* @polybench_t_start, align 8, !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal double @rtclock() #0 !dbg !404 {
  ret double 0.000000e+00, !dbg !407
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_stop() #0 !dbg !408 {
  %1 = call double @rtclock(), !dbg !409
  store double %1, double* @polybench_t_end, align 8, !dbg !410
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_print() #0 !dbg !412 {
  %1 = load double, double* @polybench_t_end, align 8, !dbg !413
  %2 = load double, double* @polybench_t_start, align 8, !dbg !414
  %3 = fsub double %1, %2, !dbg !415
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.12, i64 0, i64 0), double %3), !dbg !416
  ret void, !dbg !417
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_free_data(i8* %0) #0 !dbg !418 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !421, metadata !DIExpression()), !dbg !422
  %3 = load i8*, i8** %2, align 8, !dbg !423
  call void @free(i8* %3) #7, !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @polybench_alloc_data(i64 %0, i32 %1) #0 !dbg !426 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !429, metadata !DIExpression()), !dbg !430
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata i64* %5, metadata !433, metadata !DIExpression()), !dbg !434
  %7 = load i64, i64* %3, align 8, !dbg !435
  store i64 %7, i64* %5, align 8, !dbg !434
  %8 = load i32, i32* %4, align 4, !dbg !436
  %9 = sext i32 %8 to i64, !dbg !436
  %10 = load i64, i64* %5, align 8, !dbg !437
  %11 = mul i64 %10, %9, !dbg !437
  store i64 %11, i64* %5, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata i8** %6, metadata !438, metadata !DIExpression()), !dbg !439
  %12 = load i64, i64* %5, align 8, !dbg !440
  %13 = call i8* @xmalloc(i64 %12), !dbg !441
  store i8* %13, i8** %6, align 8, !dbg !439
  %14 = load i8*, i8** %6, align 8, !dbg !442
  ret i8* %14, !dbg !443
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i8* @xmalloc(i64 %0) #0 !dbg !444 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !447, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata i8** %3, metadata !449, metadata !DIExpression()), !dbg !450
  store i8* null, i8** %3, align 8, !dbg !450
  %6 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !451
  %7 = add i64 %6, 0, !dbg !451
  store i64 %7, i64* @polybench_inter_array_padding_sz, align 8, !dbg !451
  call void @llvm.dbg.declare(metadata i64* %4, metadata !452, metadata !DIExpression()), !dbg !453
  %8 = load i64, i64* %2, align 8, !dbg !454
  %9 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !455
  %10 = add i64 %8, %9, !dbg !456
  store i64 %10, i64* %4, align 8, !dbg !453
  call void @llvm.dbg.declare(metadata i32* %5, metadata !457, metadata !DIExpression()), !dbg !458
  %11 = load i64, i64* %4, align 8, !dbg !459
  %12 = call i32 @posix_memalign(i8** %3, i64 4096, i64 %11) #7, !dbg !460
  store i32 %12, i32* %5, align 4, !dbg !458
  %13 = load i8*, i8** %3, align 8, !dbg !461
  %14 = icmp eq i8* %13, null, !dbg !461
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %or.cond = select i1 %14, i1 true, i1 %16, !dbg !463
  br i1 %or.cond, label %17, label %20, !dbg !463

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !464
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3.15, i64 0, i64 0)), !dbg !466
  call void @exit(i32 1) #8, !dbg !467
  unreachable, !dbg !467

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8, !dbg !468
  ret i8* %21, !dbg !469
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
!28 = !DIFile(filename: "datamining/covariance/covariance.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
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
!49 = distinct !DISubprogram(name: "main", scope: !50, file: !50, line: 100, type: !51, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !4)
!50 = !DIFile(filename: "./datamining/covariance/covariance.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!51 = !DISubroutineType(types: !52)
!52 = !{!26, !26, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DILocalVariable(name: "argc", arg: 1, scope: !49, file: !50, line: 100, type: !26)
!57 = !DILocation(line: 100, column: 14, scope: !49)
!58 = !DILocalVariable(name: "argv", arg: 2, scope: !49, file: !50, line: 100, type: !53)
!59 = !DILocation(line: 100, column: 27, scope: !49)
!60 = !DILocalVariable(name: "n", scope: !49, file: !50, line: 103, type: !26)
!61 = !DILocation(line: 103, column: 7, scope: !49)
!62 = !DILocalVariable(name: "m", scope: !49, file: !50, line: 104, type: !26)
!63 = !DILocation(line: 104, column: 7, scope: !49)
!64 = !DILocation(line: 105, column: 22, scope: !49)
!65 = !DILocation(line: 105, column: 3, scope: !49)
!66 = !DILocation(line: 106, column: 22, scope: !49)
!67 = !DILocation(line: 106, column: 3, scope: !49)
!68 = !DILocalVariable(name: "float_n", scope: !49, file: !50, line: 109, type: !7)
!69 = !DILocation(line: 109, column: 13, scope: !49)
!70 = !DILocalVariable(name: "data", scope: !49, file: !50, line: 110, type: !30)
!71 = !DILocation(line: 110, column: 3, scope: !49)
!72 = !DILocalVariable(name: "cov", scope: !49, file: !50, line: 111, type: !35)
!73 = !DILocation(line: 111, column: 3, scope: !49)
!74 = !DILocalVariable(name: "mean", scope: !49, file: !50, line: 112, type: !38)
!75 = !DILocation(line: 112, column: 3, scope: !49)
!76 = !DILocation(line: 116, column: 15, scope: !49)
!77 = !DILocation(line: 116, column: 18, scope: !49)
!78 = !DILocation(line: 116, column: 31, scope: !49)
!79 = !DILocation(line: 116, column: 3, scope: !49)
!80 = !DILocation(line: 120, column: 3, scope: !49)
!81 = !DILocation(line: 123, column: 22, scope: !49)
!82 = !DILocation(line: 123, column: 25, scope: !49)
!83 = !DILocation(line: 123, column: 28, scope: !49)
!84 = !DILocation(line: 124, column: 8, scope: !49)
!85 = !DILocation(line: 125, column: 8, scope: !49)
!86 = !DILocation(line: 126, column: 8, scope: !49)
!87 = !DILocation(line: 123, column: 3, scope: !49)
!88 = !DILocation(line: 134, column: 3, scope: !89)
!89 = distinct !DILexicalBlock(scope: !49, file: !50, line: 134, column: 3)
!90 = !DILocation(line: 134, column: 3, scope: !49)
!91 = !DILocation(line: 137, column: 3, scope: !49)
!92 = !DILocation(line: 138, column: 3, scope: !49)
!93 = !DILocation(line: 139, column: 3, scope: !49)
!94 = !DILocation(line: 141, column: 3, scope: !49)
!95 = distinct !DISubprogram(name: "init_array", scope: !50, file: !50, line: 27, type: !96, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !26, !26, !6, !38}
!98 = !DILocalVariable(name: "m", arg: 1, scope: !95, file: !50, line: 27, type: !26)
!99 = !DILocation(line: 27, column: 22, scope: !95)
!100 = !DILocalVariable(name: "n", arg: 2, scope: !95, file: !50, line: 27, type: !26)
!101 = !DILocation(line: 27, column: 29, scope: !95)
!102 = !DILocalVariable(name: "float_n", arg: 3, scope: !95, file: !50, line: 28, type: !6)
!103 = !DILocation(line: 28, column: 15, scope: !95)
!104 = !DILocalVariable(name: "data", arg: 4, scope: !95, file: !50, line: 29, type: !38)
!105 = !DILocation(line: 29, column: 14, scope: !95)
!106 = !DILocalVariable(name: "i", scope: !95, file: !50, line: 31, type: !26)
!107 = !DILocation(line: 31, column: 7, scope: !95)
!108 = !DILocalVariable(name: "j", scope: !95, file: !50, line: 31, type: !26)
!109 = !DILocation(line: 31, column: 10, scope: !95)
!110 = !DILocation(line: 33, column: 25, scope: !95)
!111 = !DILocation(line: 33, column: 14, scope: !95)
!112 = !DILocation(line: 33, column: 4, scope: !95)
!113 = !DILocation(line: 33, column: 12, scope: !95)
!114 = !DILocation(line: 35, column: 10, scope: !115)
!115 = distinct !DILexicalBlock(scope: !95, file: !50, line: 35, column: 3)
!116 = !DILocation(line: 35, column: 8, scope: !115)
!117 = !DILocation(line: 35, column: 15, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !50, line: 35, column: 3)
!119 = !DILocation(line: 35, column: 17, scope: !118)
!120 = !DILocation(line: 35, column: 3, scope: !115)
!121 = !DILocation(line: 36, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !50, line: 36, column: 5)
!123 = !DILocation(line: 36, column: 10, scope: !122)
!124 = !DILocation(line: 36, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !50, line: 36, column: 5)
!126 = !DILocation(line: 36, column: 19, scope: !125)
!127 = !DILocation(line: 36, column: 5, scope: !122)
!128 = !DILocation(line: 37, column: 33, scope: !125)
!129 = !DILocation(line: 37, column: 21, scope: !125)
!130 = !DILocation(line: 37, column: 35, scope: !125)
!131 = !DILocation(line: 37, column: 34, scope: !125)
!132 = !DILocation(line: 37, column: 38, scope: !125)
!133 = !DILocation(line: 37, column: 7, scope: !125)
!134 = !DILocation(line: 37, column: 12, scope: !125)
!135 = !DILocation(line: 37, column: 15, scope: !125)
!136 = !DILocation(line: 37, column: 18, scope: !125)
!137 = !DILocation(line: 36, column: 25, scope: !125)
!138 = !DILocation(line: 36, column: 5, scope: !125)
!139 = distinct !{!139, !127, !140, !141}
!140 = !DILocation(line: 37, column: 40, scope: !122)
!141 = !{!"llvm.loop.mustprogress"}
!142 = !DILocation(line: 35, column: 23, scope: !118)
!143 = !DILocation(line: 35, column: 3, scope: !118)
!144 = distinct !{!144, !120, !145, !141}
!145 = !DILocation(line: 37, column: 40, scope: !115)
!146 = !DILocation(line: 38, column: 1, scope: !95)
!147 = distinct !DISubprogram(name: "kernel_covariance", scope: !50, file: !50, line: 65, type: !148, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !26, !26, !7, !38, !38, !6}
!150 = !DILocalVariable(name: "m", arg: 1, scope: !147, file: !50, line: 65, type: !26)
!151 = !DILocation(line: 65, column: 28, scope: !147)
!152 = !DILocalVariable(name: "n", arg: 2, scope: !147, file: !50, line: 65, type: !26)
!153 = !DILocation(line: 65, column: 35, scope: !147)
!154 = !DILocalVariable(name: "float_n", arg: 3, scope: !147, file: !50, line: 66, type: !7)
!155 = !DILocation(line: 66, column: 20, scope: !147)
!156 = !DILocalVariable(name: "data", arg: 4, scope: !147, file: !50, line: 67, type: !38)
!157 = !DILocation(line: 67, column: 20, scope: !147)
!158 = !DILocalVariable(name: "cov", arg: 5, scope: !147, file: !50, line: 68, type: !38)
!159 = !DILocation(line: 68, column: 20, scope: !147)
!160 = !DILocalVariable(name: "mean", arg: 6, scope: !147, file: !50, line: 69, type: !6)
!161 = !DILocation(line: 69, column: 20, scope: !147)
!162 = !DILocalVariable(name: "i", scope: !147, file: !50, line: 71, type: !26)
!163 = !DILocation(line: 71, column: 7, scope: !147)
!164 = !DILocalVariable(name: "j", scope: !147, file: !50, line: 71, type: !26)
!165 = !DILocation(line: 71, column: 10, scope: !147)
!166 = !DILocalVariable(name: "k", scope: !147, file: !50, line: 71, type: !26)
!167 = !DILocation(line: 71, column: 13, scope: !147)
!168 = !DILocation(line: 74, column: 10, scope: !169)
!169 = distinct !DILexicalBlock(scope: !147, file: !50, line: 74, column: 3)
!170 = !DILocation(line: 74, column: 8, scope: !169)
!171 = !DILocation(line: 74, column: 15, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !50, line: 74, column: 3)
!173 = !DILocation(line: 74, column: 19, scope: !172)
!174 = !DILocation(line: 74, column: 17, scope: !172)
!175 = !DILocation(line: 74, column: 3, scope: !169)
!176 = !DILocation(line: 76, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !50, line: 75, column: 5)
!178 = !DILocation(line: 76, column: 12, scope: !177)
!179 = !DILocation(line: 76, column: 15, scope: !177)
!180 = !DILocation(line: 77, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !50, line: 77, column: 7)
!182 = !DILocation(line: 77, column: 12, scope: !181)
!183 = !DILocation(line: 77, column: 19, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !50, line: 77, column: 7)
!185 = !DILocation(line: 77, column: 23, scope: !184)
!186 = !DILocation(line: 77, column: 21, scope: !184)
!187 = !DILocation(line: 77, column: 7, scope: !181)
!188 = !DILocation(line: 78, column: 20, scope: !184)
!189 = !DILocation(line: 78, column: 25, scope: !184)
!190 = !DILocation(line: 78, column: 28, scope: !184)
!191 = !DILocation(line: 78, column: 9, scope: !184)
!192 = !DILocation(line: 78, column: 14, scope: !184)
!193 = !DILocation(line: 78, column: 17, scope: !184)
!194 = !DILocation(line: 77, column: 31, scope: !184)
!195 = !DILocation(line: 77, column: 7, scope: !184)
!196 = distinct !{!196, !187, !197, !141}
!197 = !DILocation(line: 78, column: 29, scope: !181)
!198 = !DILocation(line: 79, column: 18, scope: !177)
!199 = !DILocation(line: 79, column: 7, scope: !177)
!200 = !DILocation(line: 79, column: 12, scope: !177)
!201 = !DILocation(line: 79, column: 15, scope: !177)
!202 = !DILocation(line: 74, column: 27, scope: !172)
!203 = !DILocation(line: 74, column: 3, scope: !172)
!204 = distinct !{!204, !175, !205, !141}
!205 = !DILocation(line: 80, column: 5, scope: !169)
!206 = !DILocation(line: 82, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !147, file: !50, line: 82, column: 3)
!208 = !DILocation(line: 82, column: 8, scope: !207)
!209 = !DILocation(line: 82, column: 15, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !50, line: 82, column: 3)
!211 = !DILocation(line: 82, column: 19, scope: !210)
!212 = !DILocation(line: 82, column: 17, scope: !210)
!213 = !DILocation(line: 82, column: 3, scope: !207)
!214 = !DILocation(line: 83, column: 12, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !50, line: 83, column: 5)
!216 = !DILocation(line: 83, column: 10, scope: !215)
!217 = !DILocation(line: 83, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !50, line: 83, column: 5)
!219 = !DILocation(line: 83, column: 21, scope: !218)
!220 = !DILocation(line: 83, column: 19, scope: !218)
!221 = !DILocation(line: 83, column: 5, scope: !215)
!222 = !DILocation(line: 84, column: 21, scope: !218)
!223 = !DILocation(line: 84, column: 26, scope: !218)
!224 = !DILocation(line: 84, column: 7, scope: !218)
!225 = !DILocation(line: 84, column: 12, scope: !218)
!226 = !DILocation(line: 84, column: 15, scope: !218)
!227 = !DILocation(line: 84, column: 18, scope: !218)
!228 = !DILocation(line: 83, column: 29, scope: !218)
!229 = !DILocation(line: 83, column: 5, scope: !218)
!230 = distinct !{!230, !221, !231, !141}
!231 = !DILocation(line: 84, column: 27, scope: !215)
!232 = !DILocation(line: 82, column: 27, scope: !210)
!233 = !DILocation(line: 82, column: 3, scope: !210)
!234 = distinct !{!234, !213, !235, !141}
!235 = !DILocation(line: 84, column: 27, scope: !207)
!236 = !DILocation(line: 86, column: 10, scope: !237)
!237 = distinct !DILexicalBlock(scope: !147, file: !50, line: 86, column: 3)
!238 = !DILocation(line: 86, column: 8, scope: !237)
!239 = !DILocation(line: 86, column: 15, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !50, line: 86, column: 3)
!241 = !DILocation(line: 86, column: 19, scope: !240)
!242 = !DILocation(line: 86, column: 17, scope: !240)
!243 = !DILocation(line: 86, column: 3, scope: !237)
!244 = !DILocation(line: 87, column: 14, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !50, line: 87, column: 5)
!246 = !DILocation(line: 87, column: 12, scope: !245)
!247 = !DILocation(line: 87, column: 10, scope: !245)
!248 = !DILocation(line: 87, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !50, line: 87, column: 5)
!250 = !DILocation(line: 87, column: 21, scope: !249)
!251 = !DILocation(line: 87, column: 19, scope: !249)
!252 = !DILocation(line: 87, column: 5, scope: !245)
!253 = !DILocation(line: 89, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !50, line: 88, column: 7)
!255 = !DILocation(line: 89, column: 13, scope: !254)
!256 = !DILocation(line: 89, column: 16, scope: !254)
!257 = !DILocation(line: 89, column: 19, scope: !254)
!258 = !DILocation(line: 90, column: 16, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !50, line: 90, column: 9)
!260 = !DILocation(line: 90, column: 14, scope: !259)
!261 = !DILocation(line: 90, column: 21, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !50, line: 90, column: 9)
!263 = !DILocation(line: 90, column: 25, scope: !262)
!264 = !DILocation(line: 90, column: 23, scope: !262)
!265 = !DILocation(line: 90, column: 9, scope: !259)
!266 = !DILocation(line: 91, column: 17, scope: !262)
!267 = !DILocation(line: 91, column: 22, scope: !262)
!268 = !DILocation(line: 91, column: 25, scope: !262)
!269 = !DILocation(line: 91, column: 30, scope: !262)
!270 = !DILocation(line: 91, column: 35, scope: !262)
!271 = !DILocation(line: 91, column: 38, scope: !262)
!272 = !DILocation(line: 91, column: 28, scope: !262)
!273 = !DILocation(line: 91, column: 4, scope: !262)
!274 = !DILocation(line: 91, column: 8, scope: !262)
!275 = !DILocation(line: 91, column: 11, scope: !262)
!276 = !DILocation(line: 91, column: 14, scope: !262)
!277 = !DILocation(line: 90, column: 33, scope: !262)
!278 = !DILocation(line: 90, column: 9, scope: !262)
!279 = distinct !{!279, !265, !280, !141}
!280 = !DILocation(line: 91, column: 39, scope: !259)
!281 = !DILocation(line: 92, column: 23, scope: !254)
!282 = !DILocation(line: 92, column: 31, scope: !254)
!283 = !DILocation(line: 92, column: 9, scope: !254)
!284 = !DILocation(line: 92, column: 13, scope: !254)
!285 = !DILocation(line: 92, column: 16, scope: !254)
!286 = !DILocation(line: 92, column: 19, scope: !254)
!287 = !DILocation(line: 93, column: 21, scope: !254)
!288 = !DILocation(line: 93, column: 25, scope: !254)
!289 = !DILocation(line: 93, column: 28, scope: !254)
!290 = !DILocation(line: 93, column: 9, scope: !254)
!291 = !DILocation(line: 93, column: 13, scope: !254)
!292 = !DILocation(line: 93, column: 16, scope: !254)
!293 = !DILocation(line: 93, column: 19, scope: !254)
!294 = !DILocation(line: 87, column: 29, scope: !249)
!295 = !DILocation(line: 87, column: 5, scope: !249)
!296 = distinct !{!296, !252, !297, !141}
!297 = !DILocation(line: 94, column: 7, scope: !245)
!298 = !DILocation(line: 86, column: 27, scope: !240)
!299 = !DILocation(line: 86, column: 3, scope: !240)
!300 = distinct !{!300, !243, !301, !141}
!301 = !DILocation(line: 94, column: 7, scope: !237)
!302 = !DILocation(line: 97, column: 1, scope: !147)
!303 = distinct !DISubprogram(name: "print_array", scope: !50, file: !50, line: 44, type: !304, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !26, !38}
!306 = !DILocalVariable(name: "m", arg: 1, scope: !303, file: !50, line: 44, type: !26)
!307 = !DILocation(line: 44, column: 22, scope: !303)
!308 = !DILocalVariable(name: "cov", arg: 2, scope: !303, file: !50, line: 45, type: !38)
!309 = !DILocation(line: 45, column: 14, scope: !303)
!310 = !DILocalVariable(name: "i", scope: !303, file: !50, line: 48, type: !26)
!311 = !DILocation(line: 48, column: 7, scope: !303)
!312 = !DILocalVariable(name: "j", scope: !303, file: !50, line: 48, type: !26)
!313 = !DILocation(line: 48, column: 10, scope: !303)
!314 = !DILocation(line: 50, column: 3, scope: !303)
!315 = !DILocation(line: 51, column: 3, scope: !303)
!316 = !DILocation(line: 52, column: 10, scope: !317)
!317 = distinct !DILexicalBlock(scope: !303, file: !50, line: 52, column: 3)
!318 = !DILocation(line: 52, column: 8, scope: !317)
!319 = !DILocation(line: 52, column: 15, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !50, line: 52, column: 3)
!321 = !DILocation(line: 52, column: 19, scope: !320)
!322 = !DILocation(line: 52, column: 17, scope: !320)
!323 = !DILocation(line: 52, column: 3, scope: !317)
!324 = !DILocation(line: 53, column: 12, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !50, line: 53, column: 5)
!326 = !DILocation(line: 53, column: 10, scope: !325)
!327 = !DILocation(line: 53, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !50, line: 53, column: 5)
!329 = !DILocation(line: 53, column: 21, scope: !328)
!330 = !DILocation(line: 53, column: 19, scope: !328)
!331 = !DILocation(line: 53, column: 5, scope: !325)
!332 = !DILocation(line: 54, column: 12, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !50, line: 54, column: 11)
!334 = distinct !DILexicalBlock(scope: !328, file: !50, line: 53, column: 29)
!335 = !DILocation(line: 54, column: 16, scope: !333)
!336 = !DILocation(line: 54, column: 14, scope: !333)
!337 = !DILocation(line: 54, column: 20, scope: !333)
!338 = !DILocation(line: 54, column: 18, scope: !333)
!339 = !DILocation(line: 54, column: 23, scope: !333)
!340 = !DILocation(line: 54, column: 28, scope: !333)
!341 = !DILocation(line: 54, column: 11, scope: !334)
!342 = !DILocation(line: 54, column: 43, scope: !333)
!343 = !DILocation(line: 54, column: 34, scope: !333)
!344 = !DILocation(line: 55, column: 16, scope: !334)
!345 = !DILocation(line: 55, column: 61, scope: !334)
!346 = !DILocation(line: 55, column: 65, scope: !334)
!347 = !DILocation(line: 55, column: 68, scope: !334)
!348 = !DILocation(line: 55, column: 7, scope: !334)
!349 = !DILocation(line: 53, column: 25, scope: !328)
!350 = !DILocation(line: 53, column: 5, scope: !328)
!351 = distinct !{!351, !331, !352, !141}
!352 = !DILocation(line: 56, column: 5, scope: !325)
!353 = !DILocation(line: 52, column: 23, scope: !320)
!354 = !DILocation(line: 52, column: 3, scope: !320)
!355 = distinct !{!355, !323, !356, !141}
!356 = !DILocation(line: 56, column: 5, scope: !317)
!357 = !DILocation(line: 57, column: 3, scope: !303)
!358 = !DILocation(line: 58, column: 3, scope: !303)
!359 = !DILocation(line: 59, column: 1, scope: !303)
!360 = distinct !DISubprogram(name: "polybench_flush_cache", scope: !3, file: !3, line: 112, type: !361, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!361 = !DISubroutineType(types: !362)
!362 = !{null}
!363 = !DILocalVariable(name: "cs", scope: !360, file: !3, line: 114, type: !26)
!364 = !DILocation(line: 114, column: 7, scope: !360)
!365 = !DILocalVariable(name: "flush", scope: !360, file: !3, line: 115, type: !6)
!366 = !DILocation(line: 115, column: 11, scope: !360)
!367 = !DILocation(line: 115, column: 37, scope: !360)
!368 = !DILocation(line: 115, column: 29, scope: !360)
!369 = !DILocation(line: 115, column: 19, scope: !360)
!370 = !DILocalVariable(name: "i", scope: !360, file: !3, line: 116, type: !26)
!371 = !DILocation(line: 116, column: 7, scope: !360)
!372 = !DILocalVariable(name: "tmp", scope: !360, file: !3, line: 117, type: !7)
!373 = !DILocation(line: 117, column: 10, scope: !360)
!374 = !DILocation(line: 121, column: 10, scope: !375)
!375 = distinct !DILexicalBlock(scope: !360, file: !3, line: 121, column: 3)
!376 = !DILocation(line: 121, column: 8, scope: !375)
!377 = !DILocation(line: 121, column: 15, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !3, line: 121, column: 3)
!379 = !DILocation(line: 121, column: 19, scope: !378)
!380 = !DILocation(line: 121, column: 17, scope: !378)
!381 = !DILocation(line: 121, column: 3, scope: !375)
!382 = !DILocation(line: 122, column: 12, scope: !378)
!383 = !DILocation(line: 122, column: 18, scope: !378)
!384 = !DILocation(line: 122, column: 9, scope: !378)
!385 = !DILocation(line: 121, column: 24, scope: !378)
!386 = !DILocation(line: 121, column: 3, scope: !378)
!387 = distinct !{!387, !381, !388, !141}
!388 = !DILocation(line: 122, column: 19, scope: !375)
!389 = !DILocation(line: 123, column: 3, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 123, column: 3)
!391 = distinct !DILexicalBlock(scope: !360, file: !3, line: 123, column: 3)
!392 = !DILocation(line: 123, column: 3, scope: !391)
!393 = !DILocation(line: 124, column: 9, scope: !360)
!394 = !DILocation(line: 124, column: 3, scope: !360)
!395 = !DILocation(line: 125, column: 1, scope: !360)
!396 = distinct !DISubprogram(name: "polybench_prepare_instruments", scope: !3, file: !3, line: 353, type: !361, scopeLine: 354, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!397 = !DILocation(line: 356, column: 3, scope: !396)
!398 = !DILocation(line: 361, column: 1, scope: !396)
!399 = distinct !DISubprogram(name: "polybench_timer_start", scope: !3, file: !3, line: 364, type: !361, scopeLine: 365, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!400 = !DILocation(line: 366, column: 3, scope: !399)
!401 = !DILocation(line: 368, column: 23, scope: !399)
!402 = !DILocation(line: 368, column: 21, scope: !399)
!403 = !DILocation(line: 372, column: 1, scope: !399)
!404 = distinct !DISubprogram(name: "rtclock", scope: !3, file: !3, line: 83, type: !405, scopeLine: 84, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!405 = !DISubroutineType(types: !406)
!406 = !{!7}
!407 = !DILocation(line: 93, column: 5, scope: !404)
!408 = distinct !DISubprogram(name: "polybench_timer_stop", scope: !3, file: !3, line: 375, type: !361, scopeLine: 376, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!409 = !DILocation(line: 378, column: 21, scope: !408)
!410 = !DILocation(line: 378, column: 19, scope: !408)
!411 = !DILocation(line: 385, column: 1, scope: !408)
!412 = distinct !DISubprogram(name: "polybench_timer_print", scope: !3, file: !3, line: 388, type: !361, scopeLine: 389, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!413 = !DILocation(line: 402, column: 26, scope: !412)
!414 = !DILocation(line: 402, column: 44, scope: !412)
!415 = !DILocation(line: 402, column: 42, scope: !412)
!416 = !DILocation(line: 402, column: 7, scope: !412)
!417 = !DILocation(line: 407, column: 1, scope: !412)
!418 = distinct !DISubprogram(name: "polybench_free_data", scope: !3, file: !3, line: 547, type: !419, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !8}
!421 = !DILocalVariable(name: "ptr", arg: 1, scope: !418, file: !3, line: 547, type: !8)
!422 = !DILocation(line: 547, column: 32, scope: !418)
!423 = !DILocation(line: 552, column: 9, scope: !418)
!424 = !DILocation(line: 552, column: 3, scope: !418)
!425 = !DILocation(line: 554, column: 1, scope: !418)
!426 = distinct !DISubprogram(name: "polybench_alloc_data", scope: !3, file: !3, line: 557, type: !427, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!427 = !DISubroutineType(types: !428)
!428 = !{!8, !18, !26}
!429 = !DILocalVariable(name: "n", arg: 1, scope: !426, file: !3, line: 557, type: !18)
!430 = !DILocation(line: 557, column: 51, scope: !426)
!431 = !DILocalVariable(name: "elt_size", arg: 2, scope: !426, file: !3, line: 557, type: !26)
!432 = !DILocation(line: 557, column: 58, scope: !426)
!433 = !DILocalVariable(name: "val", scope: !426, file: !3, line: 564, type: !23)
!434 = !DILocation(line: 564, column: 10, scope: !426)
!435 = !DILocation(line: 564, column: 16, scope: !426)
!436 = !DILocation(line: 565, column: 10, scope: !426)
!437 = !DILocation(line: 565, column: 7, scope: !426)
!438 = !DILocalVariable(name: "ret", scope: !426, file: !3, line: 566, type: !8)
!439 = !DILocation(line: 566, column: 9, scope: !426)
!440 = !DILocation(line: 566, column: 24, scope: !426)
!441 = !DILocation(line: 566, column: 15, scope: !426)
!442 = !DILocation(line: 568, column: 10, scope: !426)
!443 = !DILocation(line: 568, column: 3, scope: !426)
!444 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 517, type: !445, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!445 = !DISubroutineType(types: !446)
!446 = !{!8, !23}
!447 = !DILocalVariable(name: "alloc_sz", arg: 1, scope: !444, file: !3, line: 517, type: !23)
!448 = !DILocation(line: 517, column: 16, scope: !444)
!449 = !DILocalVariable(name: "ret", scope: !444, file: !3, line: 519, type: !8)
!450 = !DILocation(line: 519, column: 9, scope: !444)
!451 = !DILocation(line: 521, column: 36, scope: !444)
!452 = !DILocalVariable(name: "padded_sz", scope: !444, file: !3, line: 522, type: !23)
!453 = !DILocation(line: 522, column: 10, scope: !444)
!454 = !DILocation(line: 522, column: 22, scope: !444)
!455 = !DILocation(line: 522, column: 33, scope: !444)
!456 = !DILocation(line: 522, column: 31, scope: !444)
!457 = !DILocalVariable(name: "err", scope: !444, file: !3, line: 523, type: !26)
!458 = !DILocation(line: 523, column: 7, scope: !444)
!459 = !DILocation(line: 523, column: 41, scope: !444)
!460 = !DILocation(line: 523, column: 13, scope: !444)
!461 = !DILocation(line: 524, column: 9, scope: !462)
!462 = distinct !DILexicalBlock(scope: !444, file: !3, line: 524, column: 7)
!463 = !DILocation(line: 524, column: 13, scope: !462)
!464 = !DILocation(line: 526, column: 16, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !3, line: 525, column: 5)
!466 = !DILocation(line: 526, column: 7, scope: !465)
!467 = !DILocation(line: 527, column: 7, scope: !465)
!468 = !DILocation(line: 543, column: 10, scope: !444)
!469 = !DILocation(line: 543, column: 3, scope: !444)
