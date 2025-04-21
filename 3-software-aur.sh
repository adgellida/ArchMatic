#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING AUR SOFTWARE"
echo

PKGS=(

'ente-auth-bin'
'freefilesync-bin'
#'kuro-electron'
'maldet'
'qdiskinfo'
'snapd'
'spotiflyer-bin'
'sysmontask'
'xkill-shortcut'

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING AUR: ${PKG}"
    pikaur -S "$PKG" --noedit --noconfirm
done

#Enable snap
sudo systemctl enable --now snapd.socket
sudo systemctl enable --now snapd.apparmor.service
sudo ln -s /var/lib/snapd/snap /snap

echo
echo "Done!"
echo