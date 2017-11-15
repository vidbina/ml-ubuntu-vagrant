#!/bin/bash

apt-get install -y tasksel linux-headers-$(uname -r) build-essential dkms

#tasksel --list-tasks
tasksel install ubuntu-desktop

#VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
#VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso

VBOX_ISO=VBoxGuestAdditions.iso
mount -o loop $VBOX_ISO /mnt
yes|sh /mnt/VBoxLinuxAdditions.run
umount /mnt

