#! /usr/bin/env bash
# kill tmux session

if [ -n "$1" ]; then
  prog="$@"
else
  prog="fzf"
fi

parse="$(tmux ls | cut -d: -f 1 | $prog)"

if [ -n "$parse" ]; then
  tmux kill-session -t "$parse"
fi
