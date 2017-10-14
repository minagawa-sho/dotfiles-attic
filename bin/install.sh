#!/bin/sh
# shellcheck disable=SC1090

set -e

# Define constants
dotfiles_path="$HOME/.dotfiles"
dotfiles_config="$HOME/.dotfilesrc"
dotfiles_zipurl='https://codeload.github.com/minagoro/dotfiles-attic/zip/master'

# Load envs as dotfiles config
. $dotfiles_config

# Install dotfiles as ~/.dotfiles
curl -LsS $dotfiles_zipurl > $HOME/dotfiles-attic-master.zip
unzip $HOME/dotfiles-attic-master.zip -d $HOME
mv $HOME/dotfiles-attic-master $dotfiles_path

# Install all apps and config files
# TODO: impl

# Replace ~/.dotfiles to the working directory symlink
ghq list | grep $DOTFIELSPROJ || ghq get $DOTFILESPROJ
rm -rf $dotfiles_path
dotfilesdir=`ghq list --exact --full-path $DOTFILESPROJ`
ln -snf $dotfilesdir $dotfiles_path
