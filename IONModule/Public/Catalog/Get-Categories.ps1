<#
.SYNOPSIS
Retrieves the categories of products from the specified account.

.DESCRIPTION
The Get-Categories function retrieves the categories of products from the specified account using the TDRestMethod cmdlet.

.PARAMETER None
This function does not have any parameters.

.EXAMPLE
Get-Categories

This example retrieves the categories of products from the current account.

#> 
function Get-Categories {
    [CmdletBinding()]
    param (
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/products/categories"

    Invoke-TDRestMethod -Endpoint $Endpoint
}
