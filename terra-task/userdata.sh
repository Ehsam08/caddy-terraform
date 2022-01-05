#!/bin/bash

sudo apt-get update
sudo pt-get install -y apt-transport-https ca-certificates curl software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo chkconfig docker on
sudo docker pull ehsam/caddy-image:basic
sudo docker run -d -p 3001:3001 caddy-image:basic