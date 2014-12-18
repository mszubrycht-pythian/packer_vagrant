#!/bin/bash
# this script  is run as root

echo ''
echo "******************************"
echo "*** START OF root_setup.sh ***"
echo "******************************"
echo ''


# Updating and Upgrading dependencies
# clean up apt lists first to avoid 'hash sum mismatch' sillyness
rm -fR /var/lib/apt/lists/*
apt-get update -y -qq > /dev/null
apt-get upgrade -y -qq > /dev/null

# Install necessary libraries for guest additions and Vagrant NFS Share
apt-get -y install linux-headers-$(uname -r) build-essential dkms nfs-common libssl-dev libreadline-dev zlib1g-dev cryptsetup ntp


# Install good-to-haves
apt-get -y install curl wget git vim tmux gawk zerofree


# no-password sudo for "admin" group
groupadd -r admin
usermod -a -G admin vagrant
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers

# add chef
/usr/bin/curl -L https://chef.io/chef/install.sh | bash


# Install project-specific packages
apt-get -y install nodejs npm 
apt-get clean 

# install guest additions
mkdir /mnt/guestadditions
mount -o loop VBoxGuestAdditions.iso /mnt/guestadditions
/mnt/guestadditions/VBoxLinuxAdditions.run --nox11;  umount /mnt/guestadditions
rm -f VBoxGuestAdditions.iso
lsmod |grep vbox


echo ''
echo "****************************"
echo "*** END OF root_setup.sh ***"
echo "****************************"
echo ''

