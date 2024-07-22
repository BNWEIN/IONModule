# Invoke-PreFlightCheck
## SYNOPSIS
Invokes a pre-flight check before connecting to the API.
## DESCRIPTION
This function performs a pre-flight check before connecting to the API. It checks if the RefreshToken information is available and if the token has expired. If the RefreshToken information is not found or the token has expired, it connects to the API.
# PARAMETERS

#### EXAMPLE 1
```powershell
PS > Invoke-PreFlightCheck

This example invokes a pre-flight check before connecting to the API.
```

