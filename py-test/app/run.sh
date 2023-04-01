#!/usr/bin/env sh

cd "$(dirname "$0")"

echo "Testing starting"
python3 app.py
echo "Testing completed"

tail -f /dev/null
#exit 0