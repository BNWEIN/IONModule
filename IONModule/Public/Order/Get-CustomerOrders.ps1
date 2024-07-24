<#
.SYNOPSIS
Retrieves customer orders from the API.

.DESCRIPTION
The Get-CustomerOrders function retrieves customer orders from the API based on the provided parameters. It sends a request to the specified endpoint and returns the response.

.PARAMETER CustomerID
The ID of the customer for which to retrieve orders. This parameter is mandatory.

.PARAMETER SubscriptionStatus
The status of the subscriptions to filter the orders. This parameter is optional.

.PARAMETER PageSize
The maximum number of orders to retrieve per page. The default value is 1000.

.EXAMPLE
Get-CustomerOrders -CustomerID "12345" -SubscriptionStatus "Active" -PageSize 500

This example retrieves active orders for the customer with ID "12345" and sets the page size to 500.

#>

function Get-CustomerOrders {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerID,
        [Parameter(Mandatory = $false)]
        [string]$SubscriptionStatus,
        [Parameter(Mandatory = $false)]
        [int]$PageSize = 1000

    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers/$CustomerID/orders"

    $Params = @{
        pageSize                            = $PageSize
        status                              = $SubscriptionStatus
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params

}
