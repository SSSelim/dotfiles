#echo "sourcing bash_profile"
export EDITOR='vim'

export PATH=$PATH:~/android-studio/bin/
export PATH=$PATH:~/bin/

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/scala/bin
export PATH=$PATH:/usr/local/spark/bin
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export ANT_HOME=/usr/local/ant
export PATH=$PATH:$ANT_HOME/bin

export M2_HOME=/usr/local/maven
export M2=$M2_HOME/bin
export PATH=$PATH:$M2

# my scripts
export PATH="$HOME/repos/learning/bash/scripts/:$PATH"

# export GRADLE_HOME=/opt/gradle/gradle-2.14.1
# export PATH=$PATH:$GRADLE_HOME/bin/

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

# ActiveMQ with Tomcat
#export JAVA_OPTS='-Dwebconsole.type=properties -Dwebconsole.jms.url=”tcp://localhost:61617″ -Dwebconsole.jmx.url=”service:jmx:rmi:///jndi/rmi://localhost:1099/ jmxrmi”'
# ActiveMQ with Tomcat

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ssselim/.sdkman"
[[ -s "/home/ssselim/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ssselim/.sdkman/bin/sdkman-init.sh"
