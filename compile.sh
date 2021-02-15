#!/bin/bash
export KBUILD_BUILD_USER=Arieffst
export KBUILD_BUILD_HOST=#FstProject
export PATH="$home/proton-clang/bin:$PATH"
# Compile plox
function compile() {
    make -j$(nproc) O=out ARCH=arm64 lavender-perf_defconfig CC=clang
    make -j$(nproc) O=out ARCH=arm64 CC=clang \
                               CROSS_COMPILE=aarch64-linux-gnu- \
                               CROSS_COMPILE_ARM32=arm-linux-gnueabi-
}
compile
