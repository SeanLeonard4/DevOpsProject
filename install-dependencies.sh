#!/bin/bash
sudo apt-get update

#install docker
curl https://get.docker.com | sudo bash
sudo usermod -aG docker jenkins


newgrp docker
#install docker compose
sudo apt-get install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#login
echo $DOCKERHUB_PASSWORD | docker login --username sleonard9704 --password-stdin