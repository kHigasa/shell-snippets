#!/bin/sh

uptime_log="uptime.log"

: > $uptime_log

for i in 1 2 3 4 5 6
do
    uptime >> $uptime_log
    sleep 10
done

