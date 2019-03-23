#!/bin/sh

res=1

if [ -z "$1" ]; then
    echo "hostを指定してね" >&2
    exit 1
fi

for i in $(seq 3)
do
    ping -c 1 "$1" > /dev/null

    if [ $? -eq 0 ]; then
        res=0
	break
    else
        sleep 3
    fi
done

date_str=$(date '+%Y/%m/%d %H:%M:%S')
if [ $res -eq 0 ]; then
    echo "[$date_str] Ping OK: $1"
else
    echo "[$date_str] Ping NG: $1"
fi
