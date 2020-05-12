#!/bin/bash

echo "#----- START INSTALLATION -----#"

chmod -R +x $PWD/scripts

sh $PWD/scripts/init.sh
sh $PWD/scripts/slack.sh
sh $PWD/scripts/telegram.sh
sh $PWD/scripts/insomnia.sh
sh $PWD/scripts/spotify.sh
sh $PWD/scripts/nvm.sh
sh $PWD/scripts/code.sh
sh $PWD/scripts/terminal.sh

# <> restart the terminal <> #
sudo su $USER

echo "#----- FINISHED INSTALLATION -----#"
