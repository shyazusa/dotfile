dotfile
===

* .bashrc
* .editorconfig
* .eslintrc
* .gitmessage.txt
* .stylelintrc
* .vimperatorrc
* .vimrc
* .zpreztorc
* .zprofile
* .zshrc

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

## Use my dotfiles

```
$ cd ~
$ git clone https://github.com/shyazusa/dotfile.git
$ cp dotfile/.* .
```

## Use my gitfiles

```
$ git config --global core.commentchar ";"
$ git config --global commit.template ~/dotfile/.gitmessage.txt
```

## Use prepare-commit-msg

```
$ cp "your project path"
$ cp ~/dotfile/prepare-commit-msg .git/hooks/
```

### Test prepare-commit-msg

```
$ touch test
$ git add test
$ git commit
```
