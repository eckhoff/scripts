#!/bin/bash

# Navigate to specific folder
cd ~/Projects/weight-log-go/frontend || { echo "Folder not found"; exit 1; }

# Start Server
npm run dev
