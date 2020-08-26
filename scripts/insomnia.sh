#!/bin/bash

insomnia_installation() {
  if [ $(which insomnia | grep -c "insomnia") -eq 0 ]; then
    echo "<> Installing insomnia <>"
    echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" |
      sudo tee -a /etc/apt/sources.list.d/insomnia.list
    wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc |
      sudo apt-key add -
    sudo apt-get update
    sudo apt-get install insomnia
  else
    echo "insomnia already installed!"
  fi
}

echo "<> Do you want to install Insomnia? (y/n)"
read install_insomnia

if echo "$install_insomnia" | grep -iq "^y"; then
  insomnia_installation
  echo "\n\n"
else
  echo "Insomnia will not be installed XD \n\n"
fi
