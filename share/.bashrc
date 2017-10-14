#!/bin/sh

set -e

# Load $DOTFILESPROJ and $DOTFILESUSER envs
. $HOME/.dotfilesrc

# Run the startup script
dotfilespath="`ghq list --exact --full-path $DOTFILESPROJ`"
${dotfilespath}/bin/startup.sh --user=$DOTFILESUSER
