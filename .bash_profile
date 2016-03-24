export PATH=$PATH:~/android-studio/bin/
export PATH=$PATH:~/bin/

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export ANT_HOME=/usr/local/ant
export PATH=$PATH:$ANT_HOME/bin

# to get into the vi editing mode type
set -o vi

# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# Tab completion for branch names
source ~/.git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
