#!/bin/bash

telegram_installation() {
  if [ $(which telegram | grep -c "telegram") -eq 0 ]; then
    echo "<> Installing Telegram <>"
    sudo add-apt-repository ppa:atareao/telegram
    sudo apt install -y telegram
  else
    echo "Telegram already installed!"
  fi
}

echo "<> Do you want to install Telegram? (y/n)"
read install_telegram

if echo "$install_telegram" | grep -iq "^y"; then
  telegram_installation
  echo "\n\n"
else
  echo "Telegram will not be installed XD \n\n"
fi
