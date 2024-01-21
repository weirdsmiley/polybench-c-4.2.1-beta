; ModuleID = 'klee/seidel-2d.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tsteps\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"A\00", align 1
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
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !42 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2000 x [2000 x double]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !50
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %6, metadata !53, metadata !DIExpression()), !dbg !54
  store i32 2000, i32* %6, align 4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %7, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 500, i32* %7, align 4, !dbg !56
  %9 = load i32, i32* %6, align 4, !dbg !57
  %10 = sext i32 %9 to i64, !dbg !57
  %11 = inttoptr i64 %10 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* %11, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !58
  %12 = bitcast i32* %7 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* %12, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !60
  call void @llvm.dbg.declare(metadata [2000 x [2000 x double]]** %8, metadata !61, metadata !DIExpression()), !dbg !62
  %13 = call i8* @polybench_alloc_data(i64 4000000, i32 8), !dbg !62
  %14 = bitcast i8* %13 to [2000 x [2000 x double]]*, !dbg !62
  store [2000 x [2000 x double]]* %14, [2000 x [2000 x double]]** %8, align 8, !dbg !62
  %15 = load i32, i32* %6, align 4, !dbg !63
  %16 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %8, align 8, !dbg !64
  %17 = getelementptr inbounds [2000 x [2000 x double]], [2000 x [2000 x double]]* %16, i64 0, i64 0, !dbg !64
  call void @init_array(i32 %15, [2000 x double]* %17), !dbg !65
  %18 = load i32, i32* %7, align 4, !dbg !66
  %19 = load i32, i32* %6, align 4, !dbg !67
  %20 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %8, align 8, !dbg !68
  %21 = getelementptr inbounds [2000 x [2000 x double]], [2000 x [2000 x double]]* %20, i64 0, i64 0, !dbg !68
  call void @kernel_seidel_2d(i32 %18, i32 %19, [2000 x double]* %21), !dbg !69
  %22 = load i32, i32* %4, align 4, !dbg !70
  %23 = icmp sgt i32 %22, 42, !dbg !70
  br i1 %23, label %24, label %34, !dbg !70

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8, !dbg !70
  %26 = getelementptr inbounds i8*, i8** %25, i64 0, !dbg !70
  %27 = load i8*, i8** %26, align 8, !dbg !70
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !70
  %29 = icmp ne i32 %28, 0, !dbg !70
  br i1 %29, label %34, label %30, !dbg !72

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4, !dbg !70
  %32 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %8, align 8, !dbg !70
  %33 = getelementptr inbounds [2000 x [2000 x double]], [2000 x [2000 x double]]* %32, i64 0, i64 0, !dbg !70
  call void @print_array(i32 %31, [2000 x double]* %33), !dbg !70
  br label %34, !dbg !70

34:                                               ; preds = %30, %24, %2
  %35 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %8, align 8, !dbg !73
  %36 = bitcast [2000 x [2000 x double]]* %35 to i8*, !dbg !73
  call void @free(i8* %36) #7, !dbg !73
  ret i32 0, !dbg !74
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @init_array(i32 %0, [2000 x double]* %1) #0 !dbg !75 {
  %3 = alloca i32, align 4
  %4 = alloca [2000 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !81, metadata !DIExpression()), !dbg !82
  store [2000 x double]* %1, [2000 x double]** %4, align 8
  call void @llvm.dbg.declare(metadata [2000 x double]** %4, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %5, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %6, metadata !87, metadata !DIExpression()), !dbg !88
  store i32 0, i32* %5, align 4, !dbg !89
  br label %7, !dbg !91

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4, !dbg !92
  %9 = load i32, i32* %3, align 4, !dbg !94
  %10 = icmp slt i32 %8, %9, !dbg !95
  br i1 %10, label %11, label %39, !dbg !96

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4, !dbg !97
  br label %12, !dbg !99

12:                                               ; preds = %16, %11
  %13 = load i32, i32* %6, align 4, !dbg !100
  %14 = load i32, i32* %3, align 4, !dbg !102
  %15 = icmp slt i32 %13, %14, !dbg !103
  br i1 %15, label %16, label %36, !dbg !104

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4, !dbg !105
  %18 = sitofp i32 %17 to double, !dbg !106
  %19 = load i32, i32* %6, align 4, !dbg !107
  %20 = add nsw i32 %19, 2, !dbg !108
  %21 = sitofp i32 %20 to double, !dbg !109
  %22 = fmul double %18, %21, !dbg !110
  %23 = fadd double %22, 2.000000e+00, !dbg !111
  %24 = load i32, i32* %3, align 4, !dbg !112
  %25 = sitofp i32 %24 to double, !dbg !112
  %26 = fdiv double %23, %25, !dbg !113
  %27 = load [2000 x double]*, [2000 x double]** %4, align 8, !dbg !114
  %28 = load i32, i32* %5, align 4, !dbg !115
  %29 = sext i32 %28 to i64, !dbg !114
  %30 = getelementptr inbounds [2000 x double], [2000 x double]* %27, i64 %29, !dbg !114
  %31 = load i32, i32* %6, align 4, !dbg !116
  %32 = sext i32 %31 to i64, !dbg !114
  %33 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 0, i64 %32, !dbg !114
  store double %26, double* %33, align 8, !dbg !117
  %34 = load i32, i32* %6, align 4, !dbg !118
  %35 = add nsw i32 %34, 1, !dbg !118
  store i32 %35, i32* %6, align 4, !dbg !118
  br label %12, !dbg !119, !llvm.loop !120

36:                                               ; preds = %12
  %37 = load i32, i32* %5, align 4, !dbg !123
  %38 = add nsw i32 %37, 1, !dbg !123
  store i32 %38, i32* %5, align 4, !dbg !123
  br label %7, !dbg !124, !llvm.loop !125

39:                                               ; preds = %7
  ret void, !dbg !127
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @kernel_seidel_2d(i32 %0, i32 %1, [2000 x double]* %2) #0 !dbg !128 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2000 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !133, metadata !DIExpression()), !dbg !134
  store [2000 x double]* %2, [2000 x double]** %6, align 8
  call void @llvm.dbg.declare(metadata [2000 x double]** %6, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %7, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %8, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %9, metadata !141, metadata !DIExpression()), !dbg !142
  store i32 0, i32* %7, align 4, !dbg !143
  br label %10, !dbg !145

