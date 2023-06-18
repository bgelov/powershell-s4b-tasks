# Block lync/s4b <-> Microsoft Exchange EWS syncronization

# FYI: Script for Exchange Management Shell

# Check EWS Settings
Get-CASMailbox account1 | fl *ews*

# Users
$users = "account1", "account2"
# Domain name
$domain = 'bgelov.ru'

foreach ($user in $users) {

	$login = "$user@$domain"
	Set-CASMailbox -id $login -EWSBlockList:$null

  #You can add your user-agent names to EWSBlockList
	Set-CASMailbox -id $login -EWSApplicationAccessPolicy:EnforceBlockList -EWSBlockList:@{Add="*Microsoft+Lync*","LYNC/*","*Skype+for+Business*","*(Microsoft+Lync)","*(Skype+for+Business)"}
}
