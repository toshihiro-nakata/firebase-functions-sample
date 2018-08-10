# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "mvbcoding/awslinux"
  # config.vm.network "private_network", ip: "192.168.33.100"
  config.vm.network "forwarded_port", guest: 5000, host:5000
  config.vm.network "forwarded_port", guest: 5001, host:5001
  config.vm.network "forwarded_port", guest: 9005, host:9005
  config.vm.synced_folder ".", "/vagrant", disabled: true, create: true
  config.vm.synced_folder "./vagrant/document/", "/home/vagrant/document/", create:true

  # provision用のスクリプトを実行
  config.vm.provision :shell, path: 'provision.sh', keep_color: true, privileged: false

  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
    v.cpus = 2
  end
  
end
