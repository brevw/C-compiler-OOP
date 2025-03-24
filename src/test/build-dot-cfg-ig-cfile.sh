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
dot_output_path_cfg="$DEBUG_DIR/$filename-cfg.dot"
pdf_output_path_cfg="$DEBUG_DIR/$filename-cfg.pdf"
dot_output_path_ig="$DEBUG_DIR/$filename-ig.dot"
pdf_output_path_ig="$DEBUG_DIR/$filename-ig.pdf"
gtimeout "$DEFAULT_TIMEOUT" java -cp bin DotMain_CFG_IG -c "$c_file_path" "$dot_output_path_cfg" "$dot_output_path_ig"
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
dot -Tpdf "$dot_output_path_cfg" -o "$pdf_output_path_cfg"
exit_code=$?  # Capture the program's exit code
if [ $exit_code -ne 0 ]; then
    echo -e "Test ${RED}Failed${RESET}: Dot Compiler exited with code $exit_code"
    exit
fi
dot -Tpdf "$dot_output_path_ig" -o "$pdf_output_path_ig"
exit_code=$?  # Capture the program's exit code
if [ $exit_code -ne 0 ]; then
    echo -e "Test ${RED}Failed${RESET}: Dot Compiler exited with code $exit_code"
    exit
fi

rm -f "$dot_output_path_cfg"
rm -f "$dot_output_path_ig"

# Open the pdf file
open -a Skim "$pdf_output_path_cfg"
open -n -a Skim "$pdf_output_path_ig"
echo -e "Done"

