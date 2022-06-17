#!/bin/bash

cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

sudo apt-get update
sudo apt-get install -y \
  net-tools curl
