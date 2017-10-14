# bash_install.sh
# shellcheck disable=SC2148

userid=`id -u`
groupid=`id -g`
install -m 0644 -o $userid -g $groupid .bash_profile $HOME/.bash_profile
install -m 0644 -o $userid -g $groupid .bashrc $HOME/.bashrc
