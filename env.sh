#!/usr/bin/env bash

echo "setup zsh -> ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo alias ll="exa -l --icons" >> ~/.zshrc
echo alias person="cd ~/Desktop/person" >> ~/.zshrc 
echo alias work="cd ~/Desktop/work" >> ~/.zshrc
echo alias e="codium" >> ~/.zshrc
source ~/.zshrc

echo "setup vim-plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "setup nvm -> node -> yarn"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash


source ~/.zshrc

nvm -v
nvm install 12.19.1
nvm use 12.19.1
npm install -g yarn
