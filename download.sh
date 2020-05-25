#!/bin/bash

MEDIA_NAME=Cajon
SAVE_DIR=/media/pi/${MEDIA_NAME}/Apocalibrary

sudo apt install ntfs-3g aria2c wget

mkdir $SAVE_DIR

# download clients
wget --no-clobber -P $SAVE_DIR https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos.dmg
wget --no-clobber -P $SAVE_DIR https://download.kiwix.org/release/kiwix-desktop/kiwix-desktop_x86_64.appimage
wget --no-clobber -P $SAVE_DIR http://download.kiwix.org/release/kiwix-desktop/kiwix-desktop_windows_x64.zip

wget --no-clobber -p $SAVE_DIR https://download.kiwix.org/zim/wikipedia_en_medicine.zim

aria2c --seed-time=240 --seed-ratio=1.1 --max-upload-limit=500K -i ~/apocalibrary/apocalibrary_all -d $SAVE_DIR
