<#
.SYNOPSIS
Retrieves customer subscriptions based on specified parameters.

.DESCRIPTION
The Get-Subscriptions function retrieves customer subscriptions based on the specified parameters. It sends a request to the specified API endpoint with the provided parameters and returns the response.

.PARAMETER CustomerID
The ID of the customer for which to retrieve subscriptions. This parameter is mandatory.

.PARAMETER SubscriptionID
The ID of the specific subscription to retrieve. This parameter is optional.

.PARAMETER ResellerID
The ID of the reseller associated with the subscriptions. This parameter is optional.

.PARAMETER ProviderID
The ID of the provider associated with the subscriptions. This parameter is optional.

.PARAMETER SubscriptionStatus
The status of the subscriptions to retrieve. Valid values are: ACCEPTED, ACTIVE, AVAILABLE, CANCELLED, COMPLETE, CONFIRMED, DELETED, DISABLED, ENABLED, ERROR, EXPIRED, FAILED, IN_PROGRESS, PAUSED, PENDING, RUNNING, STOPPED, SUSPENDED. This parameter is optional.

.PARAMETER Range
The date range for which to retrieve subscriptions. Valid values are: TODAY, MONTH_TO_DATE, QUARTER_TO_DATE, YEAR_TO_DATE, LAST_MONTH, LAST_365_DAYS, LAST_QUARTER, LAST_YEAR, LATEST_MONTH, WEEK_TO_DATE, LAST_WEEK, TWO_MONTHS_AGO. This parameter is optional.

.PARAMETER Term
The billing term of the subscriptions. Valid values are: MONTHLY, ANNUAL. This parameter is optional.

.PARAMETER BillingCycle
The billing cycle of the subscriptions. Valid values are: MONTHLY, ANNUAL. This parameter is optional.

.PARAMETER CustomerName
The name of the customer for which to retrieve subscriptions. This parameter is optional.

.EXAMPLE
Get-Subscriptions -CustomerID "12345" -SubscriptionStatus "ACTIVE" -Range "LAST_MONTH"
Retrieves all active subscriptions for the customer with ID "12345" that were created in the last month.

#>

function Get-Subscriptions {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerID,
        [Parameter(Mandatory = $false)]
        [guid]$SubscriptionID,
        [Parameter(Mandatory = $false)]
        [string]$ResellerID,
        [Parameter(Mandatory = $false)]
        [string]$ProviderID,
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "ACCEPTED",
            "ACTIVE",
            "AVAILABLE",
            "CANCELLED",
            "COMPLETE",
            "CONFIRMED",
            "DELETED",
            "DISABLED",
            "ENABLED",
            "ERROR",
            "EXPIRED",
            "FAILED",
            "IN_PROGRESS",
            "PAUSED",
            "PENDING",
            "RUNNING",
            "STOPPED",
            "SUSPENDED"
            )]
        [string]$SubscriptionStatus,
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "TODAY",
            "MONTH_TO_DATE",
            "QUARTER_TO_DATE",
            "YEAR_TO_DATE",
            "LAST_MONTH",
            "LAST_365_DAYS",
            "LAST_QUARTER",
            "LAST_YEAR",
            "LATEST_MONTH",
            "WEEK_TO_DATE",
            "LAST_WEEK",
            "TWO_MONTHS_AGO"
            )]
        [string]$Range,
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "MONTHLY",
            "ANNUAL"
            )]
        [string]$Term,
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "MONTHLY",
            "ANNUAL"
            )]
        [string]$BillingCycle,
        [Parameter(Mandatory = $false)]
        [string]$CustomerName
    )

    $Endpoint = "/api/v3/accounts/$script:AccountID/subscriptions"

    $Params = @{
        customerId                          = $CustomerID
        subscription_id                     = $SubscriptionID
        resellerId                          = $ResellerID
        providerId                          = $ProviderID 
        subscriptionStatus                  = $SubscriptionStatus
        'startDateRange.relativeDateRange'  = $Range
        billingTerm                         = $Term
        billingCycle                        = $BillingCycle
        customerName                        = $CustomerName
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params
}

