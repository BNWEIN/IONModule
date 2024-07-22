<#
.SYNOPSIS
Retrieves a list of clients based on specified filters.

.DESCRIPTION
The Get-AllClients function retrieves a list of clients from the specified API endpoint. It allows you to filter the results based on various parameters such as page size, customer email, customer domain, customer status, and customer name.

.PARAMETER PageSize
Specifies the maximum number of clients to retrieve per page. The default value is 1000.

.PARAMETER CustomerEmail
Specifies the email address of the customer to filter the results. This parameter is optional.

.PARAMETER CustomerDomain
Specifies the domain of the customer to filter the results. This parameter is optional.

.PARAMETER CustomerStatus
Specifies the status of the customer to filter the results. Valid values are "ACTIVE", "INACTIVE", and "CUSTOMER_STATUS_UNSPECIFIED". The default value is "CUSTOMER_STATUS_UNSPECIFIED".

.PARAMETER CustomerName
Specifies the name of the customer to filter the results. This parameter is optional.

.EXAMPLE
Get-AllClients -PageSize 500 -CustomerEmail "example@example.com" -CustomerStatus "ACTIVE"

This example retrieves a list of active clients with a page size of 500 and filters the results based on the customer email address.

#>

function Get-AllClients {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$PageSize = 1000,
        [Parameter(Mandatory = $false)]
        [string]$CustomerEmail,
        [Parameter(Mandatory = $false)]
        [string]$CustomerDomain,
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "ACTIVE",
            "INACTIVE",
            "CUSTOMER_STATUS_UNSPECIFIED")]
        [string]$CustomerStatus = "CUSTOMER_STATUS_UNSPECIFIED",
        [Parameter(Mandatory = $false)]
        [string]$CustomerName
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers"

    $Params = @{
        pageSize                  = $PageSize
        'filter.customerEmail'    = $CustomerEmail
        'filter.customerDomain'   = $CustomerDomain
        'filter.customerStatus'   = $CustomerStatus
        'filter.customerName'     = $CustomerName
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params
}
