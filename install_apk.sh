
if ! [  -f "apk.tar.xz" ]; then
     curl -L -o apk.tar.xz     http://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/apk/apk.tar.xz   
fi

if ! [  -f "apk" ]; then
     tar xf apk.tar.xz 
fi 


  for i in $(cat apk_list ); do

             pm install  apk/$i 

done