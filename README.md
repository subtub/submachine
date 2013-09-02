# submachine 


## Content
- [Introduction](#information)
- [Getting Started](#getting-started)
- [Installed Software](#installed-software)
- [Release / Package a box](#release--package-a-box)


## Information
The ```submachine``` is intended for a variety of development environments.  
Whether you use Node.JS to write server or create static site builds from Jekyll, the ```submachine``` has all the tools on board for these tasks to be solved.  
  
This repository is used to develop and package the ```submachine``` VM.  
The ```submachine``` is based on Ubuntu [precise64](http://files.vagrantup.com/precise64.box).  


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


## Installed Software
- Apache2
- Node.JS and NPM
- Jekyll
- tree
- htop


## Release / Package a box

    vagrant package submachine.box
