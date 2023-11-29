#!/bin/sh

LOG_PATH="/opt/bongo/logs/fcdc2958fa/main.log"
MAX_SIZE=10240
check=$(du "$LOG_PATH" | cut -f1)

if [ "$check" -gt "$MAX_SIZE" ]; then
    echo "Cleaning logs"
    truncate -s 0 "$LOG_PATH"
else
    echo "Nothing to do"
fi
