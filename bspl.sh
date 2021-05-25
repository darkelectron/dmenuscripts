#! /usr/bin/env bash
# change bsp-layout

if [ -n "$1" ]; then
  prog="$@"
else
  prog="fzf"
fi

parse="$(bsp-layout layouts | sort -n | $prog)"

if [ -n "$parse" ]; then
  bsp-layout set $parse
fi
