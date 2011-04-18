#/bin/bash -eu
# Cross-compile for Android
#

: ${workspace:=..}

# build step
PATH+=:$workspace/cs-android-kernel/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin:$workspace/cs-android-agcc
export CC=agcc
make

# installation step
installdir=$workspace/..
mkdir -p /tmp/system/bin
cd tools
cp i2cdetect i2cdump i2cget i2cset /tmp/system/bin
cd /tmp

# unpack the root file system, stick in the built files, then re-pack it.
bunzip2 $installdir/rootfs.tar.bz2
new_uid=0
new_gid=2000
tar --numeric-owner --owner $new_uid --group $new_gid -rf $installdir/rootfs.tar system
bzip2 $installdir/rootfs.tar
rm -rf /tmp/system
