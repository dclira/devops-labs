#!/bin/bash
sudo yum -y install vim 

cat <<EOT > /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDV/IhIj258ILca5meqPCnIu40XlcoTdC1ujdLQPcd3gZvAm++jUBQm7Ibf90qGg/lqh9QOdomI1BhBsfvr9KpaCThiqVq9MaaMq9LWo8pPInYxdYKCJV5RlW3ku+IUoqanewLgwXraxUgOj46LdYMF2GtO6FMQSWPsAL0vDZODHZUUa9yPmu9W3DYd5fagS5PIU+IYNp0qo5v78J6d1vG8X/cL0WrvZ4uw8PrGdNiJck+Aa+fj7QJi1Wkx1PoZCmDKW2pR6UIFOPbYKQsg/LG5vJH+03bplmx0lDbUaBqfywz+dtQLRvP2h1MqJTH57Comdxpb5joyKGER7yZxilkN vagrant@control-node
EOT

cat <<EOT >> /etc/hosts 
192.168.56.2	control-node
192.168.56.3	app01
192.168.56.4	db01
EOT

