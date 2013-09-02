###
# Vagrantfile for the submachine, based on Ubuntu precise64
#
# The vagrant configuration
###
Vagrant.configure("2") do |config|
  # The box we want to use and if the box does not exist,
  # fetch it from the following url.
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Execute the bootstrap script.
  config.vm.provision :shell, :path => "bootstrap.sh"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine.
  #config.vm.network :forwarded_port, host: 4000, guest: 80
  
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  #config.vm.network :private_network, ip: "192.168.33.10"
end
