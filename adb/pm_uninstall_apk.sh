
dir=$(dirname "$(realpath $0)")

  for i in $(cat apk_list ); do

       su - root -c  "pm uninstall --user 0   $i"

done

