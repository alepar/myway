Vagrant.configure("2") do |config|

  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", 512]
    vb.customize ["modifyvm", :id, "--cpus", "2"]   
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.network "private_network", ip: "192.168.50.2"

  config.ssh.forward_x11 = true
  config.ssh.forward_agent = true

  config.vm.provision :shell, :inline => "/vagrant/scripts/add_repos.sh"
  config.vm.provision :puppet

end
