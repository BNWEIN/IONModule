# New-Order
## SYNOPSIS
Creates a new order for a customer.
## DESCRIPTION
The New-Order function creates a new order for a customer in the system. It takes various parameters such as customer ID, product ID, SKU ID, plan ID, subscription ID, quantity, reference ID, display name, domain name, auto-renew setting, and optional parameters for end customer PO, reseller PO, agreement details, and custom term end date.
# PARAMETERS

## **-customerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer for whom the order is being created.

  ## **-ProductId**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the product associated with the order.

  ## **-SkuID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the SKU associated with the order.

  ## **-PlanID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the plan associated with the order.

  ## **-SubscriptionID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the subscription associated with the order.

  ## **-Quantity**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
The quantity of the product being ordered.

  ## **-ReferenceID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
A unique reference ID for the order.

  ## **-DisplayName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The display name of the order.

  ## **-DomainName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The domain name associated with the order.

  ## **-AutoRenew**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The auto-renew setting for the order. Valid values are "auto-off" and "auto-on".

  ## **-endcustomerPO**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The end customer purchase order number.

  ## **-ResellerPO**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The reseller purchase order number.

  ## **-agreementDateAgreed**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The date when the agreement was agreed.

  ## **-agreementUserId**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The user ID associated with the agreement.

  ## **-agreementEmail**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The email address associated with the agreement.

  ## **-agreementFirstName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The first name associated with the agreement.

  ## **-agreementLastName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The last name associated with the agreement.

  ## **-agreementPhoneNumber**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The phone number associated with the agreement.

  ## **-customTermEndDate**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The custom term end date for the order.

 #### EXAMPLE 1
```powershell
PS > New-Order -customerID "12345" -ProductId "67890" -SkuID "SKU123" -PlanID "PLAN123" -SubscriptionID "SUB123" -Quantity 1 -ReferenceID "REF123" -DisplayName "Order 1" -DomainName "example.com" -AutoRenew "auto-on"

This example creates a new order for a customer with the specified parameters.
```

