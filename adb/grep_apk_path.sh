#!/bin/sh
dir=$(dirname "$(realpath $0)")

  for i in $(cat $dir/apk_list ); do

            adb shell pm list packages -f    $i | gsed  's/package://'  | gsed  's/package://' |  rev | sed -r 's!^[^/]+!!' | rev >> apk_path

done