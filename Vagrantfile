# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port 80, 8080
  
  config.vm.provision :shell, :inline => "apt-get -qq update"
  config.vm.provision :shell, :inline => "apt-get -y -qq install python-software-properties"
  config.vm.provision :shell, :inline => "add-apt-repository -y ppa:chris-lea/node.js"
  config.vm.provision :shell, :inline => "apt-get -qq update"

  config.vm.provision :puppet

end
