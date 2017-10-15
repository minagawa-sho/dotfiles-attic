# go_install.sh
# shellcheck disable=SC2148

# Require wget
. ./wget_install.sh

# Install app on GUI
if which go; then
	cd '/tmp' || return
	wget https://storage.googleapis.com/golang/go1.9.1.darwin-amd64.pkg
	open go1.9.1.darwin-amd64.pkg
fi
