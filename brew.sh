#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install google-chrome
brew install kitty
brew info --cask openkey
brew install scrcpy
brew install neovim --HEAD

brew instal exa
brew install watchman
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
brew install openjdk@8
brew install --cask docker

# go lang
brew install go
brew install neofetch


# unrar
brew install carlocab/personal/unrar

brew install --cask dbeaver-community


# Remove outdated versions from the cellar.
brew cleanup
