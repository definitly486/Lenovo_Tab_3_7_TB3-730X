#!/bin/bash

FOTO_FILE=$(date '+%Y-%m-%d_%H:%M:%S').tar.xz

cd $HOME/DCIM 
tar cJf $FOTO_FILE $HOME/storage/dcim/Camera/
gh  release upload  foto $HOME/DCIM/$FOTO_FILE
rm *.tar.xz