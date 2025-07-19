DIR=$(dirname "$(realpath $0)")
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/Google+Chrome+106.0.5249.126+Android6.arm.apk" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/Google+Chrome+106.0.5249.126+Android6.arm.apk     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/Google+Chrome+106.0.5249.126+Android6.arm.apk
fi
su - root -c  "pm install /storage/emulated/0/Download/Google+Chrome+106.0.5249.126+Android6.arm.apk"