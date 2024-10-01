#!/bin/bash

git add .  # Stage all changes 

# Get a random programming joke from jokeapi.dev
joke_json=$(curl -s -H "Accept: application/json" "https://v2.jokeapi.dev/joke/Programming?blacklistFlags=nsfw,religious,political,racist,sexist")

# Extract the joke using grep and sed (without jq)
joke=$(echo "$joke_json" | grep -o '"joke": "[^"]*"' | sed 's/"joke": "\([^"]*\)"/\1/')

# Construct the commit message
commit_message="solved some questions (and maybe told a joke): $joke"

# Commit the changes
git commit -m "$commit_message"

# Push the changes to the master branch
git push origin master