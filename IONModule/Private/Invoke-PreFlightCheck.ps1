<#
.SYNOPSIS
    Invokes a pre-flight check before connecting to the API.

.DESCRIPTION
    This function performs a pre-flight check before connecting to the API. It checks if the RefreshToken information is available and if the token has expired. If the RefreshToken information is not found or the token has expired, it connects to the API.

.PARAMETER None
    This function does not accept any parameters.

.EXAMPLE
    Invoke-PreFlightCheck

    This example invokes a pre-flight check before connecting to the API.
#>

function Invoke-PreFlightCheck {
    [CmdletBinding()]
    param ()

    if ($null -eq $Script:refreshToken) {
        throw "Cannot continue: RefreshToken information not found. Please run Set-APIDetails before connecting to the API."
        break
    }

    Get-TokenExpiry

    if ((-not $Script:ExpiryDateTime) -or ($script:ExpiryDateTime -lt (Get-Date))) {
        write-Verbose "Token expired or not found. Connecting to CIPP"
        #$request = @{
        #    refresh_token = $script:refreshToken
        #    grant_type = "refresh_token"
        #}

        Connect-API
    }
}