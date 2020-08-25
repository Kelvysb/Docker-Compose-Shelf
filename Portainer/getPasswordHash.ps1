$password = Read-Host('enter the password')
$hash = docker run --rm httpd:2.4-alpine htpasswd -nbB admin $password | Out-String
$hash = $hash.Split(':')[1]
$hash = $hash.Replace('$', '$$')
write-host $hash
Set-Clipboard $hash
write-host 'Password on clipboard'
Pause