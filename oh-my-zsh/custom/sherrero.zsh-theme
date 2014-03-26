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
if [ -e ~/.rvm/bin/rvm-prompt ]; then
    RUBY_PROMPT_="$FG[196]\$(~/.rvm/bin/rvm-prompt s i v g)%{$reset_color%} "
else
  if which rbenv &> /dev/null; then
    RUBY_PROMPT_="%{$fg_bold[blue]%}rbenv:(%{$fg[green]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg_bold[blue]%})%{$reset_color%}"
  fi
fi

HOST_PROMPT_="$FG[026]$USER@$HOST ➜  "
GIT_PROMPT_="$(git_pt) % %{$reset_color%}"
PATH_PROMPT_="$FG[202]$(path)"
CHAR_PROMPT="$FG[196]∴ %{$reset_color%}"
PROMPT="$HOST_PROMPT_$PATH_PROMPT_$GIT_PROMPT_$CHAR_PROMPT"
RPROMPT="$RUBY_PROMPT_"


