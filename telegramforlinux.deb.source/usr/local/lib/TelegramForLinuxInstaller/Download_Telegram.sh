#!/bin/bash

# The purpouse of this script is to download Telegram, nothing else.
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

rm -rf $DownloadDir
mkdir -p $DownloadDir

# Checking for different donwloads and using the first one it finds to 
# Download Telegram.

if [ -f /usr/bin/wget ]; then
    echo ">>>> INFO: Downloading Telegram using wget."
    wget --show-progress $DownloadURL -O $Dest
elif [ -f /usr/bin/curl ]; then
    echo ">>>> INFO: Downloading Telegram using curl."
    curl -L $DownloadURL -o $Dest
else
    echo ">>>> ERROR: Can't Find WGet nor Curl."
fi

if [ -f $Dest ]; then
    echo ">>>> SUCCESS: Telegram donwloaded to $Dest"
else
    echo ">>>> ERROR: Can't find downloaded $Dest"
    echo ">>>> Please try again now or later."
fi

