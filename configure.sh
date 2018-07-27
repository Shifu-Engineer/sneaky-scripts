#!/usr/bin/env bash
# Loads configurations into their proper places

if [ ! -d "./configs" ] ; then
    echo "Could not find configs. This script must be run in the root sneaky-scripts directory."
    exit 1
fi

cat ./configs/bash_aliases >> ~/.bash_aliases
cat ./configs/bash_profile >> ~/.bash_profile
cat ./configs/profile >> ~/.profile
cat ./configs/bashrc >> ~/.bashrc
cat ./configs/gitconfig >> ~/.gitconfig
cat ./configs/ssh_config >> ~/.ssh/config

if [ $WSL ] ; then
    echo "Installing SSH key for WSL..."
    cat ./configs/ssh_config >> "/mnt/c/Users/{$WINUSER}/.ssh/config"
fi
