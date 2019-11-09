# Manage Dotfiles

## symbolic link

- use this method if you don't have GNU Stow on the machine

```shell
ln -s $HOME/dotfiles/bash/.bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/bash/.bash_profile_local $HOME/.bash_profile_local
ln -s $HOME/dotfiles/bash/.bash_aliases $HOME/.bash_aliases
ln -s $HOME/dotfiles/bash/.bash_aliases_local $HOME/.bash_aliases_local
```

## GNU Stow

*important:* in order to have Stow work as expected, this repo should be a top level directory in $HOME.

### setup

* Back up the dotfiles just in case
* Install [GNU Stow](https://www.gnu.org/software/stow/)

```shell
sudo apt-get install stow
```

* Create a directory named dotfiles in your home directory

```shell
mkdir dotfiles ~/
```

* Create subdirectories for your need. ex: bash, vim, tmux etc
* Move your dotfiles in appropriate subdirectories

### usage

* Following command creates a symbolic link to .bashrc in your home directory

```shell
cd ~/dotfiles/
stow bash
# .bashrc -> dotfiles/bash/.bashrc
```

* Unlink

```shell
cd ~/dotfiles/
stow -D bash # removes the symbolic link
```

* Now everything is easy cheesy, dotfiles directory can be a normal git repo.
