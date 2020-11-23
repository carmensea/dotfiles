#oh-my-zsh
ZSH_DISABLE_COMPFIX=true
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
#alias rake="noglob bundled_rake"
alias rake='noglob rake'
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

export PATH="/usr/local/opt/elasticsearch@5.6/bin:$PATH"

export TERM="xterm-256color"
if [ "$TMUX" = "" ]; then tmux; fi

function chpwd() {
    emulate -L zsh
      ls -a
}


ctags=/usr/local/bin/ctags
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

source $HOME/.zshenv

#~/.rbenv/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/carmencojocariu/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/carmencojocariu/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/carmencojocariu/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/carmencojocariu/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

