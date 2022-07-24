#!/usr/bin/env sh

SELF="$0"

echoerr() { echo "$SELF:" "$@" 1>&2; }

if [ "$#" -eq 0 ]; then
    echoerr "<file_to_merge_and_sort> <file2...> <...>"
    exit 1
fi

for fn in "$@"; do 
    if [ ! -f "$fn" ]; then
        echoerr "Not a file '$fn'"
        exit 1
    fi
done


cat "$@" | grep -v \# | sort -u
