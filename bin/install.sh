#!/bin/sh
# shellcheck disable=SC1090

set -e

# Load envs as dotfiles config
. $HOME/.dotfilesrc

# Clone dotfiles repository
# TODO: Require ghq installation
ghq get $DOTFILESPROJ

# Symlink ~/.dotfiles to the working directory
(
  dotfilesdir=`ghq list --exact --full-path $DOTFILESPROJ`
  ln -snf $dotfilesdir $HOME/.dotfiles
)
