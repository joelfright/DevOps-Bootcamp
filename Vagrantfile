Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

 config.vm.box = "ubuntu/xenial64"
 # creating a virtual machine ubuntu 
 config.vm.network "private_network", ip: "192.168.10.100"
 config.vm.synced_folder "app", "/home/vagrant/app"
 config.vm.provision "shell", path: "app/provision.sh"

end