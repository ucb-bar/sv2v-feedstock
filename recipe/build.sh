#!/bin/bash

set -ex

git submodule init
git submodule update

pushd llvm
git fetch --unshallow
popd

mkdir llvm/build
pushd llvm/build
cmake -G Ninja ../llvm \
    -DLLVM_ENABLE_PROJECTS="mlir" \
    -DLLVM_TARGETS_TO_BUILD="host" \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_BUILD_TYPE=DEBUG \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
ninja
ninja check-mlir
popd

mkdir build
pushd build
cmake -G Ninja .. \
    -DMLIR_DIR=$PWD/../llvm/build/lib/cmake/mlir \
    -DLLVM_DIR=$PWD/../llvm/build/lib/cmake/llvm \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH=$PREFIX

# TODO: unknown if needed
#    -DLLVM_ENABLE_ASSERTIONS=ON \
ninja
ninja check-circt
ninja check-circt-integration # Run the integration tests.
popd
