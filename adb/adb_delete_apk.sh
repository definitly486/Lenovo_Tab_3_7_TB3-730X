#!/bin/sh
dir=$(dirname "$(realpath $0)")
adb shell su - root -c "mount -o rw,remount /system"
  for i in $(cat $dir/apk_path ); do

    adb shell        su - root -c  "rm -r    $i" 

done

adb shell su - root -c 'mount -o ro,remount /system'