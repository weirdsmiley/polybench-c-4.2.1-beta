; ModuleID = 'klee/jacobi-2d.bc'
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
  %8 = alloca [1300 x [1300 x double]]*, align 8
  %9 = alloca [1300 x [1300 x double]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !50
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %6, metadata !53, metadata !DIExpression()), !dbg !54
  store i32 1300, i32* %6, align 4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %7, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 500, i32* %7, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata [1300 x [1300 x double]]** %8, metadata !57, metadata !DIExpression()), !dbg !58
  %10 = call i8* @polybench_alloc_data(i64 1690000, i32 8), !dbg !58
  %11 = bitcast i8* %10 to [1300 x [1300 x double]]*, !dbg !58
  store [1300 x [1300 x double]]* %11, [1300 x [1300 x double]]** %8, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata [1300 x [1300 x double]]** %9, metadata !59, metadata !DIExpression()), !dbg !60
  %12 = call i8* @polybench_alloc_data(i64 1690000, i32 8), !dbg !60
  %13 = bitcast i8* %12 to [1300 x [1300 x double]]*, !dbg !60
  store [1300 x [1300 x double]]* %13, [1300 x [1300 x double]]** %9, align 8, !dbg !60
  %14 = load i32, i32* %6, align 4, !dbg !61
  %15 = load [1300 x [1300 x double]]*, [1300 x [1300 x double]]** %8, align 8, !dbg !62
  %16 = getelementptr inbounds [1300 x [1300 x double]], [1300 x [1300 x double]]* %15, i64 0, i64 0, !dbg !62
  %17 = load [1300 x [1300 x double]]*, [1300 x [1300 x double]]** %9, align 8, !dbg !63
  %18 = getelementptr inbounds [1300 x [1300 x double]], [1300 x [1300 x double]]* %17, i64 0, i64 0, !dbg !63
  call void @init_array(i32 %14, [1300 x double]* %16, [1300 x double]* %18), !dbg !64
  %19 = load i32, i32* %7, align 4, !dbg !65
  %20 = load i32, i32* %6, align 4, !dbg !66
  %21 = load [1300 x [1300 x double]]*, [1300 x [1300 x double]]** %8, align 8, !dbg !67
  %22 = getelementptr inbounds [1300 x [1300 x double]], [1300 x [1300 x double]]* %21, i64 0, i64 0, !dbg !67
  %23 = load [1300 x [1300 x double]]*, [1300 x [1300 x double]]** %9, align 8, !dbg !68
  %24 = getelementptr inbounds [1300 x [1300 x double]], [1300 x [1300 x double]]* %23, i64 0, i64 0, !dbg !68
  call void @kernel_jacobi_2d(i32 %19, i32 %20, [1300 x double]* %22, [1300 x double]* %24), !dbg !69
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
  %35 = load [1300 x [1300 x double]]*, [1300 x [1300 x double]]** %8, align 8, !dbg !70
  %36 = getelementptr inbounds [1300 x [1300 x double]], [1300 x [1300 x double]]* %35, i64 0, i64 0, !dbg !70
  call void @print_array(i32 %34, [1300 x double]* %36), !dbg !70
  br label %37, !dbg !70

37:                                               ; preds = %33, %27, %2
  %38 = load [1300 x [1300 x double]]*, [1300 x [1300 x double]]** %8, align 8, !dbg !73
  %39 = bitcast [1300 x [1300 x double]]* %38 to i8*, !dbg !73
  call void @free(i8* %39) #7, !dbg !73
  %40 = load [1300 x [1300 x double]]*, [1300 x [1300 x double]]** %9, align 8, !dbg !74
  %41 = bitcast [1300 x [1300 x double]]* %40 to i8*, !dbg !74
  call void @free(i8* %41) #7, !dbg !74
  ret i32 0, !dbg !75
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @init_array(i32 %0, [1300 x double]* %1, [1300 x double]* %2) #0 !dbg !76 {
  %4 = alloca i32, align 4
  %5 = alloca [1300 x double]*, align 8
  %6 = alloca [1300 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !82, metadata !DIExpression()), !dbg !83
  store [1300 x double]* %1, [1300 x double]** %5, align 8
  call void @llvm.dbg.declare(metadata [1300 x double]** %5, metadata !84, metadata !DIExpression()), !dbg !85
  store [1300 x double]* %2, [1300 x double]** %6, align 8
  call void @llvm.dbg.declare(metadata [1300 x double]** %6, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %7, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %8, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %7, align 4, !dbg !92
  br label %9, !dbg !94

9:                                                ; preds = %55, %3
  %10 = load i32, i32* %7, align 4, !dbg !95
  %11 = load i32, i32* %4, align 4, !dbg !97
  %12 = icmp slt i32 %10, %11, !dbg !98
  br i1 %12, label %13, label %58, !dbg !99

13:                                               ; preds = %9
  store i32 0, i32* %8, align 4, !dbg !100
  br label %14, !dbg !102

14:                                               ; preds = %18, %13
  %15 = load i32, i32* %8, align 4, !dbg !103
  %16 = load i32, i32* %4, align 4, !dbg !105
  %17 = icmp slt i32 %15, %16, !dbg !106
  br i1 %17, label %18, label %55, !dbg !107

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4, !dbg !108
  %20 = sitofp i32 %19 to double, !dbg !110
  %21 = load i32, i32* %8, align 4, !dbg !111
  %22 = add nsw i32 %21, 2, !dbg !112
  %23 = sitofp i32 %22 to double, !dbg !113
  %24 = fmul double %20, %23, !dbg !114
  %25 = fadd double %24, 2.000000e+00, !dbg !115
  %26 = load i32, i32* %4, align 4, !dbg !116
  %27 = sitofp i32 %26 to double, !dbg !116
  %28 = fdiv double %25, %27, !dbg !117
  %29 = load [1300 x double]*, [1300 x double]** %5, align 8, !dbg !118
  %30 = load i32, i32* %7, align 4, !dbg !119
  %31 = sext i32 %30 to i64, !dbg !118
  %32 = getelementptr inbounds [1300 x double], [1300 x double]* %29, i64 %31, !dbg !118
  %33 = load i32, i32* %8, align 4, !dbg !120
  %34 = sext i32 %33 to i64, !dbg !118
  %35 = getelementptr inbounds [1300 x double], [1300 x double]* %32, i64 0, i64 %34, !dbg !118
  store double %28, double* %35, align 8, !dbg !121
  %36 = load i32, i32* %7, align 4, !dbg !122
  %37 = sitofp i32 %36 to double, !dbg !123
  %38 = load i32, i32* %8, align 4, !dbg !124
  %39 = add nsw i32 %38, 3, !dbg !125
  %40 = sitofp i32 %39 to double, !dbg !126
  %41 = fmul double %37, %40, !dbg !127
  %42 = fadd double %41, 3.000000e+00, !dbg !128
  %43 = load i32, i32* %4, align 4, !dbg !129
  %44 = sitofp i32 %43 to double, !dbg !129
  %45 = fdiv double %42, %44, !dbg !130
  %46 = load [1300 x double]*, [1300 x double]** %6, align 8, !dbg !131
  %47 = load i32, i32* %7, align 4, !dbg !132
  %48 = sext i32 %47 to i64, !dbg !131
  %49 = getelementptr inbounds [1300 x double], [1300 x double]* %46, i64 %48, !dbg !131
  %50 = load i32, i32* %8, align 4, !dbg !133
  %51 = sext i32 %50 to i64, !dbg !131
  %52 = getelementptr inbounds [1300 x double], [1300 x double]* %49, i64 0, i64 %51, !dbg !131
  store double %45, double* %52, align 8, !dbg !134
  %53 = load i32, i32* %8, align 4, !dbg !135
  %54 = add nsw i32 %53, 1, !dbg !135
  store i32 %54, i32* %8, align 4, !dbg !135
  br label %14, !dbg !136, !llvm.loop !137

55:                                               ; preds = %14
  %56 = load i32, i32* %7, align 4, !dbg !140
  %57 = add nsw i32 %56, 1, !dbg !140
  store i32 %57, i32* %7, align 4, !dbg !140
  br label %9, !dbg !141, !llvm.loop !142

58:                                               ; preds = %9
  ret void, !dbg !144
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @kernel_jacobi_2d(i32 %0, i32 %1, [1300 x double]* %2, [1300 x double]* %3) #0 !dbg !145 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1300 x double]*, align 8
  %8 = alloca [1300 x double]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !150, metadata !DIExpression()), !dbg !151
  store [1300 x double]* %2, [1300 x double]** %7, align 8
  call void @llvm.dbg.declare(metadata [1300 x double]** %7, metadata !152, metadata !DIExpression()), !dbg !153
  store [1300 x double]* %3, [1300 x double]** %8, align 8
  call void @llvm.dbg.declare(metadata [1300 x double]** %8, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i32* %9, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %10, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %11, metadata !160, metadata !DIExpression()), !dbg !161
  store i32 0, i32* %9, align 4, !dbg !162
  br label %12, !dbg !164

