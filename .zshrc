#
# Executes commands at the start of an interactive session.
#
# Authors:
#   shy_azusa <shy.azusa@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# path設定
path=($HOME/bin(N-/) /usr/local/go/bin(N-/) $path)
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/imagemagick@6/bin:$PATH"
export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"

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
alias less="less -sNiMR --tilde --max-forw-scroll=1 --window=1 --shift 1"
alias his="history -E 1"
alias git='hub'

# cdとlsの省略
setopt auto_cd
function chpwd() { ls }
function git() { hub "$@" }

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/shohei.takei/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval $(/opt/homebrew/bin/brew shellenv)
eval "$(direnv hook zsh)"
