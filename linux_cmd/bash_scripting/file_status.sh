#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Plese pass one file as argument "
    exit 1
fi # Ends the if block

FILE=$1

# IMPORTANT: Spaces are important after "[" and before "]"

if [ -e "$FILE" ]; then
    if [ -f "$FILE" ]; then
        echo "$FILE is regular file."
    fi

    if [ -d "$FILE" ]; then
        echo "$FILE is directory"
    fi

    if [ -r "$FILE" ]; then
        echo "$FILE is readable"
    fi

    if [ -w "$FILE" ]; then
        echo "$FILE is writable"
    fi
    if [ -x "$FILE" ]; then
        echo "$FILE is executable"
    fi

    if [ -L "$FILE" ];then
        echo "$FILE is symbolic link"
    fi
    if [ -s "$FILE" ]; then
        echo "$FILE size is greater than 0"
    fi
else
    echo "$FILE does not exist"
    exit 2
fi

exit 0
