Get-ADGroupMember -recursive -identity '[target group]' `
 | Get-ADUser `
 | Select-Object name,userprincipalname `
 | Export-CSV -notypeinformation C:\temp\user_emails.csv #Enter your target group and output location