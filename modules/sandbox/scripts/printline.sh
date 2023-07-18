#!/bin/bash
set -ueo pipefail

## Copy placeholder variables
input_file=$1
output_file=$2
line_nr=$3

## Initial logging 
echo "Starting script $0"           # Print name of script
date                                # Print date & time
echo "Input file:   $input_file"
echo "Output file:  $output_file"
echo "Line number:  $line_nr"
echo                                # Print empty line to separate initial & final logging

## Print 1 specific line from the input file and redirect to an output file
head -n "$line_nr" "$input_file" | tail -n 1 > $output_file

## Final logging
echo "Listing the output file:"
ls -lh "$output_file"
echo "Done with script $0"
date
