curl -L -o streamlink.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/streamlink/streamlink.tar.xz
tar xzf streamlink.tar.xz
cp -R   streamlink/streamlink /data/data/com.termux/files/usr/lib/site-packages
cp    streamlink/streamlink_bak /data/data/com.termux/files/usr/bin/streamlink