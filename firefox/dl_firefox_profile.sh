DIR=$(dirname "$(realpath $0)")
if ! [  -f "org.mozilla.firefox.tar.xz" ]; then
     curl -k -L -o   org.mozilla.firefox.tar.xz   https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/shared/org.mozilla.firefox.tar.xz 
fi
tar xf org.mozilla.firefox.tar.xz

su - root -c "rm -r /data/data/org.mozilla.firefox/files/mozilla"
su - root -c "cp -r  $DIR/org.mozilla.firefox/files/mozilla /data/data/org.mozilla.firefox/files"
su - root -c "chmod -R  755  /data/data/org.mozilla.firefox/files/mozilla"