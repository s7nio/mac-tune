#!/usr/bin/env bash

# install xcode cli tools
xcode-select --install

# install homebrew in ~ path
mkdir ${HOME}/Homebrew
git clone https://github.com/Homebrew/brew ${HOME}/Homebrew
#export PATH=~/Homebrew/bin:${PATH}

# un/install (https://github.com/Homebrew/install)

# change access permissions
chmod -R 700 ${HOME}/Homebrew
