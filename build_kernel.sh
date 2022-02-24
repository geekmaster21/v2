#!/bin/bash

export CROSS_COMPILE=aarch64-elf-
export ARCH=arm64
mkdir out

BUILD_CROSS_COMPILE=aarch64-elf-
KERNEL_MAKE_ENV="DTC_EXT=$(pwd)/tools/dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y"


make -j64 -C $(pwd) O=$(pwd)/out $KERNEL_MAKE_ENV ARCH=arm64 CROSS_COMPILE=$BUILD_CROSS_COMPILE sm7150_sec_a71_eur_open_defconfig
make -j64 -C $(pwd) O=$(pwd)/out $KERNEL_MAKE_ENV ARCH=arm64 CROSS_COMPILE=$BUILD_CROSS_COMPILE AR=aarch64-elf-ar OBJDUMP=aarch64-elf-objdump STRIP=aarch64-elf-strip
 
cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image