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

# path設定
path=($HOME/bin(N-/) /usr/local/go/bin(N-/) $path)

# 文字コード設定
export LANG=ja_JP.UTF-8

# beepを消す
setopt nolistbeep

# 便利alias
alias where="command -v"
alias j="jobs -l"
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias lt="ls -alTr"
alias du="sudo du -d 1 -h"
alias df="df -h"
alias su="su -l"
alias cl="clear"
alias less="less -sNiMR --tilde --max-forw-scroll=1 --window=1 --shift 1"
alias his="history -E 1"
alias ergodox="make ergodox_ez:shyazusa && cp .build/ergodox_ez_shyazusa.hex ~"
alias git='hub'
alias ssh='~/ssh-iterm-setting'
alias ghci='stack ghci'
alias ghc='stack ghc --'
alias runghc='stack runghc --'

# cdとlsの省略
setopt auto_cd
function chpwd() { ls }

# function git(){hub "$@"}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.nodebrew/current/bin"
