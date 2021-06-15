#! /usr/bin/env bash
# play another music folder

if [ -n "$1" ]; then
  prog="$*"
else
  prog="fzf"
fi

parse="$(mpc ls | $prog | xargs)"

if [ -n "$parse" ]; then
  mpc clear
  mpc add "$parse"
  mpc play
fi
