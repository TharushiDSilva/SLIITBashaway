#!/bin/bash

# Check if out directory exists, if not, create it
if [ ! -d "./out" ]; then
    mkdir ./out
fi

# Initialize the output log file
COMMIT_LOG="./out/commits.txt"

# Function to log commits into commits.txt
log_commit() {
    git log --pretty=format:"%H - %an, %ar : %s" > "$COMMIT_LOG"
}

# Check if the git repository exists
if [ ! -d ".git" ]; then
    echo "This is not a git repository."
    exit 1
fi

# Log the commits
log_commit

# Provide feedback that the script ran successfully
echo "Commits have been logged in $COMMIT_LOG"


