###
# Vagrantfile for Ubuntu precise64
###


###
# This is our bootstrap shell script.
###
$bootstrap = <<SCRIPT
# Print out a string and set some ANSI color to the terminal.
function println() {
  echo "[33m---> $1[0m"
}
# Print a ASCII line
function printLine() {
  println " --------------------------------------------------------------------- <---"
}

printLine
println "  Development, Production Machines for differen projects."
println "  Choose between different vagrant modes and bring up"
println "  the environment you need."
println "  "
printLine

println "  Update"
apt-get update

println "  Install Apache"
printLine
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www
printLine

println "  Install NodeJS"
printLine
echo "Y" | apt-get install python-software-properties python g++ make
echo "ENTER" | add-apt-repository ppa:chris-lea/node.js
apt-get update
echo "Y" | apt-get install nodejs
println "NodeJS Version:"
node --version
println "NPM Version:"
npm --version
printLine

println "  Install NodeModules"
printLine
apt-get install coffeescript
printLine

println "  Install jekyll"
printLine
gem install jekyll
printLine

println "  Development / Debugging Tools"
println "  Install util apps"
printLine
apt-get install tree
apt-get install htop
printLine

println "Customize Message of the Day"
echo "
###############################################################################
###                                                                         ###
### submachine                                                              ###
### ----------------------------------------------------------------------- ###
### version:   0.0.2                                                        ###
### date:      2013.07.21                                                   ###
###                                                                         ###
###############################################################################
" > /etc/motd.tail
printLine
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
  #config.vm.network :forwarded_port, host: 4000, guest: 80
  
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  #config.vm.network :private_network, ip: "192.168.33.10"
end
