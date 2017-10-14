# .bash_profile
# shellcheck disable=SC2148

if [ -f $HOME/.bashrc ]; then
	. $HOME/.bashrc
fi

echo "... $HOME/.bash_profile is loaded"
