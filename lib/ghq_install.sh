# ghq_install.sh
# shellcheck disable=SC1090
# shellcheck disable=SC2148

# Require Go platform
. ./go_install.sh

# Download the source, build, and install app
go get github.com/motemen/ghq
