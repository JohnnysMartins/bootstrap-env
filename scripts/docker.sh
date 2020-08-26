#!/bin/bash

docker_installation() {
  if [ $(which docker | grep -c "docker") -eq 0 ]; then
    echo "<> Installing Docker and Compose <>"
    sudo apt-get install -y docker.io
    sudo usermod -aG docker $USER
    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
  else
    echo "docker already installed!"
  fi
}

echo "<> Do you want to install Docker? (y/n)"
read install_docker

if echo "$install_docker" | grep -iq "^y"; then
  docker_installation
  echo "\n\n"
else
  echo "docker will not be installed XD \n\n"
fi
