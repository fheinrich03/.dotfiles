function dotconf --description 'Pick ~/.config folders via fzf and move them into the dotfiles repo, then stow'
    if not command -q fzf
        echo "fzf not installed"
        return 1
    end

    set -l repo ~/.dotfiles

    # Candidates: real dirs in ~/.config that are not symlinks and not already in the repo
    set -l candidates
    for dir in ~/.config/*/
        set -l name (basename $dir)
        # skip symlinks (already linked) and anything already present in the repo
        if test -L ~/.config/$name
            continue
        end
        if test -e $repo/.config/$name
            continue
        end
        set -a candidates $name
    end

    if test (count $candidates) -eq 0
        echo "nothing to move — everything is already linked or in the repo"
        return 0
    end

    # Multi-select dropdown (Tab to mark, Enter to confirm)
    set -l selected (printf '%s\n' $candidates | fzf --multi \
        --height=40% --reverse --border \
        --prompt='move to dotfiles > ' \
        --header='Tab: select  •  Enter: confirm  •  Esc: cancel')

    if test (count $selected) -eq 0
        echo "cancelled"
        return 1
    end

    for name in $selected
        mv ~/.config/$name $repo/.config/$name
        and echo "moved $name -> repo"
        or echo "failed to move $name"
    end

    cd $repo
    and stow .
    and echo "stowed — symlinks created"
end
