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

