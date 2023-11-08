#!/bin/fish

# Install oh my fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# OMF plugins and theme
omf i config
omf i fish-spec
omf i foreign-env
omf i nvm
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

# Install kube functions
mkdir -p ~/.config/fish/functions/
cd ~/.config/fish/
git clone https://github.com/aluxian/fish-kube-prompt
ln -s ../fish-kube-prompt/functions/__kube_prompt.fish functions/
ln -s ../fish-kube-prompt/functions/kube_ps.fish functions/
