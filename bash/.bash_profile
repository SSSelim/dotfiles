# echo "sourcing bash_profile"

# to get into the vi editing mode type
set -o vi

# EXPORT stuff
export EDITOR='vim'

# for solarized dark theme
export TERM='screen-256color'

export DOCKER_HIDE_LEGACY_COMMANDS=true

# PATH stuff
export PATH=$HOME/bin:$PATH

# GOROOT is where go is installed
export GOROOT=/usr/local/go
# GOPATH is user's go workspace, can be colon-separated paths
export GOPATH=$HOME/go
# add both bin to PATH
export PATH=$PATH:$GOROOT/bin:$GOPATH

## SOURCE stuff

function safe_source {
  file="$1"
  [[ -s "$file" ]] && source "$file"
}


safe_source $HOME/.bash_aliases

# can be system dependent, try-forget stuff
# can hold company specific stuff on company pc
safe_source $HOME/.bash_aliases_local
safe_source $HOME/.bash_profile_local

