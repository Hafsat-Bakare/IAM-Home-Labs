Remove-ADGroupMember `
  -Identity "groupname" `
  -Members "user1" `
  -Confirm:$false

Add-ADGroupMember `
  -Identity "newgroupname" `
  -Members "user1"

Set-ADUser `
  -Identity "user1" `
  -Department "new department" `
  -Title "new title"

Move-ADObject -Identity "Distinguished name of user1" -TargetPath "new OU path for user1"
