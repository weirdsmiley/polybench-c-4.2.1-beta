#!/bin/bash

src=$1

clean() {
  rm -rf .*.dot *.dot *.png *.png *.no-vectorize.ll *.vectorize.ll \
    *.vectorize.bc *.no-vectorize.bc klee-last klee-out-*
}

if [ $1 == "clean" ]; then
  clean
  exit 0
elif [ $1 == "help" ]; then
  echo "usage: ./gen_cfgs.sh <options>
  *.c [opts] : generates two PNGs, one for non-vectorized, other for
               vectorized IR
  opts:
    full     : toggle dumping entire basic blocks
    open-cfg : open generate CFGs in Firefox

  clean      : clean dir of *.png(s), *.dot(s), *.ll(s)
  help       : get this page"
  exit 0
else
  if [[ -f $1 ]]; then
    echo "Proceeding with CFG generation"
  else
    echo $1 "does not exist! aborting"
    exit 0
  fi
fi


if [ -z $2 ]; then
  cfg="-dot-cfg-only"
elif [ $2 == "full" ]; then
  cfg="-dot-cfg"
else
  echo "unknown command" $2
  exit 0
fi

KLEEINC=~/workspace/btp/klee/include/
KLEEBIN=~/workspace/btp/klee/build/bin/klee
KLEEARGS="--search=dfs -posix-runtime --external-calls=all --only-output-states-covering-new --exit-on-error-type=Assert"
KLEESTATS=~/workspace/btp/klee/build/bin/klee-stats
CC=~/workspace/btp/clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin/clang
CFLAGS="-g -c -emit-llvm -Xclang -disable-O0-optnone -I $KLEEINC"
LLVMDIS=~/workspace/btp/clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin/llvm-dis
OPT=~/workspace/btp/clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin/opt

# build a O0-optnone
echo "Generating unoptimized CFG"
$CC $CFLAGS $src -o $src.no-vectorize.bc
$LLVMDIS $src.no-vectorize.bc -o $src.no-vectorize.ll

$OPT $cfg $src.no-vectorize.bc -o $src.no-vectorize.dot 2>/dev/null
dot -Tpng .foo.dot -o$src.no-vectorize.png 2>/dev/null
rm .*.dot
# TODO: Merge two dot files into one (using GNU m4)
# cat .foo.dot >> log.dot

# build vectorized IR
echo "Generating vectorized CFG"
$CC $CFLAGS -O2 $src -o $src.vectorize.bc
$LLVMDIS $src.vectorize.bc -o $src.vectorize.ll

$OPT $cfg $src.vectorize.bc 2>/dev/null
dot -Tpng .foo.dot -o$src.vectorize.png 2>/dev/null
rm .*.dot
# cat .foo.dot >> log.dot

# Run klee
echo "Running Klee over non-vectorized code"
$CC $CFLAGS $src -o $src.no-vectorize.bc
$KLEEBIN $KLEEARGS $src.no-vectorize.bc
$KLEESTATS ./klee-last

echo "Running Klee over vectorized code"
$CC $CFLAGS $src -o $src.vectorize.bc
$KLEEBIN $KLEEARGS --optimize=true $src.vectorize.bc
$KLEESTATS ./klee-last

if [[ -z $3 ]] & [[ $3 == "open-cfg" ]]; then
  ff="firefox --new-tab"
  echo "Opening pngs ..."
  $ff $src.no-vectorize.png 2>/dev/null
  $ff $src.vectorize.png 2>/dev/null
fi
