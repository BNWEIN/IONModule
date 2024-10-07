<#
.SYNOPSIS
Creates a new order for a customer.

.DESCRIPTION
The New-Order function creates a new order for a customer in the system. It takes various parameters such as customer ID, product ID, SKU ID, plan ID, subscription ID, quantity, reference ID, display name, domain name, auto-renew setting, and optional parameters for end customer PO, reseller PO, agreement details, and custom term end date.

.PARAMETER customerID
The ID of the customer for whom the order is being created.

.PARAMETER ProductId
The ID of the product associated with the order.

.PARAMETER SkuID
The ID of the SKU associated with the order.

.PARAMETER PlanID
The ID of the plan associated with the order.

.PARAMETER SubscriptionID
The ID of the subscription associated with the order.

.PARAMETER Quantity
The quantity of the product being ordered.

.PARAMETER ReferenceID
A unique reference ID for the order.

.PARAMETER DisplayName
The display name of the order.

.PARAMETER DomainName
The domain name associated with the order.

.PARAMETER AutoRenew
The auto-renew setting for the order. Valid values are "auto-off" and "auto-on".

.PARAMETER endcustomerPO
(Optional) The end customer purchase order number.

.PARAMETER ResellerPO
(Optional) The reseller purchase order number.

.PARAMETER agreementDateAgreed
(Optional) The date when the agreement was agreed.

.PARAMETER agreementUserId
(Optional) The user ID associated with the agreement.

.PARAMETER agreementEmail
(Optional) The email address associated with the agreement.

.PARAMETER agreementFirstName
(Optional) The first name associated with the agreement.

.PARAMETER agreementLastName
(Optional) The last name associated with the agreement.

.PARAMETER agreementPhoneNumber
(Optional) The phone number associated with the agreement.

.PARAMETER customTermEndDate
(Optional) The custom term end date for the order.

.EXAMPLE
New-Order -customerID "12345" -ProductId "67890" -SkuID "SKU123" -PlanID "PLAN123" -SubscriptionID "SUB123" -Quantity 1 -ReferenceID "REF123" -DisplayName "Order 1" -DomainName "example.com" -AutoRenew "auto-on"

This example creates a new order for a customer with the specified parameters.

#>
function New-Order {
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
        [string]$ReferenceID,
        [Parameter(Mandatory = $true)]
        [string]$DisplayName,
        [Parameter(Mandatory = $true)]
        [string]$DomainName,
        [Parameter(Mandatory = $true)]
        [validateset(
            "auto-off",
            "auto-on"
            )]
        [string]$AutoRenew,
        [Parameter(Mandatory = $false)]
        [string]$endcustomerPO,
        [Parameter(Mandatory = $false)]
        [string]$ResellerPO,
        [Parameter(Mandatory = $false)]
        [string]$agreementDateAgreed,
        [Parameter(Mandatory = $false)]
        [string]$agreementUserId,
        [Parameter(Mandatory = $false)]
        [string]$agreementEmail,
        [Parameter(Mandatory = $false)]
        [string]$agreementFirstName,
        [Parameter(Mandatory = $false)]
        [string]$agreementLastName,
        [Parameter(Mandatory = $false)]
        [string]$agreementPhoneNumber,
        [Parameter(Mandatory = $false)]
        [string]$customTermEndDate
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers/$CustomerID/orders"

    $body = @{
        referenceId = $ReferenceID
        displayName = $DisplayName
        orderItems = @(
            @{
                referenceId = $ReferenceID
                action = "CREATE"
                resourceId = $SubscriptionID
                productId = $ProductID
                skuId = $SkuID
                planId = $PlanID
                quantity = $Quantity
                attributes = @(
                    @{
                        name = "domainName"
                        value = $DomainName
                    }
                    @{
                        name = "renewalSetting"
                        value = $AutoRenew
                    }
                )
            }
        )
    }

    if ($endcustomerPO) {
        $body.orderItems[0].endCustomerPO = $endcustomerPO
    }
    if ($ResellerPO) {
        $body.orderItems[0].resellerPO = $ResellerPO
    }

    foreach ($key in $PSBoundParameters.Keys) {
        if ($key -notin @('customerID', 'ProductId', 'SkuID', 'PlanID', 'SubscriptionID', 'Quantity', 'ReferenceID', 'DisplayName', 'DomainName', 'endcustomerPO', 'ResellerPO', 'Verbose')) {
            if ($PSBoundParameters[$key]) {
                $body.orderItems[0].attributes += @{
                    name = $key
                    value = $PSBoundParameters[$key]
                }
            }
        }
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -Body $body -Method 'POST'
}
