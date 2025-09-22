#!/bin/bash
echo "Enter a number: "
read number

# Check if the number is even or odd
if [ $((number % 2)) -eq 0 ]; then
    echo "$number is an even number."
else
    echo "$number is an odd number."
fi
save this script in a file (e.g., check_even_odd.sh), give it execute permissions using chmod +x check_even_odd.sh, and run it using ./check_even_odd.sh.

         