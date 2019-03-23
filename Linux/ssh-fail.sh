#!/bin/sh

auth_log="/var/secure/log/auth.log"

pattern="^.*sshd\[.\].*Failed password for.* from \(.*\) port .*"

sed -n "s/$pattern/\1/p" "$auth_log" | sort | uniq -c | sort -nr
