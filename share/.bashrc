# Measure the processing time for startup
start_time="`gdate +%s`"

# Save original PATH
if test "x$ORIGPATH_SAVED" != "xyes"; then
	export ORIGPATH=$PATH
	export ORIGPATH_SAVED="yes"
fi
export PATH=$ORIGPATH

# Run the system startup
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Run the startup script
$HOME/.dotfiles/bin/startup.sh

# Measure the processing time for startup
finish_time=`gdate +%s.%N`
elapsed_time=`echo "($finish_time - $start_time) * 1000" | bc`

echo "... $HOME/.bashrc is loaded (${elapsed_time%.*} msec)"
