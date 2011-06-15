#/bin/bash -eu
# Cross-compile for Android
#

[ -f ../bin/bash-android ] && source ../bin/bash-android
[ -f ~/.bash-android ] && source ~/.bash-android

export CC=agcc
make
make install
cp local/sbin/* $STAGING_AREA/system/app

exit 0
