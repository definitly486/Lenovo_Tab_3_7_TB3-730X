#!/bin/sh

curl -L -o  openssl-1.0.2o.tar.gz  https://www.openssl.org/source/openssl-1.0.2o.tar.gz
tar -xvzf openssl-1.0.2o.tar.gz
cd openssl-1.0.2o
export CPPFLAGS+=" -D__ANDROID_API__=21"
export LDFLAGS=" -llog"
./config shared --prefix=/data/data/com.termux/files/usr/
make 
make install 
