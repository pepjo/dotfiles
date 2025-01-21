#!/bin/bash

# Install oh my bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Restore OMB and bash settings
cp -R ./bash.rc ~/.bash.rc

# Restore tmux settings
sudo cp ./.tmux.conf ~/
sudo cp -R ./.tmux ~/

# Configure alacritty
cp -R ./alacritty ~/.config/

# Configure KDE
cp -R ./.kde4 ~/

# Configure touch gestures
cp -R ./libinput-gestures.conf ~/.config/