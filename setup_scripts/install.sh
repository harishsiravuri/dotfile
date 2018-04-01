#!/bin/bash

# set up my directories
rmdir ~/Music ~/Pictures ~/Public ~/Templates ~/Videos
mv ~/Downloads ~/dwnl
mv ~/Documents ~/docs
mv ~/Desktop ~/desk
mkdir ~/blds
mkdir ~/code

# run the other scripts
~/.dotfiles/setup_scripts/install_ubuntu_repos.sh
~/.dotfiles/setup_scripts/install_other_repos.sh
~/.dotfiles/setup_scripts/sym.sh
~/.dotfiles/setup_scripts/install_git.sh
~/.dotfiles/setup_scripts/install_jupyter.sh
~/.dotfiles/setup_scripts/install_fonts.sh

# get my comfy x settings
cp /etc/X11/xinit/xinitrc ~/.xinitrc
echo "exec i3" >> ~/.xinitrc
echo "xrdb -merge ~/.Xresources" >> ~/.xinitrc

