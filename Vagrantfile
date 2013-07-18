###
# Vagrantfile for precise64 box
#
# @version: 0.0.1
# @date: 2013.07.18
###


###
# This is our bootstrap shell script.
###
$bootstrap = <<SCRIPT
# Some functions we need
function println() {
  echo "[33m---> $1[0m"
}

println "bootstrap the vm"

println "Update"
apt-get update

println "Install Apache"
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

println "Install NodeJS"
echo "Y" | apt-get install python-software-properties python g++ make
echo "ENTER" | add-apt-repository ppa:chris-lea/node.js
apt-get update
echo "Y" | apt-get install nodejs
node --version
npm --version
SCRIPT


###
# The vagrant configuration
###
Vagrant.configure("2") do |config|
  # The box we want to use and if the box does not exist,
  # fetch it from the following url.
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Execute the bootstrap script.
  config.vm.provision :shell, :inline => $bootstrap

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine.
  config.vm.network :forwarded_port, host: 4000, guest: 80
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  #config.vm.network :private_network, ip: "192.168.33.10"

end
