<#
.SYNOPSIS
Connects to the API using a refresh token.

.DESCRIPTION
The Connect-API function is used to establish a connection to the API by providing a refresh token. It retrieves an access token from the API server and sets the necessary variables for authentication.

.PARAMETER RefreshToken
The refresh token to be used for obtaining the access token. If not provided, the function will use the value stored in the $Script:RefreshToken variable.

.EXAMPLE
Connect-API -RefreshToken "xxxxxxxxxxxx"

This example connects to the API using the specified refresh token.

#>
function Connect-API {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [string]$RefreshToken = $Script:RefreshToken
    )

    $Script:formData = @{
        grant_type = "refresh_token"
        refresh_token = $refreshToken
    }

    $url = $script:baseurl + "/oauth/token"
    
    $token = Invoke-RestMethod -Uri $url -Method Post -Form $Script:formData -ContentType "application/x-www-form-urlencoded"

    $script:AuthHeader = @{ Authorization = "Bearer $($token.access_token)" }
    $script:TokenAcquiredTime = Get-Date
    $script:ExpiresIn = $token.expires_in

}