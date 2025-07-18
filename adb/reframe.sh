
curl -L -o framework-res.apk_mod  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/framework-res.apk_mod
su - root -c 'mount -o rw,remount /system'
su - root -c 'mv framework-res.apk_mod /system/framework/'
cd /system/framework
su - root -c 'chmod 644 framework-res.apk_mod'
su - root -c 'cp framework-res.apk framework-res.apk.orig'
cd /system/framework
su - root -c 'mv framework-res.apk_mod framework-res.apk'
su - root -c 'chmod 644 framework-res.apk'
