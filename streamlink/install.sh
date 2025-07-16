curl -L -o streamlink.tar.xz                     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/streamlink.tar.xz
curl -L -o streamlink_cli.tar.xz                 https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/streamlink_cli.tar.xz
curl -L -o exceptiongroup.tar.xz                 https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/exceptiongroup.tar.xz
curl -L -o lxml.tar.xz                           https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/lxml.tar.xz
curl -L -o trio.tar.xz                           https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/trio.tar.xz
curl -L -o wheel.tar.xz                          https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/wheel.tar.xz
curl -L -o websocket.tar.xz                      https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/websocket.tar.xz 
curl -L -o pycountry.tar.xz                      https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/pycountry.tar.xz 
tar xf streamlink.tar.xz
tar xf streamlink_cli.tar.xz
tar xf exceptiongroup.tar.xz
tar xf lxml.tar.xz
tar xf trio.tar.xz
tar xf wheel.tar.xz
tar xf pycountry.tar.xz 
tar xf websocket.tar.xz
cp -R   streamlink/streamlink     /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp -R   streamlink_cli            /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp -R   exceptiongroup            /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp -R   lxml                      /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp -R   trio                      /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp -R   wheel                     /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp -R   websocket                 /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp -R   pycountry                 /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp    streamlink/streamlink_bak /data/data/com.termux/files/usr/bin/streamlink
chmod +x /data/data/com.termux/files/usr/bin/streamlink