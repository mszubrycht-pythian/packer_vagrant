#!/bin/bash

set -e

echo ''
echo "******************************"
echo "*** START OF root_setup.sh ***"
echo "******************************"
echo ''

# Updating and Upgrading dependencies
# ms 2014-09-01 clean up apt lists to avoid 'hash sum mismatch'
sudo rm -fR /var/lib/apt/lists/*
sudo apt-get update -y -qq > /dev/null
sudo apt-get upgrade -y -qq > /dev/null

# Install necessary libraries for guest additions and Vagrant NFS Share
sudo apt-get -y install linux-headers-$(uname -r) build-essential dkms nfs-common libssl-dev libreadline-dev zlib1g-dev cryptsetup 


# Install necessary dependencies
sudo apt-get -y install curl wget git vim tmux


# Setup sudo to allow no-password sudo for "admin"
groupadd -r admin
usermod -a -G admin vagrant
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers

#Install Redis
#sudo apt-get -y -q install libjemalloc1
#wget -q http://d7jrzzvab3wte.cloudfront.net/checkbot/deb/redis-server_2.6.13-1_amd64.deb
#sha1sum redis-server_2.6.13-1_amd64.deb | grep 'ab50cf037fd63e160946f8946b6d318cdf11800d'
#dpkg -i redis-server_2.6.13-1_amd64.deb
#rm redis-server_2.6.13-1_amd64.deb


sudo apt-get -y install nodejs npm gawk ntp 

echo ''
echo "****************************"
echo "*** END OF root_setup.sh ***"
echo "****************************"
echo ''
#sudo apt-get -y install node

# Install Postgresql
#sudo apt-get -y -q install postgresql libpq-dev postgresql-contrib

# Set Password to test for user postgres
#sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'test';"
