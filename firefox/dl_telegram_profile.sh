#!/bin/bash
if [ -z "$1" ]
then
     echo "не введен пароль для распаковки telegram "
     exit
fi

if ! [  -f "td.binlog.tar.xz.enc" ]; then
     curl -L -o   td.binlog.tar.xz.enc    https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/td.binlog.tar.xz.enc 
fi

openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -e -d  -in  td.binlog.tar.xz.enc  -out  td.binlog.tar.xz     -pass pass:$1   
tar xf td.binlog.tar.xz 
ID=$(su - root -c "ls  -l /data/data/ | grep chall | head -n 1 | sed 's/[^ ]* //' |  cut -d' ' -f1" )
su - root -c "chown $ID:$ID td.binlog"
su - root -c "rm  /data/data/org.thunderdog.challegram/files/tdlib/td.binlog"
su - $ID  -c "cp  td.binlog /data/data/org.thunderdog.challegram/files/tdlib"


