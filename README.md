# submachine ![](http://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Alcubierre.png/330px-Alcubierre.png)


## Content
- [Introduction](#information)
- [Getting Started](#getting-started)
- [Release / Package a box](#release--package-a-box)


## Information
The ```submachine``` is intended for a variety of development environments.  
Whether you use static site builds from Jekyll or a Node.JS server, the ```submachine``` has all the tools on board for these tasks to be solved.  
  
This repository is used to develop and package the ```submachine``` VM.  
The ```submachine``` is based on Ubuntu [precise64](http://files.vagrantup.com/precise64.box).  

**Installed software:**
- Apache2
- Node.JS and NPM
- Jekyll
- tree
- htop


## Getting Started

Download and install Vagrant:  
        
    [vagrantup.com](http://downloads.vagrantup.com/)
    
Download and install VirtualBox:

    [virtualbox.org](https://www.virtualbox.org/wiki/Downloads)

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

Restart:

    vagrant reload

Revert changes:

    vagrant destroy


## Release / Package a box

    vagrant package submachine.box
