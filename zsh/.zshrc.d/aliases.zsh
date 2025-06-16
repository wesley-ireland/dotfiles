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
alias gcob='git checkout -b'

# pnpm
alias p='pnpm'
alias pi='pnpm install'
alias pb='pnpm build'

# Maven
alias coverage='mvn test -P coverage; mvn jacoco:report -P coverage; echo file://$(pwd)/$(find . -name index.html | grep jacoco/index.html | sed "s|^\./||")'

# Python
alias py='python3'


#################################################
### Linux CLI Tool Replacements and Shortcuts ###
#################################################

# Eza (ls replacement) with some defaults
alias l='eza -la --group-directories-first --color=always --git-ignore'

# Make a directory and enter it
alias mkcd='function mkdircd() { mkdir -p "$1" && cd "$1"; }; mkdircd'

# Use z to jump to a directory and print its path
alias zp='function zpwd() { z "$1" && pwd; }; zpwd'

# ripgrep (grep replacement) enable hidden (dot) files by default
alias rg='rg --hidden'

# Bat (cat replacement)
## Fzf (fuzzy finder)
