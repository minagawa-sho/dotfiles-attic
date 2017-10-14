# go_startup.sh
# shellcheck disable=SC2148

# Load GOPATH
export GOPATH="${HOME}/.golang"

# Add GOPATH to PATH
export PATH="${PATH}:${GOPATH}/bin"
