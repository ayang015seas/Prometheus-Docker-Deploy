#!/bin/bash

# install docker compose 
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# open up ports
sudo firewall-cmd --add-port=9090/tcp --zone=public --permanent
sudo firewall-cmd --add-port=5001/tcp --zone=public --permanent

sudo firewall-cmd --reload

