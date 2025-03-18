#!/bin/zsh

# PATHS
CURR_DIR=$(pwd)
CFILES_DIR="$CURR_DIR/src/test/C-files"
OUTPUT_DIR="$CURR_DIR/src/test/output"
EXPECTED_DIR="$CURR_DIR/src/test/expected"
DEBUG_DIR="$CURR_DIR/src/test/dot-debug"
LOG_FILE="$CURR_DIR/src/test/log.txt"


# Color CONST
RED='\e[31m'
GREEN='\e[32m' YELLOW='\e[33m'
BLUE='\e[34m'
RESET='\e[0m'


rm -rf "$DEBUG_DIR/*.dot"

exit_code=$?
if [ $exit_code -ne 0 ]; then
    echo -e "${RED}Failed${RESET}: was not able to remove files"
    exit
fi

echo -e "${GREEN}OUTPUT DIR is clean${RESET}"
