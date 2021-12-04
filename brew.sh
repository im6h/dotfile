#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# some package will not work in homebrew in ubuntu
function run_on_macos {
    if [[ $OSTYPE != darwin* ]]; then
        return
    fi

    brew install google-chrome
    brew install kitty
    brew info --cask openkey
    brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
    brew install openjdk@8
    brew install --cask docker
    brew install --cask dbeaver-community

}

run_on_macos
# some package will  work in homebrew in ubuntu
brew install scrcpy
brew install neovim --HEAD
brew instal exa
brew install watchman
brew install carlocab/personal/unrar
brew install neofetch
brew install go
brew install gopls

# Remove outdated versions from the cellar.
brew cleanup
