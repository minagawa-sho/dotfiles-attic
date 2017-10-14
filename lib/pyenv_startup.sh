# pyenv_startup.sh
# shellcheck disable=SC2148

# Load pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "`pyenv init -`"

# Load pyenv-virtualenv
eval "`pyenv virtualenv-init -`"

# Load pyenv-virtualenv setting
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
