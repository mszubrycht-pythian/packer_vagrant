#!/bin/bash

set -e

echo ''
echo "*************************"
echo "*** START OF setup.sh ***"
echo "*************************"
echo ''


echo "Instaling keys"

# Installing vagrant keys
mkdir ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys
chmod 600 ~/.ssh/authorized_keys
chown -R vagrant ~/.ssh



##wget --retry-connrefused -q -O - https://raw.github.com/creationix/nvm/master/install.sh | sh
##source ~/.nvm/nvm.sh

##nvm install 0.10.18
##nvm alias default 0.10.18

##echo "source ~/.nvm/nvm.sh" >> ~/.bash_profile


echo "***********************"
echo "*** END OF setup.sh ***"
echo "***********************"
