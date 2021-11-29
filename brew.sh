#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install scrcpy
brew install neovim --HEAD
brew instal exa
brew install watchman
brew install carlocab/personal/unrar
brew install go
brew install neofetch

# some package will not work in homebrew
brew install google-chrome
brew install kitty
brew info --cask openkey
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
brew install openjdk@8
brew install --cask docker
brew install --cask dbeaver-community

# Remove outdated versions from the cellar.
brew cleanup
