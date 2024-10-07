<#
.SYNOPSIS
Retrieves provisioning templates based on specified parameters.

.DESCRIPTION
The Get-ProvisioningTemplates function retrieves provisioning templates based on the specified parameters. It allows you to filter templates by vendor, provider, action, and template ID.

.PARAMETER vendor
Specifies the vendor of the provisioning templates. Valid values are "MICROSOFT", "GOOGLE", "IBM", and "SOPHOS". The default value is "MICROSOFT".

.PARAMETER Provider
Specifies the provider of the provisioning templates.

.PARAMETER Action
Specifies the action associated with the provisioning templates. Valid values are "CREATE", "UPDATE", and "ACTION_NOT_SPECIFIED". The default value is "ACTION_NOT_SPECIFIED".

.PARAMETER TemplateID
Specifies the ID of a specific provisioning template to retrieve.

.EXAMPLE
Get-ProvisioningTemplates -vendor "MICROSOFT" -Provider "SomeProvider" -Action "CREATE"
Retrieves all provisioning templates from the "MICROSOFT" vendor, with the provider set to "SomeProvider" and the action set to "CREATE".

.EXAMPLE
Get-ProvisioningTemplates -TemplateID "12345"
Retrieves the provisioning template with the specified ID.

#>
function Get-ProvisioningTemplates {
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
        [string]$Action = "ACTION_NOT_SPECIFIED",
        [Parameter(Mandatory = $false)]
        [string]$TemplateID
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/provisionTemplates"

    $Params = @{
        vendor = $vendor
        provider = $Provider
        action = $Action
    }

    if ($TemplateID) {
        $Endpoint = "/api/v3/accounts/$script:AccountID/provisionTemplates/$TemplateID"
        Invoke-TDRestMethod -Endpoint $Endpoint
    } else {
        Invoke-TDRestMethod -Endpoint $Endpoint -Method GET -Params $Params
    }
}
