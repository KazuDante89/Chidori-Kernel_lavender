#!/bin/bash

export KERNELNAME=Phoenix

export LOCALVERSION=S1.4

export KBUILD_BUILD_USER=Arieffst

export KBUILD_BUILD_HOST=#FunProject

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ Start building ${KERNELNAME} ${LOCALVERSION} ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do

	build ${i} -oldcam
	build ${i} -newcam

done

END=$(date +"%s")

DIFF=$(( END - START ))

send_msg "✅ Build completed in $((DIFF / 60))m $((DIFF % 60))s | Linux version: $(make kernelversion) | Last commit: $(git log --pretty=format:'%s' -5)"
