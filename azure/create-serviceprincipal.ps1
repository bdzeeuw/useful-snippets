$uri = 'http://appname/letsencrypt'
$password = "<password>" | ConvertTo-SecureString -AsPlainText -Force

$app = New-AzADApplication -DisplayName LetsEncrypt -HomePage $uri -IdentifierUris $uri -Password $password

New-AzADServicePrincipal -ApplicationId $app.ApplicationId

New-AzRoleAssignment -RoleDefinitionName Contributor -ServicePrincipalName $app.ApplicationId

$app.ApplicationId
