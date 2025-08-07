if ! [  -f "framework-res.apk_mod" ]; then
     curl  -k -L -o framework-res.apk_mod  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/framework-res.apk_mod
fi

if ! [  -f "/data/data/com.termux/files/home/storage/downloads/default_wallpaper.jpg" ]; then
    curl -k -L -o /data/data/com.termux/files/home/storage/downloads/default_wallpaper.jpg    https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/default_wallpaper.jpg
fi

if ! [  -f "framework-res.apk_mod" ]; then
    echo "файла framework-res.apk_mod не существует"
    exit 
fi

su - root -c 'mount -o rw,remount /system'
su - root -c 'mv framework-res.apk_mod /system/framework/'
cd /system/framework
su - root -c 'chmod 644 framework-res.apk_mod'
su - root -c 'cp framework-res.apk framework-res.apk.orig'
cd /system/framework
su - root -c 'mv framework-res.apk_mod framework-res.apk'
su - root -c 'chmod 644 framework-res.apk'
