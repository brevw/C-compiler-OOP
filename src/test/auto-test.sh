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
SEM_FAIL=240;
PASS=0;

# Color CONST
RED='\e[31m'
GREEN='\e[32m' YELLOW='\e[33m'
BLUE='\e[34m'
RESET='\e[0m'

# Other CONST
DEFAULT_TIMEOUT=5
MARS_SIM_PATH="$CURR_DIR/description/part3/Mars4_5.jar"
EMPTY_STDIN=""
MARS_FORMAT_STDIN_TRUE=1
MARS_FORMAT_STDIN_FALSE=0


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
    local timelimit="$3"
    local c_file_path="$CFILES_DIR/$filename.c"
    local expected_path="$EXPECTED_DIR/$filename.txt"
    local output_path="$OUTPUT_DIR/$filename.txt"

    # Print test name
    echo "$ARROW $filename"

    # Execute the program and redirect output
    gtimeout "$timelimit" java -cp bin Main1 -lexer "$c_file_path" > "$output_path"
    local exit_code=$?  # Capture the program's exit code

    # Check if program timeouts
    if [ $exit_code -eq 124 ]; then
        echo -e "Test ${RED}Failed${RESET}: Program timed out"
        return
    fi

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

run_test_parser() {
    # Local names
    local filename="$1"
    local expected_exit_code="$2"
    local timelimit="$3"
    local c_file_path="$CFILES_DIR/$filename.c"
    local expected_path="$EXPECTED_DIR/$filename.txt"
    local output_path="$OUTPUT_DIR/$filename.txt"

    # Print test name
    echo "$ARROW $filename"

    # Execute the program
    gtimeout "$timelimit" java -cp bin Main1 -parser "$c_file_path" > /dev/null
    local exit_code=$?  # Capture the program's exit code

    # Check if program timeouts
    if [ $exit_code -eq 124 ]; then
        echo -e "Test ${RED}Failed${RESET}: Program timed out"
        return
    fi

    # Check if program exit code is non-zero
    if [ $exit_code -ne $expected_exit_code ]; then
        echo -e "Test ${RED}Failed${RESET}: Program exited with code $exit_code (expected $expected_exit_code)"
    else
        echo -e "Test ${GREEN}Passed${RESET}"
    fi
}

run_test_ast() {
    # Local names
    local filename="$1"
    local timelimit="$2"
    local c_file_path="$CFILES_DIR/$filename.c"
    local expected_path="$EXPECTED_DIR/$filename.c-ast-dump"
    local output_path="$OUTPUT_DIR/$filename.c-ast-dump"

    # Print test name
    echo "$ARROW $filename"

    # Execute the program
    gtimeout "$timelimit" java -cp bin Main2 -ast "$c_file_path" "$output_path" > /dev/null
    local exit_code=$?  # Capture the program's exit code

    # Check if program timeouts
    if [ $exit_code -eq 124 ]; then
        echo -e "Test ${RED}Failed${RESET}: Program timed out"
        return
    fi

    # Check if program exit code is non-zero
    if [ $exit_code -ne 0 ]; then
        echo -e "Test ${RED}Failed${RESET}: Program exited with code $exit_code (expected $expected_exit_code)"
    else
        tr -d '[:space:]' < "$output_path" > temp.txt && mv temp.txt "$output_path"
        diff "$output_path" "$expected_path"
        exit_code=$?
        if [ $exit_code -ne 0 ]; then
            echo -e "Test ${RED}Failed${RESET}: Output does not match expected"
        else
            echo -e "Test ${GREEN}Passed${RESET}"
        fi
    fi
}

run_test_sem() {
    # Local names
    local filename="$1"
    local expected_exit_code="$2"
    local timelimit="$3"
    local c_file_path="$CFILES_DIR/$filename.c"

    # Print test name
    echo "$ARROW $filename"

    # Execute the program
    gtimeout "$timelimit" java -cp bin Main2 -sem "$c_file_path" > /dev/null
    local exit_code=$?  # Capture the program's exit code

    # Check if program timeouts
    if [ $exit_code -eq 124 ]; then
        echo -e "Test ${RED}Failed${RESET}: Program timed out"
        return
    fi

    # Check if program exit code is non-zero
    if [ $exit_code -ne $expected_exit_code ]; then
        echo -e "Test ${RED}Failed${RESET}: Program exited with code $exit_code (expected $expected_exit_code)"
    else
        echo -e "Test ${GREEN}Passed${RESET}"
    fi
}

