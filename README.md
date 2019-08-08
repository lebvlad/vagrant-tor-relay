# setup-tor-relay
 Rise new tor non exit relay with Vagrant

# Usage

Run "vagrant up" to set up new unnamed tor relay on ubuntu/bionic64 with 
nyx support for monitoring.

To start nyx log in into VM "vagrant ssh" and use "sudo -H -u debian-tor nyx"

# Torrc parameters:

ORPort 9001
DirPort 9030
ExitPolicy reject *:*
ControlPort 9051
CookieAuthentication 1