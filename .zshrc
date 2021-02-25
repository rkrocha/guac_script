#
# ~/.zshrc
#

# ALIASES
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


PROMPT='%F{blue}%1~ $#%f '
