#!/usr/bin/env bash

while true; do
    random_number=$((1 + $RANDOM % 260))
    echo $random_number 260 | ./mprogress
    sleep 1
done
