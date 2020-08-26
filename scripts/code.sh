#!/bin/bash

extension_installation() {
  echo "should the extensions be installed? (y/n)"
  read install_extension
  if echo "$install_extension" | grep -iq "^y"; then
    code --install-extension Shan.code-settings-sync
  fi
}

code_installation() {
  if [ $(which code | grep -c "code") -eq 0 ]; then
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt install -y code
  else
    echo "vs code already installed!"
  fi
}

echo "<> Do you want to install VS code? (y/n)"
read install_code

if echo "$install_code" | grep -iq "^y"; then
  echo "<> Installing VS Code <>"

  code_installation

  extension_installation

  echo "\n\n"
else
  echo "VS Code will not be installed XD \n\n"
fi
