#!/bin/bash
DL_DIR=/storage/emulated/0/Movies
if [ -z "$1" ]
then
     echo "не введена ссылка"
     exit
fi
cd $DL_DIR
yt-dlp -f 18 "$1"