#/bin/bash -eu
# Cross-compile for Android
#

[ -f ~/.bash-android ] && source ~/.bash-android
[ -f ../bin/bash-android ] && source ../bin/bash-android

export CC=agcc
make
make install

exit 0
