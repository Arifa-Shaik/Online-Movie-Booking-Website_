# Get the hash of the first commit
first_commit_hash=$(git rev-list --max-parents=0 HEAD)

# Start interactive rebase from the first commit
git rebase -i --root

# (In the editor, change 'pick' to 'reword' for the first commit, then save and close the editor)

# Git will open another editor to edit the commit message. Make your changes, save, and close the editor.

# If there are no conflicts, the rebase will complete. If there are conflicts, resolve them and continue the rebase
git rebase --continue

# Force push the changes to the remote repository (if applicable)
git push --force
