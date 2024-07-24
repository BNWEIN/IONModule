<#
.SYNOPSIS
Sets the status of a product.

.DESCRIPTION
The Set-Product function is used to set the status of a product in the catalog. It sends a POST request to the specified API endpoint to update the product status.

.PARAMETER ProductID
The ID of the product to be updated.

.PARAMETER Status
The status to set for the product. Valid values are 'enable' and 'disable'.

.EXAMPLE
Set-Product -ProductID "12345" -Status "enable"
Sets the status of the product with ID "12345" to "enable".

.EXAMPLE
Set-Product -ProductID "67890" -Status "disable"
Sets the status of the product with ID "67890" to "disable".
#>

function Set-Product {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$ProductID,
        [Parameter(Mandatory = $true)]
        [ValidateSet('enable', 'disable')]
        [string]$Status
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/products/$($ProductID):$($Status)"

    Invoke-TDRestMethod -Endpoint $Endpoint -Method POST
}
