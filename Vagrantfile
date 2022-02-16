Vagrant.configure("2") do |config|
	  config.vm.define :master do |master|
	    master.vm.provider "virtualbox" do |v|
	          v.cpus = 1
	          v.customize ["modifyvm", :id, "--name", "master", "--memory", "1024"]
	    end
	    master.vm.box = "ubuntu/focal64"
	    master.vm.hostname = "master"
	    master.vm.network :private_network, ip: "192.168.56.20"
		master.vm.provision "shell", path: "master.sh"
	  end
	
	  config.vm.define :minion do |minion|
	    minion.vm.provider "virtualbox" do |v|
	          v.cpus = 1
	          v.customize ["modifyvm", :id, "--name", "minion", "--memory", "1024"]
	    end
	    minion.vm.box = "ubuntu/focal64"
	    minion.vm.hostname = "minion"
	    minion.vm.network :private_network, ip: "192.168.56.21"
		minion.vm.provision "shell", path: "minion.sh"
	  end
	
	end
