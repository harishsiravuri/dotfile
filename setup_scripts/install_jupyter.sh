#!/bin/bash

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv virtualenv 3.6.4 jupyter
pyenv activate jupyter
pip install jupyter jupyterlab jupyterthemes jupyter_contrib_nbextensions jupyter_nbextensions_configurator jupyterlab_latex
jupyter nbextensions_configurator enable --user
jupyter contrib nbextension install --user
jupyter labextension install @jupyterlab/latex
pyenv deactivate

pyenv virtualenvwrapper
mkvirtualenv datascience
workon datascience
pip install cython
pip install numpy scipy sklearn pandas seaborn nltk ipykernel gensim lime matplotlib pandas-profiling spacy statsmodels beautifulsoup4 fasttext autopep8
python -m ipykernel install --user
deactivate

pyenv global 3.6.4 jupyter

ln -sf "/home/christian/.dotfiles/,jupyter/nbconfig/notebook.json" /home/christian/.jupyter/nbconfig/notebook.json
