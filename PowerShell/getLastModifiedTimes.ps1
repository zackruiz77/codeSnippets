Get-ADReplicationAttributeMetadata -object (Get-ADUser -identity [account name]) -server [DC name] `
 | Select-Object attributename,attributevalue,LastOriginatingChangeTime `
 | Format-Table #Enter your target user and domain controller