# Get-Subscriptions
## SYNOPSIS
Retrieves subscriptions based on specified criteria.
## DESCRIPTION
The Get-Subscriptions function retrieves subscriptions based on the specified criteria such as customer ID, subscription ID, reseller ID, provider ID, subscription status, date range, billing term, billing cycle, customer name, and pagination limit.
# PARAMETERS

## **-CustomerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the customer ID for filtering subscriptions.

  ## **-SubscriptionID**
> ![Foo](https://img.shields.io/badge/Type-Guid-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the subscription ID for filtering subscriptions.

  ## **-ResellerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the reseller ID for filtering subscriptions.

  ## **-ProviderID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the provider ID for filtering subscriptions.

  ## **-SubscriptionStatus**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the subscription status for filtering subscriptions. Valid values are: - ACCEPTED - ACTIVE - AVAILABLE - CANCELLED - COMPLETE - CONFIRMED - DELETED - DISABLED - ENABLED - ERROR - EXPIRED - FAILED - IN_PROGRESS - PAUSED - PENDING - RUNNING - STOPPED - SUSPENDED

  ## **-Range**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the date range for filtering subscriptions. Valid values are: - TODAY - MONTH_TO_DATE - QUARTER_TO_DATE - YEAR_TO_DATE - LAST_MONTH - LAST_365_DAYS - LAST_QUARTER - LAST_YEAR - LATEST_MONTH - WEEK_TO_DATE - LAST_WEEK - TWO_MONTHS_AGO

  ## **-Term**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the billing term for filtering subscriptions. Valid values are: - MONTHLY - ANNUAL

  ## **-BillingCycle**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the billing cycle for filtering subscriptions. Valid values are: - MONTHLY - ANNUAL

  ## **-CustomerName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the customer name for filtering subscriptions.

  ## **-PaginationLimit**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
Specifies the maximum number of subscriptions to retrieve per page.

  ## **-PaginationOffset**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \


  ## **-SortOrder**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \


 #### EXAMPLE 1
```powershell
PS > Get-Subscriptions -CustomerID "12345" -SubscriptionStatus "ACTIVE" -Range "LAST_MONTH" -Term "MONTHLY" -BillingCycle "MONTHLY" -PaginationLimit 10

This example retrieves active subscriptions for the customer with ID "12345" that were created in the last month, have a monthly billing term and cycle, and limits the result to 10 subscriptions per page.
```

