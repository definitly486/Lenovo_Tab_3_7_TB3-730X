#!/bin/bash

if ! [  -f "com.v2ray.ang.tar.xz" ]; then
   curl -k -L -o   com.v2ray.ang.tar.xz     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/com.v2ray.ang.tar.xz
fi

tar xf com.v2ray.ang.tar.xz
su - root -c "cp -r  com.v2ray.ang/files/mmkv/* /data/data/com.v2ray.ang/files/mmkv/"
su - root -c "chmod -R  0755 /data/data/com.v2ray.ang/files/mmkv/*"
#su - root -c "chown  -R  u0_a205:u0_a205 /data/data/com.v2ray.ang/files/mmkv"