10:                                               ; preds = %133, %3
  %11 = load i32, i32* %7, align 4, !dbg !146
  %12 = load i32, i32* %4, align 4, !dbg !148
  %13 = sub nsw i32 %12, 1, !dbg !149
  %14 = icmp sle i32 %11, %13, !dbg !150
  br i1 %14, label %15, label %136, !dbg !151

15:                                               ; preds = %10
  store i32 1, i32* %8, align 4, !dbg !152
  br label %16, !dbg !154

16:                                               ; preds = %130, %15
  %17 = load i32, i32* %8, align 4, !dbg !155
  %18 = load i32, i32* %5, align 4, !dbg !157
  %19 = sub nsw i32 %18, 2, !dbg !158
  %20 = icmp sle i32 %17, %19, !dbg !159
  br i1 %20, label %21, label %133, !dbg !160

21:                                               ; preds = %16
  store i32 1, i32* %9, align 4, !dbg !161
  br label %22, !dbg !163

22:                                               ; preds = %27, %21
  %23 = load i32, i32* %9, align 4, !dbg !164
  %24 = load i32, i32* %5, align 4, !dbg !166
  %25 = sub nsw i32 %24, 2, !dbg !167
  %26 = icmp sle i32 %23, %25, !dbg !168
  br i1 %26, label %27, label %130, !dbg !169

27:                                               ; preds = %22
  %28 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !170
  %29 = load i32, i32* %8, align 4, !dbg !171
  %30 = sub nsw i32 %29, 1, !dbg !172
  %31 = sext i32 %30 to i64, !dbg !170
  %32 = getelementptr inbounds [2000 x double], [2000 x double]* %28, i64 %31, !dbg !170
  %33 = load i32, i32* %9, align 4, !dbg !173
  %34 = sub nsw i32 %33, 1, !dbg !174
  %35 = sext i32 %34 to i64, !dbg !170
  %36 = getelementptr inbounds [2000 x double], [2000 x double]* %32, i64 0, i64 %35, !dbg !170
  %37 = load double, double* %36, align 8, !dbg !170
  %38 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !175
  %39 = load i32, i32* %8, align 4, !dbg !176
  %40 = sub nsw i32 %39, 1, !dbg !177
  %41 = sext i32 %40 to i64, !dbg !175
  %42 = getelementptr inbounds [2000 x double], [2000 x double]* %38, i64 %41, !dbg !175
  %43 = load i32, i32* %9, align 4, !dbg !178
  %44 = sext i32 %43 to i64, !dbg !175
  %45 = getelementptr inbounds [2000 x double], [2000 x double]* %42, i64 0, i64 %44, !dbg !175
  %46 = load double, double* %45, align 8, !dbg !175
  %47 = fadd double %37, %46, !dbg !179
  %48 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !180
  %49 = load i32, i32* %8, align 4, !dbg !181
  %50 = sub nsw i32 %49, 1, !dbg !182
  %51 = sext i32 %50 to i64, !dbg !180
  %52 = getelementptr inbounds [2000 x double], [2000 x double]* %48, i64 %51, !dbg !180
  %53 = load i32, i32* %9, align 4, !dbg !183
  %54 = add nsw i32 %53, 1, !dbg !184
  %55 = sext i32 %54 to i64, !dbg !180
  %56 = getelementptr inbounds [2000 x double], [2000 x double]* %52, i64 0, i64 %55, !dbg !180
  %57 = load double, double* %56, align 8, !dbg !180
  %58 = fadd double %47, %57, !dbg !185
  %59 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !186
  %60 = load i32, i32* %8, align 4, !dbg !187
  %61 = sext i32 %60 to i64, !dbg !186
  %62 = getelementptr inbounds [2000 x double], [2000 x double]* %59, i64 %61, !dbg !186
  %63 = load i32, i32* %9, align 4, !dbg !188
  %64 = sub nsw i32 %63, 1, !dbg !189
  %65 = sext i32 %64 to i64, !dbg !186
  %66 = getelementptr inbounds [2000 x double], [2000 x double]* %62, i64 0, i64 %65, !dbg !186
  %67 = load double, double* %66, align 8, !dbg !186
  %68 = fadd double %58, %67, !dbg !190
  %69 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !191
  %70 = load i32, i32* %8, align 4, !dbg !192
  %71 = sext i32 %70 to i64, !dbg !191
  %72 = getelementptr inbounds [2000 x double], [2000 x double]* %69, i64 %71, !dbg !191
  %73 = load i32, i32* %9, align 4, !dbg !193
  %74 = sext i32 %73 to i64, !dbg !191
  %75 = getelementptr inbounds [2000 x double], [2000 x double]* %72, i64 0, i64 %74, !dbg !191
  %76 = load double, double* %75, align 8, !dbg !191
  %77 = fadd double %68, %76, !dbg !194
  %78 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !195
  %79 = load i32, i32* %8, align 4, !dbg !196
  %80 = sext i32 %79 to i64, !dbg !195
  %81 = getelementptr inbounds [2000 x double], [2000 x double]* %78, i64 %80, !dbg !195
  %82 = load i32, i32* %9, align 4, !dbg !197
  %83 = add nsw i32 %82, 1, !dbg !198
  %84 = sext i32 %83 to i64, !dbg !195
  %85 = getelementptr inbounds [2000 x double], [2000 x double]* %81, i64 0, i64 %84, !dbg !195
  %86 = load double, double* %85, align 8, !dbg !195
  %87 = fadd double %77, %86, !dbg !199
  %88 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !200
  %89 = load i32, i32* %8, align 4, !dbg !201
  %90 = add nsw i32 %89, 1, !dbg !202
  %91 = sext i32 %90 to i64, !dbg !200
  %92 = getelementptr inbounds [2000 x double], [2000 x double]* %88, i64 %91, !dbg !200
  %93 = load i32, i32* %9, align 4, !dbg !203
  %94 = sub nsw i32 %93, 1, !dbg !204
  %95 = sext i32 %94 to i64, !dbg !200
  %96 = getelementptr inbounds [2000 x double], [2000 x double]* %92, i64 0, i64 %95, !dbg !200
  %97 = load double, double* %96, align 8, !dbg !200
  %98 = fadd double %87, %97, !dbg !205
  %99 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !206
  %100 = load i32, i32* %8, align 4, !dbg !207
  %101 = add nsw i32 %100, 1, !dbg !208
  %102 = sext i32 %101 to i64, !dbg !206
  %103 = getelementptr inbounds [2000 x double], [2000 x double]* %99, i64 %102, !dbg !206
  %104 = load i32, i32* %9, align 4, !dbg !209
  %105 = sext i32 %104 to i64, !dbg !206
  %106 = getelementptr inbounds [2000 x double], [2000 x double]* %103, i64 0, i64 %105, !dbg !206
  %107 = load double, double* %106, align 8, !dbg !206
  %108 = fadd double %98, %107, !dbg !210
  %109 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !211
  %110 = load i32, i32* %8, align 4, !dbg !212
  %111 = add nsw i32 %110, 1, !dbg !213
  %112 = sext i32 %111 to i64, !dbg !211
  %113 = getelementptr inbounds [2000 x double], [2000 x double]* %109, i64 %112, !dbg !211
  %114 = load i32, i32* %9, align 4, !dbg !214
  %115 = add nsw i32 %114, 1, !dbg !215
  %116 = sext i32 %115 to i64, !dbg !211
  %117 = getelementptr inbounds [2000 x double], [2000 x double]* %113, i64 0, i64 %116, !dbg !211
  %118 = load double, double* %117, align 8, !dbg !211
  %119 = fadd double %108, %118, !dbg !216
  %120 = fdiv double %119, 9.000000e+00, !dbg !217
  %121 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !218
  %122 = load i32, i32* %8, align 4, !dbg !219
  %123 = sext i32 %122 to i64, !dbg !218
  %124 = getelementptr inbounds [2000 x double], [2000 x double]* %121, i64 %123, !dbg !218
  %125 = load i32, i32* %9, align 4, !dbg !220
  %126 = sext i32 %125 to i64, !dbg !218
  %127 = getelementptr inbounds [2000 x double], [2000 x double]* %124, i64 0, i64 %126, !dbg !218
  store double %120, double* %127, align 8, !dbg !221
  %128 = load i32, i32* %9, align 4, !dbg !222
  %129 = add nsw i32 %128, 1, !dbg !222
  store i32 %129, i32* %9, align 4, !dbg !222
  br label %22, !dbg !223, !llvm.loop !224

