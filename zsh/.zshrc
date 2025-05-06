# asdf
. $(brew --prefix asdf)/libexec/asdf.sh

# Node
export PATH="./node_modules/.bin:$PATH"

# Python
export PATH="$HOME/.pyenv/bin:$PATH"

# oh my posh prompt
OMP_THEME_PATH=$(brew --prefix oh-my-posh)/themes/M365Princess.omp.json
eval "$(oh-my-posh init zsh --config $OMP_THEME_PATH)"

# Oktaws
export PATH="$HOME/.oktaws/bin:$PATH"

# pnpm shortcuts
alias p='pnpm'
alias pi='pnpm install'
alias pb='pnpm build'

# Maven/DropWizard shortcuts
alias coverage='mvn test -P coverage; mvn jacoco:report -P coverage; echo file://$(pwd)/$(find . -name index.html | grep jacoco/index.html | sed "s|^\./||")'

# Git
alias gs='git status'
alias gpl='git pull'
alias gps='git push'
alias gpuo='git push --set-upstream origin'
alias ga='git add'
alias gcm='git commit -m'
alias gb='git branch'
alias gcob='git checkout -b'

# Python
alias py='python3'

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/wireland/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
