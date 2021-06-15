#! /usr/bin/env bash
# open elvis in browser

if [ -n "$1" ]; then
  prog="$*"
else
  prog="fzf"
fi

elvi="$(surfraw -elvi | cut -d- -f 1 | sed '/^$/d' | sort -n | $prog)"
elvi_cut="$(echo "$elvi" | xargs)"

if [ -n "$elvi_cut" ]; then
  parse="$(dmenu -noinput -p "$elvi" -fn "Iosevka" -h 25 -x 5 -y 5 -nb "#101010" -nf "#808080" -sb "#000000" -sf "#600000")"
fi

if [ -n "$parse" ]; then
  surfraw "$elvi_cut" "$parse"
fi
