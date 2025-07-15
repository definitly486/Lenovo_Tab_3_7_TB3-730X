#DIR=$('pwd')
pkg install git  build-essential
curl -L -o Python-3.10.0.tgz  https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz
tar xzf Python-3.10.0.tgz
cd Python-3.10.0
make install 
cp python /data/data/com.termux/files/usr/bin

