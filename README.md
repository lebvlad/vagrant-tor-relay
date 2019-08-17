# Easy way to deploy anonnymous tor relay on new PC with Vagrant

## Prerequisites

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/) or another hypervisor (supported by Vagrant)
- ... and don't forget to open 9001 and 9030 TCP port :)

## Usage

Run `vagrant up` to set up new unnamed tor relay on ubuntu/bionic64 with nyx support for monitoring.

To start nyx monitoring tool, log in into VM `vagrant ssh` and use `sudo -H -u debian-tor nyx`

## Torrc parameters:

- ORPort 9001
- DirPort 9030
- ExitPolicy reject \*:\*
- ControlPort 9051
- CookieAuthentication 1
