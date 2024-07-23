<#
.SYNOPSIS
Updates a secret in Azure Key Vault.

.DESCRIPTION
The Update-KeyVaultSecret function is used to update a secret in Azure Key Vault. It sets the Azure subscription, and then updates the specified secret in the specified Key Vault with a new secret value.

.PARAMETER SecretName
The name of the secret to be updated.

.PARAMETER SecretValue
The new value for the secret.

.PARAMETER AzureSubscriptionId
The ID of the Azure subscription to use.

.PARAMETER keyVaultName
The name of the Key Vault where the secret is stored.

.EXAMPLE
Update-KeyVaultSecret -SecretName "MySecret" -SecretValue "NewSecretValue" -AzureSubscriptionId "12345678-1234-1234-1234-1234567890AB" -keyVaultName "MyKeyVault"

This example updates the secret named "MySecret" in the Key Vault named "MyKeyVault" with the value "NewSecretValue" using the Azure subscription with the ID "12345678-1234-1234-1234-1234567890AB".

#>

function Update-KeyVaultSecret {
    param (
        [string]$SecretName,
        [string]$SecretValue,
        [guid]$AzureSubscriptionId,
        [string]$keyVaultName
    )
    Write-Verbose "Updating KeyVault with new secret"
    Write-Verbose "Setting Azure Subscription"
    Set-AzContext -Subscription $AzureSubscriptionId | Out-Null
    Write-Verbose "Setting KeyVault Secret"
    try {
        $null = Set-AzKeyVaultSecret -VaultName $keyVaultName -Name $SecretName -SecretValue (ConvertTo-SecureString $SecretValue -AsPlainText -Force)
    } catch {
        Write-Error "Failed to update KeyVault secret"
    }
}