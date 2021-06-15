#! /usr/bin/env bash
# based on BugsWriter's script
# kill a process

if [ -n "$1" ]; then
  prog="$*"
else
  prog="fzf"
fi

parse="$(ps -u "$USER" -o pid,%mem,%cpu,comm | sort -b -k2 -r | sed -n '1!p' | $prog | awk '{print $1}')"

if [ -n "$parse" ]; then
  kill -15 "$parse"
fi
