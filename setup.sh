#!/usr/bin/env bash

# zero-to-prod setup proxy
# Usage:
# bash setup.sh <module_name> [args...]

MODULE=$1
shift # remove module name from arguments

if [ -z "$MODULE" ]; then
    echo "Usage: bash setup.sh <module_name> [args...]"
    echo "Available modules: $(ls -d scripts/*/ | xargs -n 1 basename)"
    exit 1
fi

SCRIPT_PATH="scripts/$MODULE/script.sh"

if [ ! -f "$SCRIPT_PATH" ]; then
    echo "Error: Module '$MODULE' not found at '$SCRIPT_PATH'."
    exit 1
fi

echo "--- Running $MODULE setup ---"
sudo bash "$SCRIPT_PATH" "$@"
echo "--- $MODULE setup complete ---"
