<#
.SYNOPSIS
Retrieves client information based on the provided CustomerID.

.DESCRIPTION
The Get-Client function retrieves client information from an API endpoint based on the provided CustomerID. It requires the CustomerID parameter to be specified.

.PARAMETER CustomerID
Specifies the ID of the customer for which to retrieve information.

.EXAMPLE
Get-Client -CustomerID "12345"
Retrieves client information for the customer with ID "12345".

#>
function Get-Client {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerID
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers/$CustomerID"

    Invoke-TDRestMethod -Endpoint $Endpoint
}
