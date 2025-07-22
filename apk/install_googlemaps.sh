DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=com.google.android.apps.maps_10.29.2-1029201242_minAPI21.apkmirror.com.apk
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi
su - root -c  "pm install /storage/emulated/0/Download/$FILE"

if ! [  -f "com.google.android.apps.maps.tar.xz" ]; then
    curl -L -o  com.google.android.apps.maps.tar.xz     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/googlemaps/com.google.android.apps.maps.tar.xz
fi

rm -R /data/data/com.google.android.apps.maps
tar xzf com.google.android.apps.maps.tar.xz -C /data/data/