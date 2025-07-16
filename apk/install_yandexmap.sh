if ! [  -f "Yandex_Maps_17.2.0.apk" ]; then
    curl -L -o maps.apk https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/Yandex_Maps_17.2.0.apk
fi
su - root -c  "pm install maps.apk"