#!/bin/bash

# Install Popcorntime
# Debian

# Package Version
pkgver="0.3.9"

# Download popcorntime
rm -f popcorntime.tar.xz
wget https://get.popcorntime.sh/build/Popcorn-Time-$pkgver-Linux-64.tar.xz -O popcorntime.tar.xz

# Extract popcorntime
rm -Rf linux64
rm -Rf popcorntime
tar -xvf popcorntime.tar.xz

# Move popcorntime
mv linux64 popcorntime
rm -Rf /opt/popcorntime
mv popcorntime /opt/

# Create Link
rm -f /bin/popcorntime
ln -s /opt/popcorntime/Popcorn-Time /bin/popcorntime

# Create .desktop
rm -f /usr/share/applications/Popcorn\ Time.desktop
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Name=Popcorn Time
Comment=Watch Movies and TV Shows instantly
Exec=popcorntime %U
Icon=/opt/popcorntime/src/app/images/icon.png
MimeType=application/x-bittorrent;x-scheme-handler/magnet;
StartupNotify=false
Categories=AudioVideo;Video;Network;Player;P2P;
Type=Application" > /usr/share/applications/Popcorn\ Time.desktop
