# .ghq_profile
# shellcheck disable=SC1090
# shellcheck disable=SC2148

# Load GHQ_ROOT path
export GHQ_ROOT="$HOME/.ghq"

# Overwrite look subcommand, and also add find subcommand
_ghq () {
	if test "x$1" = "xfind"; then
		proj=`\ghq list $2 | fzf --exit-0 --select-1`
		if test "x$proj" != "x"; then
			\ghq list --full-path --exact $proj
		fi
	elif test "x$1" = "xlook"; then
		proj=`ghq find $2`
		if test "x$proj" != "x"; then
			cd $proj || return
		fi
	else
		\ghq "$@"
	fi
}
alias ghq=_ghq
