#!/bin/bash

# Student Mark Sheet Generator

# Function to validate input
validate_input() {
    local input=$1
    if [[ $input =~ ^[0-9]+$ ]] && [ "$input" -ge 0 ] && [ "$input" -le 100 ]; then
        return 0
    else
        return 1
    fi
}

# Input student details
# shellcheck disable=SC2162
read -p "Enter Student Name: " name
read -p "Enter Roll Number: " roll

s1=0
s2=0
s3=0

# Input validation for marks (0-100)
for subject in 1 2 3; do
    while true; do
        read -p "Enter marks for Subject $subject (0-100): " marks
        if validate_input "$marks"; then
            declare "s$subject=$marks"
            break
        else
            echo "Invalid input! Please enter a number between 0-100."
        fi
    done
done

# Calculate results
total=$((s1 + s2 + s3))
percentage=$(awk "BEGIN {printf \"%.2f\", $total / 3}")

# Determine class
if (( $(echo "$percentage >= 75" | bc -l) )); then
    class="Distinction"
elif (( $(echo "$percentage >= 60" | bc -l) )); then
    class="First Class"
elif (( $(echo "$percentage >= 50" | bc -l) )); then
    class="Second Class"
elif (( $(echo "$percentage >= 40" | bc -l) )); then
    class="Pass"
else
    class="Fail"
fi

# Display output
cat << EOF

---------------------------
        MARK SHEET
---------------------------
Name: $name
Roll Number: $roll
Subject 1: $s1
Subject 2: $s2
Subject 3: $s3
Total Marks: $total
Percentage: ${percentage}%
Class: $class
---------------------------
EOF