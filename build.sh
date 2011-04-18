#/bin/sh
# Cross-compile for Android
#
CS=/mnt/build/cloudsurfer
export PATH=$PATH:$CS/cs-android-kernel/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin:$CS/cs-android-agcc
export CC=agcc
make 
