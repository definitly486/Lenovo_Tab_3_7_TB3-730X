DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=yandex_elektrichka+v.3.43.0-34300_arm64.apk 
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi
su - root -c  "pm install /storage/emulated/0/Download/$FILE"