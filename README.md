packer_vagrant
==============

Overview
--------

Files contained in this repo will create a Vagrant box running Ubuntu 12.04.5, with a quite complete set of build toolset, common utilities and the nodejs package.  The resulting Vagrant .box file is ~650M. 


The Impatient Way(tm)
---------------------

```{bash}
mkdir iso && cd iso
wget http://releases.ubuntu.com/12.04.5/ubuntu-12.04.5-server-amd64.iso
cd ../
git clone https://github.com/mszubrycht-blackbirdit/packer_vagrant.git
cd packer_vagrant
./create_box
```

The entire process can be run unattended, it takes < 15 minutes on my MBP w/SSD to complete..


OpenStack
---------

OpenStack likes the taste of .qcow2 vm image format.  To convert the .vmdk file to qcow2, run *./vmdk2qcow2.sh*
