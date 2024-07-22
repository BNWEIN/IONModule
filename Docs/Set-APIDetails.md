# Set-APIDetails
## SYNOPSIS
Sets the API details for the module.
## DESCRIPTION
The Set-APIDetails function is used to set the API details required for the script to interact with the API.
# PARAMETERS

## **-refreshToken**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The refresh token required for authentication.

  ## **-AccountID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The account ID associated with the API.

 #### EXAMPLE 1
```powershell
PS > Set-APIDetails -refreshToken "your_refresh_token" -AccountID "your_account_id"

This example sets the API details using the provided refresh token and account ID.
```

