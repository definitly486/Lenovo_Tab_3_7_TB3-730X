#curl -L -o python_3.9.7_arm.deb  https://github.com/Termux-pod/termux-pod/raw/refs/heads/main/aarch64/python/python-3.9.7/python_3.9.7_aarch64.deb
#dpkg -i ./python_3.9.7_arm.deb


curl -L -o Python-3.9.23.tgz  https://www.python.org/ftp/python/3.9.23/Python-3.9.23.tgz
tar xzf Python-3.9.23.tgz
cd Python-3.9.23
export CPPFLAGS+=" -D__ANDROID_API__=21"
./configure --prefix=/opt/python/3.9.23/ --enable-optimizations --with-lto --with-computed-gotos --with-system-ffi --with-openssl=/usr/local/ssl
make -j "$(grep -c ^processor /proc/cpuinfo)"
make altinstall
rm /tmp/Python-3.9.23.tgz
