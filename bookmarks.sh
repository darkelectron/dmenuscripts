#! /usr/bin/env bash
# from gotbletu
# open surfraw bookmarks

#fzf-surfraw() { surfraw "$(cat ~/.config/surfraw/bookmarks | sed '/^$/d' | sort -n | fzf -e)" ;}
# sed thing deletes empty lines

if [ -n "$1" ]; then
  prog="$*"
else
  prog="fzf"
fi

parse="$(< ~/.config/surfraw/bookmarks sed '/^$/d' | sort -n | $prog)"

if [ -n "$parse" ]; then
  surfraw "$parse"
fi
