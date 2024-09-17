#!/bin/bash

# Directory to store the log file (change if needed)
OUT_DIR="./out"

# Create the out directory if it doesn't exist
if [ ! -d "$OUT_DIR" ]; then
    mkdir "$OUT_DIR"
fi

# Path to the log file
COMMIT_LOG="$OUT_DIR/commits.txt"

# Log the latest commit details
git log -1 --pretty=format:"%H - %an, %ar : %s" >> "$COMMIT_LOG"
echo "" >> "$COMMIT_LOG"  # Add a new line to separate entries