130:                                              ; preds = %22
  %131 = load i32, i32* %8, align 4, !dbg !226
  %132 = add nsw i32 %131, 1, !dbg !226
  store i32 %132, i32* %8, align 4, !dbg !226
  br label %16, !dbg !227, !llvm.loop !228

133:                                              ; preds = %16
  %134 = load i32, i32* %7, align 4, !dbg !230
  %135 = add nsw i32 %134, 1, !dbg !230
  store i32 %135, i32* %7, align 4, !dbg !230
  br label %10, !dbg !231, !llvm.loop !232

136:                                              ; preds = %10
  ret void, !dbg !234
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define internal void @print_array(i32 %0, [2000 x double]* %1) #0 !dbg !235 {
  %3 = alloca i32, align 4
  %4 = alloca [2000 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !236, metadata !DIExpression()), !dbg !237
  store [2000 x double]* %1, [2000 x double]** %4, align 8
  call void @llvm.dbg.declare(metadata [2000 x double]** %4, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %5, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %6, metadata !242, metadata !DIExpression()), !dbg !243
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !244
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)), !dbg !244
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !245
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !245
  store i32 0, i32* %5, align 4, !dbg !246
  br label %11, !dbg !248

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %5, align 4, !dbg !249
  %13 = load i32, i32* %3, align 4, !dbg !251
  %14 = icmp slt i32 %12, %13, !dbg !252
  br i1 %14, label %15, label %47, !dbg !253

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4, !dbg !254
  br label %16, !dbg !256

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %6, align 4, !dbg !257
  %18 = load i32, i32* %3, align 4, !dbg !259
  %19 = icmp slt i32 %17, %18, !dbg !260
  br i1 %19, label %20, label %44, !dbg !261

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4, !dbg !262
  %22 = load i32, i32* %3, align 4, !dbg !265
  %23 = mul nsw i32 %21, %22, !dbg !266
  %24 = load i32, i32* %6, align 4, !dbg !267
  %25 = add nsw i32 %23, %24, !dbg !268
  %26 = srem i32 %25, 20, !dbg !269
  %27 = icmp eq i32 %26, 0, !dbg !270
  br i1 %27, label %28, label %31, !dbg !271

28:                                               ; preds = %20
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !272
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !273
  br label %31, !dbg !273

31:                                               ; preds = %28, %20
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !274
  %33 = load [2000 x double]*, [2000 x double]** %4, align 8, !dbg !275
  %34 = load i32, i32* %5, align 4, !dbg !276
  %35 = sext i32 %34 to i64, !dbg !275
  %36 = getelementptr inbounds [2000 x double], [2000 x double]* %33, i64 %35, !dbg !275
  %37 = load i32, i32* %6, align 4, !dbg !277
  %38 = sext i32 %37 to i64, !dbg !275
  %39 = getelementptr inbounds [2000 x double], [2000 x double]* %36, i64 0, i64 %38, !dbg !275
  %40 = load double, double* %39, align 8, !dbg !275
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), double %40), !dbg !278
  %42 = load i32, i32* %6, align 4, !dbg !279
  %43 = add nsw i32 %42, 1, !dbg !279
  store i32 %43, i32* %6, align 4, !dbg !279
  br label %16, !dbg !280, !llvm.loop !281

44:                                               ; preds = %16
  %45 = load i32, i32* %5, align 4, !dbg !283
  %46 = add nsw i32 %45, 1, !dbg !283
  store i32 %46, i32* %5, align 4, !dbg !283
  br label %11, !dbg !284, !llvm.loop !285

