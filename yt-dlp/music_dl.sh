#!/bin/bash
if [ -z "$1" ]
then
     echo "не введена ссылка"
     exit
fi
cd /storage/emulated/0/Music
yt-dlp -f 140 $1