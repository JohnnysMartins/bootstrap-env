#!/bin/bash

spotify_installation() {
  if [ $(which spotify | grep -c "spotify") -eq 0 ]; then
    echo "<> Installing Spotify <>"
    curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
    sudo add-apt-repository "deb http://repository.spotify.com stable non-free"
    sudo apt-get install -y spotify-client
  else
    echo "Spotify already installed!"
  fi
}

echo "<> Do you want to install Spotify? (y/n)"
read install_spotify

if echo "$install_spotify" | grep -iq "^y"; then
  spotify_installation
  echo "\n\n"
else
  echo "Spotify will not be installed XD \n\n"
fi
