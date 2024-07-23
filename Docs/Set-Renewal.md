# Set-Renewal
## SYNOPSIS
Sets the renewal settings for a subscription.
## DESCRIPTION
The Set-Renewal function is used to update the renewal settings for a subscription in an API. It takes in various parameters such as customer ID, product ID, SKU ID, plan ID, subscription ID, quantity, auto-renew setting, and subscription name. It then constructs the necessary API endpoint and request body to update the subscription's renewal settings.
# PARAMETERS

## **-customerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer associated with the subscription.

  ## **-ProductId**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the product associated with the subscription.

  ## **-SkuID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the SKU associated with the subscription. (ccpSkuId)

  ## **-PlanID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the plan associated with the subscription. (ccpPlanId)

  ## **-SubscriptionID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the subscription to be updated.

  ## **-Quantity**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
The quantity of the subscription.

  ## **-AutoRenew**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The auto-renew setting for the subscription. Valid values are "auto-off" and "auto-on".

  ## **-SubscriptionName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The display name of the subscription.

 #### EXAMPLE 1
```powershell
PS > Set-Renewal -customerID "12345" -ProductId "Microsoft365EandFNCE-uknce" -SkuID "USCFQ7TTC0LH180001" -PlanID "Microsoft-365-Business-Basic" -SubscriptionID "b9bd9b30-6ae3-4d15-c438-f3cde89888ea" -Quantity 1 -AutoRenew "auto-on" -SubscriptionName "Microsoft 365 Business Basic"

This example sets the renewal settings for a subscription with the specified parameters.
```

