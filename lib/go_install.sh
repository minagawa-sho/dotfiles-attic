# go_install.sh
# shellcheck disable=SC2148

# Require wget
. lib/wget_install.sh

# Install app on GUI
which go || (
	cd '/tmp' || return
	wget https://storage.googleapis.com/golang/go1.9.1.darwin-amd64.pkg
	open go1.9.1.darwin-amd64.pkg
	echo 'You input after that Git install is finished ...'
	read
)
