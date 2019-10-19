export EDITOR='vim'

export PATH=$PATH:~/bin/
export PATH=$PATH:/usr/local/scala/bin
export PATH=$PATH:/usr/local/spark/bin

export JAVA_HOME=/usr/lib/jvm/java-8-oracle

export M2_HOME=/usr/local/maven
export M2=$M2_HOME/bin
export PATH=$PATH:$M2

# golang specific exports
# GOROOT is where go is installed
export GOROOT=/usr/local/go
# GOPATH is user's go workspace, can be colon-separated paths
export GOPATH=$HOME/go
# add both bin to PATH
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# to get into the vi editing mode type
set -o vi

# for solarized dark theme
export TERM='screen-256color'

export DOCKER_HIDE_LEGACY_COMMANDS=true

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ssselim/.sdkman"
[[ -s "/home/ssselim/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ssselim/.sdkman/bin/sdkman-init.sh"

export SONAR_HOME=$HOME/tools/sonarqube-6.7.4
export PATH=$PATH:$SONAR_HOME/bin

export TODARCH_DOCS="$HOME/IdeaProjects/todarch-docs"


export TODARCH_HOME=/home/ssselim/.todarch
export PATH=$TODARCH_HOME:$PATH

export GITHUB_TOKEN="6c2cc417cc0c5194b832c6898b1c4fc08b06d0be"
export RABBITMQ_DEFAULT_USER=guestprod
export RABBITMQ_DEFAULT_PASS=guestprod
export TODARCH_MAIL_PASSWORD=todarch_noreply

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias androidemulator='emulator -avd Nexus-5X-API-28'

export VSCODE="/usr/local/vscode"
export PATH=$PATH:$VSCODE/bin

export TOMCAT_HOME="$HOME/tools/apache-tomcat-7.0.92"
# export PATH=$PATH:$TOMCAT_HOME/bin

export CDT_DOCS=/home/ssselim/repos/projects/cdt-docs
