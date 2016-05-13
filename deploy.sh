#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site $(date +'%Y-%m-%dT%T+0900')"
if [ $# -eq 1 ]; then
  msg="$1"
fi

git commit -m "$msg"

# Push source and build repos.
git push origin master
git subtree push --prefix public/ origin gh-pages

