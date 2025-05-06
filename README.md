# dotfiles
Some of my dotfiles. This repo leverages [stow](https://www.gnu.org/software/stow/) to manage the symlinks in the home directory.

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git
    ```
2. Change into the directory:
3. ```bash
   cd dotfiles
   ```
4. Use stow to create symlinks:
   ```bash
    stow <package>
    ```
    Replace `<package>` with the name of the package you want to stow (e.g., `zsh`, `vim`, etc.).
   For example, to stow the `zsh` package:
   ```bash
   stow zsh
   ```
This will create the dotfiles as symlinks, so you can edit them in the `dotfiles` directory and have the changes reflected in your home directory, where they are expected to be.
