#Script to print the content of a column in input csv file

param( 
[string]$CsvFile = $(throw "-CsvFile is required."),
[string]$OutputFile="messages.log",
[string]$ColumnHeader = "MESSAGE" )

$MessagesCsv = Import-Csv -Path $CsvFile -Delimiter ","

#loop to get values and store to output file
foreach ($row in $MessagesCsv) 
{
    Add-Content $OutputFile $row.$ColumnHeader
}
Write-Host ("Messages written to "+ $OutputFile)
