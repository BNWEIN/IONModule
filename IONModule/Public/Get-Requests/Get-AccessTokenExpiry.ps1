<#
.SYNOPSIS
Retrieves the expiry time of an access token.

.DESCRIPTION
The Get-AccessTokenExpiry function is used to retrieve the expiry time of an access token by making a request to the "/oauth/validateAccess" endpoint.

.PARAMETER None
This function does not have any parameters.

.EXAMPLE
Get-AccessTokenExpiry

This example gets the expiry time of an access token.

#>

function Get-AccessTokenExpiry {
    [CmdletBinding()]
    param (
    )

    $Endpoint = "/oauth/validateAccess"

    Invoke-TDRestMethod -Endpoint $Endpoint
}
