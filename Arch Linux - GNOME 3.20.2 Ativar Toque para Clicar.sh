#!/bin/bash

# Enable Touchpad Tapping Gnome 3.20.2 Arch Linux

FILE="/etc/X11/xorg.conf.d/30-touchpad.conf"

root(){
if [ "`whoami`" != "root" ];
then
clear
echo ""
echo "--- :( ----------------------------------------------"
echo ""
echo "    Voce precisa ser root para continuar."
echo ""
exit 1
fi
}

root

rm -f $FILE

echo 'Section "InputClass"
        Identifier "MyTouchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection' > $FILE
