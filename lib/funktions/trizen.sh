#!/bin/bash

cd /tmp

git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg --noconfirm -si

exit
