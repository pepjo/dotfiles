#!/bin/fish

# Install oh my fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# OMF plugins and theme
omf i config
omf i fish-spec
omf i foreign-env
omf i nvm
omf i omf
omf i bobthefish
omf i tmux-zen

# Restore OMF settings
cp -R ./omf ~/.config/

# Restore fish settings
cp -R ./fish ~/.config/

# Restore tmux settings
sudo cp ./.tmux.conf ~/
sudo cp -R ./.tmux ~/

# Configure alacritty
cp -R ./alacritty ~/.config/

# Configure KDE
cp -R ./.kde4 ~/

# Configure touch gestures
cp -R ./libinput-gestures.conf ~/.config/
