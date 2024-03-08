$MyObject = New-Object PSObject
$MyObject | Add-Member -MemberType NoteProperty -Name "ComputerName" -Value $Env:ComputerName
$MyObject | Add-Member -MemberType NoteProperty -Name "Username" -Value $Env:UserName
$MyObject | Add-Member -MemberType NoteProperty -Name "Processes" -Value (Get-Process *).Count

Write-Host $MyObject

$MyObject | Get-Member

# field doesn't exist
$MyObject.AnotherValue = "Test"

# TASK 
# create new object Address with fields Street, City, ZipCode
# create new object Customer with with fields Name, Givenname, Address