DIR=$(dirname "$(realpath $0)")
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/maps.apk" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/maps.apk https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/Yandex_Maps_17.2.0.apk
fi
su - root -c  "pm install /data/data/com.termux/files/home/storage/downloads/maps.apk"