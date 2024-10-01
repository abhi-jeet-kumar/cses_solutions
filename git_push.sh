#!/bin/bash

git add .  # Stage all changes 

# Get a random programming joke from jokeapi.dev
joke_json=$(curl -s -H "Accept: application/json" "https://v2.jokeapi.dev/joke/Programming?blacklistFlags=nsfw,religious,political,racist,sexist")

# Extract the joke based on the type (single or twopart) using jq
joke_type=$(echo "$joke_json" | jq -r '.type')
if [[ "$joke_type" == "twopart" ]]; then
  setup=$(echo "$joke_json" | jq -r '.setup')
  delivery=$(echo "$joke_json" | jq -r '.delivery')
  joke="$setup $delivery"
else
  joke=$(echo "$joke_json" | jq -r '.joke')
fi

# Construct the commit message
commit_message="solved some questions (and maybe told a joke): $joke"

# Commit the changes
git commit -m "$commit_message"

# Push the changes to the master branch
git push origin main