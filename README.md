packer_vagrant
==============

Overview
--------

Files contained in this repo will create a Vagrant box running Ubuntu 14.04.1, with a quite complete build toolchain, common utilities and nodejs package.  The resulting Vagrant .box file is ~650M as of the last build time. 


The Impatient Way(tm)
---------------------
Copy/paste _should_ work.

```{bash}

git clone https://github.com/mszubrycht-pythian/packer_vagrant.git packer_vagrant
cd packer_vagrant
vagrant init 
cd iso
wget http://releases.ubuntu.com/14.04.1/ubuntu-14.04.1-server-amd64.iso
cd ../
git clone https://github.com/mszubrycht-pythian/packer_vagrant.git
./create_box
vagrant up 
vagrant ssh

```

The entire process can be run unattended, it takes < 25 minutes on my MBP w/SSD to complete.


OpenStack
---------

OpenStack prefers the taste of .qcow2 vm image format.  To convert the .vmdk file to qcow2, run *./vmdk2qcow2.sh*
