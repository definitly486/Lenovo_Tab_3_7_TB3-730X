#DIR=$('pwd')
pkg install git  build-essential
curl -L -o  Python-3.10.0.build.tar.gz https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/python/Python-3.10.0.build.tar.gz
tar xzf Python-3.10.0.build.tar.gz
cd Python-3.10.0
make install 
cp python /data/data/com.termux/files/usr/bin

