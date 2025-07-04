#!/bin/sh
dir=$(dirname "$(realpath $0)")

  for i in $(cat $dir/apk_list ); do

            adb shell pm uninstall --user 0   $i 

done