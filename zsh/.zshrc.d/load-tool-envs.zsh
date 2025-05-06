# asdf
. $(brew --prefix asdf)/libexec/asdf.sh

# Rust package manager (cargo)
. "$HOME/.cargo/env"

# nodejs local directory binaries
export PATH="./node_modules/.bin:$PATH"

# Python
export PATH="$HOME/.pyenv/bin:$PATH"

# Oktaws
export PATH="$HOME/.oktaws/bin:$PATH"

# Rancher Desktop
export PATH="/Users/wireland/.rd/bin:$PATH"
