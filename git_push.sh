#!/bin/bash

git add .  # Stage files

sleep 3    # Introduce a 3-second delay

num_files=$(git diff --cached --name-only | wc -l)

# Commit the changes
git commit -m "solved $num_files questions"

# Push the changes to the master branch
git push origin main