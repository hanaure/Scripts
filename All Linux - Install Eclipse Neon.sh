#!/bin/bash

# Install Eclipse


# Download Eclipse
rm -f eclipse.tar.gz
wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz

# Extraindo o Eclipse
rm -Rf eclipse
tar -xvf eclipse.tar.gz

# Movendo Eclipse
rm -Rf /opt/eclipse
mv eclipse /opt/

# Create Link
rm -f /bin/eclipse
ln -s /opt/eclipse/eclipse /bin/eclipse

# Create .desktop
rm -f /usr/share/applications/Eclipse.desktop
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Name=Eclipse
Comment=IDE de Desenvolvimento
Exec=eclipse %U
Icon=/opt/eclipse/icon.xpm
StartupNotify=false
Categories=Application;Development;Java;IDE;
Type=Application" > /usr/share/applications/Eclipse.desktop
