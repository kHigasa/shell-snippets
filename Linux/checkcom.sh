#!/bin/bash

command="$1"

if [ -z "$command" ]; then
    echo "Please enter command you wanna look up." >&2
    exit 1
fi

for dir in ${PATH//:/ }
do
    if [ -f "${dir}/${command}" ]; then
        echo "${dir}/${command}"
    fi
done

