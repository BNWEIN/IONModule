<#
.SYNOPSIS
Sets the subscription details for a customer.

.DESCRIPTION
The Set-Subscription function is used to set the subscription details for a customer. It creates or updates a subscription order with the specified parameters.

.PARAMETER customerID
The ID of the customer for whom the subscription is being set.

.PARAMETER ProductId
The ID of the product associated with the subscription.

.PARAMETER SkuID
The ID of the SKU associated with the subscription.

.PARAMETER PlanID
The ID of the plan associated with the subscription.

.PARAMETER SubscriptionID
The ID of the subscription.

.PARAMETER Quantity
The quantity of the subscription.

.PARAMETER SubscriptionName
The name of the subscription.

.PARAMETER AutoRenew
(Optional) Specifies the auto-renewal setting for the subscription. Valid values are "auto-off" and "auto-on".

.PARAMETER StatusUpdate
(Optional) Specifies the status update for the subscription. Valid values are "active", "suspended", and "deleted".

.EXAMPLE
Set-Subscription -customerID "12345" -ProductId "Microsoft365EandFNCE-uknce" -SkuID "USCFQ7TTC0LH180001" -PlanID "Microsoft-365-Business-Basic" -SubscriptionID "b9bd9b30-6ae3-4d15-c438-f3cde89888ea" -Quantity 1 -AutoRenew "auto-on" -SubscriptionName "Microsoft 365 Business Basic"

This example sets the renewal settings for a subscription with the specified parameters.

.EXAMPLE
Set-Subscription -customerID "12345" -ProductId "Microsoft365EandFNCE-uknce" -SkuID "USCFQ7TTC0LH180001" -PlanID "Microsoft-365-Business-Basic" -SubscriptionID "b9bd9b30-6ae3-4d15-c438-f3cde89888ea" -Quantity 1 -SubscriptionName "Microsoft 365 Business Basic" -StatusUpdate "suspended"

This example sets the status for a subscription to Paused.

.EXAMPLE
Set-Subscription -customerID "12345" -ProductId "Microsoft365EandFNCE-uknce" -SkuID "USCFQ7TTC0LH180001" -PlanID "Microsoft-365-Business-Basic" -SubscriptionID "b9bd9b30-6ae3-4d15-c438-f3cde89888ea" -Quantity 1 -SubscriptionName "Microsoft 365 Business Basic" -StatusUpdate "deleted"

This example sets the status for a subscription to Deleted/Cancelled.

#>

function Set-Subscription {
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
        [string]$SubscriptionName,
        [Parameter(Mandatory = $false)]
        [validateset(
            "auto-off",
            "auto-on"
            )]
        [string]$AutoRenew,
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "active",
            "suspended",
            "deleted"
        )]
        [string]$StatusUpdate
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
                        value = "updateSubscription"
                    }
                )
            }
        )
    }

    if ($AutoRenew) {
        $Body.orderItems[0].attributes += @{
            name = "renewalSetting"
            value = $AutoRenew
        }
    }

    if ($StatusUpdate) {
        $Body.orderItems[0].attributes += @{
            name = "statusUpdate"
            value = $StatusUpdate
        }
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -Body $Body -Method 'POST'
}
