#!/usr/bin/env bash

# install xcode cli tools
xcode-select --install

# install ~/Homebrew
homebrewDir="${HOME}/Homebrew"
if [ -d "$homebrewDir" ]
then
	echo "Homebrew ($homebrewDir) is already installed"
else
  echo "Installed Homebrew in $homebrewDir"
  mkdir "$homebrewDir"
  git clone https://github.com/Homebrew/brew ${HOME}/Homebrew
  #export PATH=~/Homebrew/bin:${PATH}
	echo "... installed"
  echo "... change $homebrewDir access permissions"
  chmod -R 700 ${HOME}/Homebrew
  echo "... check Homebrew installation..."
  brew doctor
fi

echo "Done"

# un/install (https://github.com/Homebrew/install)
