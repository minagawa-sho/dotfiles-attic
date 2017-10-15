# homebrew_install.sh
# shellcheck disable=SC2148

# Install app (https://brew.sh/)
which brew || /usr/bin/ruby -e "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install`"

# Upgrade app
brew update
