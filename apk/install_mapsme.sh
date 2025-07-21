DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=MAPS.ME.v14.1.71386-googleRelease.apk.tar.xz 
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi
cd /data/data/com.termux/files/home/storage/downloads
tar -xzf $FILE
su - root -c  "pm install /storage/emulated/0/Download/MAPS.ME.v14.1.71386-googleRelease.apk"