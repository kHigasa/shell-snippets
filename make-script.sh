#!/bin/sh
# ./make-script.sh ping-pong.sh Linux

dst="$2"

cd "${dst:=Linux}" && touch "$1" && chmod +x "$1" && nvim "$1"

