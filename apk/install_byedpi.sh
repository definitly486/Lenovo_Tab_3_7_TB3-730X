DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/
FILE=byedpi-1.2.0.apk 
if ! [  -f "/data/data/com.termux/files/home/storage/downloads/$FILE" ]; then
    curl -L -o /data/data/com.termux/files/home/storage/downloads/$FILE     $URL/$FILE
fi
su - root -c  "pm install /storage/emulated/0/Download/$FILE"

curl -L -o   io.github.dovecoteescapee.byedpi_preferences.xml   https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/io.github.dovecoteescapee.byedpi_preferences.xml
su - root -c "mkdir -p /data/data/io.github.dovecoteescapee.byedpi/shared_prefs"
su - root -c "cp $DIR/io.github.dovecoteescapee.byedpi_preferences.xml   /data/data/io.github.dovecoteescapee.byedpi/shared_prefs" 