run_test_codegen() {
    local filename="$1"
    local expected_exit_code="$2"
    local timelimit="$3"
    local stdin="$4"
    local mars_format_stdin="$5"
    local c_file_path="$CFILES_DIR/$filename.c"
    local executable_file_path="$OUTPUT_DIR/$filename"
    local asm_file_path="$OUTPUT_DIR/$filename.asm"
    local gcc_exec_output="$OUTPUT_DIR/$filename.txt"
    local mars_output="$OUTPUT_DIR/$filename-mars.txt"

    # Convert stdin to a format that can be passed to Mars Mips Simulator
    local stdin_mars=""
    if [ $mars_format_stdin -eq 0 ]; then
        stdin_mars="${stdin}\n"
    else
        for (( i=0; i<${#stdin}; i++ )); do
            stdin_mars+="${stdin:$i:1}\n"
        done
    fi

    # Print test name
    echo "$ARROW $filename"

    # compile the C file with gcc
    gcc -o "$executable_file_path" "$c_file_path" > /dev/null 2>&1
    local exit_code=$?  # Capture the program's exit code
    if [ $exit_code -ne 0 ]; then
        echo -e "Test ${RED}Failed${RESET}: gcc exited with code $exit_code"
        return
    fi
    echo "$stdin" | "$executable_file_path" > "$gcc_exec_output"

    # Execute the program
    gtimeout "$timelimit" java -cp bin Main3 -gen "$c_file_path" "$asm_file_path" > /dev/null
    local exit_code=$?  # Capture the program's exit code
    # Check if program timeouts
    if [ $exit_code -eq 124 ]; then
        echo -e "Test ${RED}Failed${RESET}: Program timed out"
        return
    fi
    # Check if program exit code is non-zero
    if [ $exit_code -ne $expected_exit_code ]; then
        echo -e "Test ${RED}Failed${RESET}: Program exited with code $exit_code (expected $expected_exit_code)"
        return
    fi


    # Run the generated assembly code with Mars Mips Simulator and redirect stderr to trash
    echo -e "$stdin_mars" | gtimeout "$timelimit" java -jar "$MARS_SIM_PATH" sm nc me "$asm_file_path" > "$mars_output" 2> /dev/null
    local exit_code=$?  # Capture the program's exit code
    # Check if program timeouts
    if [ $exit_code -eq 124 ]; then
        echo -e "Test ${RED}Failed${RESET}: Mars Mips Simulator timed out"
        return
    fi

    # Compare the output of the executable and the mars simulator
    diff "$gcc_exec_output" "$mars_output"
    exit_code=$?
    if [ $exit_code -ne 0 ]; then
        echo -e "Test ${RED}Failed${RESET}: Output does not match expected file"
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
if [ -n "$(ls -A "$OUTPUT_DIR" 2>/dev/null)" ]; then
    rm -rf "$OUTPUT_DIR"/*
fi

# lexer tests
print_test_name "lexer tests"
run_test_lexer nested_comments "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer nested_comments1 "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer empty "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer escaped_char "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer multiple_characters_in_single_quotes "$LEXER_FAIL" "$DEFAULT_TIMEOUT"
run_test_lexer single_comment "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer int "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer no_main "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer lexer-generated1 "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer lexer-generated2 "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer lexer-generated3 "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer lexer-generated4 "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer lexer-generated5 "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer lexer-generated6 "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer lexer-generated7 "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer lexer-generated8 "$PASS" "$DEFAULT_TIMEOUT"
run_test_lexer lexer-generated9 "$PASS" "$DEFAULT_TIMEOUT"

# parser tests
print_test_name "parser tests"
run_test_parser empty "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser fibonacci "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser tictactoe "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser double_reference "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser reserved_keyword_as_identifier "$PARSER_FAIL" "$DEFAULT_TIMEOUT"
run_test_parser parser-generated1 "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser parser-generated2 "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser parser-generated3 "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser parser-generated4 "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser parser-generated5 "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser parser-generated6 "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser parser-generated7 "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser parser-generated8 "$PASS" "$DEFAULT_TIMEOUT"
run_test_parser parser-generated9 "$PASS" "$DEFAULT_TIMEOUT"

# AST tests
print_test_name "AST tests"
run_test_ast fibonacci "$DEFAULT_TIMEOUT"


# SEM tests
print_test_name "SEM tests"
# -> for name analysis
run_test_sem decl_glob_twice "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem shadowing "$PASS" "$DEFAULT_TIMEOUT"
run_test_sem decl_var_twice_same_scope "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem fun_decl_without_def "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem fun_decl_twice "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem fun_decl_then_def_with_wrong_types "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem recognize_build_in_functions "$PASS" "$DEFAULT_TIMEOUT"
run_test_sem undeclared_parameter "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem fun_def_then_decl "$PASS" "$DEFAULT_TIMEOUT"
run_test_sem global_variable_assignment "$PASS" "$DEFAULT_TIMEOUT"
# -> type analysis
run_test_sem use_of_undeclared_struct "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem struct_recursive_def_rejected "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem struct_recursive_def_accepted "$PASS" "$DEFAULT_TIMEOUT"
run_test_sem void_variable "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem wrong_return_type "$SEM_FAIL" "$DEFAULT_TIMEOUT"
run_test_sem array_of_type_void "$SEM_FAIL" "$DEFAULT_TIMEOUT"
# -> last pass analysis
run_test_sem struct_recursive_def_accepted "$PASS" "$DEFAULT_TIMEOUT"
run_test_sem break_outside_loop "$SEM_FAIL" "$DEFAULT_TIMEOUT"

# CodeGen tests
print_test_name "CodeGen tests"
# -> build-in functions
run_test_codegen print_i_main "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen print_c_main "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen print_s_main "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen read_c_main "$PASS" "$DEFAULT_TIMEOUT" "a" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen read_i_main "$PASS" "$DEFAULT_TIMEOUT" "1" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen mcmalloc_main "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
# -> simple programs
run_test_codegen nested_whiles "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen arithmetics "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen fibonacci "$PASS" "$DEFAULT_TIMEOUT" "10" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen factorial "$PASS" "$DEFAULT_TIMEOUT" "5" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen early_exit_main "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen funcall_main "$PASS" "$DEFAULT_TIMEOUT" "4" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen global_decl_main "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen isPrime "$PASS" "$DEFAULT_TIMEOUT" "7" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen tictactoe "$PASS" "$DEFAULT_TIMEOUT" "a1b2a2b3a3n" "$MARS_FORMAT_STDIN_TRUE"
run_test_codegen pascals_triangle "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen shadowing_main "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
# -> struct, arrays
run_test_codegen struct_main "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen rectangle_area "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen funcall_struct "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen print_matrix "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen big_program "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
run_test_codegen sort_linked_list "$PASS" "$DEFAULT_TIMEOUT" "$EMPTY_STDIN" "$MARS_FORMAT_STDIN_FALSE"
