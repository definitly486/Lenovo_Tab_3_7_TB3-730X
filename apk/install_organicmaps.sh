DIR=$(dirname "$(realpath $0)")
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/app.organicmaps_25062603.apk" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/app.organicmaps_25062603.apk     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/app.organicmaps_25062603.apk
fi
su - root -c  "pm install /storage/emulated/0/Download/app.organicmaps_25062603.apk"