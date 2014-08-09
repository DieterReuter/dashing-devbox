#!/bin/bash

echo "...Provisioning..."
set -x

# set default for gem/install to no-doc/no-ri
echo "gem: --no-document --no-rdoc --no-ri" | tee ~/.gemrc
echo "gem: --no-document --no-rdoc --no-ri" | sudo -u vagrant tee /home/vagrant/.gemrc

# install Dashing deps
sudo apt-get -yy update
sudo apt-get -yy install ruby ruby-dev gem
sudo apt-get -yy install bundler g++ make
sudo apt-get -yy install nodejs

# install Dashing
sudo gem install dashing
