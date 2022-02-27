# -*- mode: ruby -*-

$MACHINES = [
  {:name => "master", :ip => "192.168.56.20"},
  {:name => "minion", :ip => "192.168.56.21"},
]

$ETC_HOST_SCRIPT = <<EOS
cat << EOF > /etc/hosts
127.0.0.1     localhost

#{$MACHINES.map {|m| "#{m[:ip]} #{m[:name]}"}.join("\n")}
EOF
EOS

Vagrant.configure("2") do |config|
  $MACHINES.each do |item|
    config.vm.define item[:name] do |m|
      ## bento/ubuntu-20.10
      m.vm.box = "ubuntu/focal64"
      m.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 1
      end

      m.vm.provision "shell", inline: $ETC_HOST_SCRIPT
      m.vm.hostname = item[:name]
      m.vm.network :private_network, ip: item[:ip]
      m.vm.provision "shell", "path": "#{item[:name]}.sh"
    end
  end
end
