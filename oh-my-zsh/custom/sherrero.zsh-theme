# Based on robbyrussell's and nebirhos's themes with user, host,path, rvm and git indicators. 
# Example:
# user@host ➜ /.../Proyects/ruby git: preview ( -+* ):439a2b1  ∴                                          ruby-2.1.0
# 

path(){
echo "\$(~/.oh-my-zsh/custom/pwd)"
}
git_pt(){
echo "\$(~/.oh-my-zsh/custom/git_prompt)"
}
# Get the current ruby version in use with RVM:

RUBY_PROMPT_=" $FG[196]\$(~/.rvm/bin/rvm-prompt)%{$reset_color%} "
HOST_PROMPT_="$FG[026]$USER@$HOST ➜  "
GIT_PROMPT="$(git_pt) % %{$reset_color%}"
PATH_PROMPT_="$FG[202]$(path)"
CHAR_PROMPT="$FG[196]∴ %{$reset_color%}"
PROMPT="$HOST_PROMPT_$PATH_PROMPT_$RUBY_PROMPT_$CHAR_PROMPT"
RPROMPT="$GIT_PROMPT"


