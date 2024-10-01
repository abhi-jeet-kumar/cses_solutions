#!/bin/bash

git add .  # Stage all changes 

# Get the list of staged filenames separated by commas
file_list=$(git diff --cached --name-only | paste -sd ", ")

# Construct the commit message
commit_message="solved $file_list"

# Commit the changes
git commit -m "$commit_message"

# Push the changes to the master branch
git push origin main