PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
export TERM="xterm-color"

git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
HOST='\033[01;32m\][\h] -'; HOST=' '$HOST
USER='\033[1;36m\] [\u] -\033[01;32m\]'
TIME='\033[01;31m\]\t \033[01;32m\]'
LOCATION=' \033[01;34m\][`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`] -'
BRANCH=' \033[01;33m\][Branch: (GIT) $(git_branch)]\[\033[00m\]\n $ '
PS1=$USER$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

alias c="clear"
alias profile="open .bash_profile"
alias ll="ls -al"
alias doc="cd Documents"
alias o="open"
alias t="touch"
alias tree="Git log --decorate --graph --all"
alias bash=". ~/.bash_profile"
alias repo="git config --get remote.origin.url"
alias port="lsof -i :8080"
alias mysql="mysql -u root"