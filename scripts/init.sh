#!/usr/bin bash

echo "<> UPDATE and UPGRADE <>"
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y
echo ""

echo "<> INSTALL MANDATORY PACKAGES <>"

sudo apt install -y \
  ubuntu-restricted-extras python \
  software-properties-common apt-transport-https wget tmux \
  curl git zsh vim make openvpn tig neofetch

echo "\n\n"
