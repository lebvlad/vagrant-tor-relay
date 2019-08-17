# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "forwarded_port", guest: 9001, host: 9001
  config.vm.network "forwarded_port", guest: 9030, host: 9030
  config.vm.network "public_network"
  config.vm.provision "shell", path: ".provision/ubuntu_update.sh", run: 'always'
  config.vm.provision "shell", path: ".provision/tor_install.sh"
  config.vm.provision "shell", path: ".provision/nyx_install.sh"
end
