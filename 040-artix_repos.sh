#!/bin/bash

# script: fix artix repos
# habilita os repos extra e community do arch linux no artix
# contato telegram: @rocker_racoon

sudo pacman -Syu --needed --noconfirm wget
sudo rm -rf /tmp/pacman.conf /tmp/mirrorlist-arch
wget https://notabug.org/linux4life/docs/raw/master/pacman.conf -P /tmp
sudo mv /etc/pacman.conf /etc/pacman.conf.old ; sudo chown root:root /tmp/pacman.conf ; sudo mv /tmp/pacman.conf /etc
wget 'archlinux.org/mirrorlist/?country=US&country=GB&protocol=http&protocol=https&ip_version=4&use_mirror_status=on' -O /tmp/mirrorlist-arch
sed -i 's/#Server/Server/' /tmp/mirrorlist-arch ; sudo mv /tmp/mirrorlist-arch /etc/pacman.d
sudo pacman -Syu --needed --noconfirm archlinux-keyring
exit
