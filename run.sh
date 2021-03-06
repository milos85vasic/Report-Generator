#!/bin/sh

config_file="configuration.txt"
report_script="generate_report.sh"
finalization_script="finalize.sh"
initialization_script="initialize.sh"

if test -e "$config_file"; then

  if test -e "$report_script"; then

    if test -e "$initialization_script"; then

      sh "$initialization_script"
    else

      echo "WARNING: No '$initialization_script' script provided"
    fi

    while read -r directory; do

      if echo "$directory" | grep "#" >/dev/null 2>&1; then

        echo "Skipping: $directory"
      else

        echo "Generating report for: $directory"
        sh "$report_script" "$directory" >/dev/null 2>&1
      fi
    done <configuration.txt

    if test -e "$finalization_script"; then

      sh "$finalization_script"
    else

      echo "WARNING: No '$finalization_script' script provided"
    fi
  else

    echo "ERROR: Could not find '$report_script'"
    exit 1
  fi
else

  echo "ERROR: Could not find '$config_file'"
  exit 1
fi
