

su_install_python() {

tar xf python3.9_runtime.tar.xz
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
tar xf python3.9_runtime.tar.xz
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

    echo "переменная TERMUX__HOME существует"
    PATH_TERMUX=/data/data/com.termux/files/usr/
    install_python
else
    echo "переменная TERMUX__HOME не существует"
    su - root -c "mount -o rw,remount /system"
    PATH_TERMUX=/system


if ! [  -f "libcrypo_root.tar.xz" ]; then
     curl -k  -L -o  libcrypo_root.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/curl_openssl/libcrypo_root.tar.xz
fi
    tar xf libcrypo_root.tar.xz
    su - root -c cp      libcrypo_root/libcrypt.so              $PATH_TERMUX/lib64/
    su - root -c cp -R   libcrypo_root/libcrypto.so.1.1         $PATH_TERMUX/lib64/
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libcrypt.so"
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libcrypto.so.1.1"
su - root -c "chmod  -R 0755  $PATH_TERMUX/lib/python3.9"

    su_install_python
fi




if ! [  -f "python3.9_runtime.tar.xz" ]; then
     curl -k  -L -o  python3.9_runtime.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/python3.9_runtime/python3.9_runtime.tar.xz
fi
