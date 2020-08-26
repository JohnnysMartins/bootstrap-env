#!/bin/bash

deepin_terminal_installation() {
  echo "<> Do you want to install deepin terminal? (y/n)"
  read deepin_terminal

  if echo "$deepin_terminal" | grep -iq "^y"; then
    if [ $(which deepin-terminal | grep -c "deepin-terminal") -eq 0 ]; then
      echo "<> Deepin terminal <>"
      sudo add-apt-repository ppa:noobslab/deepin-sc
      sudo apt-get install -y deepin-terminal
    else
      echo "Deepin terminal already installed!"
    fi
  fi

}

tmux_installation() {
  echo "<> Do you want to use the tmux configuration? (y/n)"
  read tmux_configuration

  if echo "$tmux_configuration" | grep -iq "^y"; then
    cp -f $PWD/.files/.tmux.conf ~/.tmux.conf
  fi
}

autojump_installation() {
  echo "<> Do you want to use the tmux configuration? (y/n)"
  read tmux_configuration

  if echo "$tmux_configuration" | grep -iq "^y"; then
    git clone git://github.com/wting/autojump.git
    cd $PWD/autojump/ && ./install.py
    echo "[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh" >>~/.zshrc
    sudo su $USER
  fi

}

ohmyzsh_installation() {
  echo "<> Do you want to configure oh-my-zsh? (y/n)"
  read ohmyzsh_config

  if echo "$ohmyzsh_config" | grep -iq "^y"; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
}

echo "<> Do you want to configure a new terminal? (y/n)"
read new_terminal

if echo "$new_terminal" | grep -iq "^y"; then
  echo "<> Installing and config terminal <>"
  deepin_terminal_installation
  tmux_installation
  autojump_installation
  ohmyzsh_installation
  echo "\n\n"

else
  echo "The new terminal will not be configured XD \n\n"
fi
