#!/usr/bin/env bash

# install xcode cli tools
xcode-select --install

# install homebrew in ~ path
mkdir ${HOME}/Homebrew
#cd ${HOME}/Homebrew
#git init
#git remote add origin https://github.com/Homebrew/brew
#git fetch
#git checkout origin/master
git clone https://github.com/Homebrew/brew ${HOME}/Homebrew
#export PATH=~/Homebrew/bin:${PATH}

# defaults
#HOMEBREW_PREFIX: /usr/local
#HOMEBREW_REPOSITORY: /usr/local/Homebrew
#HOMEBREW_CELLAR: /usr/local/Cellar

# un/install (https://github.com/Homebrew/install)

# change access permissions
chmod -R 700 ${HOME}/Homebrew
