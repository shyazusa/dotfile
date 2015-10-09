#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# 文字コード設定
export LANG=ja_JP.UTF-8

# beepを消す
setopt nolistbeep

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

# cdとlsの省略
setopt auto_cd
function chpwd() { ls }
