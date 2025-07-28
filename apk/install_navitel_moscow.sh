DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/navitel/
FILE=cfo20250225_v9.nm7.tar.xz 
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi
cd  /data/data/com.termux/files/home/storage/downloads
tar xf cfo20250225_v9.nm7.tar.xz 
su - root -c  "pm install /storage/emulated/0/Download/navitel/Navitel-9.13.46-full_crk_Q1-2020_armeabi-v7a.apk"
mkdir -p  /storage/emulated/0/NavitelContent/Maps
mv   /storage/emulated/0/Download/navitel/cfo20250225_v9.nm7 /storage/emulated/0/NavitelContent/Maps
