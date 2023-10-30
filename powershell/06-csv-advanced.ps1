$Data = Import-Csv ./06-csv-advanced/export.csv

#[Datetime]::ParseExact($string, 'MM/dd/yyyy', $null)
#$Data | Get-Member

$TypedData = $Data | Select-Object -Property @{ Name='Date'; Expression = { [Datetime]::ParseExact($_.Date, 'yyyy-MM-dd', $null) }},
                                    @{ Name='Temp'; Expression = { $_.Temp -as [double] }}
# check type of converted list
#$TypedData | Get-Member

#$TypedData | foreach -Process {Write-Host $_.Date.Month }

$MonthHashTable =  @{}
for ($month = 1; $month -le 12; $month++)
{
    $EntriesPerMonth = $TypedData | Where-Object { $_.Date.Month -eq $month }
    $MonthHashTable.add($month,$EntriesPerMonth)
}

$MonthHashTable

# Task store data per month in separate csv file to folder 06-csv-advanced\output