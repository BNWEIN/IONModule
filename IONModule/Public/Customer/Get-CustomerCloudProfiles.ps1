<#
.SYNOPSIS
Retrieves the cloud profiles for a specific customer.

.DESCRIPTION
The Get-CustomerCloudProfiles function retrieves the cloud profiles associated with a specific customer. It makes use of the Invoke-TDRestMethod function to send a request to the appropriate API endpoint.

.PARAMETER CustomerID
The ID of the customer for which to retrieve the cloud profiles.

.PARAMETER ProviderID
(Optional) The ID of the provider for which to filter the cloud profiles.

.EXAMPLE
Get-CustomerCloudProfiles -CustomerID "12345"
Retrieves all cloud profiles for the customer with ID "12345".

.EXAMPLE
Get-CustomerCloudProfiles -CustomerID "12345" -ProviderID "67890"
Retrieves the cloud profiles for the customer with ID "12345" that are associated with the provider with ID "67890".

#>
function Get-CustomerCloudProfiles {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerID,
        [Parameter(Mandatory = $false)]
        [string]$ProviderID
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers/$CustomerID/cloudProfiles"

    $Params = @{
        providerId      = $ProviderID
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params
}
