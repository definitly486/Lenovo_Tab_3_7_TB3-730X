#!/bin/bash

FOTO_FILE=$(date '+%Y-%m-%d').tar.xz

cd $HOME/DCIM 
tar cJf $FOTO_FILE $HOME/storage/dcim/Camera/
gh  release upload  foto $HOME/DCIM/$FOTO_FILE