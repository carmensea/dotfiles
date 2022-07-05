ZSH=$HOME/.oh-my-zsh

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

# case insensitive path-completion 
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'

# SOURCE
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_aliases
source $HOME/.zsh_profile

plugins=(tmux git github vundle ruby rails encode64 rbenv zsh-autosuggestions)

# this must be after we source omz
ZSH_TMUX_AUTOSTART=true

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
tmux
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

#~/.rbenv/bin
export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export GEM_HOME="$HOME/.gem"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

eval "$(rbenv init -)"
