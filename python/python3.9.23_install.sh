pkg install git  build-essential
curl -L -o  Python-3.9.23.build.tar.gz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/python3.9/Python-3.9.23.build.tar.gz
tar xzf  Python-3.9.23.build.tar.gz
cd Python-3.9.23 
make install 
cp python /data/data/com.termux/files/usr/bin

