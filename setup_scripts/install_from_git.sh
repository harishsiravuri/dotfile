#!/bin/bash
# requires packages_first (or your package repository's equivalent) to be installed

# install programming languages, tools, etc from git sources
# install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_managed
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_managed
export PATH="$HOME/.pyenv/bin:$PATH"
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then \n eval "$(pyenv init -)"\nfi' >> ~/.bash_managed

# install python 3.6.4
export CFLAGS="-march=native -O3" && CXXFLAGS=$CFLAGS
env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 3.6.4
pyenv global 3.6.4
pip install --upgrade pip

# install pyenv-virtualenvwrapper
git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper
echo 'pyenv virtualenvwrapper' >> ~/.bash_managed

# install pyenv-virtualenv
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv//plugins/pyenv-virtualenv

# install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_managed
export PATH="$HOME/.rbenv/bin:$PATH"
echo 'eval "$(rbenv init -)"' >> ~/.bash_managed

# install ruby-build
mkdir -p "($rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
export CFLAGS="-march=native -O3" && CXXFLAGS=$CFLAGS
rbenv install 2.5.0

# install nvm
git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout v0.33.8
. nvm.sh
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_managed
export NVM_DIR="$HOME/.nvm"
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bash_managed
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.bash_managed
nvm install --lts

# get vundle
git clone https://github.com/vundlevim/vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall 
