alias 'open'='xdg-open'
alias va='vagrant'
alias get='curl -OL'

# http://readwrite.com/2010/11/10/how-to-search-your-source-with/
# grep -inIEr --color=ALWAYS “Foo.*=” source/code/directory/
alias ssc='grep -inIEr --color=ALWAYS'

# start scala repl with color hightlight
alias scala='scala -Dscala.color'


#-----------------------------------
# easy access to common files
#-----------------------------------
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'

alias mybooks='cd ~/Dropbox/Books'
alias dco='docker-compose'
alias dcd='docker-compose -f $TODARCH_DOCS/docker-compose/docker-compose.yml'
alias dcp='docker-compose -f $TODARCH_DOCS/docker-compose/docker-compose.yml -f $TODARCH_DOCS/docker-compose/docker-compose.prod.yml'
alias jrnl='cd $HOME/repos/jrnl && ./jrnl'

alias tlogin='todarch login -u test@user.com -p 12345678'
