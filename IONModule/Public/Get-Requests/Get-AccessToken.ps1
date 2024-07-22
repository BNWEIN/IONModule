function Get-AccessTokenExpiry {
    [CmdletBinding()]
    param (
    )

    $Endpoint = "/oauth/validateAccess"

    Invoke-TDRestMethod -Endpoint $Endpoint
}
