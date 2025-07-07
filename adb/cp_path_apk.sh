#!/bin/sh
DIR=$(dirname "$(realpath $0)")

for i in $(cat $DIR/apk_path ); do
      su - root -c  "cp  -R $i  ../storage/downloads"
done