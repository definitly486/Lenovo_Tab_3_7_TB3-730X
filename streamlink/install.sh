DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink
  
for i in $(cat list  ); do
  FILE=$I 
if ! [  -f  "$FILE" ]; then
    curl -L -o $FILE     $URL/$FILE
fi

done


curl -L -o   /data/data/com.termux/files/usr/lib/python3.9/site-packages/typing_extensions.py   https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/typing_extensions.py
curl -L -o   /data/data/com.termux/files/usr/lib/libxslt.so     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/libxslt.so
curl -L -o   /data/data/com.termux/files/usr/lib/libexslt.so    https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/libexslt.so
curl -L -o   /data/data/com.termux/files/usr/lib/libxml2.so     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/libxml2.so
curl -L -o   /data/data/com.termux/files/usr/lib/libffi.so      https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/libffi.so
curl -L -o   /data/data/com.termux/files/usr/lib/python3.9/site-packages/attr.py            https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/attr.py
tar xf streamlink.tar.xz             
tar xf streamlink_cli.tar.xz  -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages 
tar xf exceptiongroup.tar.xz -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages  
tar xf lxml.tar.xz -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages  
tar xf trio.tar.xz -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages  
tar xf wheel.tar.xz -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages  
tar xf pycountry.tar.xz  -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages 
tar xf websocket.tar.xz -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages  
tar xf charset_normalizer.tar.xz -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages 
tar xf requests.tar.xz  -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages
tar xf isodate.tar.xz  -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages
tar xf urllib3.tar.xz -C  /data/data/com.termux/files/usr/lib/python3.9/site-packages
tar xf outcome.tar.xz  -C    /data/data/com.termux/files/usr/lib/python3.9/site-packages
tar xf sniffio.tar.xz -C  /data/data/com.termux/files/usr/lib/python3.9/site-packages
tar xf sortedcontainers.tar.xz -C  /data/data/com.termux/files/usr/lib/python3.9/site-packages
tar xf Crypto.tar.xz -C  /data/data/com.termux/files/usr/lib/python3.9/site-packages
tar xf idna.tar.xz  -C  /data/data/com.termux/files/usr/lib/python3.9/site-packages
tar xf certifi.tar.xz  -C  /data/data/com.termux/files/usr/lib/python3.9/site-packages
tar xf attrs.tar.xz  -C  /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp    streamlink/streamlink_bak /data/data/com.termux/files/usr/bin/streamlink
cp -R   streamlink/streamlink     /data/data/com.termux/files/usr/lib/python3.9/site-packages
chmod +x /data/data/com.termux/files/usr/bin/streamlink
rm -r /data/data/com.termux/files/usr/lib/python3.9/site-packages/attrs
tar xf attrs.tar.xz  -C  /data/data/com.termux/files/usr/lib/python3.9/site-packages
