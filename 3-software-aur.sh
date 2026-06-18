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

'asbru-cm'
'dropbox'
'ente-auth-bin'
'freefilesync-bin'
'gitkraken'
'hardinfo2'
'k4dirstat'
#'kuro-electron'
'losslesscut-bin'
'maldet'
'masterpdfeditor-free'
'mystiq'
#'naps2-bin'            #scanner
'pacseek'
'perl-crypt-urandom'
#'pikaur'
'qdiskinfo'
'qdirstat'
'rustdesk-bin'
'shelly-bin'
#'snapd'
'soundbound-app-bin'
'spotify-adblock-git'
'superproductivity-bin'
#'stacer-bin'
'sysmontask'
#'ulauncher'
'vicinae-bin'
'xkill-shortcut'
#'xsane'            #scanner

##### IDE - AI
'cursor-bin'
'kiro-ide'
'qoder-bin'
'trae-bin'
'devin-desktop'

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING AUR: ${PKG}"
    paru -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
