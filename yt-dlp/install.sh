pkg install make
curl -L -o  Python-3.9.23.build.tar.gz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/python3.9/Python-3.9.23.build.tar.gz
tar xzf  Python-3.9.23.build.tar.gz
cd Python-3.9.23 
make install 
cp python /data/data/com.termux/files/usr/bin
cd -
curl -L -o yt_dlp_2024.10.22.tar.gz https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/yt-dlp/yt_dlp_2024.10.22.tar.gz
tar xf  yt_dlp_2024.10.22.tar.gz
cp -R  yt_dlp_2024.10.22/yt_dlp  /data/data/com.termux/files/usr/lib/python3.9/site-packages
cp  yt_dlp_2024.10.22/yt-dlp  /data/data/com.termux/files/usr/bin