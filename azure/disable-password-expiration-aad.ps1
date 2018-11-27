Get-AzureADUser -Filter "userPrincipalName eq 'user@domain.onmicrosoft.com'" | Set-AzureADUser -PasswordPolicies DisablePasswordExpiration
