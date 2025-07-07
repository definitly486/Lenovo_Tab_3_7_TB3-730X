#!/bin/sh
dir=$(dirname "$(realpath $0)")
su - root -c 'mount -o rw,remount /system'
  for i in $(cat $dir/apk_path ); do

            su - root -c  "rm -r    $i" 

done

su - root -c 'mount -o ro,remount /system'