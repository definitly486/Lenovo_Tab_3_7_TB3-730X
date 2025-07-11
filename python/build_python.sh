DIR=$('pwd')
cd Python-3.10.0
export LDFLAGS+=" -L$DIR/android-ndk-r27c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib --host=aarch64"
export CPPFLAGS+=" -D__ANDROID_API__=27 -I$DIR/android-ndk-r27c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include"
export LIBCRYPT_LIBS="-lcrypt"
./configure --prefix=/data/data/com.termux/files/usr  --enable-optimizations
make -j1
make altinstall