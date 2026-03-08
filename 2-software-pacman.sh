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
'amule'
'android-file-transfer'
'android-tools'
'arch-audit'
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
#'github-desktop'
'google-chrome'
'goverlay-git'
#'gscan2pdf'            #scanner
#'hdparm'
#'heroic-games-launcher-bin'
#'jdk-openjdk'
'jdownloader2'
'keepassxc'
#'keyboard-visualizer-git'
'kleopatra'
#'kicad'
#'latte-dock'
'libappindicator'
'libreoffice-fresh'
'libreoffice-fresh-es'
#'lm_sensors'
'lynis'
'mangohud' #####
'mcfly'
#'mercury-browser-avx-bin'
#'microsoft-edge-stable-bin'
'mission-center'
#'mpc-qt'
'fastfetch' #####
#'nodejs'
#'npm'
'octopi' #####
#'obs-backgroundremoval'
#'obs-streamfx'
'onefetch'
'peek'
#'preload'
'proton-vpn-gtk-app'
'protonup-qt'
'qbittorrent'
'qmmp'
#'rate-mirrors'
#'recordmydesktop'
#'remmina'
#'ripcord'
#'samsung-unified-driver-scanner'
#'simple-scan'            #scanner
#'skanlite'            #scanner
'snapper' #####
#'spacefm'
#'spectacle'
#'stacer'
'system-monitoring-center' 
'telegram-desktop'
'testdisk'
#'thorium-browser-avx-bin'
'thunderbird'
#'topgrade'
'udiskie'
#'ufw' #####
#'ufw-extras'
#'urbanterror'
#'variety'
'webcord'
'xonotic'
#'yad'
#'yakuake'

)

PKGS_UNINSTALL=(

#'kde-games-meta'
#'nextcloud-client'
'alacritty'
#'discord'
#'firedragon'
#'firedragon-*'
#'gvim'
'kate'
#'ktorrent'
#'elisa'
#'gpodder'
#'kamule'
#'luanti'
#'mari0'
#'micro'
#'minecraft-launcher'
#'mpv'
#'piper'
#'teeworlds'
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
