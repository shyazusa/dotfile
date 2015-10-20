# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
 . /etc/bashrc
fi

# User specific aliases and functions
## カスタマイズ設定
# プロンプトの設定
case ${UID} in
0)
    PS1='\[\033[31m\]${PWD}\$\[\033[0m\] '
    PS2='\[\033[31m\]>\[\033[0m\] '
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && PS1='\[\033[30m\]\h'" ${PS1}"
    ;;
*)
    PS1='\[\033[37m\]\w:\$\[\033[0m\] '
    PS2='\[\033[37m\]$\[\033[0m\] '
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && PS1='\[\033[36m\]\D{%F} \t \u@\h'" ${PS1}"
    ;;
esac
# ターミナルの表示設定
case "${TERM}" in
kterm*|xterm)
    PROMPT_COMMAND='echo -e "\033]0;'"${USER}@${HOSTNAME%%.*}:"'${PWD}\007\c"'
    ;;
esac

# 便利alias
#alias ls="ls -G -w"
alias gls="gls --color"
alias where="command -v"
alias j="jobs -l"
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias lt="ls -altr --time-style='+%Y-%m-%d %H:%M:%S'"
alias du="du -ah --max-depth=1"
alias df="df -h"
alias su="su -l"
alias cl="clear"
