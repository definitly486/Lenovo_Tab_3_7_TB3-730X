#!/bin/bash 
DIR=$(dirname "$(realpath $0)")
if ! [  -f "logo.bin_mod" ]; then
     curl -L -o  logo.bin_mod    https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/logo.bin/logo.bin_mod
fi
su - root -c "dd if=$DIR/logo.bin_mod  of=/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/logo  bs=3145728 count=1"
su - root -c "mount -o rw,remount /system"

su - root -c "mv /system/bootanimation.zip /system/bootanimation1.zip"
su - root -c "mv /system/shutanimation.zip /system/shutanimation1.zip"