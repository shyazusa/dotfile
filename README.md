dotfile
===

* .bashrc
* .vimrc
* .vimperatorrc
* .zpreztorc
* .zprofile
* .zshrc
* .gitmessage.txt
* .eslintrc
* .stylelintrc

## Use zsh

```
$ yum install zsh
$ zsh
$ cd ~
$ rm .zlogin .zlogout .zprofile .zshenv .zshrc
$ git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
$ setopt EXTENDED_GLOB
$ for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
$ ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
$ done
$ exec $SHELL
```

## Use my dotfile

```
$ cd ~
$ git clone https://github.com/shyazusa/dotfile.git
$ cp dotfile/.* .
$ git config --global commit.template ~/.gitmessage.txt
```
