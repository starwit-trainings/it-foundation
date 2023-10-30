$procs = Get-Process

# output as table
#$procs | Format-Table

# select processes by name
#$procs | Where-Object { $_.ProcessName -eq "bash" } | measure

# count objects with name via pipe
#$procs | Where-Object { $_.ProcessName -eq "bash" } | measure

# count objects with name via object attribute
#$myProcs = $procs | Where-Object { $_.ProcessName -eq "bash" }
#$myProcs.Count

# TASK
# List all processes on your system and count those that have the same name
# Hint: how to get a unique list of processes: 
# Get-Process | Sort-Object | Select-Object processname | Get-Unique -AsString
# example output
#Count Name
#----- ----
#    1 (sd-pam)
#    1 accounts-daemon
#    1 acpi_thermal_pm
#    1 agent

$uniqueNames = Get-Process | Sort-Object | Select-Object processname | Get-Unique -AsString
$countResult =  @()
foreach($name in $uniqueNames) 
{
    $tmpProcs = $procs | Where-Object { $_.ProcessName -eq $name.ProcessName }
    $procResult = New-Object PSObject
    $procResult | Add-Member -MemberType NoteProperty -Name "Count" -Value $tmpProcs.Count
    $procResult | Add-Member -MemberType NoteProperty -Name "Name" -Value $name.ProcessName    
    $countResult += $procResult
}

$countResult | Format-Table

# TASK
# Export all processes with count > 1 to a CSV file

#$countResult | Export-Csv -Path "./test.csv"
