# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", path: "shell/docker-install"
  config.vm.provision "shell", path: "shell/docker-compose-install"
end
