#runasadministrator
$passwords = Import-Csv -Path C:\Users\Zach\Documents\pass.csv
$computers = Import-Csv -Path C:\Users\zach\Documents\computers.csv

foreach ($computer in $computers){
    Invoke-Command -ComputerName $computer -ScriptBlock {Set-ItemProperty -Path "HKLM:\software\microsoft\windows nt\currentversion\winlogon" -Name "DefaultPassword" -Value $passwords}
}







