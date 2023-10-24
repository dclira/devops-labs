#!/usr/bin/env bash

echo "Installing Apache and setting it up..."
yum repolist && yum -y install httpd > /dev/null 
systemctl --now enable httpd 

cp -r /vagrant/html/* /var/www/html/
systemctl restart httpd > /dev/null 

