New-ADUser `
  -Name "User1" `
  -SamAccountName "User1" `
  -Path "OU=Operations,OU=Company Staff,OU=Haftech_Users,DC=hafsatsoc,DC=lab"`
  -AccountPassword (ConvertTo-SecureString "password!" -AsPlainText -Force) `
  -Enabled $true `
  -Department "Operations" `
  -Title "Operations Support" `


Add-ADGroupMember -Identity "Groupname" -Members "User1"
