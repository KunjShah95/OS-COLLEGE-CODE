#!/bin/bash

# Take input for student details
echo "Enter Student Name: " # Prompt user to enter student name
# shellcheck disable=SC2162
read name # Read and store the student name in variable 'name'
echo "Enter Roll Number: " # Prompt user to enter roll number
# shellcheck disable=SC2162
read roll # Read and store the roll number in variable 'roll'

# Input marks for three subjects
echo "Enter marks for Subject 1: " # Prompt user to enter marks for subject 1
# shellcheck disable=SC2162
read s1 # Read and store marks for subject 1 in variable 's1'
echo "Enter marks for Subject 2: " # Prompt user to enter marks for subject 2
# shellcheck disable=SC2162
read s2 # Read and store marks for subject 2 in variable 's2'
echo "Enter marks for Subject 3: " # Prompt user to enter marks for subject 3
# shellcheck disable=SC2162
read s3 # Read and store marks for subject 3 in variable 's3'

# Calculate total marks
total=$((s1 + s2 + s3)) # Sum up marks of all three subjects and store in 'total'

# Calculate percentage
percentage=$((total / 3)) # Calculate average percentage and store in 'percentage'

# Determine class
if [ $percentage -ge 75 ]; then # If percentage is greater than or equal to 75

class="Distinction" # Assign "Distinction" to variable 'class'
elif [ $percentage -ge 60 ]; then # Else if percentage is greater than or equal to 60
class="First Class" # Assign "First Class" to variable 'class'
elif [ $percentage -ge 50 ]; then # Else if percentage is greater than or equal to 50
class="Second Class" # Assign "Second Class" to variable 'class'
elif [ $percentage -ge 40 ]; then # Else if percentage is greater than or equal to 40
class="Pass" # Assign "Pass" to variable 'class'
else # If percentage is less than 40
class="Fail" # Assign "Fail" to variable 'class'
fi # End of if-elif-else block

# Display result
echo "---------------------------" # Print a line of dashes
echo " MARK SHEET " # Print the title "MARK SHEET"
echo "---------------------------" # Print another line of dashes
echo "Name: $name" # Print the student's name
echo "Roll Number: $roll" # Print the student's roll number
echo "Total Marks: $total" # Print the total marks
echo "Percentage: $percentage%" # Print the percentage
echo "Class: $class" # Print the class achieved
echo "---------------------------" # Print a final line of dashes