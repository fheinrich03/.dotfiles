# My Dotfiles

## Prerequisites

- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- CLI utils: `fzf`
- Language Setup: `npm`, `go`
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation),
- [fd-find](https://github.com/sharkdp/fd#installation)

## Installation and Setup

### Cloning the Repo

1. clone the repo
```bash
git clone <repo> ~/.dotfiles
```

2. Backup or delete your config that you want to replace
- e.g. if you want to use this ghostty and tmux config
- then remove or backup your `~/.config/ghostty` and `~/.config/tmux` config

### Adding Symlinks

3. add symlinks from `.config/` to `.dotfiles/`
> for this we will use `stow` following [this example](https://github.com/aspiers/stow)

all you need to do is install stow and link the `.dotfiles/` folder to the parent folder
```bash
cd ~/.dotfiles # make sure you are in dotfiles folder (which you cloned before)
stow .
```

### Module Specific Setups

4. Some configs may require additional setup or installation of tools
- for that check each `README.md`


## List of Tools and Plugins

### Font
- Some of the configs require a nerdfont to be installed
- I recommend installing a nerd font of choice and enable it in `ghostty/config`
- The Font that I use in my configs is `Jetbrains Mono Nerd Font`

### Theme
- The Theme that I use on all modules is [cyberdream](https://github.com/scottmckendry/cyberdream.nvim?tab=readme-ov-file)
- It is a neovim plugin but it can also be used for terminal emulator, shell, tmux etc.
- See instructions in cyberdream README or in the appropriate dotfile module Readme

### Terminal Applications Tools

- **neovim**: Powerful Editor for the terminal
- **lazygit**: Git UI with vim like keybinds for fast Git actions for the terminal
- **yazi**: Basically Finder on crack for the Terminal
- **zoxide**: Better `cd` command with guessing based on your cd history
- **stow**: Symlink Farm Manager - setup dotfiles once and never worry about it again


### CLI Tools

- **fzf**: Fuzzy Finder
- **rg**: Ripgrep - Efficient Text search

### Mentions
- The nvim configuration is based on [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)
