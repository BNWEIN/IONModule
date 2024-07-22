# Get-Subscriptions
## SYNOPSIS
Retrieves customer subscriptions based on specified parameters.
## DESCRIPTION
The Get-Subscriptions function retrieves customer subscriptions based on the specified parameters. It sends a request to the specified API endpoint with the provided parameters and returns the response.
# PARAMETERS

## **-CustomerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer for which to retrieve subscriptions. This parameter is mandatory.

  ## **-SubscriptionID**
> ![Foo](https://img.shields.io/badge/Type-Guid-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ID of the specific subscription to retrieve. This parameter is optional.

  ## **-ResellerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ID of the reseller associated with the subscriptions. This parameter is optional.

  ## **-ProviderID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ID of the provider associated with the subscriptions. This parameter is optional.

  ## **-SubscriptionStatus**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The status of the subscriptions to retrieve. Valid values are: ACCEPTED, ACTIVE, AVAILABLE, CANCELLED, COMPLETE, CONFIRMED, DELETED, DISABLED, ENABLED, ERROR, EXPIRED, FAILED, IN_PROGRESS, PAUSED, PENDING, RUNNING, STOPPED, SUSPENDED. This parameter is optional.

  ## **-Range**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The date range for which to retrieve subscriptions. Valid values are: TODAY, MONTH_TO_DATE, QUARTER_TO_DATE, YEAR_TO_DATE, LAST_MONTH, LAST_365_DAYS, LAST_QUARTER, LAST_YEAR, LATEST_MONTH, WEEK_TO_DATE, LAST_WEEK, TWO_MONTHS_AGO. This parameter is optional.

  ## **-Term**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The billing term of the subscriptions. Valid values are: MONTHLY, ANNUAL. This parameter is optional.

  ## **-BillingCycle**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The billing cycle of the subscriptions. Valid values are: MONTHLY, ANNUAL. This parameter is optional.

  ## **-CustomerName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The name of the customer for which to retrieve subscriptions. This parameter is optional.

 #### EXAMPLE 1
```powershell
PS > Get-Subscriptions -CustomerID "12345" -SubscriptionStatus "ACTIVE" -Range "LAST_MONTH"
```

