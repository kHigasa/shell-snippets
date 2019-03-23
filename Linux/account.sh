#!/bin/sh

grep -v "^#" "/etc/passwd" | cut -f 1 -d ":"
#grep -v "^#" "/etc/passwd" | awk -F: '{ print $1 }' 
