Get-ADUser -filter * -Properties "LastLogon" | select name, @{n='LastLogon';e={[DateTime]::FromFileTime($_.LastLogon)}} | sort LastLogon | Out-File -FilePath $pwd\LastLogon.txt
