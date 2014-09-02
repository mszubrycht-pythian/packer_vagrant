#!/bin/bash

sudo /usr/local/bin/qemu-img convert -f vmdk -O qcow2 ~/.vagrant.d/boxes/vagrant_packer/0/virtualbox/packer-virtualbox-iso-disk1.vmdk  ./packer_vm.qcow2
