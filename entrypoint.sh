#!/bin/bash

echo "============="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMIAL}"
git config --global --add safe.directory /github/workspafe

python3 /usr/bin/feed.py

git add -a && git commit -m "Update Feed"

git push --set-upstream origin main

echo "============="