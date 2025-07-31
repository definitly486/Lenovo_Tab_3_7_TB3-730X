DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=Firefox+139.0.4.apk 
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi

apk=$(pm list packages | grep org.mozilla.firefox )

if [ -z "$apk" ]
then
     su - root -c  "pm install /storage/emulated/0/Download/$FILE"
fi

if ! [  -f "org.mozilla.firefox.tar.xz" ]; then
     curl -L -o   org.mozilla.firefox.tar.xz   https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/org.mozilla.firefox.tar.xz 
fi

tar xf org.mozilla.firefox.tar.xz
su - root -c "rm -r /data/data/org.mozilla.firefox/files/mozilla"
su - root -c "cp -r  $DIR/org.mozilla.firefox/files/mozilla /data/data/org.mozilla.firefox/files"
su - root -c "chmod -R  755  /data/data/org.mozilla.firefox/files/mozilla"