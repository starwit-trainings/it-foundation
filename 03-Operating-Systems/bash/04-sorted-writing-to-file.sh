#!/bin/bash

echo "*************** write to file ***************"
echo "sample" > file.txt

echo "*************** append to file ***************"
echo "sample" >> file.txt

# sample for an alias
alias lll="ls -al -A"

# Task
# build an alias that empties files

echo "*************** count processes by name ***************"
ps -ef  | awk '{print $8}' | sort | uniq -c

# Task 
# write processes with count > 1 to a csv file
# hints 
# sort with numbers, grep reverse
# trim whitespaces awk '{$1=$1;print}'
# replace characters/strings sed
