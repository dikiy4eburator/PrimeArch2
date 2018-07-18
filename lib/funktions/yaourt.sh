#!/bin/bash

cd /tmp

git clone https://aur.archlinux.org/package-query.git
git clone https://aur.archlinux.org/yaourt.git


cd /tmp/package-query
makepkg --noconfirm -si

cd /tmp/yaourt
makepkg --noconfirm -si

exit
