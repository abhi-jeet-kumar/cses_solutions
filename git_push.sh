#!/bin/bash

git add .  # Stage all changes 

# Get a random programming joke from jokeapi.dev
joke_json=$(curl -s -H "Accept: application/json" "https://v2.jokeapi.dev/joke/Programming?blacklistFlags=nsfw,religious,political,racist,sexist")
echo "Raw JSON: $joke_json"  # Print the raw JSON

# Extract the joke based on the type (single or twopart) using awk
joke_type=$(echo "$joke_json" | awk -F'"' '{print $8}')
if [[ "$joke_type" == "twopart" ]]; then
  setup=$(echo "$joke_json" | awk -F'"' '{print $16}')
  delivery=$(echo "$joke_json" | awk -F'"' '{print $24}')
  joke="$setup $delivery"
else
  joke=$(echo "$joke_json" | awk -F'"' '{print $12}')
fi

echo "Joke: $joke"  # Print the extracted joke

# Construct the commit message
commit_message="solved some questions (and maybe told a joke): $joke"
echo "Commit message: $commit_message" # Print the commit message

# Commit the changes
git commit -m "$commit_message"

# Push the changes to the master branch
git push origin master