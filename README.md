# submachine ![](http://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Alcubierre.png/330px-Alcubierre.png)


## Content
- [Introduction](#information)
- [Getting Started](#getting-started)
- [Release](release--package-a-box)


## Information
The ```submachine``` is intended for a variety of development environments.  
Whether you use a static site builds from Jekyll or a Node.JS server  
touches the ```submachine``` has all tools on board for these tasks to be solved.  
  
This repository is used to develop and package the ```submachine``` VM.  
The ```submachine``` is based on Ubuntu [precise64](http://files.vagrantup.com/precise64.box).  

**Installed software:**
- Apache2
- Node.JS and NPM
- Jekyll
- tree
- htop


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
