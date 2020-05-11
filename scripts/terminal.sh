#!/bin/bash

echo "<> Installing and config terminal <>"

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# sudo add-apt-repository ppa:noobslab/deepin-sc

# sudo apt-get install -y deepin-terminal

# cp -f $PWD/.files/.tmux.conf ~/.tmux.conf

# git clone git://github.com/wting/autojump.git

cd $PWD/autojump/ && ./install.py

echo "[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc