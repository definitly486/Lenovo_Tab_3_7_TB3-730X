DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink
FILE=streamlink_runtime.tar.xz 

if ! [  -f "python3.9_runtime.tar.xz" ]; then
     curl -k -L -o  python3.9_runtime.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/python3.9_runtime/python3.9_runtime.tar.xz
fi

tar xf python3.9_runtime.tar.xz
cp -R python3.9_runtime/python3.9  /data/data/com.termux/files/usr/lib/
cp  python3.9_runtime/pip    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/pip3    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/pip3.9    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/python    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/python3    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/python3.9_bak    /data/data/com.termux/files/usr/bin/python3.9
cp  python3.9_runtime/python3.9-config    /data/data/com.termux/files/usr/bin/
cp  python3.9_runtime/python3-config    /data/data/com.termux/files/usr/bin/
chmod +x  /data/data/com.termux/files/usr/bin/python
chmod +x  /data/data/com.termux/files/usr/bin/python3
chmod +x  /data/data/com.termux/files/usr/bin/pip
  
if ! [  -f  "$FILE" ]; then
    curl -k -L -o  $FILE   $URL/$FILE
fi
tar xf streamlink_runtime.tar.xz
cp -R streamlink/*       /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp   streamlink/streamlink/streamlink_bak /data/data/com.termux/files/usr/bin/streamlink
cp   streamlink/libexslt.so /data/data/com.termux/files/usr/lib
cp   streamlink/libffi.so /data/data/com.termux/files/usr/lib
cp   streamlink/libxml2.so /data/data/com.termux/files/usr/lib 
cp   streamlink/libxslt.so  /data/data/com.termux/files/usr/lib
cp -R   streamlink/streamlink/streamlink     /data/data/com.termux/files/usr/lib/python3.9/site-packages
chmod +x /data/data/com.termux/files/usr/bin/streamlink
