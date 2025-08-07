#!/system/bin/sh
su - root -c "mount -o rw,remount /system"
su - root -c "cp /system/bin/tar /system/bin/tar.bak"
su - root -c "echo '#!/system/bin/sh
                    busybox tar "$@"' > /system/bin/tar"
su - root -c chmod 0755 /system/bin/tar 

su - root -c "echo '#!/system/bin/sh
                    busybox tar  "$@"' > /system/bin/vi"
su - root -c chmod 0755 /system/bin/vi