47:                                               ; preds = %11
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !287
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !287
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !288
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_flush_cache() #0 !dbg !290 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !293, metadata !DIExpression()), !dbg !294
  store i32 4194560, i32* %1, align 4, !dbg !294
  call void @llvm.dbg.declare(metadata double** %2, metadata !295, metadata !DIExpression()), !dbg !296
  %5 = load i32, i32* %1, align 4, !dbg !297
  %6 = sext i32 %5 to i64, !dbg !297
  %7 = call noalias align 16 i8* @calloc(i64 %6, i64 8) #7, !dbg !298
  %8 = bitcast i8* %7 to double*, !dbg !299
  store double* %8, double** %2, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata i32* %3, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata double* %4, metadata !302, metadata !DIExpression()), !dbg !303
  store double 0.000000e+00, double* %4, align 8, !dbg !303
  store i32 0, i32* %3, align 4, !dbg !304
  br label %9, !dbg !306

9:                                                ; preds = %13, %0
  %10 = load i32, i32* %3, align 4, !dbg !307
  %11 = load i32, i32* %1, align 4, !dbg !309
  %12 = icmp slt i32 %10, %11, !dbg !310
  br i1 %12, label %13, label %23, !dbg !311

13:                                               ; preds = %9
  %14 = load double*, double** %2, align 8, !dbg !312
  %15 = load i32, i32* %3, align 4, !dbg !313
  %16 = sext i32 %15 to i64, !dbg !312
  %17 = getelementptr inbounds double, double* %14, i64 %16, !dbg !312
  %18 = load double, double* %17, align 8, !dbg !312
  %19 = load double, double* %4, align 8, !dbg !314
  %20 = fadd double %19, %18, !dbg !314
  store double %20, double* %4, align 8, !dbg !314
  %21 = load i32, i32* %3, align 4, !dbg !315
  %22 = add nsw i32 %21, 1, !dbg !315
  store i32 %22, i32* %3, align 4, !dbg !315
  br label %9, !dbg !316, !llvm.loop !317

23:                                               ; preds = %9
  %24 = load double, double* %4, align 8, !dbg !319
  %25 = fcmp ole double %24, 1.000000e+01, !dbg !319
  br i1 %25, label %27, label %26, !dbg !322

26:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.11, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #8, !dbg !319
  unreachable, !dbg !319

27:                                               ; preds = %23
  %28 = load double*, double** %2, align 8, !dbg !323
  %29 = bitcast double* %28 to i8*, !dbg !323
  call void @free(i8* %29) #7, !dbg !324
  ret void, !dbg !325
}

