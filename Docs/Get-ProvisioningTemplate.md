# Get-ProvisioningTemplate
## SYNOPSIS
Retrieves a provisioning template from the specified vendor.
## DESCRIPTION
The Get-ProvisioningTemplate function retrieves a provisioning template from the specified vendor using the specified parameters. It makes a REST API call to the specified endpoint and returns the response.
# PARAMETERS

## **-vendor**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-MICROSOFT-Blue?color=5547a8)\
Specifies the vendor from which to retrieve the provisioning template. Valid values are "MICROSOFT", "GOOGLE", "IBM", and "SOPHOS". The default value is "MICROSOFT".

  ## **-Provider**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the provider for the provisioning template. This parameter is optional.

  ## **-Action**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-ACTION_NOT_SPECIFIED-Blue?color=5547a8)\
Specifies the action to perform with the provisioning template. Valid values are "CREATE", "UPDATE", and "ACTION_NOT_SPECIFIED". The default value is "ACTION_NOT_SPECIFIED".

 #### EXAMPLE 1
```powershell
PS > Get-ProvisioningTemplate -vendor "MICROSOFT"
```

