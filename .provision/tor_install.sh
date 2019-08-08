#!/usr/bin/env bash

# update packages
sudo apt-get update

# install dependencies
sudo apt-get -y install apt-transport-https curl

# add tor to sources.list
echo "deb https://deb.torproject.org/torproject.org bionic main" >> /etc/apt/sources.list
echo "deb-src https://deb.torproject.org/torproject.org bionic main" >> /etc/apt/sources.list

# install GPG keys
curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

# install tor
sudo apt-get -y update
sudo apt-get -y install tor deb.torproject.org-keyring

# clean /etc/tor/torrc
sudo rm -Rf /etc/tor/torrc

# set up torrc
sudo cp /vagrant/.provision/tor/torrc /etc/tor/torrc
sudo chown debian-tor /etc/tor/torrc

sudo systemctl restart tor.service