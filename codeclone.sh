#!/bin/bash

#For each repo loop through it and clone

#def repos = params.REPO_NAMES.split(' ')

if [ $# -eq 0 ]; then
    read -p "Enter repo names (space-separated): " -a repos
else
    repos=("$@")
fi

if [ ${#repos[@]} -eq 0 ]; then
    echo "No repo names provided."
    exit 1
fi

for repo in "${repos[@]}"
do
    git clone --bare git@github.com:Ramcv37/"$repo".git
done
