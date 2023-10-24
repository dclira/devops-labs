#!/bin/bash
clear
echo "Install packages" 
echo ""

sudo yum -y install yum-utils git curl &
echo 
echo "Yum config manager"

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
echo "Instalando pacotes docker" 
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin & 

sudo  systemctl --now enable docker
