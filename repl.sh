#!/bin/bash
: ${1?" $(clear)REPL Ace version 0.1, Copyright (C) 2024 Henry Kroll III

Watches source code for changes to compile and run.

Usage:
    $(basename "$0") [runner [compiler]] [compiler options] [source] -- [script options]

Use 'runner' only if your compiler does not have a -run option.

Examples:
    # REPL test.c using gcc compiler whenever content of test.c changes.
    $(basename "$0") runner gcc -o test test.c

    # Use 'tcc -run' as runner. Link against glib-2.0. Pass foo bar to c script.
    $(basename "$0") tcc -run \$(pkg-config --cflags --libs glib-2.0) hello.c -- foo bar

    # REPL hello.ha with hare compiler.
    repl.sh runner hare build hello.ha

Warranty information:

REPL Ace comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it
under certain conditions; See included LICENSE for details.
"}

args=("$@")
left_args=()

lastarg=""
for arg in "${args[@]}"
do # break on -- or if lastarg was run
    [[ "$arg" == "--" ]] && break
    left_args+=("$arg"); [[ -n "$lastarg" ]] && break
    [[ "${arg//-}" == "run" ]] && lastarg="run"
done

last="${left_args[@]:(-1)}"
echo Watching "$last" for changes.
while true; do
    fswatch -1 "$last" > /dev/null
    clear
    "$@"
    sleep 1
done
