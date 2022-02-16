#!/bin/bash

set -e

## https://repo.saltproject.io/#ubuntu

# Download key
sudo curl -fsSL -o /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest/salt-archive-keyring.gpg
# Create apt sources list file
echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg arch=amd64] https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest focal main" | sudo tee /etc/apt/sources.list.d/salt.list

sudo apt-get update

sudo apt-get install salt-master salt-minion -y

cp /etc/salt/master{,.back}

sed -i "s/#auto_accept: False/auto_accept: True/g" /etc/salt/master
sed -i "s/#master: salt/master: 192.168.56.20/g" /etc/salt/minion

systemctl restart salt-master
systemctl restart salt-minion
