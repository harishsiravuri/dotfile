#!/bin/bash
# symlinks my dotfiles
cd /home/christian/

mdkir /home/christian/.config
mkdir /home/christian/.config/tilda
mkdir /home/christian/.config/i3
mkdir/home/christian/.i3

ln -sf "/home/christian/.dotfiles/.bashrc" /home/christian/.bashrc
ln -sf "/home/christian/.dotfiles/.bash_aliases" /home/christian/.bash_aliases
ln -sf "/home/christian/.dotfiles/.gitconfig" /home/christian/.gitconfig
ln -sf "/home/christian/.dotfiles/.gitattributes_global" /home/christian/.gitattributes_global
ln -sf "/home/christian/.dotfiles/.vimrc" /home/christian/.vimrc
ln -sf "/home/christian/.dotfiles/.config/i3/config" /home/christian/.config/i3/config
ln -sf "/home/christian/.dotfiles/.tmux.conf" /home/christian/.tmux.conf
ln -sf "/home/christian/.dotfiles/.Xresources" /home/christian/.Xresources
ln -sf "/home/christian/.dotfiles/.config/tilda/config_0" /home/christian/.config/tilda/config_0
ln -sf "/home/christian/.dotfiles/.gitconfig" /home/christian/.gitconfig
ln -sf "/home/christian/.dotfiles/.xbindkeysrc" /home/christian/.kbindkeysrc
ln -sf "/home/christian/.dotfiles/i3w1.json" /home/christian/.i3/i3w1.json
