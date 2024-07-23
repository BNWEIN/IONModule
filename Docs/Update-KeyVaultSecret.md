# Update-KeyVaultSecret
## SYNOPSIS
Updates a secret in Azure Key Vault.
## DESCRIPTION
The Update-KeyVaultSecret function is used to update a secret in Azure Key Vault. It sets the Azure subscription, and then updates the specified secret in the specified Key Vault with a new secret value.
# PARAMETERS

## **-SecretName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The name of the secret to be updated.

  ## **-SecretValue**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The new value for the secret.

  ## **-AzureSubscriptionId**
> ![Foo](https://img.shields.io/badge/Type-Guid-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ID of the Azure subscription to use.

  ## **-keyVaultName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The name of the Key Vault where the secret is stored.

 #### EXAMPLE 1
```powershell
PS > Update-KeyVaultSecret -SecretName "MySecret" -SecretValue "NewSecretValue" -AzureSubscriptionId "12345678-1234-1234-1234-1234567890AB" -keyVaultName "MyKeyVault"

This example updates the secret named "MySecret" in the Key Vault named "MyKeyVault" with the value "NewSecretValue" using the Azure subscription with the ID "12345678-1234-1234-1234-1234567890AB".
```

