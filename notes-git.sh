#!/bin/bash

# A simple shell script for running multiple Git commands

# Check if Git is installed
if ! command -v git &> /dev/null
then
    echo "Error: Git is not installed. Please install Git first."
    exit 1
fi

# Ensure the script is being run in the correct directory
TARGET_DIR="/home/aj/Documents/notes/Notes"
if [ "$PWD" != "$TARGET_DIR" ]; then
    echo "Error: This script must be run in the directory: $TARGET_DIR"
    exit 1
fi

# Run git add .
echo "Adding all changes to the staging area..."
git add .
if [ $? -ne 0 ]; then
    echo "Error: Failed to add changes."
fi

# Commit with predefined message
echo "Committing changes with message 'updated notes'..."
git commit -m "udated notes. pushed via notes-git.sh"
if [ $? -ne 0 ]; then
    echo "Error: commit failed."
    exit 1
fi

# Push changes to remote repository
echo "Pushing changes to the remote repository on branch 'main'..."
git push origin main
if [ $? -ne 0 ]; then
    echo "Error: push failed."
fi

# Success Message
echo "Changes successfully added, committed, and pushed."
