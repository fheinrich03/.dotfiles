function git-my-branches --description 'List own remote branches with created/last-commit date, sorted by last commit desc'
    set EMAIL "<"(git config user.email)">"

    begin
        printf "BRANCH\tCREATED\tLAST_COMMIT\n"
        for br in (git for-each-ref --format='%(authoremail)|%(refname:short)' refs/remotes | awk -F'|' -v e="$EMAIL" '$1==e{print $2}' | grep -vE '^origin$|^origin/main$')
            set base (git merge-base main $br 2>/dev/null)
            set created (git log --format='%ad' --date=short "$base".."$br" 2>/dev/null | tail -1)
            if test -z "$created"
                set created (git log -1 --format='%ad' --date=short $br)
            end
            set last (git log -1 --format='%ad' --date=short $br)
            printf "%s\t%s\t%s\n" $br $created $last
        end
    end | begin
        read -l h
        echo $h
        sort -t \t -k3,3r
    end | column -t -s \t
end
