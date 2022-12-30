#!/usr/bin/env bash

while true; do
    random_number=$((1 + $RANDOM % 260))
    echo $random_number 260 | ./viz
    sleep 1
done