#!/bin/bash

# my essentials
sudo apt-get install xdg-user-dirs tmux net-tools nm-tray

# X Window System and Input
sudo apt-get install -y xorg xbacklight xinput xorg-dev xdotool brightnessctl

# Python
sudo apt-get install -y python3-pip

# npm
#sudo apt-get install -y npm

# Java
#sudo apt-get install default-jdk

# CPU Microcode Updates (if you have amd cpu uncomment the first one and comment the second one)
#sudo apt-get install -y amd64-microcode
#sudo apt-get install -y intel-microcode

# Network Management
sudo apt-get install -y network-manager-gnome

# Appearance and Customization
sudo apt-get install -y lxappearance qt5ct arandr xclip

# System Utilities
sudo apt-get install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal Emulators
#sudo apt-get install -y alacritty

# Modern replacement for ls
sudo apt-get install -y exa

# File Managers
sudo apt-get install -y pcmanfm ranger

# XFCE Settings
sudo apt-get install -y xfce4-settings xfce4-power-manager

# Audio Control
sudo apt-get install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# System Information and Monitoring
sudo apt-get install -y htop

# sudo apt-get install -y neofetch

# Screenshots
sudo apt-get install -y flameshot

# Printer Support
#sudo apt-get install -y cups simple-scan
#sudo systemctl enable cups

# Bluetooth Support
#sudo apt-get install -y bluez blueman
#sudo systemctl enable bluetooth

# Messaging
#sudo apt-get install -y telegram-desktop

# Menu and Window Managers
sudo apt-get install -y sxhkd numlockx rofi dunst libnotify-bin picom dmenu polybar dbus-x11

# Archive Management
sudo apt-get install -y unzip file-roller

# Text Editors
sudo apt-get install -y vim-gtk3 mousepad

# Image Viewer
sudo apt-get install -y viewnior feh sxiv ueberzug python3-pillow
#pip install pillow (for debian 11)

# Media Player
sudo apt-get install -y mpv

# Calculator
sudo apt-get install -y galculator

# Document Viewer
sudo apt-get install -y zathura

# Disk Utilities and Cleaning Tools
sudo apt-get install -y gnome-disk-utility bleachbit


# Neovim Build prerequisites
#sudo apt-get install -y ninja-build gettext cmake curl python3.11-venv

# Required packages for i3-gaps installation
#sudo apt-get install -y meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev i3status cmake



# Install Codium
#wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

##echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list

#sudo apt-get update

#sudo apt-get install -y codium
