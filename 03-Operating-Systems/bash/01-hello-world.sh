#!/bin/bash

# let's talk to the world
echo "hello world"

echo "*************** list example ***************"
# list example
strings=(
    "string1"
    "two"
    "string with spaces"
    "hello"
    world
)

for i in "${strings[@]}"; do
    echo "$i"
done

sorted_list=$(echo $strings | xargs -n1 | sort | xargs)
echo "*************** sorted list ***************"

IFS=$'\n' sorted=($(sort -n <<<"${strings[*]}"))

for i in "${sorted[@]}"; do
    echo "$i"
done

# Task
# sort descending
# Hint https://www.baeldung.com/linux/sort-bash-arrays

echo "*************** piping example ***************"

# get count of all processes running with my user
user=`whoami`
ps -ef | grep $user | wc -l

echo "*************** selecting column example ***************"
ps -f  | awk '{print $1" "$2}'

echo "*************** grep example ***************"
# filter strings starting with s from first list
for i in "${strings[@]}"; do
    echo "$i" | grep "^s"
done

# Task
# get path of executable, hint paths are starting with /
# ps -ef
