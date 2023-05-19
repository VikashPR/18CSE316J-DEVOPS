# Implementing and Executing Bash Scripting

### Program 1: Printing Hello World

```bash

#!/bin/bash
echo "Hello World"

```

### Program 2: Bash script to calculate the factorial of a number

```bash

#!/bin/bash

# Read the number from user input
read -p "Enter a number: " number

# Initialize the factorial variable to 1
factorial=1

# Calculate the factorial
for (( i=1; i<=$number; i++ ))
do
  factorial=$((factorial * i))
done

# Print the result
echo "The factorial of $number is $factorial"

```

### Program 3: Bash script to check if a string is a palindrome

```bash

#!/bin/bash

# Read the string from user input
read -p "Enter a string: " string

# Reverse the string
reverse=$(echo "$string" | rev)

# Compare the original string with the reversed string
if [ "$string" = "$reverse" ]; then
  echo "The string is a palindrome"
else
  echo "The string is not a palindrome"
fi

```

