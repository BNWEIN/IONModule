<#
.SYNOPSIS
Connects to the ION API using a refresh token.

.DESCRIPTION
The Connect-API function connects to the API by requesting a new access token using a refresh token. It also provides the option to update a KeyVault with the new refresh token.

.PARAMETER RefreshToken
The refresh token used to request a new access token. If not provided, the function will attempt to retrieve the refresh token from the script's global scope.

.PARAMETER AzureSubscriptionId
The Azure subscription ID used to update the KeyVault with the new refresh token. This parameter is optional.

.PARAMETER KeyVaultName
The name of the KeyVault used to store the refresh token. This parameter is optional.

.PARAMETER KeyVaultSecretName
The name of the secret in the KeyVault that stores the refresh token. This parameter is optional.

.EXAMPLE
Connect-API -RefreshToken "abc123" -AzureSubscriptionId "12345678-1234-1234-1234-1234567890ab" -KeyVaultName "MyKeyVault" -KeyVaultSecretName "RefreshTokenSecret"

Connects to the API using the provided refresh token and updates the specified KeyVault with the new refresh token.

#>

function Connect-API {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [string]$RefreshToken = $Script:RefreshToken,
        [Parameter(Mandatory = $false)]
        [string]$AzureSubscriptionId = $Script:AzureSubscriptionId,
        [Parameter(Mandatory = $false)]
        [string]$KeyVaultName = $Script:KeyVaultName,
        [Parameter(Mandatory = $false)]
        [string]$KeyVaultSecretName = $Script:KeyVaultSecretName

    )
    if ($Script:AzureSubscriptionId) {
        Write-Verbose "RefreshToken not provided. Connecting to KeyVault to retrieve RefreshToken"
        try {
        $refreshToken = (Get-AzKeyVaultSecret -VaultName $keyVaultName -Name $KeyVaultSecretName -AsPlainText -ErrorAction Stop)
        } catch {
            Connect-AzAccount | Out-Null
            $refreshToken = (Get-AzKeyVaultSecret -VaultName $keyVaultName -Name $KeyVaultSecretName -AsPlainText -ErrorAction Stop)
        }
    }

    $Script:formData = @{
        grant_type = "refresh_token"
        refresh_token = $refreshToken
    }

    $url = $script:baseurl + "/oauth/token"
    
    Write-Verbose "Requesting new token from $url"
    $token = Invoke-RestMethod -Uri $url -Method Post -Form $Script:formData -ContentType "application/x-www-form-urlencoded"


    if ($KeyVaultName -and $KeyVaultSecretName -and $AzureSubscriptionId) {
        Write-Verbose "Updating KeyVault with new RefreshToken"
        Update-KeyVaultSecret -SecretName $KeyVaultSecretName -SecretValue $token.refresh_token -AzureSubscriptionId $AzureSubscriptionId -keyVaultName $KeyVaultName
    }

    $script:AuthHeader = @{ Authorization = "Bearer $($token.access_token)" }
    $script:TokenAcquiredTime = Get-Date
    $script:ExpiresIn = $token.expires_in

}