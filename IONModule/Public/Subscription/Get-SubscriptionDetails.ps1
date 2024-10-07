<#
.SYNOPSIS
Retrieves the details of a specific subscription for a given customer.

.DESCRIPTION
The Get-SubscriptionDetails function calls the TDRestMethod to retrieve details of a subscription 
for a specified customer using the provided CustomerID and subscription ID.

.PARAMETER CustomerID
The unique identifier of the customer whose subscription details are to be retrieved. This parameter is mandatory.

.PARAMETER ID
The unique identifier of the subscription whose details are to be retrieved. This parameter is mandatory.

.EXAMPLE
PS> Get-SubscriptionDetails -CustomerID "12345" -ID "67890"
This command retrieves the details of the subscription with ID "67890" for the customer with ID "12345".

#>
function Get-SubscriptionDetails {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerID,
        [Parameter(Mandatory = $true)]
        [string]$ID
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers/$CustomerID/subscriptions/$ID"

    $Params = @{
        refresh                             = $true
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params
}

