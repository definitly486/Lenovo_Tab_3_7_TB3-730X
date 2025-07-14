DIR=$('pwd')
cd Python-3.10.0
export CPPFLAGS+=" -D__ANDROID_API__=21"
export LIBCRYPT_LIBS="-lcrypt"
./configure   --prefix=/data/data/com.termux/files/usr   --with-openssl=$HOME/Lenovo_Tab_3_7_TB3-730X/openssl/openssl-1.0.2o
make -j1
make altinstall