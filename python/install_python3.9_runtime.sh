
if ! [  -f "python3.9_runtime.tar.xz" ]; then
     curl -L -o  python3.9_runtime.tar.xz  https://github.com/definitly486/Lenovo_Tab_3_7_TB3-730X/releases/download/python3.9_runtime/python3.9_runtime.tar.xz
fi

tar xf python3.9_runtime.tar.xz
cp -R python3.9_runtime/python3.9  /data/data/com.termux/files/usr/lib/
cp  python3.9_runtime/pip    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/pip3    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/pip3.9    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/python    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/python3    /data/data/com.termux/files/usr/bin
cp  python3.9_runtime/python3.9_bak    /data/data/com.termux/files/usr/bin/python3.9
cp  python3.9_runtime/python3.9-config    /data/data/com.termux/files/usr/bin/
cp  python3.9_runtime/python3-config    /data/data/com.termux/files/usr/bin/
chmod +x  /data/data/com.termux/files/usr/bin/python
chmod +x  /data/data/com.termux/files/usr/bin/python3
chmod +x  /data/data/com.termux/files/usr/bin/pip