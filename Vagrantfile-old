# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV["LC_ALL"] = "en_US.UTF-8"

## https://vagrantcloud.com/ubuntu/boxes/focal64/versions/20220213.0.0/providers/virtualbox.box
## vagrant box add  virtualbox.box --name ubuntu/focal64

Vagrant.configure("2") do |config|
    (1..2).each do |i|
      # config.vm.provision "shell", path: "init.sh"
      config.vm.define "salt#{i}" do |node|
        node.vm.box = "ubuntu/focal64"
        node.ssh.insert_key = false
        node.vm.hostname = "salt#{i}"
        #node.vm.network "forwarded_port", guest: 9090, host: 9099, host_ip: "127.0.0.1"
        node.vm.network "private_network", ip: "192.168.56.2#{i}"
        #node.vm.synced_folder ".", "/vagrant", disabled: true
        #node.vm.synced_folder ".", "/home/vagrant/provision", type: "rsync"
        #node.vm.provision "shell", path: "init.sh"
        node.vm.provider "virtualbox" do |v|
          v.cpus = 2
          v.customize ["modifyvm", :id, "--name", "salt#{i}", "--memory", "1024"]
        end
      end
    end
end
