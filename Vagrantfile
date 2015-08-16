###
# @package  DEV4PHP
# @author   Walker de Alencar <@walkeralencar>
# @author   Roberto L. Machado <@robmachado>
##
Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.network "private_network", ip: "192.168.56.100"

  config.vm.network "public_network"

  config.vm.synced_folder "./www", "/var/www"
  
  config.vm.provider "virtualbox" do |v|
    v.name = "Development Environment for PHP 5.6"
  end

  ## Fix tty msg error by @robmachado
  config.vm.provision "fix-no-tty", type: "shell" do |s|
      s.privileged = false
      s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end

  config.vm.provision :shell, path: "provision/setup.sh"

end
