# Fish Shell Config

## Setup

- This config uses zoxide for cd (change directory) guessing
- You need to either install zoxide or disable it in `config.fish`
```bash
brew install zoxide
```
(Optional) set Neovim as default editor
```bash
set -Ux EDITOR nvim
```

## How to Add Theme (cyberdream)

- https://github.com/scottmckendry/cyberdream.nvim/tree/main/extras/fish

run this in terminal
```bash
fish_config theme save cyberdream
```

## How to Set fish as default shell in mac

```bash
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)
```

## How to add Environment Variables

```bash
set -Ux EDITOR nvim
```

