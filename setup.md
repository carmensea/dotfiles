## New dev setup

### Download iterm
### Download Xcode

### get Homebrew
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 

### get curl (needed for Vundle)
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

### tmux
$ brew install tmux

### oh my zsh
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Generate new SSH key
$ ssh-keygen -t ed25519 -C "your_email@example.com"

### start ssh-agent in the background
$ eval "$(ssh-agent -s)"

### create ssh/config file
$ touch ~/.ssh/config

### open file
vim ~/.ssh/config

### add key
Host *
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519

:wq

### copy key 
$ pbcopy < ~/.ssh/id_ed25519.pub

### open GitHub settings, create new SSH key and paste contents into text area

#### Dotfiles setup

### get dotfiles 
$ git clone git@github.com:carmensea/dotfiles.git

### symlink all the things
$ ln -s ~/dotfiles/.tmux
$ ln -s ~/dotfiles/.tmux.conf
$ ln -s ~/dotfiles/.vimrc
$ ln -s ~/dotfiles/.zsh_aliases
$ ln -s ~/dotfiles/.zsh_profile
$ ln -s ~/dotfiles/.zshrc

### install git

### install vundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

###install plugins
$ vim .vimrc

:PluginInstall

### rbenv
$ brew install rbenv

### setup shell with rbenv
$ rbenv init

### quit terminal and restart

### run doctor to ensure things are going well
$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

