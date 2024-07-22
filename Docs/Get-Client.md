# Get-Client
## SYNOPSIS
Retrieves client information based on the provided CustomerID.
## DESCRIPTION
The Get-Client function retrieves client information from an API endpoint based on the provided CustomerID. It requires the CustomerID parameter to be specified.
# PARAMETERS

## **-CustomerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
Specifies the ID of the customer for which to retrieve information.

 #### EXAMPLE 1
```powershell
PS > Get-Client -CustomerID "12345"
```

