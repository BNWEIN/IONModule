# Get-AllClients
## SYNOPSIS
Retrieves a list of clients based on specified filters.
## DESCRIPTION
The Get-AllClients function retrieves a list of clients from the specified API endpoint. It allows you to filter the results based on various parameters such as page size, customer email, customer domain, customer status, and customer name.
# PARAMETERS

## **-PageSize**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-1000-Blue?color=5547a8)\
Specifies the maximum number of clients to retrieve per page. The default value is 1000.

  ## **-CustomerEmail**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the email address of the customer to filter the results. This parameter is optional.

  ## **-CustomerDomain**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the domain of the customer to filter the results. This parameter is optional.

  ## **-CustomerStatus**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-CUSTOMER_STATUS_UNSPECIFIED-Blue?color=5547a8)\
Specifies the status of the customer to filter the results. Valid values are "ACTIVE", "INACTIVE", and "CUSTOMER_STATUS_UNSPECIFIED". The default value is "CUSTOMER_STATUS_UNSPECIFIED".

  ## **-CustomerName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Specifies the name of the customer to filter the results. This parameter is optional.

 #### EXAMPLE 1
```powershell
PS > Get-AllClients -PageSize 500 -CustomerEmail "example@example.com" -CustomerStatus "ACTIVE"

This example retrieves a list of active clients with a page size of 500 and filters the results based on the customer email address.
```

