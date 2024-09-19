<#
.SYNOPSIS
    Retrieves subscriptions based on specified criteria.

.DESCRIPTION
    The Get-Subscriptions function retrieves subscriptions based on the specified criteria such as customer ID, subscription ID, reseller ID, provider ID, subscription status, date range, billing term, billing cycle, customer name, and pagination limit.

.PARAMETER CustomerID
    Specifies the customer ID for filtering subscriptions.

.PARAMETER SubscriptionID
    Specifies the subscription ID for filtering subscriptions.

.PARAMETER ResellerID
    Specifies the reseller ID for filtering subscriptions.

.PARAMETER ProviderID
    Specifies the provider ID for filtering subscriptions.

.PARAMETER SubscriptionStatus
    Specifies the subscription status for filtering subscriptions. Valid values are:
    - ACCEPTED
    - ACTIVE
    - AVAILABLE
    - CANCELLED
    - COMPLETE
    - CONFIRMED
    - DELETED
    - DISABLED
    - ENABLED
    - ERROR
    - EXPIRED
    - FAILED
    - IN_PROGRESS
    - PAUSED
    - PENDING
    - RUNNING
    - STOPPED
    - SUSPENDED

.PARAMETER Range
    Specifies the date range for filtering subscriptions. Valid values are:
    - TODAY
    - MONTH_TO_DATE
    - QUARTER_TO_DATE
    - YEAR_TO_DATE
    - LAST_MONTH
    - LAST_365_DAYS
    - LAST_QUARTER
    - LAST_YEAR
    - LATEST_MONTH
    - WEEK_TO_DATE
    - LAST_WEEK
    - TWO_MONTHS_AGO

.PARAMETER Term
    Specifies the billing term for filtering subscriptions. Valid values are:
    - MONTHLY
    - ANNUAL

.PARAMETER BillingCycle
    Specifies the billing cycle for filtering subscriptions. Valid values are:
    - MONTHLY
    - ANNUAL

.PARAMETER CustomerName
    Specifies the customer name for filtering subscriptions.

.PARAMETER PaginationLimit
    Specifies the maximum number of subscriptions to retrieve per page.

.EXAMPLE
    Get-Subscriptions -CustomerID "12345" -SubscriptionStatus "ACTIVE" -Range "LAST_MONTH" -Term "MONTHLY" -BillingCycle "MONTHLY" -PaginationLimit 10
    
    This example retrieves active subscriptions for the customer with ID "12345" that were created in the last month, have a monthly billing term and cycle, and limits the result to 10 subscriptions per page.

#>
function Get-Subscriptions {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
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
            "P1Y",
            "P1M"
            )]
        [string]$Term,
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "MONTHLY",
            "ANNUAL"
            )]
        [string]$BillingCycle,
        [Parameter(Mandatory = $false)]
        [string]$CustomerName,
        [Parameter(Mandatory = $false)]
        [int]$PaginationLimit,
        [Parameter(Mandatory = $false)]
        [string]$PaginationOffset,
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "ASC",
            "DESC"
            )]
        [string]$SortOrder
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

    if ($PaginationLimit) {
        $Params.Add("pagination.limit", $PaginationLimit)
    }
    if ($PaginationOffset) {
        $Params.Add("pagination.offset", $PaginationOffset)
    }
    if ($SortOrder) {
        $Params.Add("pagination.sortOrder", $SortOrder)
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -params $Params
}

