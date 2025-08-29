DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=Zepp_8.5.1-play.151213.apk
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE.tar.xz" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE.tar.xz     $URL/$FILE.tar.xz
fi

if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
   tar xf $FILE.tar.xz
fi



     su - root -c  "pm install /storage/emulated/0/Download/$FILE"

