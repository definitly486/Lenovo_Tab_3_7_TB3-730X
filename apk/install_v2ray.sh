DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=v2rayNG.apk
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi
su - root -c  "pm install /storage/emulated/0/Download/$FILE"

curl -L -o   com.v2ray.ang.tar.xz     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/com.v2ray.ang.tar.xz
tar xf com.v2ray.ang.tar.xz
su - root -c "rm -r /data/data/com.v2ray.ang/"
su - root -c "cp -r  $DIR/com.v2ray.ang /data/data/"
su - root -c "chmod -R  755 /data/data/com.v2ray.ang/"
su - root -c "chown  -R  u0_a205:u0_a205 /data/data/com.v2ray.ang/"