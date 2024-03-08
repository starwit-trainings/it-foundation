#!/bin/bash

echo "*************** simple file listing ***************"
files=`ls ../`
echo $files

echo "*************** file listing as array ***************"
files=($(find ../ -type f ))
for item in ${files[*]}
do
  printf "   %s\n" $item
done

echo "*************** output file content ***************"

cat 02-file-example.sh

echo "*************** read file content ***************"
file=`cat 02-file-example.sh`
echo $file

# TASK
# Find all csv files in a directory structure 
# move them to a newly created folder "processed"
# upon moving rename by adding folder name to filename, example: 1970-01-01-original.csv