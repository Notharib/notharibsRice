#!/bin/bash

sudo-rs rm -r /etc/pacman.d/gnupg /var/lib/pacman/sync
sudo-rs pacman-key --init
sudo-rs pacman -Scc
sudo-rs pacman -Syyu
sudo-rs pacman-key --refresh-keys
sudo-rs pacman-key --populate archlinux chaotic
sudo-rs pacman -Syu
