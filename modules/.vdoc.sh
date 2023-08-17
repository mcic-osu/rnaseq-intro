


















































































































































































































































































































































































































































































#!/bin/bash
set -ueo pipefail

first_name=$1
last_name=$2
  
echo "First name: $first_name"
echo "Last name: $last_name"

# (Note: this is a script. Don't enter this directly in your terminal.)























































































#!/bin/bash
set -ueo pipefail

input_file=$1

head -n 2 "$input_file"
echo "---"
tail -n 2 "$input_file"

# (Note: this is a script. Don't enter this directly in your terminal.)

























































































































































































































































#!/bin/bash
set -ueo pipefail

# Copy placeholder variables
input_file=$1
output_file=$2
line_nr=$3

# Initial logging 
echo "# Starting script printline.sh" # Print name of script
date                                 # Print date & time
echo "# Input file:   $input_file"
echo "# Output file:  $output_file"
echo "# Line number:  $line_nr"
echo                                 # Print empty line to separate initial & final logging

# Print 1 specific line from the input file and redirect to an output file
head -n "$line_nr" "$input_file" | tail -n 1 > $output_file

# Final logging
echo "# Listing the output file:"
ls -lh "$output_file"
echo "# Done with script printline.sh"
date

























