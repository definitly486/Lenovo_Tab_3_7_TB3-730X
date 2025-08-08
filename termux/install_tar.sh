
su - root -c mount -o rw,remount /system
su - root -c cp /system/bin/tar /system/bin/tar.bak

su - root -c cp tar   /system/bin/
su - root -c cp  vi      /system/bin/
su - root -c cp  wget    /system/bin/
su - root -c cp  killall      /system/bin/
su - root -c chmod 0755 /system/bin/tar 
su - root -c chmod 0755 /system/bin/vi
su - root -c chmod 0755 /system/bin/wget
su - root -c chmod 0755 /system/bin/killall

su - root -c curl -k -L -o /system/bin/jq  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/curl_openssl/jq
su - root -c chmod 0755 /system/bin/jq