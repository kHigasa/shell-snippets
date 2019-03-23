#!/bin/sh

swap_limit=10

swap_count=$(vmstat 1 6 | awk 'NR >= 4 {sum += $7 + $8} END{print sum}')

if [ "$swap_count" -ge "$swap_limit" ]; then
    date_str=$(date '+%Y/%m/%d %H:%M:%S')

    echo "[$date_str] Swap Alert: $swap_count (si+so)"
fi

