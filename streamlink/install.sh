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
curl -L -o   /data/data/com.termux/files/usr/lib/python3.9/site-packages/typing_extensions.py   https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/typing_extensions.py
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
cp    streamlink/streamlink_bak /data/data/com.termux/files/usr/bin/streamlink
cp -R   streamlink/streamlink     /data/data/com.termux/files/usr/lib/python3.9/site-packages
chmod +x /data/data/com.termux/files/usr/bin/streamlink