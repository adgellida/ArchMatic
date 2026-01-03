#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

#'alacritty'
#'amule'
'android-file-transfer'
'arch-audit'
'asbru-cm-git'
'audacity'
'audit'
#'autofirma'
'baobab'
'bauh'
'bleachbit'
'code'
'converseen'
'cpu-x'
#'davinci-resolve'
#'dracut'
'dropbox'
'fail2ban'
#'fancontrol-gui
#'filelight
'firefox'
'firefox-i18n-es-es'
'flameshot'
#'flatpak
#'frostwire
#'geforcenow-electron
'gimp'
'git'
'gitkraken'
#'github-desktop'
'google-chrome'
'goverlay-git'
'hardinfo2'
#'hdparm'
#'heroic-games-launcher-bin'
#'jdk-openjdk'
'jdownloader2'
'keepassxc'
#'keyboard-visualizer-git'
'kleopatra'
#'kicad'
#'latte-dock'
'libreoffice-fresh'
'libreoffice-fresh-es'
#'lm_sensors'
'losslesscut-bin'
'lynis'
#'mangohud'
'masterpdfeditor-free'
'mcfly'
#'mercury-browser-avx-bin'
#'microsoft-edge-stable-bin'
'mission-center'
#'mpc-qt'
#'mystiq'
'fastfetch'
#'nodejs'
#'npm'
'obs-backgroundremoval'
'obs-streamfx'
'onefetch'
'peek'
'pikaur-git'
#'preload'
'proton-vpn-gtk-app'
'protonup-qt'
'qbittorrent'
'qdirstat'
'qmmp'
#'rate-mirrors'
#'recordmydesktop'
#'remmina'
#'ripcord'
'rustdesk-bin'
#'smartgit'
#'spacefm'
#'spectacle'
'spotify-adblock-git'
#'stacer'
'superproductivity-bin'
'system-monitoring-center' 
'telegram-desktop'
'testdisk'
#'thorium-browser-avx-bin'
#'topgrade'
'udiskie'
'ufw'
'ufw-extras'
'ulauncher'
#'urbanterror'
#'variety'
'webcord'
'xonotic'
'xonotic-data'
#'yad'
#'yakuake'

)

PKGS_UNINSTALL=(

'kde-games-meta'
'nextcloud-client'
'alacritty'
'discord'
'firedragon'
'firedragon-*'
#'gvim'
'kate'
'ktorrent'
'elisa'
'gpodder'
'kamule'
'luanti'
'mari0'
'minecraft-launcher'
'mpv'
'piper'
'teeworlds'
#'vim-runtime'

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

for PKG2 in "${PKGS_UNINSTALL[@]}"; do
    echo "UNINSTALLING: ${PKG2}"
    sudo pacman -Rn "$PKG2" --noconfirm
done

echo
echo "Done!"
echo
