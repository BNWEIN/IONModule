# Get-CustomerCloudProfiles
## SYNOPSIS
Retrieves the cloud profiles for a specific customer.
## DESCRIPTION
The Get-CustomerCloudProfiles function retrieves the cloud profiles associated with a specific customer. It makes use of the Invoke-TDRestMethod function to send a request to the appropriate API endpoint.
# PARAMETERS

## **-CustomerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer for which to retrieve the cloud profiles.

  ## **-ProviderID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The ID of the provider for which to filter the cloud profiles.

 #### EXAMPLE 1
```powershell
PS > Get-CustomerCloudProfiles -CustomerID "12345"

This example retrieves all cloud profiles for the customer with ID "12345".
```
 #### EXAMPLE 2
```powershell
PS > Get-CustomerCloudProfiles -CustomerID "12345" -ProviderID "67890"

This example retrieves the cloud profiles for the customer with ID "12345" that are associated with the provider with ID "67890".
```

