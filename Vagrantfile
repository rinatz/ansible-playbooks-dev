# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7"
  config.vm.network "private_network", type: "dhcp"

  if Vagrant::Util::Platform.windows? then
    config.vm.synced_folder "#{ENV['USERPROFILE']}", "/mnt/vagrant"
  else
    config.vm.synced_folder "~", "/mnt/vagrant"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 2
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "site.yml"
  end
end
