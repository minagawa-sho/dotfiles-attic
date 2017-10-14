#!/bin/sh

set -e

# Define constants
work_dirpath="/tmp"
dotfiles_zipurl='https://codeload.github.com/minagoro/dotfiles-attic/zip/master'
dotfiles_proj='github.com/minagoro/dotfiles-attic'
dotfiles_path="$HOME/.dotfiles"

# Install dotfiles as ~/.dotfiles
cd $work_dirpath
curl -LsS $dotfiles_zipurl > dotfiles-attic-master.zip
unzip dotfiles-attic-master.zip
cd dotfiles-attic-master

# Install all apps and config files
# TODO: impl more
userid=`id -u`
groupid=`id -g`
install -m 0644 -o $userid -g $groupid .bashrc $HOME/.bashrc

# Place ~/.dotfiles symlink to the working directory symlink
ghq list | grep $dotfiles_proj || ghq get $dotfiles_proj
dotfilesdir=`ghq list --exact --full-path $dotfiles_proj`
ln -snf $dotfilesdir $dotfiles_path
