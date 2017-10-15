# git_install.sh
# shellcheck disable=SC2148

# Require Homebrew
. lib/homebrew_install.sh

# Install app
which git || brew install git

# Upgarde app
brew upgrade

# Configurate app
rm -f $HOME/.gitconfig
git config --global --add user.name 'Sho Minagawa'
git config --global --add user.email minagoro0522@gmail.com
#git config --global --add user.signingkey XXXXXXXX
git config --global --add alias.co checkout
git config --global --add alias.st status
git config --global --add alias.ci commit
git config --global --add alias.br branch
git config --global --add alias.cm commit
git config --global --add alias.unstage 'reset HEAD --'
git config --global --add alias.last 'log -1 HEAD'
git config --global --add alias.visual '!gitk'
#git config --global --add alias.ignore !gi() { curl -sL https://www.gitignore.io/api/$@ ;}; gi
#git config --global --add alias.license=!gl() { curl --header "Accept: application/vnd.github.drax-preview+json" -XGET https://api.github.com/licenses/$@ | jq ".body";}; gl
#git config --global --add core.excludesfile /Users/minagawa-sho/.gitignore/Global/macOS.gitignore
