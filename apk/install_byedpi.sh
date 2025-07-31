DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=byedpi-1.2.0.apk 
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi

apk=$(pm list packages | grep io.github.dovecoteescapee.byedpi)

if [ -z "$apk" ]
then
     su - root -c  "pm install /storage/emulated/0/Download/$FILE"
fi

curl -L -o   io.github.dovecoteescapee.byedpi.tar.xz     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/io.github.dovecoteescapee.byedpi.tar.xz
tar xf io.github.dovecoteescapee.byedpi.tar.xz
su - root -c "rm -r /data/data/io.github.dovecoteescapee.byedpi/"
su - root -c "cp -r  $DIR/io.github.dovecoteescapee.byedpi   /data/data/"
su - root -c "chmod -R  755 /data/data/io.github.dovecoteescapee.byedpi/"
su - root -c "chown  -R  u0_a105:u0_a105 /data/data/io.github.dovecoteescapee.byedpi/"