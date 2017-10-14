# dotfiles-attic
Config files are ready for :rocket: on @minagoro's machine.

## Usage

```
// Create the dotfiles config
$ echo 'export DOTFILESPROJ=github.com/minagoro/dotfiles-attic' > ~/.dotfilesrc
$ echo 'export DOTFILESUSER=minagawa-sho' >> ~/.dotfilesrc

// Run the install script
$ curl -LsS 'https://raw.githubusercontent.com/minagoro/dotfiles-attic/master/bin/install.sh' | bash -

// Repeat on root
$ su -
# echo 'export DOTFILESPROJ=github.com/minagoro/dotfiles-attic' > ~/.dotfilesrc
# echo 'export DOTFILESUSER=minagawa-sho' >> ~/.dotfilesrc
# curl -LsS 'https://raw.githubusercontent.com/minagoro/dotfiles-attic/master/bin/install.sh' | bash -

// All installation is done !
```
