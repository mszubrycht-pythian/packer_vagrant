packer_vagrant
==============

Prerequisites
-------------

Clone this repo, cd to it.
Make sure ubuntu-12.04.5-server-amd64.iso install image can be found in ../iso, relative to the root of this repo.


Run
---

The entire process can be run unattended, simply run *./create_box* and let it finish.  Takes < 15 minutes on my MBP w/SSD.


OpenStack
---------

OpenStack likes the .qcow2 vm image format.  To convert the .vmdk file to qcow2, run *./vmdk2qcow2.sh*
