#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SNAP SOFTWARE"
echo

PKGS=(

'acestreamplayer'

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING AUR: ${PKG}"
    sudo snap install "$PKG"
done

echo
echo "Done!"
echo