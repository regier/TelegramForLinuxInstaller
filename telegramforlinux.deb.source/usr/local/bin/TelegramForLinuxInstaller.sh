#!/bin/bash

# The purpouse of this script is to install Telegram For Linux, nothing else.
# Following KISS.

# Telegram will be/was download here
DownloadDir="/dev/shm/Telegram"
# From here
DownloadURL="https://telegram.org/dl/desktop/linux"
# Named as
TelegramCompressed="Telegram.tar.xz"
# DownloadURL + TelegramCompressed = Dest!
Dest="$DownloadDir/$TelegramCompressed"
# Instalation Directory
InstallDir="/opt"


DIR=/usr/local/lib/TelegramForLinuxInstaller

echo "____ INFO: RUNNING DOWNLOAD TELEGRAM."
sh $DIR/Download_Telegram.sh

echo "____ INFO: RUNNING EXTRACT TELEGRAM."
sh $DIR/Extract_Telegram.sh

echo "____ INFO: RUNNING SET-UP TELEGRAM."
sh $DIR/Set-Up_Telegram.sh

if [ -f $InstallDir/Telegram/Telegram ]; then
    echo "____ SUCCESS: Telegram binary is installed at $InstallDir/Telegram/Telegram"
else
    echo "____ ERROR: Something wen't wrong, can't find installed Telegram at $InstallDir/Telegram"
fi

if [ -f /usr/share/applications/telegram.desktop ]; then
    echo "____ SUCCESS: Telegram Desktop entry was created, you can open Telegram For Linux from your Applications menu in the Internet category."
else
    echo "____ ERROR: Can't find /usr/share/applications/telegram.desktop, something went wront. Try again now or later."
fi

