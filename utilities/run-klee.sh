#!/bin/bash

## This script will generate bitcode files for each .c file and link it
## statically against polybench.bc, after that it will run KLEE over each
## bitcode.

OUTDIR=klee
KLEE=~/workspace/btp/klee/build/bin/klee
KLEEINC=~/workspace/btp/klee/include/
KLEEARGS="--optimize=false --posix-runtime --external-calls=all --suppress-external-warnings --only-output-states-covering-new --exit-on-error-type=Assert"
KLEESTATS=~/workspace/btp/klee/build/bin/klee-stats
CC=clang
CFLAGS="-g -c -emit-llvm -Xclang -disable-O0-optnone -I utilities -I $KLEEINC"
LLVMDIS=llvm-dis
LLVMLINK=llvm-link
OPT=opt

mkdir -p $OUTDIR
export PATH=$PATH:~/workspace/btp/klee/build/bin/

# Build utilities/polybench.c then llvm-link it to each .bc
$CC $CFLAGS utilities/polybench.c -o $OUTDIR/polybench.bc

SRCS=($(cat utilities/benchmark_list))

for each in "${SRCS[@]}"
do
  :
  echo "... Running KLEE on $each ..."
  FILE=$(basename -- $each)
  OUT="${FILE%.*}"
  OUTBC="${OUTDIR}/${OUT}.bc"
  $CC $CFLAGS $each -o $OUTBC
  $LLVMLINK $OUTBC $OUTDIR/polybench.bc -o $OUTBC
  $KLEE $KLEEARGS $OUTBC
done


