# fzf_startup.sh
# shellcheck disable=SC1090
# shellcheck disable=SC2148

# Load fzf settings
[ -f ~/.fzf.bash ] && . ~/.fzf.bash

# Alias fzf as 'igrep'
alias igrep="fzf --select-1 --exit-0 --query"
