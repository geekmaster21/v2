#!/bin/bash

DEFCONFIG=sm7150_sec_a71_eur_open_defconfig

# Declare your CLANG n GCC Location HERE!
CLANG_PATH=~/clang
#GCC_PATH=~/Android/gcc/aarch64-linux-android-4.9

export ANDROID_MAJOR_VERSION=r

make O=out ARCH=arm64 $DEFCONFIG

PATH="$CLANG_PATH/bin:${PATH}" \
                      make -j8 O=out \
                      ARCH=arm64 \
                      CC=clang \
                      LLVM=1 LLVM_IAS=0 \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      LD=ld.lld \
                      AR=llvm-ar \
                      NM=llvm-nm \
                      STRIP=llvm-strip \
                      OBJCOPY=llvm-objcopy \
                      OBJDUMP=llvm-objdump \
                      READELF=llvm-readelf \
                      HOSTCC=clang \
                      HOSTCXX=clang++ \
                      HOSTAR=llvm-ar \
                      HOSTLD=ld.lld
