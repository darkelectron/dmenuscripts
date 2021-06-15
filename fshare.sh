#! /usr/bin/env bash
# based on BugsWriter's script
# share files through 0x0.st

if [ -n "$1" ]; then
  prog="$@"
else
  prog="fzf"
fi

file="$(fd . /home/darkelectron -t f | $prog)"

if [ -n "$file" ]; then
  curl -F "file=@$file" 0x0.st | xclip -selection c
  notify-send "Upload Complete"
fi
