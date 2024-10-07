<#
.SYNOPSIS
    Retrieves product information based on the provided parameters.

.DESCRIPTION
    The Get-Product function retrieves product information from the specified API endpoint. It allows you to specify various parameters to customize the request.

.PARAMETER ProductID
    Specifies the ID of the product to retrieve. This parameter is mandatory.

.PARAMETER Language
    Specifies the language for the product information. This parameter is optional.

.PARAMETER PriceBookCustomerID
    Specifies the customer ID for the price book. This parameter is optional.

.PARAMETER ProductVersion
    Specifies the version of the product. This parameter is optional.

.PARAMETER ClientRole
    Specifies the client role for the product. This parameter is optional.

.PARAMETER ExcludePricing
    Specifies whether to exclude pricing information from the product response. This parameter is optional.

.PARAMETER ExcludeMarketing
    Specifies whether to exclude marketing information from the product response. This parameter is optional.

.PARAMETER ExcludeDefinition
    Specifies whether to exclude definition information from the product response. This parameter is optional.

.PARAMETER ExcludeVersionHistory
    Specifies whether to exclude version history information from the product response. This parameter is optional.

.PARAMETER ExcludeDeployment
    Specifies whether to exclude deployment information from the product response. This parameter is optional.

.EXAMPLE
    Get-Product -ProductID "12345" -ExcludePricing $true
    
    This example retrieves the product information for the product with ID "12345" excluding pricing information.

#>

function Get-Product {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$ProductID,
        [Parameter(Mandatory = $false)]
        [string]$language,
        [Parameter(Mandatory = $false)]
        [string]$PriceBookCustomerID,
        [Parameter(Mandatory = $false)]
        [string]$productVersion,
        [Parameter(Mandatory = $false)]
        [string]$clientRole,
        [Parameter(Mandatory = $false)]
        [bool]$excludePricing,
        [Parameter(Mandatory = $false)]
        [bool]$excludeMarketing,
        [Parameter(Mandatory = $false)]
        [bool]$excludeDefinition,
        [Parameter(Mandatory = $false)]
        [bool]$excludeVersionHistory,
        [Parameter(Mandatory = $false)]
        [bool]$excludeDeployment
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/products/$ProductID"

    $Params = @{
        language                    = $language
        priceBookCustomerId         = $PriceBookCustomerID
        productVersion              = $productVersion
        clientRole                  = $clientRole
    }

    if ($excludePricing) {
        $Params.Add("excludeFilter.excludePricing", $excludePricing)
    }
    if ($excludeMarketing) {
        $Params.Add("excludeFilter.excludeMarketing", $excludeMarketing)
    }
    if ($excludeDefinition) {
        $Params.Add("excludeFilter.excludeDefinition", $excludeDefinition)
    }
    if ($excludeVersionHistory) {
        $Params.Add("excludeFilter.excludeVersionHistory", $excludeVersionHistory)
    }
    if ($excludeDeployment) {
        $Params.Add("excludeFilter.excludeDeployment", $excludeDeployment)
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params
}
