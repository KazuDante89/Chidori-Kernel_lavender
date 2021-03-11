#!/bin/bash

export KERNELNAME=Phoenix Eas

export LOCALVERSION=S1.3

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

	build ${i} -kernel

done

DIFF=$(( END - START ))
