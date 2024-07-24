<#
.SYNOPSIS
Retrieves customer information based on the provided CustomerID.

.DESCRIPTION
The Get-Customer function retrieves customer information from an API endpoint based on the provided CustomerID. It requires the CustomerID parameter to be specified.

.PARAMETER CustomerID
Specifies the ID of the customer for which to retrieve information.

.EXAMPLE
Get-Customer -CustomerID "12345"

This example retrieves customer information for the customer with ID "12345".

#>
function Get-Customer {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerID
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers/$CustomerID"

    Invoke-TDRestMethod -Endpoint $Endpoint
}
