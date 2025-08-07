#!/system/bin/sh

if test "$(id -u)" -ne 0; then
	printf "%s must be run as root\n" "${0##*/}"
	exit 1
fi

mount -o rw,remount /system
cp /system/bin/tar /system/bin/tar.bak
echo '#!/system/bin/sh
                    busybox tar "$@"' > /system/bin/tar
 chmod 0755 /system/bin/tar 

echo '#!/system/bin/sh
                    busybox vi   "$@"' > /system/bin/vi
chmod 0755 /system/bin/vi

echo '#!/system/bin/sh
                    busybox wget   "$@"' > /system/bin/wget
chmod 0755 /system/bin/wget

curl -k -L -o /system/bin/jq  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/curl_openssl/jq
chmod 0755 /system/bin/jq