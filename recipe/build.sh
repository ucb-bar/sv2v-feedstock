#!/bin/bash

set -ex

make -j${CPU_COUNT}

cp -f bin/* $PREFIX/bin/
