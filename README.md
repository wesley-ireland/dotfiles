# dotfiles
Some of my dotfiles 

## Using the bare git repo
I have a directory for this repo on my machine `~/code/wireland/dotfiles`. This corresponds to the aliased command `dotfiles` in my `.bash_profile` config, which is effectively a `git` alias for this repo.

You can use this aliased git command from any directory and it targets the dotfiles repo. So, if I'm deep in a project directory but I wanted to add a dotfile in my home directory, all I would have to do is:

```
dotfiles add ~/.example_dotfile
dotfiles commit -m ".example_dotfile"
dotfiles push
```
