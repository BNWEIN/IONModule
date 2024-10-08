## What is this?

This is the code for a [PowerShell](https://microsoft.com/powershell) module for [TD Synnex ION](https://ion.tdsynnex.com/v2/login). It is a work in progress and it does have a generic 'Invoke-TDRestMethod' available so you can make any API call you want. See advanced usage examples below. 

The module is written for [PowerShell 7](https://docs.microsoft.com/en-us/powershell/scripting/whats-new/what-s-new-in-powershell-71?view=powershell-7.1). 

More info on the API can be found [HERE](https://www.tdsynnex.com/ion/v3api/)

## What does it do?

IONModule provides a PowerShell wrapper around the ION API. The module handles all the authentication for you. All you need to do is supply your ION API Refresh Token using the 'Set-APIDetails' command.

You can get a Refresh Token by going into the user accounts section in the ION portal. Click into a user and under "OAth Credentials" you can request a refresh token. Refresh Tokens have a one time usage limit. You can read more on that [HERE](https://www.tdsynnex.com/ion/v3api/#tag/AccessAuthentication)

## Installing

This module is published to the PowerShell Gallery and can be installed from within PowerShell with `Install-Module`

```powershell
Install-Module -Name IONModule
```

## Updating

This module is updated regularly. Remember to always check for the latest version from within PowerShell with `Update-Module`

```powershell
Update-Module -Name IONModule
```

## Getting Started

Whilst this module can be used without an Azure Keyvault, you would need a new refresh token every 2 hours which is a manual process of going to the ION portal, and getting a new refresh token. This is because ION have made their refresh tokens single use. Instead I recommend you setup an Azure Keyvault, store your initial refresh token in the keyvault, and use the "Advanced" connection method mentioned [HERE](#connecting-the-powerShell-module-with-your-refresh-token-being-stored-in-an-azure-keyvault)

Otherwise if you are going to manually enter your refresh token, please see below

### Connecting the PowerShell module to the API using a manually entered refresh token. 

1. Set API Connection details
```powershell
Set-APIDetails -Refreshtoken "YourRefreshTokenGoesHere" -AccountID "Your Account ID goes here"
```

2. Test your first call to the API
```powershell
Get-AccessTokenExpiry
```

If the above returns something similar to the below, then you are connected to the API
```
access_expires_in refresh_expires_in
----------------- ------------------
             7199            2764774
```

### Connecting the PowerShell module with your refresh token being stored in an Azure Keyvault. 

1. Set KeyVault Details
```powershell
Set-KeyVaultDetails -AzureSubscriptionId "31df7912-4fc7-4ce7-b7a8-2cece6fbe51d" -KeyVaultName "YourKeyVaultName" -KeyVaultSecretName "YourKeyVaultSecretName" -AccountID "Your ION Account ID"
```

2. Test your first call to the API
```powershell
Get-AccessTokenExpiry
```

If the above returns something similar to the below, then you are connected to the API
```
access_expires_in refresh_expires_in
----------------- ------------------
             7199            2764774
```

# Cmdlet Help
## Access-Authentication
- [Get-AccessTokenExpiry](./Docs/Get-AccessTokenExpiry.md)
## Catalog
- [Get-Categories](./Docs/Get-Categories.md)
- [Get-Charges](./Docs/Get-Charges.md)
- [Get-Product](./Docs/Get-Product.md)
- [Get-Products](./Docs/Get-Products.md)
- [Get-Verticals](./Docs/Get-Verticals.md)
- [Set-Product](./Docs/Set-Product.md)
## Customer
- [Add-Customer](./Docs/Add-Customer.md)
- [Get-AllCustomers](./Docs/Get-AllCustomers.md)
- [Get-Customer](./Docs/Get-Customer.md)
- [Get-CustomerCloudProfiles](./Docs/Get-CustomerCloudProfiles.md)
- [Set-Customer](./Docs/Set-Customer.md)
## Order
- [Get-CustomerOrders](./Docs/Get-CustomerOrders.md)
- [New-Order](./Docs/New-Order.md)
- [Set-Subscription](./Docs/Set-Subscription.md)
## Provisioning-Template
- [Get-ProvisioningTemplates](./Docs/Get-ProvisioningTemplates.md)
## Subscription
- [Get-SubscriptionDetails](./Docs/Get-SubscriptionDetails.md)
- [Get-Subscriptions](./Docs/Get-Subscriptions.md)
## Invoke-TDRestMethod
- [Invoke-TDRestMethod](./Docs/Invoke-TDRestMethod.md)
## Set-APIDetails
- [Set-APIDetails](./Docs/Set-APIDetails.md)
## Set-KeyVaultDetails
- [Set-KeyVaultDetails](./Docs/Set-KeyVaultDetails.md)

# Future Releases
- ~~Add Azure Keyvault functionality~~ Complete
- Add additional endpoints 

