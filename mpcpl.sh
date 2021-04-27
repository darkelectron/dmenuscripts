#! /usr/bin/env bash

if [ -n "$1" ]; then
  prog="$@"
else
  prog="fzf"
fi

parse="$(mpc ls | $prog | xargs)"

echo $parse

if [ -n "$parse" ]; then
  mpc clear
  mpc add "$parse"
  mpc play
fi
