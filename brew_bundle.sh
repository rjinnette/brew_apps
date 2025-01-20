#!/bin/zsh

# Source the .zsh_profile to ensure the aliases are available
source ~/.zprofile

#change into proper directory
cd /Users/ryanjinnette/Code/brew_apps/

# Run brew bundle dump to save the Brewfile
brew bundle dump --force

# Check the Git status
git_status=$(git status --porcelain)

# If there are changes, stage, commit, and push
if [[ -n "$git_status" ]]; then
    add  # Use the alias for git add
    cmt "Apps: $(date +'%m/%d/%Y')"  # Use the alias for git commit
    push  # Use the alias for git push
else
    echo "No changes to commit."
    exit 0  # Exit the script cleanly if no changes are found
fi