; Function Attrs: nounwind
declare noalias align 16 i8* @calloc(i64, i64) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_prepare_instruments() #0 !dbg !326 {
  call void @polybench_flush_cache(), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_start() #0 !dbg !329 {
  call void @polybench_prepare_instruments(), !dbg !330
  %1 = call double @rtclock(), !dbg !331
  store double %1, double* @polybench_t_start, align 8, !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal double @rtclock() #0 !dbg !334 {
  ret double 0.000000e+00, !dbg !337
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_stop() #0 !dbg !338 {
  %1 = call double @rtclock(), !dbg !339
  store double %1, double* @polybench_t_end, align 8, !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_timer_print() #0 !dbg !342 {
  %1 = load double, double* @polybench_t_end, align 8, !dbg !343
  %2 = load double, double* @polybench_t_start, align 8, !dbg !344
  %3 = fsub double %1, %2, !dbg !345
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.12, i64 0, i64 0), double %3), !dbg !346
  ret void, !dbg !347
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @polybench_free_data(i8* %0) #0 !dbg !348 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !351, metadata !DIExpression()), !dbg !352
  %3 = load i8*, i8** %2, align 8, !dbg !353
  call void @free(i8* %3) #7, !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i8* @polybench_alloc_data(i64 %0, i32 %1) #0 !dbg !356 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !359, metadata !DIExpression()), !dbg !360
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata i64* %5, metadata !363, metadata !DIExpression()), !dbg !364
  %7 = load i64, i64* %3, align 8, !dbg !365
  store i64 %7, i64* %5, align 8, !dbg !364
  %8 = load i32, i32* %4, align 4, !dbg !366
  %9 = sext i32 %8 to i64, !dbg !366
  %10 = load i64, i64* %5, align 8, !dbg !367
  %11 = mul i64 %10, %9, !dbg !367
  store i64 %11, i64* %5, align 8, !dbg !367
  call void @llvm.dbg.declare(metadata i8** %6, metadata !368, metadata !DIExpression()), !dbg !369
  %12 = load i64, i64* %5, align 8, !dbg !370
  %13 = call i8* @xmalloc(i64 %12), !dbg !371
  store i8* %13, i8** %6, align 8, !dbg !369
  %14 = load i8*, i8** %6, align 8, !dbg !372
  ret i8* %14, !dbg !373
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal i8* @xmalloc(i64 %0) #0 !dbg !374 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata i8** %3, metadata !379, metadata !DIExpression()), !dbg !380
  store i8* null, i8** %3, align 8, !dbg !380
  %6 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !381
  %7 = add i64 %6, 0, !dbg !381
  store i64 %7, i64* @polybench_inter_array_padding_sz, align 8, !dbg !381
  call void @llvm.dbg.declare(metadata i64* %4, metadata !382, metadata !DIExpression()), !dbg !383
  %8 = load i64, i64* %2, align 8, !dbg !384
  %9 = load i64, i64* @polybench_inter_array_padding_sz, align 8, !dbg !385
  %10 = add i64 %8, %9, !dbg !386
  store i64 %10, i64* %4, align 8, !dbg !383
  call void @llvm.dbg.declare(metadata i32* %5, metadata !387, metadata !DIExpression()), !dbg !388
  %11 = load i64, i64* %4, align 8, !dbg !389
  %12 = call i32 @posix_memalign(i8** %3, i64 4096, i64 %11) #7, !dbg !390
  store i32 %12, i32* %5, align 4, !dbg !388
  %13 = load i8*, i8** %3, align 8, !dbg !391
  %14 = icmp eq i8* %13, null, !dbg !391
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %or.cond = select i1 %14, i1 true, i1 %16, !dbg !393
  br i1 %or.cond, label %17, label %20, !dbg !393

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !394
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3.15, i64 0, i64 0)), !dbg !396
  call void @exit(i32 1) #8, !dbg !397
  unreachable, !dbg !397

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8, !dbg !398
  ret i8* %21, !dbg !399
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
!28 = !DIFile(filename: "stencils/seidel-2d/seidel-2d.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!29 = !{!30, !8, !7}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256000000, elements: !32)
!32 = !{!33, !33}
!33 = !DISubrange(count: 2000)
!34 = !{!"clang version 13.0.1"}
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = distinct !DISubprogram(name: "main", scope: !43, file: !43, line: 80, type: !44, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !4)
!43 = !DIFile(filename: "./stencils/seidel-2d/seidel-2d.c", directory: "/home/neon/workspace/btp/polybench-c-4.2.1-beta")
!44 = !DISubroutineType(types: !45)
!45 = !{!26, !26, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DILocalVariable(name: "argc", arg: 1, scope: !42, file: !43, line: 80, type: !26)
!50 = !DILocation(line: 80, column: 14, scope: !42)
!51 = !DILocalVariable(name: "argv", arg: 2, scope: !42, file: !43, line: 80, type: !46)
!52 = !DILocation(line: 80, column: 27, scope: !42)
!53 = !DILocalVariable(name: "n", scope: !42, file: !43, line: 83, type: !26)
!54 = !DILocation(line: 83, column: 7, scope: !42)
!55 = !DILocalVariable(name: "tsteps", scope: !42, file: !43, line: 84, type: !26)
!56 = !DILocation(line: 84, column: 7, scope: !42)
!57 = !DILocation(line: 85, column: 22, scope: !42)
!58 = !DILocation(line: 85, column: 3, scope: !42)
!59 = !DILocation(line: 86, column: 22, scope: !42)
!60 = !DILocation(line: 86, column: 3, scope: !42)
!61 = !DILocalVariable(name: "A", scope: !42, file: !43, line: 89, type: !30)
!62 = !DILocation(line: 89, column: 3, scope: !42)
!63 = !DILocation(line: 93, column: 15, scope: !42)
!64 = !DILocation(line: 93, column: 18, scope: !42)
!65 = !DILocation(line: 93, column: 3, scope: !42)
!66 = !DILocation(line: 99, column: 21, scope: !42)
!67 = !DILocation(line: 99, column: 29, scope: !42)
!68 = !DILocation(line: 99, column: 32, scope: !42)
!69 = !DILocation(line: 99, column: 3, scope: !42)
!70 = !DILocation(line: 107, column: 3, scope: !71)
!71 = distinct !DILexicalBlock(scope: !42, file: !43, line: 107, column: 3)
!72 = !DILocation(line: 107, column: 3, scope: !42)
!73 = !DILocation(line: 110, column: 3, scope: !42)
!74 = !DILocation(line: 112, column: 3, scope: !42)
!75 = distinct !DISubprogram(name: "init_array", scope: !43, file: !43, line: 27, type: !76, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !26, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128000, elements: !80)
!80 = !{!33}
!81 = !DILocalVariable(name: "n", arg: 1, scope: !75, file: !43, line: 27, type: !26)
!82 = !DILocation(line: 27, column: 22, scope: !75)
!83 = !DILocalVariable(name: "A", arg: 2, scope: !75, file: !43, line: 28, type: !78)
!84 = !DILocation(line: 28, column: 14, scope: !75)
!85 = !DILocalVariable(name: "i", scope: !75, file: !43, line: 30, type: !26)
!86 = !DILocation(line: 30, column: 7, scope: !75)
!87 = !DILocalVariable(name: "j", scope: !75, file: !43, line: 30, type: !26)
!88 = !DILocation(line: 30, column: 10, scope: !75)
!89 = !DILocation(line: 32, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !75, file: !43, line: 32, column: 3)
!91 = !DILocation(line: 32, column: 8, scope: !90)
!92 = !DILocation(line: 32, column: 15, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !43, line: 32, column: 3)
!94 = !DILocation(line: 32, column: 19, scope: !93)
!95 = !DILocation(line: 32, column: 17, scope: !93)
!96 = !DILocation(line: 32, column: 3, scope: !90)
!97 = !DILocation(line: 33, column: 12, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !43, line: 33, column: 5)
!99 = !DILocation(line: 33, column: 10, scope: !98)
!100 = !DILocation(line: 33, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !43, line: 33, column: 5)
!102 = !DILocation(line: 33, column: 21, scope: !101)
!103 = !DILocation(line: 33, column: 19, scope: !101)
!104 = !DILocation(line: 33, column: 5, scope: !98)
!105 = !DILocation(line: 34, column: 30, scope: !101)
!106 = !DILocation(line: 34, column: 18, scope: !101)
!107 = !DILocation(line: 34, column: 33, scope: !101)
!108 = !DILocation(line: 34, column: 34, scope: !101)
!109 = !DILocation(line: 34, column: 32, scope: !101)
!110 = !DILocation(line: 34, column: 31, scope: !101)
!111 = !DILocation(line: 34, column: 38, scope: !101)
!112 = !DILocation(line: 34, column: 45, scope: !101)
!113 = !DILocation(line: 34, column: 43, scope: !101)
!114 = !DILocation(line: 34, column: 7, scope: !101)
!115 = !DILocation(line: 34, column: 9, scope: !101)
!116 = !DILocation(line: 34, column: 12, scope: !101)
!117 = !DILocation(line: 34, column: 15, scope: !101)
!118 = !DILocation(line: 33, column: 25, scope: !101)
!119 = !DILocation(line: 33, column: 5, scope: !101)
!120 = distinct !{!120, !104, !121, !122}
!121 = !DILocation(line: 34, column: 45, scope: !98)
!122 = !{!"llvm.loop.mustprogress"}
!123 = !DILocation(line: 32, column: 23, scope: !93)
!124 = !DILocation(line: 32, column: 3, scope: !93)
!125 = distinct !{!125, !96, !126, !122}
!126 = !DILocation(line: 34, column: 45, scope: !90)
!127 = !DILocation(line: 35, column: 1, scope: !75)
!128 = distinct !DISubprogram(name: "kernel_seidel_2d", scope: !43, file: !43, line: 62, type: !129, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !26, !26, !78}
!131 = !DILocalVariable(name: "tsteps", arg: 1, scope: !128, file: !43, line: 62, type: !26)
!132 = !DILocation(line: 62, column: 27, scope: !128)
!133 = !DILocalVariable(name: "n", arg: 2, scope: !128, file: !43, line: 63, type: !26)
!134 = !DILocation(line: 63, column: 13, scope: !128)
!135 = !DILocalVariable(name: "A", arg: 3, scope: !128, file: !43, line: 64, type: !78)
!136 = !DILocation(line: 64, column: 19, scope: !128)
!137 = !DILocalVariable(name: "t", scope: !128, file: !43, line: 66, type: !26)
!138 = !DILocation(line: 66, column: 7, scope: !128)
!139 = !DILocalVariable(name: "i", scope: !128, file: !43, line: 66, type: !26)
!140 = !DILocation(line: 66, column: 10, scope: !128)
!141 = !DILocalVariable(name: "j", scope: !128, file: !43, line: 66, type: !26)
!142 = !DILocation(line: 66, column: 13, scope: !128)
!143 = !DILocation(line: 69, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !128, file: !43, line: 69, column: 3)
!145 = !DILocation(line: 69, column: 8, scope: !144)
!146 = !DILocation(line: 69, column: 15, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !43, line: 69, column: 3)
!148 = !DILocation(line: 69, column: 20, scope: !147)
!149 = !DILocation(line: 69, column: 31, scope: !147)
!150 = !DILocation(line: 69, column: 17, scope: !147)
!151 = !DILocation(line: 69, column: 3, scope: !144)
!152 = !DILocation(line: 70, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !147, file: !43, line: 70, column: 5)
!154 = !DILocation(line: 70, column: 10, scope: !153)
!155 = !DILocation(line: 70, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !43, line: 70, column: 5)
!157 = !DILocation(line: 70, column: 21, scope: !156)
!158 = !DILocation(line: 70, column: 27, scope: !156)
!159 = !DILocation(line: 70, column: 18, scope: !156)
!160 = !DILocation(line: 70, column: 5, scope: !153)
!161 = !DILocation(line: 71, column: 14, scope: !162)
!162 = distinct !DILexicalBlock(scope: !156, file: !43, line: 71, column: 7)
!163 = !DILocation(line: 71, column: 12, scope: !162)
!164 = !DILocation(line: 71, column: 19, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !43, line: 71, column: 7)
!166 = !DILocation(line: 71, column: 24, scope: !165)
!167 = !DILocation(line: 71, column: 30, scope: !165)
!168 = !DILocation(line: 71, column: 21, scope: !165)
!169 = !DILocation(line: 71, column: 7, scope: !162)
!170 = !DILocation(line: 72, column: 13, scope: !165)
!171 = !DILocation(line: 72, column: 15, scope: !165)
!172 = !DILocation(line: 72, column: 16, scope: !165)
!173 = !DILocation(line: 72, column: 20, scope: !165)
!174 = !DILocation(line: 72, column: 21, scope: !165)
!175 = !DILocation(line: 72, column: 27, scope: !165)
!176 = !DILocation(line: 72, column: 29, scope: !165)
!177 = !DILocation(line: 72, column: 30, scope: !165)
!178 = !DILocation(line: 72, column: 34, scope: !165)
!179 = !DILocation(line: 72, column: 25, scope: !165)
!180 = !DILocation(line: 72, column: 39, scope: !165)
!181 = !DILocation(line: 72, column: 41, scope: !165)
!182 = !DILocation(line: 72, column: 42, scope: !165)
!183 = !DILocation(line: 72, column: 46, scope: !165)
!184 = !DILocation(line: 72, column: 47, scope: !165)
!185 = !DILocation(line: 72, column: 37, scope: !165)
!186 = !DILocation(line: 73, column: 8, scope: !165)
!187 = !DILocation(line: 73, column: 10, scope: !165)
!188 = !DILocation(line: 73, column: 13, scope: !165)
!189 = !DILocation(line: 73, column: 14, scope: !165)
!190 = !DILocation(line: 73, column: 6, scope: !165)
!191 = !DILocation(line: 73, column: 20, scope: !165)
!192 = !DILocation(line: 73, column: 22, scope: !165)
!193 = !DILocation(line: 73, column: 25, scope: !165)
!194 = !DILocation(line: 73, column: 18, scope: !165)
!195 = !DILocation(line: 73, column: 30, scope: !165)
!196 = !DILocation(line: 73, column: 32, scope: !165)
!197 = !DILocation(line: 73, column: 35, scope: !165)
!198 = !DILocation(line: 73, column: 36, scope: !165)
!199 = !DILocation(line: 73, column: 28, scope: !165)
!200 = !DILocation(line: 74, column: 8, scope: !165)
!201 = !DILocation(line: 74, column: 10, scope: !165)
!202 = !DILocation(line: 74, column: 11, scope: !165)
!203 = !DILocation(line: 74, column: 15, scope: !165)
!204 = !DILocation(line: 74, column: 16, scope: !165)
!205 = !DILocation(line: 74, column: 6, scope: !165)
!206 = !DILocation(line: 74, column: 22, scope: !165)
!207 = !DILocation(line: 74, column: 24, scope: !165)
!208 = !DILocation(line: 74, column: 25, scope: !165)
!209 = !DILocation(line: 74, column: 29, scope: !165)
!210 = !DILocation(line: 74, column: 20, scope: !165)
!211 = !DILocation(line: 74, column: 34, scope: !165)
!212 = !DILocation(line: 74, column: 36, scope: !165)
!213 = !DILocation(line: 74, column: 37, scope: !165)
!214 = !DILocation(line: 74, column: 41, scope: !165)
!215 = !DILocation(line: 74, column: 42, scope: !165)
!216 = !DILocation(line: 74, column: 32, scope: !165)
!217 = !DILocation(line: 74, column: 46, scope: !165)
!218 = !DILocation(line: 72, column: 2, scope: !165)
!219 = !DILocation(line: 72, column: 4, scope: !165)
!220 = !DILocation(line: 72, column: 7, scope: !165)
!221 = !DILocation(line: 72, column: 10, scope: !165)
!222 = !DILocation(line: 71, column: 36, scope: !165)
!223 = !DILocation(line: 71, column: 7, scope: !165)
!224 = distinct !{!224, !169, !225, !122}
!225 = !DILocation(line: 74, column: 47, scope: !162)
!226 = !DILocation(line: 70, column: 33, scope: !156)
!227 = !DILocation(line: 70, column: 5, scope: !156)
!228 = distinct !{!228, !160, !229, !122}
!229 = !DILocation(line: 74, column: 47, scope: !153)
!230 = !DILocation(line: 69, column: 37, scope: !147)
!231 = !DILocation(line: 69, column: 3, scope: !147)
!232 = distinct !{!232, !151, !233, !122}
!233 = !DILocation(line: 74, column: 47, scope: !144)
!234 = !DILocation(line: 77, column: 1, scope: !128)
!235 = distinct !DISubprogram(name: "print_array", scope: !43, file: !43, line: 41, type: !76, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !4)
!236 = !DILocalVariable(name: "n", arg: 1, scope: !235, file: !43, line: 41, type: !26)
!237 = !DILocation(line: 41, column: 22, scope: !235)
!238 = !DILocalVariable(name: "A", arg: 2, scope: !235, file: !43, line: 42, type: !78)
!239 = !DILocation(line: 42, column: 14, scope: !235)
!240 = !DILocalVariable(name: "i", scope: !235, file: !43, line: 45, type: !26)
!241 = !DILocation(line: 45, column: 7, scope: !235)
!242 = !DILocalVariable(name: "j", scope: !235, file: !43, line: 45, type: !26)
!243 = !DILocation(line: 45, column: 10, scope: !235)
!244 = !DILocation(line: 47, column: 3, scope: !235)
!245 = !DILocation(line: 48, column: 3, scope: !235)
!246 = !DILocation(line: 49, column: 10, scope: !247)
!247 = distinct !DILexicalBlock(scope: !235, file: !43, line: 49, column: 3)
!248 = !DILocation(line: 49, column: 8, scope: !247)
!249 = !DILocation(line: 49, column: 15, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !43, line: 49, column: 3)
!251 = !DILocation(line: 49, column: 19, scope: !250)
!252 = !DILocation(line: 49, column: 17, scope: !250)
!253 = !DILocation(line: 49, column: 3, scope: !247)
!254 = !DILocation(line: 50, column: 12, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !43, line: 50, column: 5)
!256 = !DILocation(line: 50, column: 10, scope: !255)
!257 = !DILocation(line: 50, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !43, line: 50, column: 5)
!259 = !DILocation(line: 50, column: 21, scope: !258)
!260 = !DILocation(line: 50, column: 19, scope: !258)
!261 = !DILocation(line: 50, column: 5, scope: !255)
!262 = !DILocation(line: 51, column: 12, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !43, line: 51, column: 11)
!264 = distinct !DILexicalBlock(scope: !258, file: !43, line: 50, column: 29)
!265 = !DILocation(line: 51, column: 16, scope: !263)
!266 = !DILocation(line: 51, column: 14, scope: !263)
!267 = !DILocation(line: 51, column: 20, scope: !263)
!268 = !DILocation(line: 51, column: 18, scope: !263)
!269 = !DILocation(line: 51, column: 23, scope: !263)
!270 = !DILocation(line: 51, column: 28, scope: !263)
!271 = !DILocation(line: 51, column: 11, scope: !264)
!272 = !DILocation(line: 51, column: 42, scope: !263)
!273 = !DILocation(line: 51, column: 34, scope: !263)
!274 = !DILocation(line: 52, column: 15, scope: !264)
!275 = !DILocation(line: 52, column: 60, scope: !264)
!276 = !DILocation(line: 52, column: 62, scope: !264)
!277 = !DILocation(line: 52, column: 65, scope: !264)
!278 = !DILocation(line: 52, column: 7, scope: !264)
!279 = !DILocation(line: 50, column: 25, scope: !258)
!280 = !DILocation(line: 50, column: 5, scope: !258)
!281 = distinct !{!281, !261, !282, !122}
!282 = !DILocation(line: 53, column: 5, scope: !255)
!283 = !DILocation(line: 49, column: 23, scope: !250)
!284 = !DILocation(line: 49, column: 3, scope: !250)
!285 = distinct !{!285, !253, !286, !122}
!286 = !DILocation(line: 53, column: 5, scope: !247)
!287 = !DILocation(line: 54, column: 3, scope: !235)
!288 = !DILocation(line: 55, column: 3, scope: !235)
!289 = !DILocation(line: 56, column: 1, scope: !235)
!290 = distinct !DISubprogram(name: "polybench_flush_cache", scope: !3, file: !3, line: 112, type: !291, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!291 = !DISubroutineType(types: !292)
!292 = !{null}
!293 = !DILocalVariable(name: "cs", scope: !290, file: !3, line: 114, type: !26)
!294 = !DILocation(line: 114, column: 7, scope: !290)
!295 = !DILocalVariable(name: "flush", scope: !290, file: !3, line: 115, type: !6)
!296 = !DILocation(line: 115, column: 11, scope: !290)
!297 = !DILocation(line: 115, column: 37, scope: !290)
!298 = !DILocation(line: 115, column: 29, scope: !290)
!299 = !DILocation(line: 115, column: 19, scope: !290)
!300 = !DILocalVariable(name: "i", scope: !290, file: !3, line: 116, type: !26)
!301 = !DILocation(line: 116, column: 7, scope: !290)
!302 = !DILocalVariable(name: "tmp", scope: !290, file: !3, line: 117, type: !7)
!303 = !DILocation(line: 117, column: 10, scope: !290)
!304 = !DILocation(line: 121, column: 10, scope: !305)
!305 = distinct !DILexicalBlock(scope: !290, file: !3, line: 121, column: 3)
!306 = !DILocation(line: 121, column: 8, scope: !305)
!307 = !DILocation(line: 121, column: 15, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !3, line: 121, column: 3)
!309 = !DILocation(line: 121, column: 19, scope: !308)
!310 = !DILocation(line: 121, column: 17, scope: !308)
!311 = !DILocation(line: 121, column: 3, scope: !305)
!312 = !DILocation(line: 122, column: 12, scope: !308)
!313 = !DILocation(line: 122, column: 18, scope: !308)
!314 = !DILocation(line: 122, column: 9, scope: !308)
!315 = !DILocation(line: 121, column: 24, scope: !308)
!316 = !DILocation(line: 121, column: 3, scope: !308)
!317 = distinct !{!317, !311, !318, !122}
!318 = !DILocation(line: 122, column: 19, scope: !305)
!319 = !DILocation(line: 123, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 123, column: 3)
!321 = distinct !DILexicalBlock(scope: !290, file: !3, line: 123, column: 3)
!322 = !DILocation(line: 123, column: 3, scope: !321)
!323 = !DILocation(line: 124, column: 9, scope: !290)
!324 = !DILocation(line: 124, column: 3, scope: !290)
!325 = !DILocation(line: 125, column: 1, scope: !290)
!326 = distinct !DISubprogram(name: "polybench_prepare_instruments", scope: !3, file: !3, line: 353, type: !291, scopeLine: 354, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!327 = !DILocation(line: 356, column: 3, scope: !326)
!328 = !DILocation(line: 361, column: 1, scope: !326)
!329 = distinct !DISubprogram(name: "polybench_timer_start", scope: !3, file: !3, line: 364, type: !291, scopeLine: 365, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!330 = !DILocation(line: 366, column: 3, scope: !329)
!331 = !DILocation(line: 368, column: 23, scope: !329)
!332 = !DILocation(line: 368, column: 21, scope: !329)
!333 = !DILocation(line: 372, column: 1, scope: !329)
!334 = distinct !DISubprogram(name: "rtclock", scope: !3, file: !3, line: 83, type: !335, scopeLine: 84, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!335 = !DISubroutineType(types: !336)
!336 = !{!7}
!337 = !DILocation(line: 93, column: 5, scope: !334)
!338 = distinct !DISubprogram(name: "polybench_timer_stop", scope: !3, file: !3, line: 375, type: !291, scopeLine: 376, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!339 = !DILocation(line: 378, column: 21, scope: !338)
!340 = !DILocation(line: 378, column: 19, scope: !338)
!341 = !DILocation(line: 385, column: 1, scope: !338)
!342 = distinct !DISubprogram(name: "polybench_timer_print", scope: !3, file: !3, line: 388, type: !291, scopeLine: 389, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!343 = !DILocation(line: 402, column: 26, scope: !342)
!344 = !DILocation(line: 402, column: 44, scope: !342)
!345 = !DILocation(line: 402, column: 42, scope: !342)
!346 = !DILocation(line: 402, column: 7, scope: !342)
!347 = !DILocation(line: 407, column: 1, scope: !342)
!348 = distinct !DISubprogram(name: "polybench_free_data", scope: !3, file: !3, line: 547, type: !349, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !8}
!351 = !DILocalVariable(name: "ptr", arg: 1, scope: !348, file: !3, line: 547, type: !8)
!352 = !DILocation(line: 547, column: 32, scope: !348)
!353 = !DILocation(line: 552, column: 9, scope: !348)
!354 = !DILocation(line: 552, column: 3, scope: !348)
!355 = !DILocation(line: 554, column: 1, scope: !348)
!356 = distinct !DISubprogram(name: "polybench_alloc_data", scope: !3, file: !3, line: 557, type: !357, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!357 = !DISubroutineType(types: !358)
!358 = !{!8, !18, !26}
!359 = !DILocalVariable(name: "n", arg: 1, scope: !356, file: !3, line: 557, type: !18)
!360 = !DILocation(line: 557, column: 51, scope: !356)
!361 = !DILocalVariable(name: "elt_size", arg: 2, scope: !356, file: !3, line: 557, type: !26)
!362 = !DILocation(line: 557, column: 58, scope: !356)
!363 = !DILocalVariable(name: "val", scope: !356, file: !3, line: 564, type: !23)
!364 = !DILocation(line: 564, column: 10, scope: !356)
!365 = !DILocation(line: 564, column: 16, scope: !356)
!366 = !DILocation(line: 565, column: 10, scope: !356)
!367 = !DILocation(line: 565, column: 7, scope: !356)
!368 = !DILocalVariable(name: "ret", scope: !356, file: !3, line: 566, type: !8)
!369 = !DILocation(line: 566, column: 9, scope: !356)
!370 = !DILocation(line: 566, column: 24, scope: !356)
!371 = !DILocation(line: 566, column: 15, scope: !356)
!372 = !DILocation(line: 568, column: 10, scope: !356)
!373 = !DILocation(line: 568, column: 3, scope: !356)
!374 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 517, type: !375, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!375 = !DISubroutineType(types: !376)
!376 = !{!8, !23}
!377 = !DILocalVariable(name: "alloc_sz", arg: 1, scope: !374, file: !3, line: 517, type: !23)
!378 = !DILocation(line: 517, column: 16, scope: !374)
!379 = !DILocalVariable(name: "ret", scope: !374, file: !3, line: 519, type: !8)
!380 = !DILocation(line: 519, column: 9, scope: !374)
!381 = !DILocation(line: 521, column: 36, scope: !374)
!382 = !DILocalVariable(name: "padded_sz", scope: !374, file: !3, line: 522, type: !23)
!383 = !DILocation(line: 522, column: 10, scope: !374)
!384 = !DILocation(line: 522, column: 22, scope: !374)
!385 = !DILocation(line: 522, column: 33, scope: !374)
!386 = !DILocation(line: 522, column: 31, scope: !374)
!387 = !DILocalVariable(name: "err", scope: !374, file: !3, line: 523, type: !26)
!388 = !DILocation(line: 523, column: 7, scope: !374)
!389 = !DILocation(line: 523, column: 41, scope: !374)
!390 = !DILocation(line: 523, column: 13, scope: !374)
!391 = !DILocation(line: 524, column: 9, scope: !392)
!392 = distinct !DILexicalBlock(scope: !374, file: !3, line: 524, column: 7)
!393 = !DILocation(line: 524, column: 13, scope: !392)
!394 = !DILocation(line: 526, column: 16, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 525, column: 5)
!396 = !DILocation(line: 526, column: 7, scope: !395)
!397 = !DILocation(line: 527, column: 7, scope: !395)
!398 = !DILocation(line: 543, column: 10, scope: !374)
!399 = !DILocation(line: 543, column: 3, scope: !374)
