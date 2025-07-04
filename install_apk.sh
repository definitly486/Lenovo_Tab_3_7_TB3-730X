DIR=$(dirname "$(realpath $0)")

if ! [  -f "apk.tar.xz" ]; then
     curl -L -o apk.tar.xz     http://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/apk.tar.xz   
fi

if ! [  -d "apk" ]; then
     tar xf apk.tar.xz 
fi 

cd apk

  for i in $(cat ../apk_list ); do

        su - root -c  'pm install  $dir/apk/$i'

done