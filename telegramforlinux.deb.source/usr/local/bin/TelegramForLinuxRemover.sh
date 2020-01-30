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

if [ -f /usr/share/applications/telegram.desktop ]; then
    echo "____ INFO: Telegram Desktop entry was Removed."
else
    echo "____ ERROR: Can't find /usr/share/applications/telegram.desktop, Nothing to remomove."
fi

if [ -f $InstallDir/Telegram/Telegram ]; then
    echo "____ INFO: Removing Telegram from your system."
    rm -rf $InstallDir/Telegram
    echo "____ INFO: Telegram Desktop For Linux was Removed."
else
    echo "____ ERROR: Can't find $InstallDir/Telegram, Nothing to remomove."
fi

