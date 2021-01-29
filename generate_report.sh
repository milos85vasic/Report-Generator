#!/bin/sh

directory="$1"
if test -e "$directory"; then

  date=$(date)
  year=$(date +'%Y')
  size=$(du -sh "$directory")

  echo "$date: $size" >>"$year"_report.txt
else

  echo "ERROR: Directory does not exits"
  exit 1
fi
