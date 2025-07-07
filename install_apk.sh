DIR=$(dirname "$(realpath $0)")

cd ../storage/downloads

if ! [  -f "apk.tar.xz" ]; then
     curl -L -o apk.tar.xz     http://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/apk.tar.xz   
fi

if ! [  -d "apk" ]; then
     tar xf apk.tar.xz 
fi 



  for i in $(cat /data/data/com.termux/files/home/Lenovo_Tab_3_7_TB3-730X-main/apk_list ); do

        su - root -c  "pm install  $DIR/apk/$i"

done