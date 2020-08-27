#!/bin/bash

https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "<> Do you want to install Google Chrome? (y/n)"
read install_chrome

if echo "$install_chrome" | grep -iq "^y"; then
  echo "<> Installing Google Chrome<>"
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P "$PWD/.files"
  sudo dpkg -i "$PWD/.files/google-chrome-stable_current_amd64.deb"
  sudo rm -rf $PWD/.files/google-chrome-stable_current_amd64.deb
  echo "\n\n"

else
  echo "The Chrome will not be installed XD \n\n"
fi
