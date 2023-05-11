#!/bin/bash

export CROSS_COMPILE=$(pwd)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
export ARCH=arm

mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8937_sec_elitexlte_chn_defconfig msm8937_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
