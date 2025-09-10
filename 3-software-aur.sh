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

'cursor-bin'
'ente-auth-bin'
'freefilesync-bin'
'k4dirstat'
#'kuro-electron'
'maldet'
'qdiskinfo'
'snapd'
'spotiflyer-bin'
'stacer-bin'
'sysmontask'
'xkill-shortcut'

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING AUR: ${PKG}"
    pikaur -S "$PKG" --noedit --noconfirm
done

echo
echo "Done!"
echo