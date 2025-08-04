#!/bin/bash
DIR=$(dirname "$(realpath $0)")
if ! [  -f "gh_2.76.2_linux_arm64.tar.gz" ]; then
     curl -L -o   gh_2.76.2_linux_arm64.tar.gz   https://github.com/cli/cli/releases/download/v2.76.2/gh_2.76.2_linux_arm64.tar.gz
fi
tar xf gh_2.76.2_linux_arm64.tar.gz
su - root -c "cp   $DIR/gh_2.76.2_linux_arm64/gh   /data/data/com.termux/files/usr/bin/"
su - root -c "chmod +x  /data/data/com.termux/files/usr/bin/gh"
