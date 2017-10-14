# system_startup.sh
# shellcheck disable=SC2148

# Dump core file on process crash
ulimit -c unlimited

# Change shell prompt
export PS1="\w\$ "

# Set the history size
export HISTFILESIZE=10000000
export HISTSIZE=10000000
