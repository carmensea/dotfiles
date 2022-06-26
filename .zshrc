#oh-my-zsh
ZSH_DISABLE_COMPFIX=true
ZSH=$HOME/.oh-my-zsh

# case insensitive path completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
  autoload -Uz compinit
  compinit
fi

# case insensitive path-completion 
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 

# Set up the prompt (with git branch name)
#export PROMPT="%S%F{blue}%~%f%s %F{green}>%f"
RPROMPT='%F{015}%T%f'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

# change directory without cd
set -o AUTO_CD
setopt autocd

# Turn off zsh regex matching for all commands (so we can install yarn packages,
# use URLs in commands, etc.)
unsetopt nomatch

DEFAULT_USER="Carmen"
ZSH_THEME="kolo"

typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'

# General Aliases
#alias rake="noglob bundled_rake"
alias rake='noglob rake'
alias ll="ls -l"
alias la="ls -a"
alias deploy="~/scripts/deployment_scripts/main_deploy.sh"
alias sudo="nocorrect sudo"
alias gitlog="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
source $HOME/.zsh_aliases
source $HOME/.zsh_profile
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Plugins to load, loc in  ~/.oh-my-zsh/custom/plugins/ Ex: plugins=(rails git textmate ruby lighthouse)
plugins=(tmux git github vundle ruby rails encode64 rbenv zsh-autosuggestions)

ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

#export PATH="/usr/local/opt/elasticsearch@5.6/bin:$PATH"

export TERM="xterm-256color"

function chpwd() {
    emulate -L zsh
      ls -a
}


ctags=/usr/local/bin/ctags
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

#source $HOME/.zshenv

#~/.rbenv/bin
export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export GEM_HOME="$HOME/.gem"
eval $(/opt/homebrew/bin/brew shellenv)
eval "$(rbenv init -)"
