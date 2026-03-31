#!/bin/bash

sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat ebtables iptables-nft libguestfs
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
sudo systemctl restart libvirtd.service
