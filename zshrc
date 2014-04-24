# My personal alias
source $HOME/.aliases
setopt prompt_subst

export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
autoload -U colors && colors
ZSH_THEME="sherrero"
DISABLE_AUTO_UPDATE="true"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew rails sublime tmuxinator)

source $ZSH/oh-my-zsh.sh
source ~/.bin/tmuxinator.zsh

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='subl'
