# submachine


This repository is used to package the ```submachine``` box.  
The ```submachine``` is based on Ubuntu precise64 distro.


## Getting Started

Clone this repository with git by running:

    git clone https://github.com/RtwoDtwo/submachine.git

Navigate into the ```submachine``` repository:

    cd submachine

Boot it:

    vagrant up

Ssh connection:

    vagrant ssh

Navigate to the synced folder. by default this is the ```/vagrant/``` directory.

    cd /vagrant/

Shutdown the machine:

    vagrant halt

or restart:

    vagrant reload

verwerfen der letzten änderungen:

    vagrant destroy


## Release / Package a box

    vagrant package submachine.box
