#!/system/bin/sh
#!/bin/bash
DIR=$(dirname "$(realpath $0)")
cp $DIR/yt-dlp/music_dl.sh /data/data/com.termux/files/usr/bin/music_dl
cp $DIR/yt-dlp/video_dl.sh /data/data/com.termux/files/usr/bin/video_dl
cp $DIR/slink    /data/data/com.termux/files/usr/bin/ 

curl -k -L -o /data/data/com.termux/files/usr/bin/yt-dlp https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/yt-dlp.2025.06.30/yt-dlp
chmod +x /data/data/com.termux/files/usr/bin/yt-dlp 

su - root -c "curl -k -L -o /system/bin/yt-dlp https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/yt-dlp.2025.06.30/yt-dlp"
su - root -c "chmod +x /system/bin/yt-dlp"

sh streamlink/install.sh

cp termux/getbin.sh    /data/data/com.termux/files/usr/bin/getbin
su - root -c "cp termux/getbin.sh    /system/bin/getbin"