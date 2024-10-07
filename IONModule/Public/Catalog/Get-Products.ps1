<#
.SYNOPSIS
Retrieves products based on specified filters.

.DESCRIPTION
The Get-Products function retrieves products from the ION API based on the specified filters. It allows filtering by various parameters such as name, SKU external ID, addon external ID, SKU ID, addon ID, SKU display name, addon display name, and category.

.PARAMETER PageSize
Specifies the number of products to retrieve per page. The default value is 1000.

.PARAMETER Name
Specifies the name of the product to filter by.

.PARAMETER SKUExternalID
Specifies the SKU external ID of the product to filter by.

.PARAMETER AddonExternalID
Specifies the addon external ID of the product to filter by.

.PARAMETER SkuID
Specifies the SKU ID of the product to filter by.

.PARAMETER AddonID
Specifies the addon ID of the product to filter by.

.PARAMETER SkuDisplayName
Specifies the SKU display name of the product to filter by.

.PARAMETER AddonDisplayName
Specifies the addon display name of the product to filter by.

.PARAMETER Category
Specifies the category of the product to filter by.

.EXAMPLE
Get-Products -Name "Widget" -Category "Electronics"
Retrieves products with the name "Widget" and category "Electronics".

.EXAMPLE
Get-Products -SKUExternalID "SKU123"

This example retrieves products with the SKU external ID "SKU123".

#>

function Get-Products {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$PageSize = 1000,
        [Parameter(Mandatory = $false)]
        [string]$Name,
        [Parameter(Mandatory = $false)]
        [string]$SKUExternalID,
        [Parameter(Mandatory = $false)]
        [string]$AddonExternalID,
        [Parameter(Mandatory = $false)]
        [string]$SkuID,
        [Parameter(Mandatory = $false)]
        [string]$AddonID,
        [Parameter(Mandatory = $false)]
        [string]$SkuDisplayName,
        [Parameter(Mandatory = $false)]
        [string]$AddonDisplayName,
        [Parameter(Mandatory = $false)]
        [string]$Category
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/products"

    $Params = @{
        pageSize                    = $PageSize
        'filter.name'               = $Name
        'filter.skuExternalId'      = $SKUExternalID
        'filter.addonExternalId'    = $AddonExternalID
        'filter.skuId'              = $SkuID
        'filter.addonId'            = $AddonID
        'filter.skuDisplayName'     = $SkuDisplayName
        'filter.addonDisplayName'   = $AddonDisplayName
        #'filter.category'           = $Category - This does not work
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params
}