12:                                               ; preds = %164, %4
  %13 = load i32, i32* %9, align 4, !dbg !165
  %14 = load i32, i32* %5, align 4, !dbg !167
  %15 = icmp slt i32 %13, %14, !dbg !168
  br i1 %15, label %16, label %167, !dbg !169

16:                                               ; preds = %12
  store i32 1, i32* %10, align 4, !dbg !170
  br label %17, !dbg !173

17:                                               ; preds = %87, %16
  %18 = load i32, i32* %10, align 4, !dbg !174
  %19 = load i32, i32* %6, align 4, !dbg !176
  %20 = sub nsw i32 %19, 1, !dbg !177
  %21 = icmp slt i32 %18, %20, !dbg !178
  br i1 %21, label %22, label %90, !dbg !179

22:                                               ; preds = %17
  store i32 1, i32* %11, align 4, !dbg !180
  br label %23, !dbg !182

23:                                               ; preds = %28, %22
  %24 = load i32, i32* %11, align 4, !dbg !183
  %25 = load i32, i32* %6, align 4, !dbg !185
  %26 = sub nsw i32 %25, 1, !dbg !186
  %27 = icmp slt i32 %24, %26, !dbg !187
  br i1 %27, label %28, label %87, !dbg !188

28:                                               ; preds = %23
  %29 = load [1300 x double]*, [1300 x double]** %7, align 8, !dbg !189
  %30 = load i32, i32* %10, align 4, !dbg !190
  %31 = sext i32 %30 to i64, !dbg !189
  %32 = getelementptr inbounds [1300 x double], [1300 x double]* %29, i64 %31, !dbg !189
  %33 = load i32, i32* %11, align 4, !dbg !191
  %34 = sext i32 %33 to i64, !dbg !189
  %35 = getelementptr inbounds [1300 x double], [1300 x double]* %32, i64 0, i64 %34, !dbg !189
  %36 = load double, double* %35, align 8, !dbg !189
  %37 = load [1300 x double]*, [1300 x double]** %7, align 8, !dbg !192
  %38 = load i32, i32* %10, align 4, !dbg !193
  %39 = sext i32 %38 to i64, !dbg !192
  %40 = getelementptr inbounds [1300 x double], [1300 x double]* %37, i64 %39, !dbg !192
  %41 = load i32, i32* %11, align 4, !dbg !194
  %42 = sub nsw i32 %41, 1, !dbg !195
  %43 = sext i32 %42 to i64, !dbg !192
  %44 = getelementptr inbounds [1300 x double], [1300 x double]* %40, i64 0, i64 %43, !dbg !192
  %45 = load double, double* %44, align 8, !dbg !192
  %46 = fadd double %36, %45, !dbg !196
  %47 = load [1300 x double]*, [1300 x double]** %7, align 8, !dbg !197
  %48 = load i32, i32* %10, align 4, !dbg !198
  %49 = sext i32 %48 to i64, !dbg !197
  %50 = getelementptr inbounds [1300 x double], [1300 x double]* %47, i64 %49, !dbg !197
  %51 = load i32, i32* %11, align 4, !dbg !199
  %52 = add nsw i32 1, %51, !dbg !200
  %53 = sext i32 %52 to i64, !dbg !197
  %54 = getelementptr inbounds [1300 x double], [1300 x double]* %50, i64 0, i64 %53, !dbg !197
  %55 = load double, double* %54, align 8, !dbg !197
  %56 = fadd double %46, %55, !dbg !201
  %57 = load [1300 x double]*, [1300 x double]** %7, align 8, !dbg !202
  %58 = load i32, i32* %10, align 4, !dbg !203
  %59 = add nsw i32 1, %58, !dbg !204
  %60 = sext i32 %59 to i64, !dbg !202
  %61 = getelementptr inbounds [1300 x double], [1300 x double]* %57, i64 %60, !dbg !202
  %62 = load i32, i32* %11, align 4, !dbg !205
  %63 = sext i32 %62 to i64, !dbg !202
  %64 = getelementptr inbounds [1300 x double], [1300 x double]* %61, i64 0, i64 %63, !dbg !202
  %65 = load double, double* %64, align 8, !dbg !202
  %66 = fadd double %56, %65, !dbg !206
  %67 = load [1300 x double]*, [1300 x double]** %7, align 8, !dbg !207
  %68 = load i32, i32* %10, align 4, !dbg !208
  %69 = sub nsw i32 %68, 1, !dbg !209
  %70 = sext i32 %69 to i64, !dbg !207
  %71 = getelementptr inbounds [1300 x double], [1300 x double]* %67, i64 %70, !dbg !207
  %72 = load i32, i32* %11, align 4, !dbg !210
  %73 = sext i32 %72 to i64, !dbg !207
  %74 = getelementptr inbounds [1300 x double], [1300 x double]* %71, i64 0, i64 %73, !dbg !207
  %75 = load double, double* %74, align 8, !dbg !207
  %76 = fadd double %66, %75, !dbg !211
  %77 = fmul double 2.000000e-01, %76, !dbg !212
  %78 = load [1300 x double]*, [1300 x double]** %8, align 8, !dbg !213
  %79 = load i32, i32* %10, align 4, !dbg !214
  %80 = sext i32 %79 to i64, !dbg !213
  %81 = getelementptr inbounds [1300 x double], [1300 x double]* %78, i64 %80, !dbg !213
  %82 = load i32, i32* %11, align 4, !dbg !215
  %83 = sext i32 %82 to i64, !dbg !213
  %84 = getelementptr inbounds [1300 x double], [1300 x double]* %81, i64 0, i64 %83, !dbg !213
  store double %77, double* %84, align 8, !dbg !216
  %85 = load i32, i32* %11, align 4, !dbg !217
  %86 = add nsw i32 %85, 1, !dbg !217
  store i32 %86, i32* %11, align 4, !dbg !217
  br label %23, !dbg !218, !llvm.loop !219

