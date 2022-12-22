#!/bin/bash

set -ex

rm -rf llvm/build
mkdir llvm/build
pushd llvm/build
cmake -G Ninja ../llvm \
    -DLLVM_ENABLE_PROJECTS="mlir" \
    -DLLVM_TARGETS_TO_BUILD="host" \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_BUILD_TYPE=RELEASE \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
ninja -j${CPU_COUNT}
ninja -j${CPU_COUNT} check-mlir
popd

mkdir build
pushd build
cmake -G Ninja .. \
    -DMLIR_DIR=$PWD/../llvm/build/lib/cmake/mlir \
    -DLLVM_DIR=$PWD/../llvm/build/lib/cmake/llvm \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
ninja -j${CPU_COUNT}
ninja -j${CPU_COUNT} check-circt
ninja -j${CPU_COUNT} check-circt-integration # Run the integration tests.
ninja install
popd
