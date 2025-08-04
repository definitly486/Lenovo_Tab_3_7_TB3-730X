#!/bin/bash

if [ -z "$1" ]
then
     echo "не введен пароль для gh"
     exit
fi

DIR=$(dirname "$(realpath $0)")
if ! [  -f "gh_2.76.2_aarch64.tar.xz" ]; then
     curl -L -o   gh_2.76.2_aarch64.tar.xz   https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/gh_2.76.2_aarch64/gh_2.76.2_aarch64.tar.xz
fi
tar xf gh_2.76.2_aarch64.tar.xz
cp   $DIR/gh_2.76.2_aarch64/gh   /data/data/com.termux/files/usr/bin/


if ! [  -f "gh.tar.xz.enc" ]; then
     curl -L -o   gh.tar.xz.enc  https://github.com/definitly486/definitly486/releases/download/gh/gh.tar.xz.enc
fi


openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -e  -d  -in gh.tar.xz.enc  -out gh.tar.xz -pass pass:$1
tar xf  gh.tar.xz
mkdir -p $HOME/.config
cp -r gh $HOME/.config