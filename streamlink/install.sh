DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink
FILE=streamlink_runtime.tar.xz 

  
if ! [  -f  "$FILE" ]; then
    curl -L -o  $FILE   $URL/$FILE
fi
tar xf streamlink_runtime.tar.xz
cp -R streamlink/*       /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp    streamlink/streamlink/streamlink_bak /data/data/com.termux/files/usr/bin/streamlink
cp   streamlink/libexslt.so /data/data/com.termux/files/usr/lib
cp   streamlink/libexslt.so /data/data/com.termux/files/usr/lib
cp   streamlink/libexslt.so /data/data/com.termux/files/usr/lib 
cp   streamlink/libxslt.so  /data/data/com.termux/files/usr/lib
cp -R   streamlink/streamlink/streamlink     /data/data/com.termux/files/usr/lib/python3.9/site-packages
chmod +x /data/data/com.termux/files/usr/bin/streamlink


