#!/bin/bash
DL_DIR=/storage/emulated/0/Music
if [ -z "$1" ]
then
     echo "не введена ссылка"
     exit
fi
cd $DL_DIR
yt-dlp -f 140 "$1"