#!/usr/bin/env bash

hostname=${1}
port=${2}

cd "$(dirname "$0")"
echo "Before wait" `date`

robot -d ./results/ -v VERBOSE:true ./tests/sample_app_test.robot

echo "Testing completed"

tail -f /dev/null
#exit 0
