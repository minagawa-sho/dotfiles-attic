# werckercli_install.sh
# shellcheck disable=SC2148

# Check if not installed yet
(which wercker && exit 0) || true

# Require Homebrew and XCode
. lib/homebrew_install.sh
# . lib/xcode_install.sh

# Ensure to accept the XCode license
sudo xcodebuild -license accept

# Install via Homebrew
brew tap wercker/wercker
brew install wercker-cli

# Test installation
which wercker
wercker --version