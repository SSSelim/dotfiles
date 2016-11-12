# Managing Dotfiles using GNU Stow
I found this method so easy and practical. 

## Steps

* Back up the dotfiles just in case
* Install [GNU Stow](https://www.gnu.org/software/stow/)
```shell
$ sudo apt-get install stow
```

* Create a directory named dotfiles in your home directory
```shell
$ mkdir dotfiles ~/
```

* Create subdirectories for your need. ex: bash, vim, tmux etc
* Move your dotfiles in propriate subdir.
* Following command creates a symbolic link to .basrc in your home directory.

```shell
# pwd: ~/dotfiles/
$ stow bash
# .bashrc -> dotfiles/bash/.bashrc
```

* Now everything is easy cheesy, dotfiles directory can be a normal git repo.

# Older Method
There are problems with the following methods to keep organized dotfiles, 

* using your home directory as git repo is not a good idea. It is confusing.
* using git in a different way is so helpful
* I set up once, and I didnt even update it in months because it wasnt so
  practical. 
* Letting here for historical reasons

# Keeping Dotfiles Safe

Good for first start
- https://www.foraker.com/blog/get-your-dotfiles-under-control

```bash
cd ~
git init
echo "*" > .gitignore
git add -f .vimrc             # force to add file
```

# To list the files included in the git repo
```bash
git ls-tree -r master --name-only 
```

