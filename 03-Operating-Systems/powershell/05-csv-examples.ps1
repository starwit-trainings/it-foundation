
$CSV_path = "./05-csv-examples/annual-enterprise-survey-2021-financial-year-provisional-size-bands-csv.csv"

# import csv data
$Data = Import-Csv -Delimiter "," -Path $CSV_path
# which data types where detected
$Data | Get-Member

# filter data
#$Data | where {$_.industry_code_ANZSIC -eq "A"}

# filter and format
#$Data | where {($_.value -as [int]) -gt 30000} | Select-Object industry_name_ANZSIC,value | Format-Table

# extract unique industries
$Names = $Data | Sort-Object | Select-Object -ExpandProperty industry_name_ANZSIC
$Names | Sort-Object | Get-Unique

# TASK compute value per industry

# TASK compute value per industry & year