87:                                               ; preds = %23
  %88 = load i32, i32* %10, align 4, !dbg !221
  %89 = add nsw i32 %88, 1, !dbg !221
  store i32 %89, i32* %10, align 4, !dbg !221
  br label %17, !dbg !222, !llvm.loop !223

90:                                               ; preds = %17
  store i32 1, i32* %10, align 4, !dbg !225
  br label %91, !dbg !227

91:                                               ; preds = %161, %90
  %92 = load i32, i32* %10, align 4, !dbg !228
  %93 = load i32, i32* %6, align 4, !dbg !230
  %94 = sub nsw i32 %93, 1, !dbg !231
  %95 = icmp slt i32 %92, %94, !dbg !232
  br i1 %95, label %96, label %164, !dbg !233

96:                                               ; preds = %91
  store i32 1, i32* %11, align 4, !dbg !234
  br label %97, !dbg !236

97:                                               ; preds = %102, %96
  %98 = load i32, i32* %11, align 4, !dbg !237
  %99 = load i32, i32* %6, align 4, !dbg !239
  %100 = sub nsw i32 %99, 1, !dbg !240
  %101 = icmp slt i32 %98, %100, !dbg !241
  br i1 %101, label %102, label %161, !dbg !242

102:                                              ; preds = %97
  %103 = load [1300 x double]*, [1300 x double]** %8, align 8, !dbg !243
  %104 = load i32, i32* %10, align 4, !dbg !244
  %105 = sext i32 %104 to i64, !dbg !243
  %106 = getelementptr inbounds [1300 x double], [1300 x double]* %103, i64 %105, !dbg !243
  %107 = load i32, i32* %11, align 4, !dbg !245
  %108 = sext i32 %107 to i64, !dbg !243
  %109 = getelementptr inbounds [1300 x double], [1300 x double]* %106, i64 0, i64 %108, !dbg !243
  %110 = load double, double* %109, align 8, !dbg !243
  %111 = load [1300 x double]*, [1300 x double]** %8, align 8, !dbg !246
  %112 = load i32, i32* %10, align 4, !dbg !247
  %113 = sext i32 %112 to i64, !dbg !246
  %114 = getelementptr inbounds [1300 x double], [1300 x double]* %111, i64 %113, !dbg !246
  %115 = load i32, i32* %11, align 4, !dbg !248
  %116 = sub nsw i32 %115, 1, !dbg !249
  %117 = sext i32 %116 to i64, !dbg !246
  %118 = getelementptr inbounds [1300 x double], [1300 x double]* %114, i64 0, i64 %117, !dbg !246
  %119 = load double, double* %118, align 8, !dbg !246
  %120 = fadd double %110, %119, !dbg !250
  %121 = load [1300 x double]*, [1300 x double]** %8, align 8, !dbg !251
  %122 = load i32, i32* %10, align 4, !dbg !252
  %123 = sext i32 %122 to i64, !dbg !251
  %124 = getelementptr inbounds [1300 x double], [1300 x double]* %121, i64 %123, !dbg !251
  %125 = load i32, i32* %11, align 4, !dbg !253
  %126 = add nsw i32 1, %125, !dbg !254
  %127 = sext i32 %126 to i64, !dbg !251
  %128 = getelementptr inbounds [1300 x double], [1300 x double]* %124, i64 0, i64 %127, !dbg !251
  %129 = load double, double* %128, align 8, !dbg !251
  %130 = fadd double %120, %129, !dbg !255
  %131 = load [1300 x double]*, [1300 x double]** %8, align 8, !dbg !256
  %132 = load i32, i32* %10, align 4, !dbg !257
  %133 = add nsw i32 1, %132, !dbg !258
  %134 = sext i32 %133 to i64, !dbg !256
  %135 = getelementptr inbounds [1300 x double], [1300 x double]* %131, i64 %134, !dbg !256
  %136 = load i32, i32* %11, align 4, !dbg !259
  %137 = sext i32 %136 to i64, !dbg !256
  %138 = getelementptr inbounds [1300 x double], [1300 x double]* %135, i64 0, i64 %137, !dbg !256
  %139 = load double, double* %138, align 8, !dbg !256
  %140 = fadd double %130, %139, !dbg !260
  %141 = load [1300 x double]*, [1300 x double]** %8, align 8, !dbg !261
  %142 = load i32, i32* %10, align 4, !dbg !262
  %143 = sub nsw i32 %142, 1, !dbg !263
  %144 = sext i32 %143 to i64, !dbg !261
  %145 = getelementptr inbounds [1300 x double], [1300 x double]* %141, i64 %144, !dbg !261
  %146 = load i32, i32* %11, align 4, !dbg !264
  %147 = sext i32 %146 to i64, !dbg !261
  %148 = getelementptr inbounds [1300 x double], [1300 x double]* %145, i64 0, i64 %147, !dbg !261
  %149 = load double, double* %148, align 8, !dbg !261
  %150 = fadd double %140, %149, !dbg !265
  %151 = fmul double 2.000000e-01, %150, !dbg !266
  %152 = load [1300 x double]*, [1300 x double]** %7, align 8, !dbg !267
  %153 = load i32, i32* %10, align 4, !dbg !268
  %154 = sext i32 %153 to i64, !dbg !267
  %155 = getelementptr inbounds [1300 x double], [1300 x double]* %152, i64 %154, !dbg !267
  %156 = load i32, i32* %11, align 4, !dbg !269
  %157 = sext i32 %156 to i64, !dbg !267
  %158 = getelementptr inbounds [1300 x double], [1300 x double]* %155, i64 0, i64 %157, !dbg !267
  store double %151, double* %158, align 8, !dbg !270
  %159 = load i32, i32* %11, align 4, !dbg !271
  %160 = add nsw i32 %159, 1, !dbg !271
  store i32 %160, i32* %11, align 4, !dbg !271
  br label %97, !dbg !272, !llvm.loop !273

161:                                              ; preds = %97
  %162 = load i32, i32* %10, align 4, !dbg !275
  %163 = add nsw i32 %162, 1, !dbg !275
  store i32 %163, i32* %10, align 4, !dbg !275
  br label %91, !dbg !276, !llvm.loop !277

164:                                              ; preds = %91
  %165 = load i32, i32* %9, align 4, !dbg !279
  %166 = add nsw i32 %165, 1, !dbg !279
  store i32 %166, i32* %9, align 4, !dbg !279
  br label %12, !dbg !280, !llvm.loop !281

