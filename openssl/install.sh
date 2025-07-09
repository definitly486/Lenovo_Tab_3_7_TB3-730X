#!/bin/sh

curl https://www.openssl.org/source/openssl-1.0.2o.tar.gz | tar xz
cd openssl-1.0.2o
./config shared --prefix=/data/data/com.termux/files/usr/
make 
make install 
