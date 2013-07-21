# vagrant

ein paar stichpunkte für die nutzung von vagrant.  


## Download vagrant / VM's

Lade die vagrant software runter und installiere diese.  
http://downloads.vagrantup.com/

Eine menge VM's sind hier gelistet:  
http://www.vagrantbox.es

**Links**  
http://net.tutsplus.com/tutorials/php/vagrant-what-why-and-how/


## Getting Started
erstelle eine ```Vagrantfile```

    vagrant init

starte die VM

    vagrant up

ssh verbindung

    vagrant ssh
    
navigiere in den vagrant ordner

    cd /vagrant/
    


## CLI / Cheat Sheet

### up and running
starte eine vm:

    vagrant up

shutdown vm:

    vagrant halt

restart:

    vagrant reload

verwerfen der letzten änderungen:

    vagrant destroy

ssh verbindung:

    vagrant ssh

### utils
zeige alle installierte vm's

    vagrant box list


## Box verpacken

    vagrant package submachine.box