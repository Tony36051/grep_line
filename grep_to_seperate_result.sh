#!/bin/bash

while IFS='' read -r line || [[ -n "$line" ]]; do	
  line_no_whitespace="$(echo -e "${line}" | tr -d '[:space:]')"
  grep --include=$4 -rin $3 -e ${line_no_whitespace} >> "$2/${line_no_whitespace}.txt" 
done < "$1"

