if ! [  -f "openssh_libs.tar.xz" ]; then
     curl -k  -L -o  openssh_libs.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/curl_openssl/openssh_libs.tar.xz
fi

if ! [  -d openssh_libs"" ]; then
      tar xf openssh_libs.tar.xz
fi 


su - root -c cp      openssh_libs/*              $PATH_TERMUX/lib64/
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libedit.so"
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libcrypto.so"
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libncurses.so"
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libssl.so"
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libldns.so"
su - root -c "chmod 0755  $PATH_TERMUX/lib64/libselinux.so.1"