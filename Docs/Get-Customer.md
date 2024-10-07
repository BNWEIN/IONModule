# Get-Customer
## SYNOPSIS
Retrieves customer information based on the provided CustomerID.
## DESCRIPTION
The Get-Customer function retrieves customer information from an API endpoint based on the provided CustomerID. It requires the CustomerID parameter to be specified.
# PARAMETERS

## **-CustomerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
Specifies the ID of the customer for which to retrieve information.

 #### EXAMPLE 1
```powershell
PS > Get-Customer -CustomerID "12345"

This example retrieves customer information for the customer with ID "12345".
```

