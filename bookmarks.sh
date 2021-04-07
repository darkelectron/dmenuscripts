#! /bin/bash

#fzf-surfraw() { surfraw "$(cat ~/.config/surfraw/bookmarks | sed '/^$/d' | sort -n | fzf -e)" ;}

if [ -n "$1" ]; then
  prog="$@"
else
  prog="fzf -e"
fi

echo "$1"
parse="$(cat ~/.config/surfraw/bookmarks | sed '/^$/d' | sort -n | $prog)"

if [ -n "$parse" ]; then
  surfraw "$parse"
fi
