#!/usr/bin/env bash

### INSTALL HOMEBREW ###
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Install command-line tools using Homebrew ##
# Ask for the administrator password upfront #
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished #
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew #
brew update

# Upgrade any already-installed formulae #
brew upgrade --all

# Install useful binaries #
brew install bat
brew install fd
brew install gcc --enable-all-languages
brew install git
brew install htop
brew install libsbml
brew install nmap
brew install ntfs-3g
brew install openssl
brew install pandoc
brew install prettyping
brew install python
brew install samtools
brew install speedtest_cli
brew install tldr
brew install tree
brew install wget --with-iri
brew install zsh
brew install zsh-completions


# Install oh-my-zsh #
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install spaceship-prompt theme # (https://github.com/denysdovhan/spaceship-prompt) #
git clone https://github.com/denysdovhan/spaceship-prompt.git "/Users/$USER/.oh-my-zsh/custom/themes/spaceship-prompt"
ln -s "/Users/$USER/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "/Users/$USER/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

## COPY .ZSHRC ##
cp .zshrc /Users/$USER/.zshrc
