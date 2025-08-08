#!/system/bin/sh
DL_DIR=/storage/emulated/0/Music
if [ -z "$1" ]
then
     echo "не введена ссылка"
     exit
fi
cd $DL_DIR
yt-dlp  --no-check-certificate -f 140 "$1"