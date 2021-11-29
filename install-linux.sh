#!/bin/bash

# Utils
function is_installed {
    # set to 1 initially
    local return_=1
    # set to 0 if not found
    type $1 >/dev/null 2>&1 || { local return_=0; }
    # return
    echo "$return_"
}

function install_linux {
    echo "================> Updating <================"
    apt-get update

    if [ "$(is_installed zsh)" == "0" ]; then
        echo "================> Installing zsh <================"
        apt-get install zsh -y
        chsh -s $(which zsh)
    fi

    if [ "$(is_installed curl)" == "0" ]; then
        echo "================> Installing curl <================"
        apt-get install curl -y
    fi

    if [ "$(is_installed git)" == "0" ]; then
        echo "================> Installing Git <================"
        apt-get install git -y
    fi

    if [ "$(is_installed nvim)" == "0" ]; then
        echo "================> Installing nvim <================"
        apt-get install python3-neovim -y
    fi

    zsh
}

function zsh_config {
    echo "================> Installing zsh custom <================"

    if [ "$(is_installed zsh)" == "1" ]; then
        curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash
    fi

    if [ ! -d "$ZSH/custom/plugins/zsh-autosuggestions" ]; then
        echo "Installing zsh-autosuggestions"
        git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions
    fi

    source ~/.zshrc
}

function init_config {
    echo "================> Configing <================"

    if [ "$(is_installed nvim)" == "0" ]; then
        echo "================> Before install neovim use brew.sh <================"
        return
    fi

    if [ "$(is_installed nvim)" == "1" ]; then
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
				 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

        rm -rf $HOME/.config/nvim/init.vim
        rm -rf $HOME/.config/nvim
        mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
        cp -r $(pwd)/nvim $XDG_CONFIG_HOME
        cp -r $(pwd)/kitty $XDG_CONFIG_HOME
    fi

    cat $(pwd)/env.txt >> $HOME/.zshrc
}

function install_node {

    if [ "$(is_installed nvm)" == "0" ]; then
        echo "================> Installing nvm <================"
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
    fi

    source ~/.zshrc

    if [ "$(is_installed node)" == "0" ]; then
        echo "================> Installing node <================"
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
        nvm install 14.18.1
        nvm use 14.18.1
    fi
}

while test $# -gt 0; do
    case "$1" in
    --install)
        install_linux
        exit
        ;;
    --config)
        init_config
        exit
        ;;
    --zsh)
        zsh_config
        exit
        ;;
    --node)
        install_node
        ;;
    esac

    shift
done
