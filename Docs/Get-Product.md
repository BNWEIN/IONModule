# Get-Product
## SYNOPSIS
Retrieves product information based on the provided parameters.
## DESCRIPTION
The Get-Product function retrieves product information from the specified API endpoint. It allows you to specify various parameters to customize the request.
# PARAMETERS

## **-ProductID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
Specifies the ID of the product to retrieve. This parameter is mandatory.

  ## **-language**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the language for the product information. This parameter is optional.

  ## **-PriceBookCustomerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the customer ID for the price book. This parameter is optional.

  ## **-productVersion**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the version of the product. This parameter is optional.

  ## **-clientRole**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the client role for the product. This parameter is optional.

  ## **-excludePricing**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Specifies whether to exclude pricing information from the product response. This parameter is optional.

  ## **-excludeMarketing**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Specifies whether to exclude marketing information from the product response. This parameter is optional.

  ## **-excludeDefinition**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Specifies whether to exclude definition information from the product response. This parameter is optional.

  ## **-excludeVersionHistory**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Specifies whether to exclude version history information from the product response. This parameter is optional.

  ## **-excludeDeployment**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Specifies whether to exclude deployment information from the product response. This parameter is optional.

 #### EXAMPLE 1
```powershell
PS > Get-Product -ProductID "12345" -ExcludePricing $true

This example retrieves the product information for the product with ID "12345" excluding pricing information.
```

