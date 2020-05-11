#!/bin/bash
echo "<> Installing Spotify <>"

curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 

sudo add-apt-repository "deb http://repository.spotify.com stable non-free"

sudo apt-get install -y spotify-client