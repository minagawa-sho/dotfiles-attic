# git_install.sh
# shellcheck disable=SC2148

# Require Homebrew
. lib/homebrew_install.sh

# Install app
which git || brew install git

# Upgarde app
brew upgrade

# Configurate app
git config --unset-all
git config --add user.name 'Sho Minagawa'
git config --add user.email minagoro0522@gmail.com
#git config --add user.signingkey XXXXXXXX
git config --add alias.co checkout
git config --add alias.st status
git config --add alias.ci commit
git config --add alias.br branch
git config --add alias.cm commit
git config --add alias.unstage 'reset HEAD --'
git config --add alias.last 'log -1 HEAD'
git config --add alias.visual '!gitk'
#git config --add alias.ignore !gi() { curl -sL https://www.gitignore.io/api/$@ ;}; gi
#git config --add alias.license=!gl() { curl --header "Accept: application/vnd.github.drax-preview+json" -XGET https://api.github.com/licenses/$@ | jq ".body";}; gl
#git config --add core.excludesfile /Users/minagawa-sho/.gitignore/Global/macOS.gitignore
