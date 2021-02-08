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

  #
  # Warning
  #
  # This feature is experimental.
  # See: https://www.vagrantup.com/docs/disks/usage
  #
  # config.vm.disk :disk, size: "200GB", primary: true

  config.vm.provision "shell", inline: <<-SHELL
    # Ansible Local Provisioner cannot install Ansible in Amazon Linux.
    if type amazon-linux-extras >&/dev/null; then
      amazon-linux-extras enable ansible2
      yum clean metadata
      yum install -y ansible
    fi
  SHELL

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "site.yml"
    ansible.install_mode = "pip"

    if ENV.has_key?("VAGRANT_EXPERIMENTAL") then
      ansible.tags = ["all", "experimental"]
    end
  end
end
