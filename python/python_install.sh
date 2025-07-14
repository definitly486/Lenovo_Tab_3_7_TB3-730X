#curl -L -o python_3.9.7_arm.deb  https://github.com/Termux-pod/termux-pod/raw/refs/heads/main/aarch64/python/python-3.9.7/python_3.9.7_aarch64.deb
#dpkg -i ./python_3.9.7_arm.deb

DIR=$('pwd')
pkg install git  build-essential
#curl -L -o android-ndk-r27c-linux.zip   https://dl.google.com/android/repository/android-ndk-r27c-linux.zip
curl -L -o Python-3.10.0.tgz  https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz
#unzip android-ndk-r27c-linux.zip
tar xzf Python-3.10.0.tgz
cd Python-3.10.0
export CPPFLAGS+=" -D__ANDROID_API__=21"
export LIBCRYPT_LIBS="-lcrypt"
./configure   --prefix=/data/data/com.termux/files/usr
make -j1
make altinstall

