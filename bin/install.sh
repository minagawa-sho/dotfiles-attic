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
rm -rf dotfiles-attic-master
cd dotfiles-attic-master

# Install all apps and config files
. lib/bash_install.sh
. lib/ghq_install.sh
. lib/git_install.sh
. lib/go_install.sh
. lib/homebrew_install.sh
. lib/wget_install.sh

# Place ~/.dotfiles symlink to the working directory symlink
ghq list | grep $dotfiles_proj || ghq get $dotfiles_proj
dotfilesdir=`ghq list --exact --full-path $dotfiles_proj`
ln -snf $dotfilesdir $dotfiles_path