167:                                              ; preds = %12
  ret void, !dbg !283
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @print_array(i32 %0, [1300 x double]* %1) #0 !dbg !284 {
  %3 = alloca i32, align 4
  %4 = alloca [1300 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !287, metadata !DIExpression()), !dbg !288
  store [1300 x double]* %1, [1300 x double]** %4, align 8
  call void @llvm.dbg.declare(metadata [1300 x double]** %4, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %5, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %6, metadata !293, metadata !DIExpression()), !dbg !294
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !295
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)), !dbg !295
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !296
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !296
  store i32 0, i32* %5, align 4, !dbg !297
  br label %11, !dbg !299

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %5, align 4, !dbg !300
  %13 = load i32, i32* %3, align 4, !dbg !302
  %14 = icmp slt i32 %12, %13, !dbg !303
  br i1 %14, label %15, label %47, !dbg !304

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4, !dbg !305
  br label %16, !dbg !307

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %6, align 4, !dbg !308
  %18 = load i32, i32* %3, align 4, !dbg !310
  %19 = icmp slt i32 %17, %18, !dbg !311
  br i1 %19, label %20, label %44, !dbg !312

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4, !dbg !313
  %22 = load i32, i32* %3, align 4, !dbg !316
  %23 = mul nsw i32 %21, %22, !dbg !317
  %24 = load i32, i32* %6, align 4, !dbg !318
  %25 = add nsw i32 %23, %24, !dbg !319
  %26 = srem i32 %25, 20, !dbg !320
  %27 = icmp eq i32 %26, 0, !dbg !321
  br i1 %27, label %28, label %31, !dbg !322

28:                                               ; preds = %20
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !323
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !324
  br label %31, !dbg !324

31:                                               ; preds = %28, %20
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !325
  %33 = load [1300 x double]*, [1300 x double]** %4, align 8, !dbg !326
  %34 = load i32, i32* %5, align 4, !dbg !327
  %35 = sext i32 %34 to i64, !dbg !326
  %36 = getelementptr inbounds [1300 x double], [1300 x double]* %33, i64 %35, !dbg !326
  %37 = load i32, i32* %6, align 4, !dbg !328
  %38 = sext i32 %37 to i64, !dbg !326
  %39 = getelementptr inbounds [1300 x double], [1300 x double]* %36, i64 0, i64 %38, !dbg !326
  %40 = load double, double* %39, align 8, !dbg !326
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %40), !dbg !329
  %42 = load i32, i32* %6, align 4, !dbg !330
  %43 = add nsw i32 %42, 1, !dbg !330
  store i32 %43, i32* %6, align 4, !dbg !330
  br label %16, !dbg !331, !llvm.loop !332

44:                                               ; preds = %16
  %45 = load i32, i32* %5, align 4, !dbg !334
  %46 = add nsw i32 %45, 1, !dbg !334
  store i32 %46, i32* %5, align 4, !dbg !334
  br label %11, !dbg !335, !llvm.loop !336

47:                                               ; preds = %11
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !338
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !338
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !339
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_flush_cache() #0 !dbg !341 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !344, metadata !DIExpression()), !dbg !345
  store i32 4194560, i32* %1, align 4, !dbg !345
  call void @llvm.dbg.declare(metadata double** %2, metadata !346, metadata !DIExpression()), !dbg !347
  %5 = load i32, i32* %1, align 4, !dbg !348
  %6 = sext i32 %5 to i64, !dbg !348
  %7 = call noalias align 16 i8* @calloc(i64 %6, i64 8) #7, !dbg !349
  %8 = bitcast i8* %7 to double*, !dbg !350
  store double* %8, double** %2, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata i32* %3, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata double* %4, metadata !353, metadata !DIExpression()), !dbg !354
  store double 0.000000e+00, double* %4, align 8, !dbg !354
  store i32 0, i32* %3, align 4, !dbg !355
  br label %9, !dbg !357

9:                                                ; preds = %13, %0
  %10 = load i32, i32* %3, align 4, !dbg !358
  %11 = load i32, i32* %1, align 4, !dbg !360
  %12 = icmp slt i32 %10, %11, !dbg !361
  br i1 %12, label %13, label %23, !dbg !362

13:                                               ; preds = %9
  %14 = load double*, double** %2, align 8, !dbg !363
  %15 = load i32, i32* %3, align 4, !dbg !364
  %16 = sext i32 %15 to i64, !dbg !363
  %17 = getelementptr inbounds double, double* %14, i64 %16, !dbg !363
  %18 = load double, double* %17, align 8, !dbg !363
  %19 = load double, double* %4, align 8, !dbg !365
  %20 = fadd double %19, %18, !dbg !365
  store double %20, double* %4, align 8, !dbg !365
  %21 = load i32, i32* %3, align 4, !dbg !366
  %22 = add nsw i32 %21, 1, !dbg !366
  store i32 %22, i32* %3, align 4, !dbg !366
  br label %9, !dbg !367, !llvm.loop !368

23:                                               ; preds = %9
  %24 = load double, double* %4, align 8, !dbg !370
  %25 = fcmp ole double %24, 1.000000e+01, !dbg !370
  br i1 %25, label %27, label %26, !dbg !373

26:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.9, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #8, !dbg !370
  unreachable, !dbg !370

