# Set-Subscription
## SYNOPSIS
Sets the subscription details for a customer.
## DESCRIPTION
The Set-Subscription function is used to set the subscription details for a customer. It creates or updates a subscription order with the specified parameters.
# PARAMETERS

## **-customerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer for whom the subscription is being set.

  ## **-ProductId**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the product associated with the subscription.

  ## **-SkuID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the SKU associated with the subscription.

  ## **-PlanID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the plan associated with the subscription.

  ## **-SubscriptionID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the subscription.

  ## **-Quantity**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
The quantity of the subscription.

  ## **-SubscriptionName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The name of the subscription.

  ## **-AutoRenew**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) Specifies the auto-renewal setting for the subscription. Valid values are "auto-off" and "auto-on".

  ## **-StatusUpdate**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) Specifies the status update for the subscription. Valid values are "active", "suspended", and "deleted".

 #### EXAMPLE 1
```powershell
PS > Set-Subscription -customerID "12345" -ProductId "Microsoft365EandFNCE-uknce" -SkuID "USCFQ7TTC0LH180001" -PlanID "Microsoft-365-Business-Basic" -SubscriptionID "b9bd9b30-6ae3-4d15-c438-f3cde89888ea" -Quantity 1 -AutoRenew "auto-on" -SubscriptionName "Microsoft 365 Business Basic"

This example sets the renewal settings for a subscription with the specified parameters.
```
 #### EXAMPLE 2
```powershell
PS > Set-Subscription -customerID "12345" -ProductId "Microsoft365EandFNCE-uknce" -SkuID "USCFQ7TTC0LH180001" -PlanID "Microsoft-365-Business-Basic" -SubscriptionID "b9bd9b30-6ae3-4d15-c438-f3cde89888ea" -Quantity 1 -SubscriptionName "Microsoft 365 Business Basic" -StatusUpdate "suspended"

This example sets the status for a subscription to Paused.
```
 #### EXAMPLE 3
```powershell
PS > Set-Subscription -customerID "12345" -ProductId "Microsoft365EandFNCE-uknce" -SkuID "USCFQ7TTC0LH180001" -PlanID "Microsoft-365-Business-Basic" -SubscriptionID "b9bd9b30-6ae3-4d15-c438-f3cde89888ea" -Quantity 1 -SubscriptionName "Microsoft 365 Business Basic" -StatusUpdate "deleted"

This example sets the status for a subscription to Deleted/Cancelled.
```

