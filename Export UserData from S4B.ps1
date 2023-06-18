# Export UserData from S4B

$email = 'bgelov@bgelov.ru'
$server = "S4B-SERVER.bgelov.ru"
$export_path = "C:\temp\userdata_s4b.zip"
Export-CsUserData -PoolFqdn $server -UserFilter $email -FileName $export_path
