#!/bin/sh
set -eu

cd "$(dirname "$0")"

if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server 8000 --bind 127.0.0.1
elif command -v python >/dev/null 2>&1; then
  exec python -m http.server 8000 --bind 127.0.0.1
else
  echo "Error: Python 3 (or Python) is required to run the local server." >&2
  exit 1
fi
