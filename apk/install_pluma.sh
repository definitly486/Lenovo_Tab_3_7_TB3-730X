DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=Pluma_.private_fast.browser_1.80_APKPure.apk 
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi
su - root -c  "pm install /storage/emulated/0/Download/$FILE"

curl -L -o  com.qflair.browserq.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/com.qflair.browserq.tar.xz
tar xf   com.qflair.browserq.tar.xz

