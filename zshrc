# My personal alias
source $HOME/.aliases
setopt prompt_subst


autoload -U colors && colors
DISABLE_AUTO_UPDATE="true"

# Fo oh-my-zsh theme
ZSH_THEME="sherrero"
source $ZSH/oh-my-zsh.sh

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew rails sublime tmuxinator)

# User configuration
export EDITOR='subl'
export ZSH=$HOME/.oh-my-zsh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/sbin:$PATH"
