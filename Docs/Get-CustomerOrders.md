# Get-CustomerOrders
## SYNOPSIS
Retrieves customer orders from the API.
## DESCRIPTION
The Get-CustomerOrders function retrieves customer orders from the API based on the provided parameters. It sends a request to the specified endpoint and returns the response.
# PARAMETERS

## **-CustomerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer for which to retrieve orders. This parameter is mandatory.

  ## **-SubscriptionStatus**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The status of the subscriptions to filter the orders. This parameter is optional.

  ## **-PageSize**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-1000-Blue?color=5547a8)\
The maximum number of orders to retrieve per page. The default value is 1000.

 #### EXAMPLE 1
```powershell
PS > Get-CustomerOrders -CustomerID "12345" -SubscriptionStatus "Active" -PageSize 500

This example retrieves active orders for the customer with ID "12345" and sets the page size to 500.
```

