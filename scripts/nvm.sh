#!/bin/bash

node_installation() {
  if [ $(which node | grep -c "node") -eq 0 ]; then
    echo "<> Installing NVM and node LTS version <>"

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

    echo "export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion" >>~/.zshrc

    source ~/.zshrc
    nvm --version
    nvm install --lts
  else
    echo "node already installed!"
  fi
}

echo "<> Do you want to install Node? (y/n)"
read install_node

if echo "$install_node" | grep -iq "^y"; then
  node_installation
  echo "\n\n"
else
  echo "Node will not be installed XD \n\n"
fi
