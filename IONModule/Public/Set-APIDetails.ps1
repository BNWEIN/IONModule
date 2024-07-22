<#
.SYNOPSIS
Sets the API details for the module.

.DESCRIPTION
The Set-APIDetails function is used to set the API details required for the script to interact with the API.

.PARAMETER refreshToken
The refresh token required for authentication.

.PARAMETER AccountID
The account ID associated with the API.

.EXAMPLE
Set-APIDetails -refreshToken "your_refresh_token" -AccountID "your_account_id"

This example sets the API details using the provided refresh token and account ID.

#>
function Set-APIDetails {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string]$refreshToken,
        [Parameter(Mandatory = $true)]
        [string]$AccountID
    )
    write-Verbose "Setting API Info"
    $script:refreshToken = $refreshToken
    $script:baseurl = "https://ion.tdsynnex.com"
    $Script:AccountID = $AccountID
}