Vagrant.configure("2") do |config|

 config.vm.define "app" do |app|
	app.vm.box = "ubuntu/xenial64"
	# creating a virtual machine ubuntu 
	app.vm.network "private_network", ip: "192.168.10.100"
	app.vm.synced_folder "app", "/home/vagrant/app"
	app.vm.synced_folder "environment", "/home/vagrant/environment"
	app.vm.provision "shell", inline: "export DB_HOST='mongodb://192.168.10.101:27017/posts'"
	app.vm.provision "shell", path: "app/provision.sh"
  end
  
   config.vm.define "db" do |db|
	db.vm.box = "ubuntu/xenial64"
	# creating a virtual machine ubuntu 
	db.vm.network "private_network", ip: "192.168.10.101"
	db.vm.synced_folder "app", "/home/vagrant/app"
	db.vm.synced_folder "environment", "/home/vagrant/environment"
	db.vm.provision "shell", path: "environment/provisiondb.sh"
  end

end