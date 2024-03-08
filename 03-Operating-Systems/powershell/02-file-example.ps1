# simple file list
$files = Get-ChildItem
$files

# filtered file list
$files = Get-ChildItem -Path "." -Filter "*.ps1"
$files

# read file content
Get-Content ./02-file-example.ps1

# TASK
# Find all csv files in a directory structure 
# move them to a newly created folder "processed"
# upon moving rename by adding folder name to filename, example: 1970-01-01-original.csv
