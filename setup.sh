#!/bin/bash

# check permission
if [[ "${UID}" -ne 0 ]]
then
	echo 'Must execute with sudo or root' >&2
	exit 1
fi

# Ensure system is up to date
echo "
#########
Do you want update your system? (y/n)
#########
"
read $update
if [[ $update -eq "y" ]]; then
	sudo apt-get update -y
elif [[ $update -eq "n" ]]; then
	echo "Cancel update"
else 
	echo "Cancel update"
fi

# Upgrade the system
echo "
#########
Do you want upgrade your system? (y/n)
#########
"
read $upgrade
if [[ $upgrade -eq "y" ]]; then
	sudo apt-get upgrade -y
elif [[ $update -eq "n" ]]; then
	echo "Cancel upgrade"
else 
	echo "Cancel upgrade"
fi

#Cleanup
sudo apt autoremove
sudo apt clean

#Application
echo "
######
Tmux install
######
"
sudo apt-get install tmux

echo "
########
Zsh shell install
########
"
$zsh = "$(zsh --version)"
if [[ ! -e $zsh ]]; then 
	sudo apt-get install zsh
else 
	echo "Zsh was installed"
	exit 1
fi

echo "
#######
Ohmyzsh install
#######
"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "
#######
Curl install
#######
"
sudo apt-get install curl

#echo "
########
#Node version manager install
########
#"
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

#$export = "${export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#}"
#echo ${export} >> ~/.zshrc

echo "
#######
Neovim install
#######
"
sudo snap install nvim --beta --classic

echo "
#######
Brave install
#######
"
sudo snap install brave


echo "
#######
Discord install
#######
"
sudo snap install discord

