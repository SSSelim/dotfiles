export EDITOR='vim'

export PATH=$PATH:~/bin/
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/scala/bin
export PATH=$PATH:/usr/local/spark/bin

export JAVA_HOME=/usr/lib/jvm/java-8-oracle

export M2_HOME=/usr/local/maven
export M2=$M2_HOME/bin
export PATH=$PATH:$M2

# to get into the vi editing mode type
set -o vi

# for solarized dark theme
export TERM='screen-256color'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ssselim/.sdkman"
[[ -s "/home/ssselim/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ssselim/.sdkman/bin/sdkman-init.sh"
