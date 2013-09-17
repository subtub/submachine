#   

## Table of Content

[General Information](#General Information)  
[Getting Started](#Getting Started)  
[Installed Software](#Installed Software)  
[Release / Package a box](#Release / Package a box)  

## General Information

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

- curl
- tree
- htop
- apache2
- git
- jekyll

### Node.JS Software

- NVM
- coffee-script
- nodemon
- grunt-cli
  
## Release / Package a box

    vagrant package --output submachine.box

## License

```
The MIT License (MIT)  
  
Copyright (c) 2013 subtub  
  
Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:  
  
The above copyright notice and this permission notice shall be included in  
all copies or substantial portions of the Software.  
  
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER  
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN  
THE SOFTWARE.  
  ```

---

*This Readme was generated by [subtool](http://www.github.com/subtub/subtool) on Tue Sep 17 2013 11:11:51 GMT+0200 (CEST).*  
