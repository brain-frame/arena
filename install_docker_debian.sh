#!/bin/sh


sudo apt-get update

# Install pkgs so a repo can be installed over HTTPS
sudo apt-get apt-get install\
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg \
	lsb-release

# Add Docker's GPG keys
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up Docker's stable repository
echo \
	   "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
	     $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install the Docker engine
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Test docker is working
sudo docker run --rm hello-world

