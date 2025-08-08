#!/system/bin/sh
DL_DIR=/storage/emulated/0/Movies
if [ -z "$1" ]
then
     echo "не введена ссылка"
     exit
fi
cd $DL_DIR
yt-dlp  --no-check-certificate -f 18 "$1"