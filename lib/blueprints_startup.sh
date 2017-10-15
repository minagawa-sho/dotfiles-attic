# blueprints_startup.sh
# shellcheck disable=SC1090
# shellcheck disable=SC2148

# Require ghq
. $DOTFILESPATH/lib/ghq_startup.sh

# Load BLUEPRINTSPATH path
export BLUEPRINTSPATH
BLUEPRINTSPATH=`ghq list --exact --full-path github.com/minagoro/blueprints`

# Define blue command
alias blue='$BLUEPRINTSPATH/blue.sh'
