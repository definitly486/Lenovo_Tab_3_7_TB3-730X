#!/bin/bash
if [ -z "$1" ]
then
     echo "не введена ссылка"
     exit
fi
curl -k $1 | grep acestream:// | sed 's/.*acestream//' | sed -r 's/".+//' | sed 's/...//' 