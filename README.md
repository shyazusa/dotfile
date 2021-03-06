dotfile
===

* .bashrc
* .cvimrc
* .editorconfig
* .eslintrc
* .gitmessage.txt
* .stylelintrc
* .tigrc
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
$ cp -r dotfile/.* .
```

## Use my gitfiles

```
$ git config --global core.commentchar ";"
$ git config --global commit.template ~/dotfile/.gitmessage.txt
$ git config --global init.templatedir '~/dotfile/.git_template'
```

## Use pre-commit

```
$ cd "your project path"
$ cp ~/dotfile/.git_template/hooks/pre-commit .git/hooks/
```

## Use prepare-commit-msg

```
$ cd "your project path"
$ cp ~/dotfile/.git_template/hooks/prepare-commit-msg .git/hooks/
```

### Test prepare-commit-msg

```
$ git checkout id/000
$ touch test
$ git add test
$ git commit
```
