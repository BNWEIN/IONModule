# Get-Products
## SYNOPSIS
Retrieves products based on specified filters.
## DESCRIPTION
The Get-Products function retrieves products from the ION API based on the specified filters. It allows filtering by various parameters such as name, SKU external ID, addon external ID, SKU ID, addon ID, SKU display name, addon display name, and category.
# PARAMETERS

## **-PageSize**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-1000-Blue?color=5547a8)\
Specifies the number of products to retrieve per page. The default value is 1000.

  ## **-Name**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the name of the product to filter by.

  ## **-SKUExternalID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the SKU external ID of the product to filter by.

  ## **-AddonExternalID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the addon external ID of the product to filter by.

  ## **-SkuID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the SKU ID of the product to filter by.

  ## **-AddonID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the addon ID of the product to filter by.

  ## **-SkuDisplayName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the SKU display name of the product to filter by.

  ## **-AddonDisplayName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the addon display name of the product to filter by.

  ## **-Category**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the category of the product to filter by.

 #### EXAMPLE 1
```powershell
PS > Get-Products -Name "Widget" -Category "Electronics"
```
 #### EXAMPLE 2
```powershell
PS > Get-Products -SKUExternalID "SKU123"

This example retrieves products with the SKU external ID "SKU123".
```

