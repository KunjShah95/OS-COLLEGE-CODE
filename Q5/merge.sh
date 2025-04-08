#!/bin/bash

echo "Enter the first file name:"
read file1

echo "Enter the second file name:"
read file2

echo "Enter the name for the merged output file:"

read output

if [[ -f "$file1" && -f "$file2" ]]; then
    cat "$file1" "$file2" > "$output"
    echo "Files merged successfully into $output"
else
    echo "One or both input files do not exist."
fi