#!/bin/bash
sudo apt-get update
# install the "frist" packages
xargs -a ~/.dotfiles/setup_scripts/packages_first sudo apt-get install
# install my desired "app" packages
xargs -a ~/.dotfiles/setup_scripts/packages_apps sudo apt-get install
# install tex
xargs -a ~/.dotfiles/setup_scripts/packages_latex sudo apt-get install --no-install-recommends

