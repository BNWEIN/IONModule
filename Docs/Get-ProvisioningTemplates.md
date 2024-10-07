# Get-ProvisioningTemplates
## SYNOPSIS
Retrieves provisioning templates based on specified parameters.
## DESCRIPTION
The Get-ProvisioningTemplates function retrieves provisioning templates based on the specified parameters. It allows you to filter templates by vendor, provider, action, and template ID.
# PARAMETERS

## **-vendor**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-MICROSOFT-Blue?color=5547a8)\
Specifies the vendor of the provisioning templates. Valid values are "MICROSOFT", "GOOGLE", "IBM", and "SOPHOS". The default value is "MICROSOFT".

  ## **-Provider**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the provider of the provisioning templates.

  ## **-Action**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-ACTION_NOT_SPECIFIED-Blue?color=5547a8)\
Specifies the action associated with the provisioning templates. Valid values are "CREATE", "UPDATE", and "ACTION_NOT_SPECIFIED". The default value is "ACTION_NOT_SPECIFIED".

  ## **-TemplateID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the ID of a specific provisioning template to retrieve.

 #### EXAMPLE 1
```powershell
PS > Get-ProvisioningTemplates -vendor "MICROSOFT" -Provider "SomeProvider" -Action "CREATE"
```
 #### EXAMPLE 2
```powershell
PS > Get-ProvisioningTemplates -TemplateID "12345"
```

