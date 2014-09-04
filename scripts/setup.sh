#!/bin/bash

set -e

echo ''
echo "*************************"
echo "*** START OF setup.sh ***"
echo "*************************"
echo ''

echo "Instaling keys"

echo "adding vagrant insecure key"
mkdir ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys

echo "adding team ssh pubkeys"
if [ -f /vagrant/ssh_pubkeys ]
then
cat /vagrant/ssh_pubkeys >> ~/.ssh/authorized_keys
fi

chmod 600 ~/.ssh/authorized_keys
chown -R vagrant ~/.ssh

echo "***********************"
echo "*** END OF setup.sh ***"
echo "***********************"
