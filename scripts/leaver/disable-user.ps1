Disable-ADAccount -Identity "User1"

Get-ADUser "user1" -Properties MemberOf |
  Select-Object -ExpandProperty MemberOf |
  Remove-ADGroupMember -Members "user1" -Confirm:$false

Move-ADObject `
  -Identity (Get-ADUser "user1").DistinguishedName `
  -TargetPath "OU=Disabled Users,OU=Haftech_Users,DC=hafsatsoc,DC=lab"
