#!/bin/bash

###
# Some ANSI ESCAPE SEQUENCE color codes.
###
ANSI_RESET=[0m
ANSI_YELLOW=[33m

###
# Print out a string and set some ANSI color to the terminal.
###
function print() {
  echo "$ANSI_YELLOW---> $1 $ANSI_RESET"
}

###
# Print a ASCII line
###
function printLine() {
  print "--------------------------------------------------------------------- <---"
}


###
# Include the VERSION file
###
. /vagrant/VERSION


###
# Print some information about the Installation.
###
printLine
print "This is the 'submachine', a development machine."
print ""
print "Version:   "$VERSION
print "Date:      "$DATE
printLine
echo ""


###
# This is our bootstrap shell script.
###
print "Update"
apt-get update
printLine


###
# Install the Apache Server
###
print "Install Apache"
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www
printLine


###
# Install git
###
print "Install git"
echo "Y" | apt-get install git
printLine


###
# Install Node.JS
###
print "Install Node.JS"
echo "Y" | apt-get install python-software-properties python g++ make
echo "ENTER" | add-apt-repository ppa:chris-lea/node.js
apt-get update
echo "Y" | apt-get install nodejs
print "NodeJS Version:"
node --version
print "NPM Version:"
npm --version
printLine


###
# Install Node-Modules
###
print "Install NodeModules"
apt-get install coffeescript
printLine


###
# Install Jekyll
###
print "Install jekyll"
gem install jekyll
printLine


###
#
###
print "Install Development / Debugging Tools"
apt-get install tree
apt-get install htop
printLine


###
# Customize the "Message of the Day" file and add some
# information about this virtualmachine.
###
print "Customize motd.tail"
echo "
--------------------------------------------------------------------------------

submachine

version:   $VERSION
date:      $DATE

--------------------------------------------------------------------------------
" > /etc/motd.tail
printLine