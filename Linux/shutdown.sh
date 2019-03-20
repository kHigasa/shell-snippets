#!/bin/sh

user_count=$(who | wc -l)
if [ "$user_count" -ge 2 ]; then
    echo "[ERROR] who commamd output more than two lines: there are some users in work now." >&2
    exit 1
fi

#command_name="/usr/lib/chromium"
#ps ax -o command | grep -q "^command_name"
#if [ $? -eq 0 ]; then
#    echo "[ERROR] stop doing shutdown: process $command_name is working now" >&2
#    exit 2
#fi

shutdown -h now

