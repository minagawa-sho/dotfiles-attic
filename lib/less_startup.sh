# less_startup.sh
# shellcheck disable=SC2148

# Apply coloring with source-highlight
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '
