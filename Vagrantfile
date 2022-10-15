# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'bento/ubuntu-20.04'

  config.vm.network 'private_network', type: 'dhcp'

  if Vagrant::Util::Platform.windows?
    config.vm.synced_folder ENV['USERPROFILE'].to_s, '/mnt/vagrant'
  else
    config.vm.synced_folder '~', '/mnt/vagrant'
  end

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = 4096
    vb.cpus = 2
  end

  # This feature is experimental.
  # See: https://developer.hashicorp.com/vagrant/docs/disks/usage
  config.vm.disk :disk, size: '200GB', primary: true if ENV.key?('VAGRANT_EXPERIMENTAL')

  config.vm.provision 'shell', path: 'ansible-install.sh'

  config.vm.provision 'ansible_local' do |ansible|
    ansible.playbook = 'site.yml'

    ansible.tags = %w[all experimental] if ENV.key?('VAGRANT_EXPERIMENTAL')
  end
end
