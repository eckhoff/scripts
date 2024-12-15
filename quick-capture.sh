#!/bin/bash

# File path to Quick-Capture.md
NOTE_FILE="$HOME/Documents/notes/Notes/Quick-Capture.md"

# Ensure the directory and file exist
mkdir -p "$(dirname "NOTE_FILE")"
touch "$NOTE_FILE"

# if the argument --list is passed print quick-capture.md in terminal
if [[ "$1" == "--list" ]]; then
    if [[ ! -s "$NOTE_FILE" ]]; then
        echo "No notes found in Quick-Capture.md"
    else
        echo "Quick Capture Notes:"
        cat "$NOTE_FILE"
    fi
    exit 0
fi

# Check if text is provided
if [ -z "$*" ]; then
    echo "No text provided. Usage: qq <text>"
    exit 1
fi

# append the input text to the note to Quick-Capture.md
echo "* $*" >> "$NOTE_FILE"
echo "Note added: $*"
