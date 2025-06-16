#####################################################
### Helpful shorthands for common developer tools ###
#####################################################

# Git
alias gs='git status'
alias gpl='git pull'
alias gps='git push'
alias gpuo='git push --set-upstream origin'
alias ga='git add'
alias gcm='git commit -m'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'

# pnpm
alias p='pnpm'
alias pi='pnpm install'
alias pb='pnpm build'

# Maven
alias coverage='mvn test -P coverage; mvn jacoco:report -P coverage; echo file://$(pwd)/$(find . -name index.html | grep jacoco/index.html | sed "s|^\./||")'

# Python
alias py='python3'

findportpid() {
  if [ "$1" = "--help" ]; then
    echo "Usage: findportpid <port-number>"
    echo "Finds the PID of the process using the specified port."
    return 0
  fi
  if [ -z "$1" ]; then
    echo "Usage: findportpid <port-number>"
    return 1
  fi

  lsof -i -P | rg "$1" | awk '{print $2}'
}

killportpid() {
  if [ "$1" = "--help" ]; then
    echo "Usage: killportpid <port-number>"
    echo "Kills the process using the specified port."
    return 0
  fi
  if [ -z "$1" ]; then
    echo "Usage: killportpid <port-number>"
    return 1
  fi

  pid=$(findport "$1")
  if [ -z "$pid" ]; then
    echo "No process found on port $1"
    return 1
  fi

  kill -9 "$pid" && echo "Killed process $pid on port $1"
}

alias fpp='findportpid'
alias kpp='killportpid'

#################################################
### Linux CLI Tool Replacements and Shortcuts ###
#################################################

# Eza (ls replacement) with some defaults
alias l='eza -la --group-directories-first --color=always --git-ignore'

# Make a directory and enter it
alias mkcd='function mkdircd() { mkdir -p "$1" && cd "$1"; }; mkdircd'

# zoxide
alias z='zoxide'

# Use z to jump to a directory and print its path
alias zp='function zpwd() { z "$1" && pwd; }; zpwd'

# ripgrep (grep replacement) enable hidden (dot) files by default
alias rg='rg --hidden'

# Bat (cat replacement)
## Fzf (fuzzy finder)


#################
### Fun Stuff ###
#################

alias matrix='cmatrix'
alias pipes='pipes.sh'
alias cow='fortune|cowsay'
alias bonsai='cbonsai -lit 0.5'
alias viz='cava'
alias aquarium='asciiquarium'
alias weather='wthrr -f w,d'
