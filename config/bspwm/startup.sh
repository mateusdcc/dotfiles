#!/bin/env bash

filename="$HOME/.config/bspwm/startup.csv"
exec 4<"$filename"
while read -u4 line ; do
  command=$(echo $line | awk -F "," '{print $1}')
  process=$(echo $line | awk -F "," '{print $2}')

  pgrep -x "$process" > /dev/null || sh -c "$command" &
done

