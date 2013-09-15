## Getting Started

### Setup your Machine
Download and install [Vagrant](http://downloads.vagrantup.com/)  
  
Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)    

### Get the submachine  
Clone this repository with git by running:

    git clone https://github.com/RtwoDtwo/submachine.git

Navigate into the ```submachine``` repository:

    cd submachine

### Run, Test and Shutdown the VM
Boot it:

    vagrant up

Ssh connection:

    vagrant ssh

Navigate to the synced folder. by default this is the ```/vagrant/``` directory.

    cd /vagrant/

Shutdown the machine:

    vagrant halt

Restart:

    vagrant reload

Revert changes:

    vagrant destroy
