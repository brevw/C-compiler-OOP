#!/bin/zsh

# PATHS
CURR_DIR=$(pwd)
CFILES_DIR="$CURR_DIR/src/test/C-files"
OUTPUT_DIR="$CURR_DIR/src/test/output"
EXPECTED_DIR="$CURR_DIR/src/test/expected"
DEBUG_DIR="$CURR_DIR/src/test/dot-debug"
LOG_FILE="$CURR_DIR/src/test/log.txt"

# Display CONSTS
ARROW="->"
DASHED_LINES="-----------------------------------------------------"

# Error CONSTS
UNKNOWN_EXCEPTION=1;
FILE_NOT_FOUND=2;
IO_EXCEPTION=3;
MODE_FAIL=254;
LEXER_FAIL=250;
PARSER_FAIL=245;
PASS=0;

# Color CONST
RED='\e[31m'
GREEN='\e[32m' YELLOW='\e[33m'
BLUE='\e[34m'
RESET='\e[0m'

# Other CONST
DEFAULT_TIMEOUT=5


# Compile Code using ant apache
echo -e "${BLUE}$DASHED_LINES Compiling Code $DASHED_LINES${RESET}"
ant build
compiler_exit_code=$?
if [ $compiler_exit_code -ne 0 ]; then
    exit
fi

# Run java program to output the dot file
echo -e "${BLUE}$DASHED_LINES Generating Dot $DASHED_LINES${RESET}"
filename="$1"
c_file_path="$CFILES_DIR/$filename.c"
dot_output_path="$DEBUG_DIR/$filename-cfg.dot"
pdf_output_path="$DEBUG_DIR/$filename-cfg.pdf"
gtimeout "$DEFAULT_TIMEOUT" java -cp bin DotMainCFG "$c_file_path" "$dot_output_path"
exit_code=$?  # Capture the program's exit code
if [ $exit_code -eq 124 ]; then
    echo -e "Test ${RED}Failed${RESET}: Program timed out"
    return
fi

if [ $exit_code -ne 0 ]; then
    echo -e "Test ${RED}Failed${RESET}: Program exited with code $exit_code"
    exit
fi


# Run dot to generate the pdf file
echo -e "${BLUE}$DASHED_LINES Generating pdf $DASHED_LINES${RESET}"
dot -Tpdf "$dot_output_path" -o "$pdf_output_path"
exit_code=$?  # Capture the program's exit code
if [ $exit_code -ne 0 ]; then
    echo -e "Test ${RED}Failed${RESET}: Dot Compiler exited with code $exit_code"
    exit
fi
rm -f "$dot_output_path"

# Open the pdf file
open -a Skim "$pdf_output_path"
echo -e "Done"

