# My Dotfiles

## Installation

1. clone the repo
```bash
git clone <repo> ~/.dotfiles
```

2. Backup or delete your config that you want to replace
- e.g. if you want to use this ghostty and tmux config
- then remove or backup your `~/.config/ghostty` and `~/.config/tmux` config

2. add symlinks from `.config/` to `.dotfiles/`
> you only need symlinks for the modules that you want to use
```bash
ln -s ~/.dotfiles/fish ~/.config/fish
ln -s ~/.dotfiles/ghostty ~/.config/ghostty
ln -s ~/.dotfiles/karabiner ~/.config/karabiner
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/raycast ~/.config/raycast
ln -s ~/.dotfiles/tmux ~/.config/tmux
ln -s ~/.dotfiles/yazi ~/.config/yazi
```

3. Some configs require some additional installation
- ...

## Font
- The Font that I use in my configs is `Jetbrains Mono Nerd Font` from [Nerd Fonts](https://www.nerdfonts.com/)
- I recommend installing a nerd font of choice and enable it in `ghostty/config`
> Nerd Fonts also come with Web Dev Icons which are required for some of the other modules

## Theme
- The Theme that I use is [cyberdream](https://github.com/scottmckendry/cyberdream.nvim?tab=readme-ov-file)
- it is a neovim plugin but it can also be used for terminal emulator, shell, tmux etc.
- see instructions in cyberdream README or in the appropriate dotfile module Readme
