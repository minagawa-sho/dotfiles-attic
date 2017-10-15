# wget_install.sh
# shellcheck disable=SC2148

# Require brew
. lib/homebrew_install.sh

# Install app
which wget || brew install wget
