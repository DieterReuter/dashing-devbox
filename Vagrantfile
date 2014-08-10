# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "box-cutter/ubuntu1404-docker"
  # config.vm.box_check_update = false

  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  # specific settings for Dashing
  config.vm.network "forwarded_port", guest: 3030, host: 3030
  config.vm.network "forwarded_port", guest: 8081, host: 8081
  config.vm.network "forwarded_port", guest: 9001, host: 9001
  config.vm.synced_folder "./src/", "/opt/application"

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.customize ["modifyvm", :id, "--memory", "512"]
    v.customize ["modifyvm", :id, "--cpus", "1"]
  end

  config.vm.provider "vmware_desktop" do |v|
    #v.gui = true
    v.vmx["memsize"] = "512"
    v.vmx["numvcpus"] = "1"
  end

  # run provisioning
  config.vm.provision "shell", path: "scripts/provision-dashing.sh"

end
