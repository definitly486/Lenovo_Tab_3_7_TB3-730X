
PATH_ROOT=/system

if ! [  -f "openssh_libs.tar.xz" ]; then
     curl -k  -L -o  openssh_libs.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/openssh/openssh_libs.tar.xz
fi

if ! [  -d openssh_libs"" ]; then
      tar xf openssh_libs.tar.xz
fi 


if ! [  -f "openssh_bin.tar.xz" ]; then
     curl -k  -L -o  openssh_bin.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/openssh/openssh_bin.tar.xz
fi

if ! [  -d openssh_bin"" ]; then
      tar xf openssh_bin.tar.xz
fi 


su - root -c "mount -o rw,remount /system"
su - root -c cp   -R    openssh_bin    $PATH_ROOT/usr/
su - root -c "chmod  -R 0755  $PATH_ROOT/usr/openssh_bin"
su - root -c cp   -R    openssh_libs    $PATH_ROOT/lib64/
su - root -c "chmod  -R 0755  $PATH_ROOT/lib64/openssh_libs"
