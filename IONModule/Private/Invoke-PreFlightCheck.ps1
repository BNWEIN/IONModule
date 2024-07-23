<#
.SYNOPSIS
    Performs pre-flight checks before executing the main logic of the script.

.DESCRIPTION
    The Invoke-PreFlightCheck function is responsible for performing pre-flight checks before executing the main logic of the script. It checks if the required information, such as the refresh token and KeyVault name, is available. If any of the required information is missing, an exception is thrown. It also checks if the token has expired or not found, and connects to the API if necessary.

.PARAMETER None
    This function does not accept any parameters.

.EXAMPLE
    Invoke-PreFlightCheck
    
    This example Performs pre-flight checks before executing the main logic of the script.
#>

function Invoke-PreFlightCheck {
    [CmdletBinding()]
    param ()

    if ($null -eq $Script:refreshToken -and $null -eq $Script:KeyVaultName) {
        if ($null -eq $Script:refreshToken) {
            throw "RefreshToken information not found"
            break
        } else {
            throw "KeyVault information not found"
            break
        }
    }

    Get-TokenExpiry

    if ((-not $Script:ExpiryDateTime) -or ($script:ExpiryDateTime -lt (Get-Date))) {
        write-Verbose "Token expired or not found. Connecting to API"

        Connect-API
    }
}