<#
.SYNOPSIS
Retrieves the verticals from the API.

.DESCRIPTION
The Get-Verticals function retrieves the verticals from the API by making a REST API call to the specified endpoint. It does not require any parameters.

.PARAMETER None
This function does not have any parameters.

.EXAMPLE
Get-Verticals

This example demonstrates how to use the Get-Verticals function to retrieve the verticals from the API.

#>

function Get-Verticals {
    [CmdletBinding()]
    param (
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/products/verticals"

    Invoke-TDRestMethod -Endpoint $Endpoint
}
