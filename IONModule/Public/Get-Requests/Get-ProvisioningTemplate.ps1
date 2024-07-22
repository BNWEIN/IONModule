<#
.SYNOPSIS
Retrieves a provisioning template from the specified vendor.

.DESCRIPTION
The Get-ProvisioningTemplate function retrieves a provisioning template from the specified vendor using the specified parameters. It makes a REST API call to the specified endpoint and returns the response.

.PARAMETER vendor
Specifies the vendor from which to retrieve the provisioning template. Valid values are "MICROSOFT", "GOOGLE", "IBM", and "SOPHOS". The default value is "MICROSOFT".

.PARAMETER Provider
Specifies the provider for the provisioning template. This parameter is optional.

.PARAMETER Action
Specifies the action to perform with the provisioning template. Valid values are "CREATE", "UPDATE", and "ACTION_NOT_SPECIFIED". The default value is "ACTION_NOT_SPECIFIED".

.EXAMPLE
Get-ProvisioningTemplate -vendor "MICROSOFT"
Retrieves a provisioning template from MICROSOFT Cloud Platform with the default provider and action.

#>

function Get-ProvisioningTemplate {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "MICROSOFT",
            "GOOGLE",
            "IBM",
            "SOPHOS"
        )]
        [string]$vendor = "MICROSOFT",
        [Parameter(Mandatory = $false)]
        [string]$Provider,
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "CREATE",
            "UPDATE",
            "ACTION_NOT_SPECIFIED"
        )]
        [string]$Action = "ACTION_NOT_SPECIFIED"
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/provisionTemplates"

    $Params = @{
        vendor = $vendor
        provider = $Provider
        action = $Action
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params

}
