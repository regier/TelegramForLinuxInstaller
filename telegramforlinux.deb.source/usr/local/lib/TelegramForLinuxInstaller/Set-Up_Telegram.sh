#!/bin/bash

# The purpouse of this script is to generate desktop entry, nothing else.
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

echo ">>>> INFO: Generating /usr/share/applications/telegram.desktop"

cat << EOF > /usr/share/applications/telegram.desktop
[Desktop Entry]
Name=Telegram
Exec="$InstallDir/Telegram/Telegram"
Terminal=false
Type=Application
Icon=telegram
StartupWMClass=Telegram
Comment=Telegram For Linux
Categories=Network;InstantMessaging;Chat;
EOF

if [ -f /usr/share/applications/telegram.desktop ]; then
    echo ">>>> SUCCESS: telegram.desktop generated."
else
    echo ">>>> ERROR: Can't find /usr/share/applications/telegram.desktop"
    echo "Please try again now or later."
fi

