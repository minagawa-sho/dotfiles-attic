# Measure the processing time for startup
start_time="`gdate +%s`"

# Source the system definition
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Run the startup script
$HOME/.dotfiles/bin/startup.sh

# Measure the processing time for startup
finish_time=`gdate +%s.%N`
elapsed_time=`echo "($finish_time - $start_time) * 1000" | bc`

echo "... $HOME/.bashrc is loaded (${elapsed_time%.*} msec)"
