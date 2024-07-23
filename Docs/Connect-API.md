# Connect-API
## SYNOPSIS
Connects to the ION API using a refresh token.
## DESCRIPTION
The Connect-API function connects to the API by requesting a new access token using a refresh token. It also provides the option to update a KeyVault with the new refresh token.
# PARAMETERS

## **-RefreshToken**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-$Script:RefreshToken-Blue?color=5547a8)\
The refresh token used to request a new access token. If not provided, the function will attempt to retrieve the refresh token from the script's global scope.

  ## **-AzureSubscriptionId**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-$Script:AzureSubscriptionId-Blue?color=5547a8)\
The Azure subscription ID used to update the KeyVault with the new refresh token. This parameter is optional.

  ## **-KeyVaultName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-$Script:KeyVaultName-Blue?color=5547a8)\
The name of the KeyVault used to store the refresh token. This parameter is optional.

  ## **-KeyVaultSecretName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-$Script:KeyVaultSecretName-Blue?color=5547a8)\
The name of the secret in the KeyVault that stores the refresh token. This parameter is optional.

 #### EXAMPLE 1
```powershell
PS > Connect-API -RefreshToken "abc123" -AzureSubscriptionId "12345678-1234-1234-1234-1234567890ab" -KeyVaultName "MyKeyVault" -KeyVaultSecretName "RefreshTokenSecret"

Connects to the API using the provided refresh token and updates the specified KeyVault with the new refresh token.
```

