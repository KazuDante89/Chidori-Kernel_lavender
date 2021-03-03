#!/bin/bash
export KBUILD_BUILD_USER=Arieffst
export KBUILD_BUILD_HOST=#fstprjct
# Compile plox
function compile() {
    make -j$(nproc) O=out ARCH=arm64 lavender-perf_defconfig
    make -j$(nproc) O=out ARCH=arm64 CC=gcc-10 \
                               CROSS_COMPILE=aarch64-linux-gnu- \
                               CROSS_COMPILE_ARM32=arm-linux-gnueabi-
}
compile
