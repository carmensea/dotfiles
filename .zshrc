#oh-my-zsh
ZSH=$HOME/.oh-my-zsh

DEFAULT_USER="Carmen"
ZSH_THEME="mh"
#ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# General Aliases
alias ll="ls -l"
alias la="ls -a"
alias deploy="~/scripts/deployment_scripts/main_deploy.sh"
alias sudo="nocorrect sudo"
alias gitlog="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

source $HOME/.zsh_aliases
source $HOME/.zsh_profile
# Plugins to load, loc in  ~/.oh-my-zsh/custom/plugins/ Ex: plugins=(rails git textmate ruby lighthouse)
plugins=(git github vundle ruby rails encode64 tmux)

source $ZSH/oh-my-zsh.sh

source ~/dotfiles/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
plugins=(zsh-autosuggestions)

export TERM="xterm-256color"
if [ "$TMUX" = "" ]; then tmux; fi

function chpwd() {
    emulate -L zsh
      ls -a
}

eval "$(rbenv init -)"
