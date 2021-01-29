#!/bin/sh

config_file="configuration.txt"
report_script="generate_report.sh"
finalization_script="finalize.sh"

if test -e "$config_file"; then

  directories=$(cat "$config_file")
  for directory in $directories; do

    if test -e "$report_script"; then

      echo "Generating report for: $directory"
      sh "$report_script" "$directory" >/dev/null 2>&1
    else

      echo "ERROR: Could not find '$report_script'"
      exit 1
    fi
  done
  if test -e "$finalization_script"; then

    sh "$finalization_script"
  else

    echo "WARNING: No 'finalize.sh' script provided"
  fi
else

  echo "ERROR: Could not find '$config_file'"
  exit 1
fi
