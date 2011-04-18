#/bin/bash -eu
# Cross-compile for Android
#

: ${workspace:=..}
PATH+=:$workspace/cs-android-kernel/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin:$workspace/cs-android-agcc
export CC=agcc
make
