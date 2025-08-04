#!/bin/bash

if [ -z "$1" ]
then
     echo "не введен пароль для gh"
     exit
fi

DIR=$(dirname "$(realpath $0)")
if ! [  -f "gh_2.76.2_linux_arm64.tar.gz" ]; then
     curl -L -o   gh_2.76.2_linux_arm64.tar.gz   https://github.com/cli/cli/releases/download/v2.76.2/gh_2.76.2_linux_arm64.tar.gz
fi
tar xf gh_2.76.2_linux_arm64.tar.gz
cp   $DIR/gh_2.76.2_linux_arm64/bin/gh   /data/data/com.termux/files/usr/bin/


if ! [  -f "gh.tar.xz.enc" ]; then
     curl -L -o   gh.tar.xz.enc  https://github.com/definitly486/definitly486/releases/download/gh/gh.tar.xz.enc
fi


openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -e  -d  -in gh.tar.xz.enc  -out gh.tar.xz -pass pass:$1
tar xf  gh.tar.xz
mkdir -p $HOME/.config
cp -r gh $HOME/.config