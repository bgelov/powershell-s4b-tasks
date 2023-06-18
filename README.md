# powershell-s4b-tasks
Powershell scripts for Skype for Business (s4b) automating tasks

## S4B remote shell connect
```
$session = New-PSSession -ConnectionUri "https://S4B-SERVER.bgelov.ru/OcsPowershell" -Credential (Get-Credential) 
Import-PSSession -Session $session 
```

## Show Lync/S4B logging
```
Show-CsClsLogging
```

## Stop Lync/S4B logging
```
Stop-csclslogging -scenario "AlwaysOn"
```
