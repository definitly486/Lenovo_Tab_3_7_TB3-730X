#DIR=$('pwd')
pkg install git  build-essential
#curl -L -o Python-3.10.0.tgz  https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz
#tar xzf Python-3.10.0.tgz
#cd Python-3.10.0
#export CPPFLAGS+=" -D__ANDROID_API__=21"
#export LIBCRYPT_LIBS="-lcrypt"
#./configure   --prefix=/data/data/com.termux/files/usr
#make -j1
#make altinstall

curl -L -o  Python-3.9.23.build.tar.gz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/untagged-661a0102b529272aa208/Python-3.9.23.build.tar.gz
tar xzf  Python-3.9.23.build.tar.gz
cd Python-3.9.23 
make install 
cp python /data/data/com.termux/files/usr/bin

