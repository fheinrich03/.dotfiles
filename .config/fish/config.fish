if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source

# Added by Antigravity
fish_add_path /Users/fheinrich/.antigravity/antigravity/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

fnm env --use-on-cd | source