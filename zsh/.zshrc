source $HOME/.zshrc.d/load-tool-envs.zsh
source $HOME/.zshrc.d/oh-my-posh-prompt.zsh
source $HOME/.zshrc.d/aliases.zsh

# Fortune cookies featuring cows
fortune | cowsay

# Force steam to use Nvidia driver?
export LIBGL_DRIVERS_PATH=/usr/lib/nvidia
