#!/bin/bash
echo "<> Download and Installing Slack <>"

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.2-amd64.deb -P "$PWD/.files"

sudo dpkg -i "$PWD/.files/slack-desktop-4.4.2-amd64.deb"

sudo rm -rf $PWD/.files/slack-desktop-4.4.2-amd64.deb