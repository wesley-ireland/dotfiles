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
