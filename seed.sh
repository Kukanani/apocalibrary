#!/bin/bash

MEDIA_NAME=Cajon
SAVE_DIR=/media/pi/${MEDIA_NAME}/Apocalibrary

sudo apt install ntfs-3g aria2c wget

aria2c -V --seed-time=10000 --seed-ratio=10.0 --max-upload-limit=500K -i ~/apocalibrary/apocalibrary_all -d $SAVE_DIR