27:                                               ; preds = %23
  %28 = load double*, double** %2, align 8, !dbg !374
  %29 = bitcast double* %28 to i8*, !dbg !374
  call void @free(i8* %29) #7, !dbg !375
  ret void, !dbg !376
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_prepare_instruments() #0 !dbg !377 {
  call void @polybench_flush_cache(), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_start() #0 !dbg !380 {
  call void @polybench_prepare_instruments(), !dbg !381
  %1 = call double @rtclock(), !dbg !382
  store double %1, double* @polybench_t_start, align 8, !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal double @rtclock() #0 !dbg !385 {
  ret double 0.000000e+00, !dbg !388
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_stop() #0 !dbg !389 {
  %1 = call double @rtclock(), !dbg !390
  store double %1, double* @polybench_t_end, align 8, !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_print() #0 !dbg !393 {
  %1 = load double, double* @polybench_t_end, align 8, !dbg !394
  %2 = load double, double* @polybench_t_start, align 8, !dbg !395
  %3 = fsub double %1, %2, !dbg !396
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.10, i64 0, i64 0), double %3), !dbg !397
  ret void, !dbg !398
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_free_data(i8* %0) #0 !dbg !399 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !402, metadata !DIExpression()), !dbg !403
  %3 = load i8*, i8** %2, align 8, !dbg !404
  call void @free(i8* %3) #7, !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @polybench_alloc_data(i64 %0, i32 %1) #0 !dbg !407 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !410, metadata !DIExpression()), !dbg !411
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata i64* %5, metadata !414, metadata !DIExpression()), !dbg !415
  %7 = load i64, i64* %3, align 8, !dbg !416
  store i64 %7, i64* %5, align 8, !dbg !415
  %8 = load i32, i32* %4, align 4, !dbg !417
  %9 = sext i32 %8 to i64, !dbg !417
  %10 = load i64, i64* %5, align 8, !dbg !418
  %11 = mul i64 %10, %9, !dbg !418
  store i64 %11, i64* %5, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata i8** %6, metadata !419, metadata !DIExpression()), !dbg !420
  %12 = load i64, i64* %5, align 8, !dbg !421
  %13 = call i8* @xmalloc(i64 %12), !dbg !422
  store i8* %13, i8** %6, align 8, !dbg !420
  %14 = load i8*, i8** %6, align 8, !dbg !423
  ret i8* %14, !dbg !424
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i8* @xmalloc(i64 %0) #0 !dbg !425 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata i8** %3, metadata !430, metadata !DIExpression()), !dbg !431
  store i8* null, i8** %3, align 8, !dbg !431
  %6 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !432
  %7 = add i64 %6, 0, !dbg !432
  store i64 %7, i64* @polybench_inter_array_padding_sz, align 8, !dbg !432
  call void @llvm.dbg.declare(metadata i64* %4, metadata !433, metadata !DIExpression()), !dbg !434
  %8 = load i64, i64* %2, align 8, !dbg !435
  %9 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !436
  %10 = add i64 %8, %9, !dbg !437
  store i64 %10, i64* %4, align 8, !dbg !434
  call void @llvm.dbg.declare(metadata i32* %5, metadata !438, metadata !DIExpression()), !dbg !439
  %11 = load i64, i64* %4, align 8, !dbg !440
  %12 = call i32 @posix_memalign(i8** %3, i64 4096, i64 %11) #7, !dbg !441
  store i32 %12, i32* %5, align 4, !dbg !439
  %13 = load i8*, i8** %3, align 8, !dbg !442
  %14 = icmp eq i8* %13, null, !dbg !442
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %or.cond = select i1 %14, i1 true, i1 %16, !dbg !444
  br i1 %or.cond, label %17, label %20, !dbg !444

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !445
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3.13, i64 0, i64 0)), !dbg !447
  call void @exit(i32 1) #8, !dbg !448
  unreachable, !dbg !448

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8, !dbg !449
  ret i8* %21, !dbg !450
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
!28 = !DIFile(filename: "stencils/jacobi-2d/jacobi-2d.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!29 = !{!30, !8, !7}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 108160000, elements: !32)
!32 = !{!33, !33}
!33 = !DISubrange(count: 1300)
!34 = !{!"clang version 13.0.1"}
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = distinct !DISubprogram(name: "main", scope: !43, file: !43, line: 87, type: !44, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !4)
!43 = !DIFile(filename: "./stencils/jacobi-2d/jacobi-2d.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!44 = !DISubroutineType(types: !45)
!45 = !{!26, !26, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DILocalVariable(name: "argc", arg: 1, scope: !42, file: !43, line: 87, type: !26)
!50 = !DILocation(line: 87, column: 14, scope: !42)
!51 = !DILocalVariable(name: "argv", arg: 2, scope: !42, file: !43, line: 87, type: !46)
!52 = !DILocation(line: 87, column: 27, scope: !42)
!53 = !DILocalVariable(name: "n", scope: !42, file: !43, line: 90, type: !26)
!54 = !DILocation(line: 90, column: 7, scope: !42)
!55 = !DILocalVariable(name: "tsteps", scope: !42, file: !43, line: 91, type: !26)
!56 = !DILocation(line: 91, column: 7, scope: !42)
!57 = !DILocalVariable(name: "A", scope: !42, file: !43, line: 94, type: !30)
!58 = !DILocation(line: 94, column: 3, scope: !42)
!59 = !DILocalVariable(name: "B", scope: !42, file: !43, line: 95, type: !30)
!60 = !DILocation(line: 95, column: 3, scope: !42)
!61 = !DILocation(line: 99, column: 15, scope: !42)
!62 = !DILocation(line: 99, column: 18, scope: !42)
!63 = !DILocation(line: 99, column: 38, scope: !42)
!64 = !DILocation(line: 99, column: 3, scope: !42)
!65 = !DILocation(line: 105, column: 20, scope: !42)
!66 = !DILocation(line: 105, column: 28, scope: !42)
!67 = !DILocation(line: 105, column: 31, scope: !42)
!68 = !DILocation(line: 105, column: 51, scope: !42)
!69 = !DILocation(line: 105, column: 3, scope: !42)
!70 = !DILocation(line: 113, column: 3, scope: !71)
!71 = distinct !DILexicalBlock(scope: !42, file: !43, line: 113, column: 3)
!72 = !DILocation(line: 113, column: 3, scope: !42)
!73 = !DILocation(line: 116, column: 3, scope: !42)
!74 = !DILocation(line: 117, column: 3, scope: !42)
!75 = !DILocation(line: 119, column: 3, scope: !42)
!76 = distinct !DISubprogram(name: "init_array", scope: !43, file: !43, line: 26, type: !77, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !26, !79, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 83200, elements: !81)
!81 = !{!33}
!82 = !DILocalVariable(name: "n", arg: 1, scope: !76, file: !43, line: 26, type: !26)
!83 = !DILocation(line: 26, column: 22, scope: !76)
!84 = !DILocalVariable(name: "A", arg: 2, scope: !76, file: !43, line: 27, type: !79)
!85 = !DILocation(line: 27, column: 14, scope: !76)
!86 = !DILocalVariable(name: "B", arg: 3, scope: !76, file: !43, line: 28, type: !79)
!87 = !DILocation(line: 28, column: 14, scope: !76)
!88 = !DILocalVariable(name: "i", scope: !76, file: !43, line: 30, type: !26)
!89 = !DILocation(line: 30, column: 7, scope: !76)
!90 = !DILocalVariable(name: "j", scope: !76, file: !43, line: 30, type: !26)
!91 = !DILocation(line: 30, column: 10, scope: !76)
!92 = !DILocation(line: 32, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !76, file: !43, line: 32, column: 3)
!94 = !DILocation(line: 32, column: 8, scope: !93)
!95 = !DILocation(line: 32, column: 15, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !43, line: 32, column: 3)
!97 = !DILocation(line: 32, column: 19, scope: !96)
!98 = !DILocation(line: 32, column: 17, scope: !96)
!99 = !DILocation(line: 32, column: 3, scope: !93)
!100 = !DILocation(line: 33, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !43, line: 33, column: 5)
!102 = !DILocation(line: 33, column: 10, scope: !101)
!103 = !DILocation(line: 33, column: 17, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !43, line: 33, column: 5)
!105 = !DILocation(line: 33, column: 21, scope: !104)
!106 = !DILocation(line: 33, column: 19, scope: !104)
!107 = !DILocation(line: 33, column: 5, scope: !101)
!108 = !DILocation(line: 35, column: 25, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !43, line: 34, column: 7)
!110 = !DILocation(line: 35, column: 13, scope: !109)
!111 = !DILocation(line: 35, column: 28, scope: !109)
!112 = !DILocation(line: 35, column: 29, scope: !109)
!113 = !DILocation(line: 35, column: 27, scope: !109)
!114 = !DILocation(line: 35, column: 26, scope: !109)
!115 = !DILocation(line: 35, column: 33, scope: !109)
!116 = !DILocation(line: 35, column: 40, scope: !109)
!117 = !DILocation(line: 35, column: 38, scope: !109)
!118 = !DILocation(line: 35, column: 2, scope: !109)
!119 = !DILocation(line: 35, column: 4, scope: !109)
!120 = !DILocation(line: 35, column: 7, scope: !109)
!121 = !DILocation(line: 35, column: 10, scope: !109)
!122 = !DILocation(line: 36, column: 25, scope: !109)
!123 = !DILocation(line: 36, column: 13, scope: !109)
!124 = !DILocation(line: 36, column: 28, scope: !109)
!125 = !DILocation(line: 36, column: 29, scope: !109)
!126 = !DILocation(line: 36, column: 27, scope: !109)
!127 = !DILocation(line: 36, column: 26, scope: !109)
!128 = !DILocation(line: 36, column: 33, scope: !109)
!129 = !DILocation(line: 36, column: 40, scope: !109)
!130 = !DILocation(line: 36, column: 38, scope: !109)
!131 = !DILocation(line: 36, column: 2, scope: !109)
!132 = !DILocation(line: 36, column: 4, scope: !109)
!133 = !DILocation(line: 36, column: 7, scope: !109)
!134 = !DILocation(line: 36, column: 10, scope: !109)
!135 = !DILocation(line: 33, column: 25, scope: !104)
!136 = !DILocation(line: 33, column: 5, scope: !104)
!137 = distinct !{!137, !107, !138, !139}
!138 = !DILocation(line: 37, column: 7, scope: !101)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !DILocation(line: 32, column: 23, scope: !96)
!141 = !DILocation(line: 32, column: 3, scope: !96)
!142 = distinct !{!142, !99, !143, !139}
!143 = !DILocation(line: 37, column: 7, scope: !93)
!144 = !DILocation(line: 38, column: 1, scope: !76)
!145 = distinct !DISubprogram(name: "kernel_jacobi_2d", scope: !43, file: !43, line: 65, type: !146, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !26, !26, !79, !79}
!148 = !DILocalVariable(name: "tsteps", arg: 1, scope: !145, file: !43, line: 65, type: !26)
!149 = !DILocation(line: 65, column: 27, scope: !145)
!150 = !DILocalVariable(name: "n", arg: 2, scope: !145, file: !43, line: 66, type: !26)
!151 = !DILocation(line: 66, column: 12, scope: !145)
!152 = !DILocalVariable(name: "A", arg: 3, scope: !145, file: !43, line: 67, type: !79)
!153 = !DILocation(line: 67, column: 18, scope: !145)
!154 = !DILocalVariable(name: "B", arg: 4, scope: !145, file: !43, line: 68, type: !79)
!155 = !DILocation(line: 68, column: 18, scope: !145)
!156 = !DILocalVariable(name: "t", scope: !145, file: !43, line: 70, type: !26)
!157 = !DILocation(line: 70, column: 7, scope: !145)
!158 = !DILocalVariable(name: "i", scope: !145, file: !43, line: 70, type: !26)
!159 = !DILocation(line: 70, column: 10, scope: !145)
!160 = !DILocalVariable(name: "j", scope: !145, file: !43, line: 70, type: !26)
!161 = !DILocation(line: 70, column: 13, scope: !145)
!162 = !DILocation(line: 73, column: 10, scope: !163)
!163 = distinct !DILexicalBlock(scope: !145, file: !43, line: 73, column: 3)
!164 = !DILocation(line: 73, column: 8, scope: !163)
!165 = !DILocation(line: 73, column: 15, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !43, line: 73, column: 3)
!167 = !DILocation(line: 73, column: 19, scope: !166)
!168 = !DILocation(line: 73, column: 17, scope: !166)
!169 = !DILocation(line: 73, column: 3, scope: !163)
!170 = !DILocation(line: 75, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !43, line: 75, column: 7)
!172 = distinct !DILexicalBlock(scope: !166, file: !43, line: 74, column: 5)
!173 = !DILocation(line: 75, column: 12, scope: !171)
!174 = !DILocation(line: 75, column: 19, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !43, line: 75, column: 7)
!176 = !DILocation(line: 75, column: 23, scope: !175)
!177 = !DILocation(line: 75, column: 29, scope: !175)
!178 = !DILocation(line: 75, column: 21, scope: !175)
!179 = !DILocation(line: 75, column: 7, scope: !171)
!180 = !DILocation(line: 76, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !175, file: !43, line: 76, column: 2)
!182 = !DILocation(line: 76, column: 7, scope: !181)
!183 = !DILocation(line: 76, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !43, line: 76, column: 2)
!185 = !DILocation(line: 76, column: 18, scope: !184)
!186 = !DILocation(line: 76, column: 24, scope: !184)
!187 = !DILocation(line: 76, column: 16, scope: !184)
!188 = !DILocation(line: 76, column: 2, scope: !181)
!189 = !DILocation(line: 77, column: 33, scope: !184)
!190 = !DILocation(line: 77, column: 35, scope: !184)
!191 = !DILocation(line: 77, column: 38, scope: !184)
!192 = !DILocation(line: 77, column: 43, scope: !184)
!193 = !DILocation(line: 77, column: 45, scope: !184)
!194 = !DILocation(line: 77, column: 48, scope: !184)
!195 = !DILocation(line: 77, column: 49, scope: !184)
!196 = !DILocation(line: 77, column: 41, scope: !184)
!197 = !DILocation(line: 77, column: 55, scope: !184)
!198 = !DILocation(line: 77, column: 57, scope: !184)
!199 = !DILocation(line: 77, column: 62, scope: !184)
!200 = !DILocation(line: 77, column: 61, scope: !184)
!201 = !DILocation(line: 77, column: 53, scope: !184)
!202 = !DILocation(line: 77, column: 67, scope: !184)
!203 = !DILocation(line: 77, column: 71, scope: !184)
!204 = !DILocation(line: 77, column: 70, scope: !184)
!205 = !DILocation(line: 77, column: 74, scope: !184)
!206 = !DILocation(line: 77, column: 65, scope: !184)
!207 = !DILocation(line: 77, column: 79, scope: !184)
!208 = !DILocation(line: 77, column: 81, scope: !184)
!209 = !DILocation(line: 77, column: 82, scope: !184)
!210 = !DILocation(line: 77, column: 86, scope: !184)
!211 = !DILocation(line: 77, column: 77, scope: !184)
!212 = !DILocation(line: 77, column: 30, scope: !184)
!213 = !DILocation(line: 77, column: 4, scope: !184)
!214 = !DILocation(line: 77, column: 6, scope: !184)
!215 = !DILocation(line: 77, column: 9, scope: !184)
!216 = !DILocation(line: 77, column: 12, scope: !184)
!217 = !DILocation(line: 76, column: 30, scope: !184)
!218 = !DILocation(line: 76, column: 2, scope: !184)
!219 = distinct !{!219, !188, !220, !139}
!220 = !DILocation(line: 77, column: 88, scope: !181)
!221 = !DILocation(line: 75, column: 35, scope: !175)
!222 = !DILocation(line: 75, column: 7, scope: !175)
!223 = distinct !{!223, !179, !224, !139}
!224 = !DILocation(line: 77, column: 88, scope: !171)
!225 = !DILocation(line: 78, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !172, file: !43, line: 78, column: 7)
!227 = !DILocation(line: 78, column: 12, scope: !226)
!228 = !DILocation(line: 78, column: 19, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !43, line: 78, column: 7)
!230 = !DILocation(line: 78, column: 23, scope: !229)
!231 = !DILocation(line: 78, column: 29, scope: !229)
!232 = !DILocation(line: 78, column: 21, scope: !229)
!233 = !DILocation(line: 78, column: 7, scope: !226)
!234 = !DILocation(line: 79, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !43, line: 79, column: 2)
!236 = !DILocation(line: 79, column: 7, scope: !235)
!237 = !DILocation(line: 79, column: 14, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !43, line: 79, column: 2)
!239 = !DILocation(line: 79, column: 18, scope: !238)
!240 = !DILocation(line: 79, column: 24, scope: !238)
!241 = !DILocation(line: 79, column: 16, scope: !238)
!242 = !DILocation(line: 79, column: 2, scope: !235)
!243 = !DILocation(line: 80, column: 33, scope: !238)
!244 = !DILocation(line: 80, column: 35, scope: !238)
!245 = !DILocation(line: 80, column: 38, scope: !238)
!246 = !DILocation(line: 80, column: 43, scope: !238)
!247 = !DILocation(line: 80, column: 45, scope: !238)
!248 = !DILocation(line: 80, column: 48, scope: !238)
!249 = !DILocation(line: 80, column: 49, scope: !238)
!250 = !DILocation(line: 80, column: 41, scope: !238)
!251 = !DILocation(line: 80, column: 55, scope: !238)
!252 = !DILocation(line: 80, column: 57, scope: !238)
!253 = !DILocation(line: 80, column: 62, scope: !238)
!254 = !DILocation(line: 80, column: 61, scope: !238)
!255 = !DILocation(line: 80, column: 53, scope: !238)
!256 = !DILocation(line: 80, column: 67, scope: !238)
!257 = !DILocation(line: 80, column: 71, scope: !238)
!258 = !DILocation(line: 80, column: 70, scope: !238)
!259 = !DILocation(line: 80, column: 74, scope: !238)
!260 = !DILocation(line: 80, column: 65, scope: !238)
!261 = !DILocation(line: 80, column: 79, scope: !238)
!262 = !DILocation(line: 80, column: 81, scope: !238)
!263 = !DILocation(line: 80, column: 82, scope: !238)
!264 = !DILocation(line: 80, column: 86, scope: !238)
!265 = !DILocation(line: 80, column: 77, scope: !238)
!266 = !DILocation(line: 80, column: 30, scope: !238)
!267 = !DILocation(line: 80, column: 4, scope: !238)
!268 = !DILocation(line: 80, column: 6, scope: !238)
!269 = !DILocation(line: 80, column: 9, scope: !238)
!270 = !DILocation(line: 80, column: 12, scope: !238)
!271 = !DILocation(line: 79, column: 30, scope: !238)
!272 = !DILocation(line: 79, column: 2, scope: !238)
!273 = distinct !{!273, !242, !274, !139}
!274 = !DILocation(line: 80, column: 88, scope: !235)
!275 = !DILocation(line: 78, column: 35, scope: !229)
!276 = !DILocation(line: 78, column: 7, scope: !229)
!277 = distinct !{!277, !233, !278, !139}
!278 = !DILocation(line: 80, column: 88, scope: !226)
!279 = !DILocation(line: 73, column: 32, scope: !166)
!280 = !DILocation(line: 73, column: 3, scope: !166)
!281 = distinct !{!281, !169, !282, !139}
!282 = !DILocation(line: 81, column: 5, scope: !163)
!283 = !DILocation(line: 84, column: 1, scope: !145)
!284 = distinct !DISubprogram(name: "print_array", scope: !43, file: !43, line: 44, type: !285, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !26, !79}
!287 = !DILocalVariable(name: "n", arg: 1, scope: !284, file: !43, line: 44, type: !26)
!288 = !DILocation(line: 44, column: 22, scope: !284)
!289 = !DILocalVariable(name: "A", arg: 2, scope: !284, file: !43, line: 45, type: !79)
!290 = !DILocation(line: 45, column: 14, scope: !284)
!291 = !DILocalVariable(name: "i", scope: !284, file: !43, line: 48, type: !26)
!292 = !DILocation(line: 48, column: 7, scope: !284)
!293 = !DILocalVariable(name: "j", scope: !284, file: !43, line: 48, type: !26)
!294 = !DILocation(line: 48, column: 10, scope: !284)
!295 = !DILocation(line: 50, column: 3, scope: !284)
!296 = !DILocation(line: 51, column: 3, scope: !284)
!297 = !DILocation(line: 52, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !284, file: !43, line: 52, column: 3)
!299 = !DILocation(line: 52, column: 8, scope: !298)
!300 = !DILocation(line: 52, column: 15, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !43, line: 52, column: 3)
!302 = !DILocation(line: 52, column: 19, scope: !301)
!303 = !DILocation(line: 52, column: 17, scope: !301)
!304 = !DILocation(line: 52, column: 3, scope: !298)
!305 = !DILocation(line: 53, column: 12, scope: !306)
!306 = distinct !DILexicalBlock(scope: !301, file: !43, line: 53, column: 5)
!307 = !DILocation(line: 53, column: 10, scope: !306)
!308 = !DILocation(line: 53, column: 17, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !43, line: 53, column: 5)
!310 = !DILocation(line: 53, column: 21, scope: !309)
!311 = !DILocation(line: 53, column: 19, scope: !309)
!312 = !DILocation(line: 53, column: 5, scope: !306)
!313 = !DILocation(line: 54, column: 12, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !43, line: 54, column: 11)
!315 = distinct !DILexicalBlock(scope: !309, file: !43, line: 53, column: 29)
!316 = !DILocation(line: 54, column: 16, scope: !314)
!317 = !DILocation(line: 54, column: 14, scope: !314)
!318 = !DILocation(line: 54, column: 20, scope: !314)
!319 = !DILocation(line: 54, column: 18, scope: !314)
!320 = !DILocation(line: 54, column: 23, scope: !314)
!321 = !DILocation(line: 54, column: 28, scope: !314)
!322 = !DILocation(line: 54, column: 11, scope: !315)
!323 = !DILocation(line: 54, column: 42, scope: !314)
!324 = !DILocation(line: 54, column: 34, scope: !314)
!325 = !DILocation(line: 55, column: 15, scope: !315)
!326 = !DILocation(line: 55, column: 60, scope: !315)
!327 = !DILocation(line: 55, column: 62, scope: !315)
!328 = !DILocation(line: 55, column: 65, scope: !315)
!329 = !DILocation(line: 55, column: 7, scope: !315)
!330 = !DILocation(line: 53, column: 25, scope: !309)
!331 = !DILocation(line: 53, column: 5, scope: !309)
!332 = distinct !{!332, !312, !333, !139}
!333 = !DILocation(line: 56, column: 5, scope: !306)
!334 = !DILocation(line: 52, column: 23, scope: !301)
!335 = !DILocation(line: 52, column: 3, scope: !301)
!336 = distinct !{!336, !304, !337, !139}
!337 = !DILocation(line: 56, column: 5, scope: !298)
!338 = !DILocation(line: 57, column: 3, scope: !284)
!339 = !DILocation(line: 58, column: 3, scope: !284)
!340 = !DILocation(line: 59, column: 1, scope: !284)
!341 = distinct !DISubprogram(name: "polybench_flush_cache", scope: !3, file: !3, line: 112, type: !342, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!342 = !DISubroutineType(types: !343)
!343 = !{null}
!344 = !DILocalVariable(name: "cs", scope: !341, file: !3, line: 114, type: !26)
!345 = !DILocation(line: 114, column: 7, scope: !341)
!346 = !DILocalVariable(name: "flush", scope: !341, file: !3, line: 115, type: !6)
!347 = !DILocation(line: 115, column: 11, scope: !341)
!348 = !DILocation(line: 115, column: 37, scope: !341)
!349 = !DILocation(line: 115, column: 29, scope: !341)
!350 = !DILocation(line: 115, column: 19, scope: !341)
!351 = !DILocalVariable(name: "i", scope: !341, file: !3, line: 116, type: !26)
!352 = !DILocation(line: 116, column: 7, scope: !341)
!353 = !DILocalVariable(name: "tmp", scope: !341, file: !3, line: 117, type: !7)
!354 = !DILocation(line: 117, column: 10, scope: !341)
!355 = !DILocation(line: 121, column: 10, scope: !356)
!356 = distinct !DILexicalBlock(scope: !341, file: !3, line: 121, column: 3)
!357 = !DILocation(line: 121, column: 8, scope: !356)
!358 = !DILocation(line: 121, column: 15, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !3, line: 121, column: 3)
!360 = !DILocation(line: 121, column: 19, scope: !359)
!361 = !DILocation(line: 121, column: 17, scope: !359)
!362 = !DILocation(line: 121, column: 3, scope: !356)
!363 = !DILocation(line: 122, column: 12, scope: !359)
!364 = !DILocation(line: 122, column: 18, scope: !359)
!365 = !DILocation(line: 122, column: 9, scope: !359)
!366 = !DILocation(line: 121, column: 24, scope: !359)
!367 = !DILocation(line: 121, column: 3, scope: !359)
!368 = distinct !{!368, !362, !369, !139}
!369 = !DILocation(line: 122, column: 19, scope: !356)
!370 = !DILocation(line: 123, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 123, column: 3)
!372 = distinct !DILexicalBlock(scope: !341, file: !3, line: 123, column: 3)
!373 = !DILocation(line: 123, column: 3, scope: !372)
!374 = !DILocation(line: 124, column: 9, scope: !341)
!375 = !DILocation(line: 124, column: 3, scope: !341)
!376 = !DILocation(line: 125, column: 1, scope: !341)
!377 = distinct !DISubprogram(name: "polybench_prepare_instruments", scope: !3, file: !3, line: 353, type: !342, scopeLine: 354, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!378 = !DILocation(line: 356, column: 3, scope: !377)
!379 = !DILocation(line: 361, column: 1, scope: !377)
!380 = distinct !DISubprogram(name: "polybench_timer_start", scope: !3, file: !3, line: 364, type: !342, scopeLine: 365, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!381 = !DILocation(line: 366, column: 3, scope: !380)
!382 = !DILocation(line: 368, column: 23, scope: !380)
!383 = !DILocation(line: 368, column: 21, scope: !380)
!384 = !DILocation(line: 372, column: 1, scope: !380)
!385 = distinct !DISubprogram(name: "rtclock", scope: !3, file: !3, line: 83, type: !386, scopeLine: 84, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!386 = !DISubroutineType(types: !387)
!387 = !{!7}
!388 = !DILocation(line: 93, column: 5, scope: !385)
!389 = distinct !DISubprogram(name: "polybench_timer_stop", scope: !3, file: !3, line: 375, type: !342, scopeLine: 376, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!390 = !DILocation(line: 378, column: 21, scope: !389)
!391 = !DILocation(line: 378, column: 19, scope: !389)
!392 = !DILocation(line: 385, column: 1, scope: !389)
!393 = distinct !DISubprogram(name: "polybench_timer_print", scope: !3, file: !3, line: 388, type: !342, scopeLine: 389, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!394 = !DILocation(line: 402, column: 26, scope: !393)
!395 = !DILocation(line: 402, column: 44, scope: !393)
!396 = !DILocation(line: 402, column: 42, scope: !393)
!397 = !DILocation(line: 402, column: 7, scope: !393)
!398 = !DILocation(line: 407, column: 1, scope: !393)
!399 = distinct !DISubprogram(name: "polybench_free_data", scope: !3, file: !3, line: 547, type: !400, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !8}
!402 = !DILocalVariable(name: "ptr", arg: 1, scope: !399, file: !3, line: 547, type: !8)
!403 = !DILocation(line: 547, column: 32, scope: !399)
!404 = !DILocation(line: 552, column: 9, scope: !399)
!405 = !DILocation(line: 552, column: 3, scope: !399)
!406 = !DILocation(line: 554, column: 1, scope: !399)
!407 = distinct !DISubprogram(name: "polybench_alloc_data", scope: !3, file: !3, line: 557, type: !408, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!408 = !DISubroutineType(types: !409)
!409 = !{!8, !18, !26}
!410 = !DILocalVariable(name: "n", arg: 1, scope: !407, file: !3, line: 557, type: !18)
!411 = !DILocation(line: 557, column: 51, scope: !407)
!412 = !DILocalVariable(name: "elt_size", arg: 2, scope: !407, file: !3, line: 557, type: !26)
!413 = !DILocation(line: 557, column: 58, scope: !407)
!414 = !DILocalVariable(name: "val", scope: !407, file: !3, line: 564, type: !23)
!415 = !DILocation(line: 564, column: 10, scope: !407)
!416 = !DILocation(line: 564, column: 16, scope: !407)
!417 = !DILocation(line: 565, column: 10, scope: !407)
!418 = !DILocation(line: 565, column: 7, scope: !407)
!419 = !DILocalVariable(name: "ret", scope: !407, file: !3, line: 566, type: !8)
!420 = !DILocation(line: 566, column: 9, scope: !407)
!421 = !DILocation(line: 566, column: 24, scope: !407)
!422 = !DILocation(line: 566, column: 15, scope: !407)
!423 = !DILocation(line: 568, column: 10, scope: !407)
!424 = !DILocation(line: 568, column: 3, scope: !407)
!425 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 517, type: !426, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!426 = !DISubroutineType(types: !427)
!427 = !{!8, !23}
!428 = !DILocalVariable(name: "alloc_sz", arg: 1, scope: !425, file: !3, line: 517, type: !23)
!429 = !DILocation(line: 517, column: 16, scope: !425)
!430 = !DILocalVariable(name: "ret", scope: !425, file: !3, line: 519, type: !8)
!431 = !DILocation(line: 519, column: 9, scope: !425)
!432 = !DILocation(line: 521, column: 36, scope: !425)
!433 = !DILocalVariable(name: "padded_sz", scope: !425, file: !3, line: 522, type: !23)
!434 = !DILocation(line: 522, column: 10, scope: !425)
!435 = !DILocation(line: 522, column: 22, scope: !425)
!436 = !DILocation(line: 522, column: 33, scope: !425)
!437 = !DILocation(line: 522, column: 31, scope: !425)
!438 = !DILocalVariable(name: "err", scope: !425, file: !3, line: 523, type: !26)
!439 = !DILocation(line: 523, column: 7, scope: !425)
!440 = !DILocation(line: 523, column: 41, scope: !425)
!441 = !DILocation(line: 523, column: 13, scope: !425)
!442 = !DILocation(line: 524, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !425, file: !3, line: 524, column: 7)
!444 = !DILocation(line: 524, column: 13, scope: !443)
!445 = !DILocation(line: 526, column: 16, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !3, line: 525, column: 5)
!447 = !DILocation(line: 526, column: 7, scope: !446)
!448 = !DILocation(line: 527, column: 7, scope: !446)
!449 = !DILocation(line: 543, column: 10, scope: !425)
!450 = !DILocation(line: 543, column: 3, scope: !425)
