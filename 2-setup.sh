#!/bin/bash

# Update User Directories (Documents,Downloads,...)
xdg-user-dirs-update

# Install Neovim
# cd
# git clone https://github.com/neovim/neovim
# cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
# git checkout stable
# cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# Installing i3 gaps
#cd
#cd Downloads
#git clone https://github.com/Airblader/i3 i3-gaps
#cd i3-gaps
#mkdir -p build && cd build
#meson --prefix /usr/local
#ninja
#sudo ninja install
#
# Installing dependencies for Ly Console Manager
# sudo nala install -y libpam0g-dev libxcb-xkb-dev

# Installing Ly Console Display Manager
# cd
# cd Downloads
# git clone --recurse-submodules https://github.com/fairyglade/ly
# cd ly/
# make
# sudo make install installsystemd
# sudo systemctl enable ly.service

# Configure xsessions
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=i3
Comment=Manual Window Manager
Exec=i3
Icon=i3
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/i3.desktop;rm ./temp


sudo tee /etc/udev/rules.d/50-x-resize.rules << EOF
ACTION=="change",KERNEL=="card0", SUBSYSTEM=="drm", RUN+="/usr/local/bin/x-resize"
EOF

sudo cp optional/x-resize /usr/local/bin

sudo tee /etc/lightdm/lightdm.conf << EOF
[LightDM]

[Seat:*]
autologin-user=user
autologin-user-timeout=0

[XDMCPServer]

[VNCServer]
EOF

