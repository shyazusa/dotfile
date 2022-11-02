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
alias vim='nvim'
alias ghci='stack ghci'
alias ghc='stack ghc --'
alias runghc='stack runghc --'
alias bundle1='bundle _1.17.2_'
alias bundler1='bundler _1.17.2_'

# cdとlsの省略
setopt auto_cd
function chpwd() { ls }
function git() { hub "$@" }

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(nodenv init -)"
eval $(/opt/homebrew/bin/brew shellenv)
eval "$(direnv hook zsh)"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

