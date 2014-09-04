# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "vagrant_packer"

  config.vm.network :private_network, ip: "192.168.1.50"
  config.vm.network :forwarded_port, guest: 5000, host: 5000
  config.vm.network :forwarded_port, guest: 22, host: 2258


 config.vm.synced_folder ".", "/vagrant", :nfs => false
end
