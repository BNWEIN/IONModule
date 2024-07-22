<#
.SYNOPSIS
Sets the renewal settings for a subscription.

.DESCRIPTION
The Set-Renewal function is used to update the renewal settings for a subscription in an API. It takes in various parameters such as customer ID, product ID, SKU ID, plan ID, subscription ID, quantity, auto-renew setting, and subscription name. It then constructs the necessary API endpoint and request body to update the subscription's renewal settings.

.PARAMETER customerID
The ID of the customer associated with the subscription.

.PARAMETER ProductId
The ID of the product associated with the subscription.

.PARAMETER SkuID
The ID of the SKU associated with the subscription. (ccpSkuId)

.PARAMETER PlanID
The ID of the plan associated with the subscription. (ccpPlanId)

.PARAMETER SubscriptionID
The ID of the subscription to be updated.

.PARAMETER Quantity
The quantity of the subscription.

.PARAMETER AutoRenew
The auto-renew setting for the subscription. Valid values are "auto-off" and "auto-on".

.PARAMETER SubscriptionName
The display name of the subscription.

.EXAMPLE
Set-Renewal -customerID "12345" -ProductId "Microsoft365EandFNCE-uknce" -SkuID "USCFQ7TTC0LH180001" -PlanID "Microsoft-365-Business-Basic" -SubscriptionID "b9bd9b30-6ae3-4d15-c438-f3cde89888ea" -Quantity 1 -AutoRenew "auto-on" -SubscriptionName "Microsoft 365 Business Basic"
#>

function Set-Renewal {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$customerID,
        [Parameter(Mandatory = $true)]
        [string]$ProductId,
        [Parameter(Mandatory = $true)]
        [string]$SkuID,
        [Parameter(Mandatory = $true)]
        [string]$PlanID,
        [Parameter(Mandatory = $true)]
        [string]$SubscriptionID,
        [Parameter(Mandatory = $true)]
        [int]$Quantity,
        [Parameter(Mandatory = $true)]
        [validateset(
            "auto-off",
            "auto-on"
            )]
        [string]$AutoRenew,
        [Parameter(Mandatory = $true)]
        [string]$SubscriptionName
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers/$CustomerID/orders"

    $Body = @{
        displayName = $SubscriptionName
        orderItems = @(
            @{
                productId = $ProductId
                skuId = $SkuID
                planId = $PlanID
                action = "UPDATE"
                quantity = $Quantity
                resourceId = $SubscriptionID
                attributes = @(
                    @{
                        name = "operations"
                        value = "updatesubscription"
                    }
                    @{
                        name = "renewalSetting"
                        value = $AutoRenew
                    }
                )
            }
        )
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -Body $Body -Method 'POST'
}

