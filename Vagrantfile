# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "docker-host"
  config.vm.provision "docker"
  config.vm.network :forwarded_port, guest: 80, host: 4567
end
