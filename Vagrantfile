# -*- mode: ruby -*-
# vi: set ft=ruby :

# Add the 'ol77' box with the following command: 
# vagrant box add --name ol77 http://yum.oracle.com/boxes/oraclelinux/ol77/ol77.box

Vagrant.configure(2) do |config|
  config.vm.box = "ol77"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  
  config.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
      vb.cpus = 2
  end
  
  config.vm.define "mysqlserver" do |mysqlserver|
    mysqlserver.vm.hostname = "vmmysqlserver"
    mysqlserver.vm.network :forwarded_port, host: 23306, guest: 3306
    
    mysqlserver.vm.provision :shell, path: "https://github.com/arthe1612/mysql8-ol74/blob/master/download-git-repo.sh", privileged: true
    mysqlserver.vm.provision :shell, path: "https://github.com/arthe1612/mysql8-ol74/blob/master/provision-mysql-yum-repo-el7.sh", privileged: true
    mysqlserver.vm.provision :shell, path: "https://github.com/arthe1612/mysql8-ol74/blob/master/provision-mysql-community-80-el7-yum.sh", privileged: true

  end  
  
  config.ssh.insert_key = false
  
end
