#!/bin/bash

# Get the number of files that will be staged
num_files=$(git diff --cached --name-only | wc -l)

# Add all changes
git add .

# Commit the changes
git commit -m "solved $num_files questions"

# Push the changes to the master branch
git push origin master