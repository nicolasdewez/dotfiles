#!/bin/bash

NOCOLOR='\e[0m'
REDCOLOR='\e[37;41m'

if [[ $EUID -ne 0 ]]; then
   echo -e "$REDCOLOR Think to run this bash script as root$NOCOLOR"
    IS_ROOT=0
else
    IS_ROOT=1
fi

DOTFILES=`pwd`

touch $DOTFILES/.private-gitconfig


echo 'Create $HOME symlink'
ln -sf $DOTFILES/.ackrc               ~/.ackrc
ln -sf $DOTFILES/.bash_aliases        ~/.bash_aliases
ln -sf $DOTFILES/.bash_logout         ~/.bash_logout
ln -sf $DOTFILES/.bashrc              ~/.bashrc
ln -sf $DOTFILES/.gitconfig           ~/.gitconfig
ln -sf $DOTFILES/.gitglobalexclude    ~/.gitglobalexclude
ln -sf $DOTFILES/.psqlrc              ~/.psqlrc
ln -sf $DOTFILES/.private-gitconfig   ~/.private-gitconfig
ln -sf $DOTFILES/.profile             ~/.profile
ln -sf $DOTFILES/.screenrc            ~/.screenrc
ln -sf $DOTFILES/.tmux.conf           ~/.tmux.conf
ln -sf $DOTFILES/.vimrc               ~/.vimrc
if [[ ! -d ~/.git-template ]]; then
    ln -sf $DOTFILES/git-template ~/.git-template
fi

echo 'Install git submodule'
if type -t git &> /dev/null; then
  git submodule update --init
  ln -sf $DOTFILES/vendor/dircolors-solarized/dircolors.ansi-dark  ~/.dir_colors
fi
