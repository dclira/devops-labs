#!/bin/bash

sudo yum -y install epel-release
sudo yum -y install wget vim net-tools python 
echo "Instanlando Ansible"
sudo yum -y install ansible
sudo yum -y install python-pip pip
cd /etc/ansible 
cp ansible.cfg ansible.org 

cat <<EOT >> /etc/hosts 
192.168.56.2	control-nodea
192.168.56.3	app01
192.168.56.4	db01
EOT

