#!/bin/bash

sudo-rs pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo-rs pacman-key --lsign-key 3056513887B78AEB

sudo-rs pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo-rs pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

echo "[chaotic-aur]" | sudo tee -a /etc/pacman.conf
echo "Include = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf

sudo-rs pacman -Syu
