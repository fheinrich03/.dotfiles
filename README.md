# My Dotfiles

## Installation

1. clone the repo
```bash
git clone <repo> ~/.dotfiles
```

2. Backup or delete your config that you want to replace
- e.g. if you want to use this ghostty and tmux config
- then remove or backup your `~/.config/ghostty` and `~/.config/tmux` config

3. add symlinks from `.config/` to `.dotfiles/`
> for this we will use `stow` following [this example](https://github.com/aspiers/stow)

all you need to do is install stow and link the `.dotfiles/` folder to the parent folder
```bash
cd ~/.dotfiles # make sure you are in dotfiles folder (which you cloned before)
stow .
```

4. Some configs may require additional setup or installation of tools
- for that check each `README.md`

## Font
- The Font that I use in my configs is `Jetbrains Mono Nerd Font` from [Nerd Fonts](https://www.nerdfonts.com/)
- I recommend installing a nerd font of choice and enable it in `ghostty/config`
> Nerd Fonts also come with Web Dev Icons which are required for some of the other modules

## Theme
- The Theme that I use is [cyberdream](https://github.com/scottmckendry/cyberdream.nvim?tab=readme-ov-file)
- it is a neovim plugin but it can also be used for terminal emulator, shell, tmux etc.
- see instructions in cyberdream README or in the appropriate dotfile module Readme
