$Message = "Hello World!"

Write-Host $Message -NoNewline
Write-Host $Message

# Alias example
echo($Message)

# lists
$List = ("one", "two", "three")

# foreach keyword
foreach($s in $list) 
{
    Write-Host "Item: $($s)"
}

#foreach object
$List | foreach -Process {Write-Host $_}

# sorting, uniq
[int[]] $Array = 1, 5, 2, 117, 3, 3, 22
$Array | Sort-Object -Descending
$Array | Get-Unique