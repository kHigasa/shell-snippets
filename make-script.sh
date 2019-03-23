#!/bin/sh
# ./make-script.sh Linux ping-pong.sh

cd "$1" && touch "$2" && chmod +x "$2" && nvim "$2"
