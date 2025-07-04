
dir=$(dirname "$(realpath $0)")

  for i in $(cat apk_list ); do

       su - root  "pm uninstall --user 0   $i"

done