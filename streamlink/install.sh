
if ! [  -f "python3.9_runtime.tar.xz" ]; then
     curl -L -o  python3.9_runtime.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/python3.9_runtime/python3.9_runtime.tar.xz
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

curl -L -o streamlink.tar.xz                     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/streamlink.tar.xz
curl -L -o streamlink_cli.tar.xz                 https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/streamlink_cli.tar.xz
curl -L -o exceptiongroup.tar.xz                 https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/exceptiongroup.tar.xz
curl -L -o lxml.tar.xz                           https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/lxml.tar.xz
curl -L -o trio.tar.xz                           https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/trio.tar.xz
curl -L -o wheel.tar.xz                          https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/wheel.tar.xz
curl -L -o websocket.tar.xz                      https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/websocket.tar.xz 
curl -L -o pycountry.tar.xz                      https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/pycountry.tar.xz
curl -L -o charset_normalizer.tar.xz             https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/charset_normalizer.tar.xz
curl -L -o isodate.tar.xz                        https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/isodate.tar.xz
curl -L -o  requests.tar.xz                      https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/requests.tar.xz
curl -L -o  urllib3.tar.xz                       https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/urllib3.tar.xz
curl -L -o  outcome.tar.xz                       https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/outcome.tar.xz
curl -L -o  sniffio.tar.xz                       https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/sniffio.tar.xz
curl -L -o  sortedcontainers.tar.xz              https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/sortedcontainers.tar.xz
curl -L -o  Crypto.tar.xz                        https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/Crypto.tar.xz
curl -L -o  idna.tar.xz                          https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/idna.tar.xz 
curl -L -o  certifi.tar.xz                       https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/certifi.tar.xz
curl -L -o  attrs.tar.xz                         https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/attrs.tar.xz 

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
