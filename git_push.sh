#!/bin/bash

git add .  # Stage all changes 

# Get a random joke from the internet (corrected sed command)
joke=$(curl -s https://icanhazdadjoke.com/ | sed -n 's/.*<p>\(.*\)<\/p>.*/\1/p') 

# Construct the commit message
commit_message="solved some questions (and maybe told a joke): $joke"

# Commit the changes
git commit -m "$commit_message"

# Push the changes to the master branch
git push origin master