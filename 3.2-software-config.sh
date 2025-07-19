#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "CONFIGURING SOFTWARE"
echo

#Enable snap
sudo systemctl enable --now snapd.socket
sudo systemctl enable --now snapd.apparmor.service
sudo ln -s /var/lib/snapd/snap /snap

#Enable udiskie
mkdir -p ~/.config/autostart && echo "[Desktop Entry]
Type=Application
Exec=udiskie -t
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Udiskie
Comment=Montador de dispositivos" > ~/.config/autostart/udiskie.desktop

#Enable Ulauncher
mkdir -p ~/.config/autostart && echo "[Desktop Entry]
Type=Application
Exec=ulauncher --hide-window
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Ulauncher
Comment=Ulauncher" > ~/.config/autostart/ulauncher.desktop

echo
echo "Done!"
echo