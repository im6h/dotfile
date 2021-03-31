#!/usr/bin/env bash
BASE=$(git rev-parse --show-toplevel)
LSP_BIN_PATH=$HOME/.local/bin

pfx="~~~~~"
heading() {
  echo
  echo $pfx $1
}

get_platform() {
  case "$(uname -s)" in
    Linux*)     platform=Linux;;
    Darwin*)    platform=Mac;;
    CYGWIN*)    platform=Cygwin;;
    MINGW*)     platform=MinGw;;
    *)          platform="UNKNOWN:${unameOut}"
  esac
  echo $platform
}

heading "installing packer"

if [[ ! -e ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]]; then
  heading "Installing packer"
  git clone https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

heading "Linking config"
heading "old nvim config will be deleted so watchout :0"


rm -rf ~/.config/nvim/ 
cp -R nvim ~/.config/ 

echo "Copy done"




