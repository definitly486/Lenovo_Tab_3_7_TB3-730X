curl -L -o streamlink.tar.xz                     https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/streamlink.tar.xz
curl -L -o streamlink_cli.tar.xz                 https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/streamlink_cli.tar.xz
tar xf streamlink.tar.xz
tar xf streamlink_cli.tar.xz
cp -R   streamlink/streamlink     /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp -R   streamlink/streamlink_cli /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp    streamlink/streamlink_bak /data/data/com.termux/files/usr/bin/streamlink
chmod +x /data/data/com.termux/files/usr/bin/streamlink