# Disable S4B accounts of dismissed users

# FYI: Disabling user account in Active Directory doesn't disable S4B account!

# File with dismissed users logins
$DismissedUsers = "C:\temp\list.txt"
# Domain name
$domain = 'bgelov.ru'

# For statistics
$count1 = (Get-CsUser).count
                           
foreach ($username in $(gc $DismissedUsers))
{
    # Revoke certificates
    Revoke-CsClientCertificate -Identity $username
    # Disable S4B account
    Disable-CsUser sip:$username@$domain
}

# For statistics
$count2 = (Get-CsUser).count

# Statistics
$count1
$count2
