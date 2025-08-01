DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=ru.fourpda.client-1.9.43.apk 
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi

apk=$(pm list packages | grep ru.fourpda.client)

if [ -z "$apk" ]
then
     su - root -c  "pm install /storage/emulated/0/Download/$FILE"
fi
