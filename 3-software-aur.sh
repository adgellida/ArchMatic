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

'kuro-electron'
'maldet'
'freefilesync-bin'
'spotiflyer-bin'
'xkill-shortcut'

)


for PKG in "${PKGS[@]}"; do
    echo "INSTALLING AUR: ${PKG}"
    sudo pikaur -S "$PKG" --noedit --noconfirm
done

echo
echo "Done!"
echo