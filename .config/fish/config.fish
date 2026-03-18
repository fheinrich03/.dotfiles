# Bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

if status is-interactive
    # zoxide
    if command -q zoxide
        zoxide init fish | source
    end

    # ngrok completion
    if command -q ngrok
        eval (ngrok completion)
    end
end
fish_add_path $HOME/.local/bin

# Added by Antigravity
fish_add_path /Users/fheinrich/.antigravity/antigravity/bin

zoxide init fish | source
fnm env --use-on-cd | source

# options
fish_vi_key_bindings

# variables
abbr -a lg lazygit