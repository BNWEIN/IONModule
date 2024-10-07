# Get-SubscriptionDetails
## SYNOPSIS
Retrieves the details of a specific subscription for a given customer.
## DESCRIPTION
The Get-SubscriptionDetails function calls the TDRestMethod to retrieve details of a subscription 
for a specified customer using the provided CustomerID and subscription ID.
# PARAMETERS

## **-CustomerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the customer whose subscription details are to be retrieved. This parameter is mandatory.

  ## **-ID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the subscription whose details are to be retrieved. This parameter is mandatory.

 #### EXAMPLE 1
```powershell
PS>Get-SubscriptionDetails -CustomerID "12345" -ID "67890"
```

