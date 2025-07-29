DIR=$(dirname "$(realpath $0)")
URL=https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink
  
for i in $(cat list  ); do
  
if ! [  -f  "$i" ]; then
    curl -L -o $i    $URL/$i
fi

done


for lib in $(cat list_libs  ); do
  
if ! [  -f  "/data/data/com.termux/files/usr/lib/python3.9/site-packages/$lib" ]; then
    curl -L -o "/data/data/com.termux/files/usr/lib/python3.9/site-packages/$lib"    $URL/$lib
fi

done

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
