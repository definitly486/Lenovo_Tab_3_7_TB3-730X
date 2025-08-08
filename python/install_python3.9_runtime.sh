su_install_python() {

su - root -c cp -R python3.9_runtime/python3.9          $PATH_TERMUX/lib/
su - root -c cp  python3.9_runtime/pip                  $PATH_TERMUX/bin
su - root -c cp  python3.9_runtime/pip3                 $PATH_TERMUX/bin
su - root -c cp  python3.9_runtime/pip3.9               $PATH_TERMUX/bin
su - root -c cp  python3.9_runtime/python               $PATH_TERMUX/bin
su - root -c cp  python3.9_runtime/python3              $PATH_TERMUX/bin
su - root -c cp  python3.9_runtime/python3.9_bak        $PATH_TERMUX/bin/python3.9
su - root -c cp  python3.9_runtime/python3.9-config     $PATH_TERMUX/bin/
su - root -c cp  python3.9_runtime/python3-config       $PATH_TERMUX/bin/
su - root -c "chmod 0755  $PATH_TERMUX/bin/python"
su - root -c "chmod 0755  $PATH_TERMUX/bin/python3"
su - root -c "chmod 0755  $PATH_TERMUX/bin/pip"
su - root -c "chmod  -R 0755  $PATH_TERMUX/lib/python3.9"

}

install_python() {

cp -R python3.9_runtime/python3.9          $PATH_TERMUX/lib/
cp  python3.9_runtime/pip                  $PATH_TERMUX/bin
cp  python3.9_runtime/pip3                 $PATH_TERMUX/bin
cp  python3.9_runtime/pip3.9               $PATH_TERMUX/bin
cp  python3.9_runtime/python               $PATH_TERMUX/bin
cp  python3.9_runtime/python3              $PATH_TERMUX/bin
cp  python3.9_runtime/python3.9_bak        $PATH_TERMUX/bin/python3.9
cp  python3.9_runtime/python3.9-config     $PATH_TERMUX/bin/
cp  python3.9_runtime/python3-config       $PATH_TERMUX/bin/
chmod +x  $PATH_TERMUX/bin/python
chmod +x  $PATH_TERMUX/bin/python3
chmod +x  $PATH_TERMUX/bin/pip

}

 if [[ ! -z "$(export | grep TERMUX__HOME)" ]]; then 

    echo "variable TERMUX__HOME exists"
    PATH_TERMUX=/data/data/com.termux/files/usr/
    install_python
else
    echo "variable TERMUX__HOME don't  exists"
    su - root -c "mount -o rw,remount /system"
    PATH_TERMUX=/system


if ! [  -f "libcrypto_root.tar.xz" ]; then
     curl -k  -L -o  libcrypto_root.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/curl_openssl/libcrypto_root.tar.xz
fi
    tar xf libcrypto_root.tar.xz
    su - root -c cp      libcrypto_root/*              $PATH_TERMUX/lib64/

su - root -c "chmod 0755  $PATH_TERMUX/lib64/libcrypt.so"
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libcrypto.so.1.1"
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libz.so.1"
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libssl.so.1.1"
su - root -c "chmod  -R 0755  $PATH_TERMUX/lib/python3.9"
    su_install_python
fi


if ! [  -f "python3.9_runtime.tar.xz" ]; then
     curl -k  -L -o  python3.9_runtime.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/python3.9_runtime/python3.9_runtime.tar.xz
fi

if ! [  -d "python3.9_runtime" ]; then
     tar xf tar xf python3.9_runtime.tar.xz
fi 
