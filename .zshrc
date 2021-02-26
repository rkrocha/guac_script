
PROMPT='%F{blue}%1~ $%f '

setopt MENU_COMPLETE

env | grep -q ^OPATH || export OPATH=$PATH
export PATH=$OPATH:/usr/share/zsh/5.3/help/:/usr/share/zsh/5.3/functions/:$HOME/.brew/bin

autoload -Uz compinit && compinit

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# MISC:
alias cp="cp -iv"
alias f="clear && la"
alias grep="grep -i --color=always"
alias hg="history | grep"
alias ls="ls -lhG"
alias la="ls -A"
alias lag="la | grep"
alias less="less -r"
alias mkd="mkdir -pv --"
alias mv="mv -iv"
alias rm="rm -v"
alias rmd="rmdir -v"
alias toupper="tr [:lower:] [:upper:]"
alias tolower="tr [:upper:] [:lower:]"

# NAVIGATION:
alias d="pwd"
alias ..="cd .. && pwd"
alias ...="cd ../.. && pwd"
alias .3="cd ../../.. && pwd"
alias .4="cd ../../../.. && pwd"
alias .5="cd ../../../../.. && pwd"
alias cdl="clear && cd && la"

# CODING:
alias m="make"
alias mc="make clean"
alias mf="make fclean"
alias mr="make re"
alias ms="make src"
alias norm="norminette"
alias normc="norminette *.[ch]"

# GIT:
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gr="git restore --staged"
alias gs="git status"
