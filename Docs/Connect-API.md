# Connect-API
## SYNOPSIS
Connects to the API using a refresh token.
## DESCRIPTION
The Connect-API function is used to establish a connection to the API by providing a refresh token. It retrieves an access token from the API server and sets the necessary variables for authentication.
# PARAMETERS

## **-RefreshToken**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-$Script:RefreshToken-Blue?color=5547a8)\
The refresh token to be used for obtaining the access token. If not provided, the function will use the value stored in the $Script:RefreshToken variable.

 #### EXAMPLE 1
```powershell
PS > Connect-API -RefreshToken "xxxxxxxxxxxx"

This example connects to the API using the specified refresh token.
```

