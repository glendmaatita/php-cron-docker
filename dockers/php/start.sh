#!/bin/bash

printenv | sed 's/^\(.*\)\=\(.*\)$/export \1\="\2"/g' > /root/project_env.sh
touch /var/log/cron.log
cron &
tail -f /var/log/cron.log