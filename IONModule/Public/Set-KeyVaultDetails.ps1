<#
.SYNOPSIS
Sets the details for a Key Vault.

.DESCRIPTION
This function sets the details for a Key Vault, including the Azure subscription ID, Key Vault name, Key Vault secret name, and account ID.

.PARAMETER AzureSubscriptionId
The Azure subscription ID to associate with the Key Vault.

.PARAMETER KeyVaultName
The name of the Key Vault.

.PARAMETER KeyVaultSecretName
The name of the secret in the Key Vault.

.PARAMETER AccountID
The account ID to associate with the Key Vault.

.EXAMPLE
Set-KeyVaultDetails -AzureSubscriptionId "12345678-1234-1234-1234-1234567890AB" -KeyVaultName "MyKeyVault" -KeyVaultSecretName "MySecret" -AccountID "MyAccount"

This example sets the details for a Key Vault with the specified Azure subscription ID, Key Vault name, Key Vault secret name, and account ID.

#>

function Set-KeyVaultDetails {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [guid]$AzureSubscriptionId,
        [Parameter(Mandatory = $true)]
        [string]$KeyVaultName,
        [Parameter(Mandatory = $true)]
        [string]$KeyVaultSecretName,
        [parameter(Mandatory = $true)]
        [string]$AccountID
    )
    write-Verbose "Setting Keyvault Info"
    $Script:AzureSubscriptionId = $AzureSubscriptionId
    $Script:KeyVaultName = $KeyVaultName
    $Script:KeyVaultSecretName = $KeyVaultSecretName
    $Script:AccountID = $AccountID
    $script:baseurl = "https://ion.tdsynnex.com"
}