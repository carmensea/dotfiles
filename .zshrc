ZSH=$HOME/.oh-my-zsh

# tmux binary stored in /opt/homebrew/bin
# need this for zsh to work
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH

DEFAULT_USER="Carmen"
ZSH_THEME="kolo"
export EDITOR='vim'
RPROMPT='%F{015}%T%f'

# case insensitive path completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Set up NPM_TOKEN if .npmrc exists
if [ -f ~/.npmrc ]; then
  export NPM_TOKEN=`sed -n -e '/_authToken/ s/.*\= *//p' ~/.npmrc`
fi

# case insensitive path-completion 
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'

plugins=(tmux git github vundle ruby rails encode64)

ZSH_TMUX_AUTOSTART=true

# SOURCE
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_aliases
source $HOME/.zsh_profile

source ~/.nvm/nvm.sh
source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh


# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_}
%# '
#export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export GEM_HOME="$HOME/.gem"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
