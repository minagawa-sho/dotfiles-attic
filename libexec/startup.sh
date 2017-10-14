# startup.sh
# shellcheck disable=SC1090
# shellcheck disable=SC2148

export DOTFILESPATH="$HOME/.dotfiles"

# Python development
. $DOTFILESPATH/lib/pip_startup.sh
. $DOTFILESPATH/lib/pyenv_startup.sh
