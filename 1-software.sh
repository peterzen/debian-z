#!/bin/bash

# fix cloud kernel
#sudo apt-get -y purge linux-image-cloud-amd64
#sudo apt-get -y install linux-image-amd64

PKG_LIST="xdg-user-dirs tmux net-tools scdaemon usbutils qemu-guest-agent spice-vdagent lightdm htop"

# X Window System and Input
PKG_LIST="$PKG_LIST xorg xbacklight xinput xorg-dev xdotool brightnessctl i3 i3blocks i3status xfce4-terminal"

# Python
PKG_LIST="$PKG_LIST python3-pip"

# npm
#sudo PKG_LIST="$PKG_LIST  npm

# Java
#sudo apt-get install default-jdk

# CPU Microcode Updates (if you have amd cpu uncomment the first one and comment the second one)
#sudo PKG_LIST="$PKG_LIST  amd64-microcode
#sudo PKG_LIST="$PKG_LIST  intel-microcode

# Network Management
PKG_LIST="$PKG_LIST network-manager-gnome"

# Appearance and Customization
PKG_LIST="$PKG_LIST lxappearance qt5ct arandr xclip"

# System Utilities
PKG_LIST="$PKG_LIST dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends"

# Terminal Emulators
#sudo PKG_LIST="$PKG_LIST  alacritty

# Modern replacement for ls
PKG_LIST="$PKG_LIST exa pcmanfm ranger"

# XFCE Settings
PKG_LIST="$PKG_LIST xfce4-settings xfce4-power-manager"

# Audio Control
PKG_LIST="$PKG_LIST pulseaudio alsa-utils pavucontrol volumeicon-alsa"

# System Information and Monitoring
PKG_LIST="$PKG_LIST  htop"

# Screenshots
PKG_LIST="$PKG_LIST  flameshot"

# Printer Support
#sudo PKG_LIST="$PKG_LIST  cups simple-scan
#sudo systemctl enable cups

# Bluetooth Support
#sudo PKG_LIST="$PKG_LIST  bluez blueman
#sudo systemctl enable bluetooth

# Messaging
#sudo PKG_LIST="$PKG_LIST  telegram-desktop

# Menu and Window Managers
PKG_LIST="$PKG_LIST  sxhkd numlockx rofi dunst libnotify-bin picom dmenu polybar dbus-x11"

# Archive Management
PKG_LIST="$PKG_LIST  unzip file-roller"

# Text Editors
PKG_LIST="$PKG_LIST  vim-gtk3 mousepad"

# Image Viewer
PKG_LIST="$PKG_LIST  viewnior feh sxiv ueberzug python3-pillow"
#pip install pillow (for debian 11)

# Media Player
PKG_LIST="$PKG_LIST  mpv"

# Calculator
PKG_LIST="$PKG_LIST  galculator"

# Document Viewer
PKG_LIST="$PKG_LIST  zathura"

# Disk Utilities and Cleaning Tools
PKG_LIST="$PKG_LIST  gnome-disk-utility bleachbit"

# install fonts
PKG_LIST="$PKG_LIST  fonts-font-awesome fonts-powerline fonts-noto fonts-sil-scheherazade fonts-dejavu"

sudo apt-get -y install $PKG_LIST


sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
