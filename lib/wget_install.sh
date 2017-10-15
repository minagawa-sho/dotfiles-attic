# wget_install.sh
# shellcheck disable=SC2148

# Require brew
. ./brew_install.sh

# Install app
which wget || brew install wget
