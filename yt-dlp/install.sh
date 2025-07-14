pkg install  build-essential
curl -L -o  Python-3.9.23.build.tar.gz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/python3.9/Python-3.9.23.build.tar.gz
tar xzf  Python-3.9.23.build.tar.gz
cd Python-3.9.23 
make install 
cp python /data/data/com.termux/files/usr/bin
cd -
#curl -L -o yt-dlp https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/yt-dlp.2025.06.30/yt-dlp
#chmod +x yt-dlp 
#cp yt-dlp  /data/data/com.termux/files/usr/bin
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /data/data/com.termux/files/usr/bin/yt-dlp
chmod +x  /data/data/com.termux/files/usr/bin/yt-dlp