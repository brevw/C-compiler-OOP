#!/bin/zsh

# PATHS
CURR_DIR=$(pwd)
CFILES_DIR="$CURR_DIR/src/test/C-files"
OUTPUT_DIR="$CURR_DIR/src/test/output"
EXPECTED_DIR="$CURR_DIR/src/test/expected"
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


# Functions
print_test_name(){
    local string="$1"
    local n=$(( ${#string} + 2 ))
    printf " "
    printf "%0.s-" $(seq 1 $n)
    echo
    echo "| $string |"
    printf " "
    printf "%0.s-" $(seq 1 $n)
    echo
}
run_test_lexer() {
    # Local names
    local filename="$1"
    local expected_exit_code="$2"
    local c_file_path="$CFILES_DIR/$filename.c"
    local expected_path="$EXPECTED_DIR/$filename.txt"
    local output_path="$OUTPUT_DIR/$filename.txt"

    # Print test name
    echo "$ARROW $filename"

    # Execute the program and redirect output
    java -cp bin Main1 -lexer "$c_file_path" > "$output_path"
    local exit_code=$?  # Capture the program's exit code

    #if right exit code then compare the output
    local comparison="Uninitialized"
    if [[ $exit_code -eq $expected_exit_code && $exit_code -eq 0 ]]; then
        diff "$output_path" "$expected_path" > /dev/null
        if [ $? -eq 0 ]; then
            comparison="Match"
        else
            comparison="Mismatch"
        fi
    fi

    # Check if program exit code is non-zero
    if [ $exit_code -ne $expected_exit_code ]; then
        echo -e "Test ${RED}Failed${RESET}: Program exited with code $exit_code (expected $expected_exit_code)"
    elif [[ $exit_code -ne $PASS ]]; then
        echo -e "Test ${GREEN}Passed${RESET}"
    elif [[ "$comparison" == "Mismatch" ]]; then
        echo -e "Test ${RED}Failed${RESET}: Program exited with correct exit code, but Output does not match expected"
    else
        echo -e "Test ${GREEN}Passed${RESET}"
    fi
}

# Compile Code using ant apache
echo -e "${BLUE}$DASHED_LINES Compiling Code $DASHED_LINES${RESET}"
ant build
compiler_exit_code=$?
if [ $compiler_exit_code -ne 0 ]; then
    exit
fi

# Run test suite
echo -e "${BLUE}$DASHED_LINES Running Tests $DASHED_LINES${RESET}"
# clean output dir
rm -rf "$OUTPUT_DIR"/*

# lexer tests
print_test_name "lexer tests"
run_test_lexer nested_comments "$PASS"
run_test_lexer nested_comments1 "$PASS"
run_test_lexer empty "$PASS"
run_test_lexer escaped_char "$PASS"
run_test_lexer multiple_characters_in_single_quotes "$LEXER_FAIL"
run_test_lexer single_comment "$PASS"
run_test_lexer int "$PASS"
run_test_lexer no_main "$PASS"

# parser tests
print_test_name "parser tests"




