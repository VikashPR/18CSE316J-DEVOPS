# Implementing and Executing Bash Scripting

### Program 1: Printing Hello World

```bash

#!/bin/bash
echo "Hello World"

```

### Program 2: Bash script to calculate the factorial of a number

```bash

#!/bin/bash
echo "Enter a number"
read num
fact=1
while [ $num -gt 1 ]
do
fact=$((fact * num))
num=$((num - 1))
done
echo $fact

```

### Program 3: Bash script to check if a string is a palindrome

```bash

#!/bin/bash
echo "Enter a string"
read str
len=${#str}
i=0
j=$((len - 1))
while [ $i -lt $j ]
do
if [ ${str:$i:1} != ${str:$j:1} ]
then
echo "Not a palindrome"
exit
fi
i=$((i + 1))
j=$((j - 1))
done
echo "Palindrome"

```

