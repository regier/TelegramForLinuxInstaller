#!/bin/bash

# The purpouse of this script is to extract Telegram to /opt, nothing else.
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

if [ -f $Dest ]; then
    echo ">>>> INFO: Extracting $Dest to $InstallDir"
    tar xf $Dest -C $InstallDir
else
    echo ">>>> ERROR: Can't find $Dest"
    echo ">>>> Please try again now or later."
fi

if [ -f $InstallDir/Telegram/Telegram ]; then
    echo ">>>> SUCCESS: Telegram extracted to $InstallDir"
else
    echo ">>>> ERROR: Can't find $InstallDir/Telegram"
    echo "Please try again now or later."
fi

