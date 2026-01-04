#!/bin/bash

echo ""
echo "Starting Stereo Earth..."
echo ""

# Check if node is installed
if ! command -v node &> /dev/null; then
    echo "Error: Node.js is not installed."
    echo "Please install Node.js from https://nodejs.org/"
    exit 1
fi

# Start the server
node server.js

# If we get here, the server was stopped
echo "Server stopped."
