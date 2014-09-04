#!/bin/bash

set -e

echo ''
echo "*************************"
echo "*** START OF setup.sh ***"
echo "*************************"
echo ''

echo "Instaling keys"

# Vagrant key
mkdir ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys
chmod 600 ~/.ssh/authorized_keys
chown -R vagrant ~/.ssh

echo "***********************"
echo "*** END OF setup.sh ***"
echo "***********************"
