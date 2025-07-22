#!/bin/bash
DIR=$(dirname "$(realpath $0)")
cp $DIR/yt-dlp/music_dl.sh /data/data/com.termux/files/usr/bin/music_dl
cp $DIR/slink    /data/data/com.termux/files/usr/bin/ 