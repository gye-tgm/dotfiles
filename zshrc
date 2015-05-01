export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="simple"

plugins=(git)
source $ZSH/oh-my-zsh.sh

#### Custom user configuration ####
# Initialize autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin"
export PATH="$HOME/repos/algoprobs/etc:$PATH"
export PATH="$HOME/anaconda/bin:$PATH"

export JAVA_HOME="$(/usr/libexec/java_home)"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias em='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
alias e='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'

alias g++='g++-4.9'
alias gcc='gcc-4.9'

alias tmux="TERM=screen-256color-bce tmux"

# export CLICOLOR=1
# export TERM=xterm-256color
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
