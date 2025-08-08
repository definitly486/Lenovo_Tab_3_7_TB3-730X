#!/system/bin/sh
#!/bin/bash
DIR=$(dirname "$(realpath $0)")
cp $DIR/yt-dlp/music_dl.sh /data/data/com.termux/files/usr/bin/music_dl
cp $DIR/yt-dlp/video_dl.sh /data/data/com.termux/files/usr/bin/video_dl
cp $DIR/slink    /data/data/com.termux/files/usr/bin/ 


curl -k -L -o /data/data/com.termux/files/usr/bin/yt-dlp https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/yt-dlp.2025.06.30/yt-dlp
chmod +x /data/data/com.termux/files/usr/bin/yt-dlp 

su - root -c "mount -o rw,remount /system"
su - root -c "curl -k -L -o /system/bin/yt-dlp https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/curl_openssl/yt-dlp"
su - root -c "chmod 0755 /system/bin/yt-dlp"
su - root -c "cp $DIR/yt-dlp/root_dlp/music_dl.sh /system/bin/music_dl"
su - root -c "cp $DIR/yt-dlp/root_dlp/video_dl.sh /system/bin/video_dl"
su - root -c "cp $DIR/yt-dlp/root_dlp/slink    /system/bin/"
su - root -c " chmod 0755 /system/bin/music_dl"
su - root -c "chmod 0755 /system/bin/video_dl"
su - root -c "chmod 0755 /system/bin/slink"


sh streamlink/install.sh
cp termux/getbin.sh    /data/data/com.termux/files/usr/bin/getbin
su - root -c "cp termux/getbin.sh    /system/bin/getbin"
su - root -c "chmod 0755 /system/bin/getbin"