#!/bin/bash

slack_installation() {
  if [ $(which slack | grep -c "slack") -eq 0 ]; then
    echo "<> Download and Installing Slack <>"
    wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.2-amd64.deb -P "$PWD/.files"
    sudo dpkg -i "$PWD/.files/slack-desktop-4.4.2-amd64.deb"
    sudo rm -rf $PWD/.files/slack-desktop-4.4.2-amd64.deb
  else
    echo "Slack already installed!"
  fi
}

echo "<> Do you want to install Slack? (y/n)"
read install_slack

if echo "$install_slack" | grep -iq "^y"; then
  slack_installation
  echo "\n\n"
else
  echo "Slack will not be installed XD \n\n"
fi
