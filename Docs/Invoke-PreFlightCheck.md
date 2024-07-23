# Invoke-PreFlightCheck
## SYNOPSIS
Performs pre-flight checks before executing the main logic of the script.
## DESCRIPTION
The Invoke-PreFlightCheck function is responsible for performing pre-flight checks before executing the main logic of the script. It checks if the required information, such as the refresh token and KeyVault name, is available. If any of the required information is missing, an exception is thrown. It also checks if the token has expired or not found, and connects to the API if necessary.
# PARAMETERS

#### EXAMPLE 1
```powershell
PS > Invoke-PreFlightCheck

This example Performs pre-flight checks before executing the main logic of the script.
```

