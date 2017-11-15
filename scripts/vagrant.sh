#!/bin/bash

echo "%vagrant ALL=NOPASSWD:ALL" > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

usermod -a -G sudo vagrant

#apt-get install -y nfs-common
