#!/bin/bash

# Install yay so we can use AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..

# Update database
pacman -Sy

# Install fish
sudo pacman -S fish

# Install tmux
sudo pacman -S tmux

# Install alacritty
sudo pacman -S alacritty

# Install vs code
sudo pacman -S code

# Install chromium
sudo pacman -S chromium

# Install touchpad gestures
sudo gpasswd -a $USER input
sudo pacman -S xdotool wmctrl
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
cd ..

# Install node version manager
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# Install rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# source $HOME/.cargo/env

# Install go
sudo pacman -S go
