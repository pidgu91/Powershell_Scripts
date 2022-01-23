#runasadministrator
$passwords = Import-Csv -Path C:\Temp\pass.csv
$computers = Import-Csv -Path C:\Temp\computers.csv

foreach ($computer in $computers){
    Invoke-Command -ComputerName $computer -ScriptBlock {Set-ItemProperty -Path "HKLM:\software\microsoft\windows nt\currentversion\winlogon" -Name "DefaultPassword" -Value $passwords}
}







