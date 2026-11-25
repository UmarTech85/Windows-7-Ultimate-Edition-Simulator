#!/bin/bash

echo "Starting HTML project..."

if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
else
    echo "Opening index.html..."
    xdg-open index.html 2>/dev/null || open index.html 2>/dev/null || start index.html
fi
