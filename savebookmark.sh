#! /usr/bin/env bash
# save bookmark in clipboard to surfraw

if [ -n "$1" ]; then
  prog="$@"
else
  prog="fzf"
fi

parse="$(dmenu -noinput -p $(xclip -o) -fn "Iosevka" -h 25 -x 5 -y 5 -nb "#101010" -nf "#808080" -sb "#000000" -sf "#600000")"

if [ -n "$parse" ]; then
  echo "$parse" $(xclip -o) >> ~/.config/surfraw/bookmarks
fi
