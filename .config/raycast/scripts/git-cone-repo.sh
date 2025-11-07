#!/bin/bash
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Git Clone Repo (to Finder)
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon 🧬
# @raycast.argument1 { "type": "text", "placeholder": "git@github.com:user/repo.git" }
# @raycast.argument2 { "type": "text", "placeholder": "IDE command (optional)", "optional": true }
#
# Documentation:
# @raycast.description Git Clone Repo into the currently active Finder window, optionally opening it in an IDE
# @raycast.author You
# @raycast.authorURL https://github.com/your-profile

# Get path of frontmost Finder window
finder_path=$(osascript <<EOT
tell application "Finder"
    try
        set thePath to POSIX path of (target of front window as alias)
    on error
        set thePath to POSIX path of (desktop as alias)
    end try
end tell
EOT
)

cd "$finder_path" || exit 1

echo "Cloning into: $finder_path"
repo_url="$1"
repo_name=$(basename -s .git "$repo_url")

git clone "$repo_url"

# If IDE command is provided, open the folder
if [ -n "$2" ]; then
    echo "Opening in IDE with: $2"
    "$2" "$repo_name"
fi
