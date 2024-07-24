function Get-Products {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$PageSize = 1000,
        [Parameter(Mandatory = $false)]
        [string]$Name,
        [Parameter(Mandatory = $false)]
        [string]$SKUExternalID,
        [Parameter(Mandatory = $false)]
        [string]$AddonExternalID,
        [Parameter(Mandatory = $false)]
        [string]$SkuID,
        [Parameter(Mandatory = $false)]
        [string]$AddonID,
        [Parameter(Mandatory = $false)]
        [string]$SkuDisplayName,
        [Parameter(Mandatory = $false)]
        [string]$AddonDisplayName,
        [Parameter(Mandatory = $false)]
        [string]$Category
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/products"

    $Params = @{
        pageSize                    = $PageSize
        'filter.name'               = $Name
        'filter.skuExternalId'      = $SKUExternalID
        'filter.addonExternalId'    = $AddonExternalID
        'filter.skuId'              = $SkuID
        'filter.addonId'            = $AddonID
        'filter.skuDisplayName'     = $SkuDisplayName
        'filter.addonDisplayName'   = $AddonDisplayName
        #'filter.category'           = $Category
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params
}
