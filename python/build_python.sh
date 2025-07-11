DIR=$('pwd')
cd Python-3.10.0
export CPPFLAGS+=" -D__ANDROID_API__=27"
export LIBCRYPT_LIBS="-lcrypt"
./configure  --host=aarch64-linux-android --prefix=/data/data/com.termux/files/usr  --enable-optimizations
make -j1
make altinstall