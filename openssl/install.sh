#!/bin/sh

curl -L -o  openssl-1.0.2o.tar.gz  https://www.openssl.org/source/openssl-1.0.2o.tar.gz
tar -xvzf openssl-1.0.2o.tar.gz
cd openssl-1.0.2o
export LDFLAGS=" -llog"
rm -rf "$TERMUX_PREFIX/lib"/libcrypto.* "$TERMUX_PREFIX/lib"/libssl.*
./config shared --prefix=/data/data/com.termux/files/usr zlib-dynamic  no-ssl no-hw no-srp no-tests
make depend
make all
make install 
