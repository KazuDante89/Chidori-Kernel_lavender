#!/bin/bash

export KERNELNAME=Phoenix

export LOCALVERSION=Test

export KBUILD_BUILD_USER=Arieffst

export KBUILD_BUILD_HOST=#FunProject

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ Memulai build kernel ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam

	build ${i} -newcam

done

DATE_END=$(date +"%s")
 
DIFF=$(($DATE_END - $DATE_START))

echo "Time: $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds."
echo
