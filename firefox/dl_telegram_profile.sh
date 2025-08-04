#!/bin/bash
if [ -z "$1" ]
then
     echo "не введен пароль для распаковки telegram "
     exit
fi

if ! [  -f "td.binlog.tar.xz.enc" ]; then
     curl -L -o ssh.tar.xz.enc      https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/td.binlog.tar.xz.enc 
fi

openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -e -d  -in  td.binlog.tar.xz.en  -out  td.binlog.tar.xz     -pass pass:$1   
tar xf td.binlog.tar.xz 
su - root -c "cp  td.binlog /data/data/org.thunderdog.challegram/files/tdlib"
su - root -c "chmod 0600  td.binlog /data/data/org.thunderdog.challegram/files/tdlib/td.binlog"

