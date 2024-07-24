<#
.SYNOPSIS
Retrieves charges for a specific account.

.DESCRIPTION
The Get-Charges function retrieves charges for a specific account by making a REST API call to the endpoint "/api/v3/accounts/{AccountID}/products/charges".

.PARAMETER None
This function does not have any parameters.

.EXAMPLE
Get-Charges

This example retrieves charges for the current account.

#>

function Get-Charges {
    [CmdletBinding()]
    param (
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/products/charges"

    Invoke-TDRestMethod -Endpoint $Endpoint
}
