# Invoke-TDRestMethod
## SYNOPSIS
Invokes a REST method using the specified parameters.
## DESCRIPTION
The Invoke-TDRestMethod function is used to send HTTP requests to a RESTful API endpoint. It supports various HTTP methods, such as GET, POST, PUT, and DELETE. The function assembles the request parameters, including the endpoint URL, query parameters, request body, and headers, and then sends the request using the Invoke-RestMethod cmdlet.
# PARAMETERS

## **-Endpoint**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The URL of the RESTful API endpoint.

  ## **-Params**
> ![Foo](https://img.shields.io/badge/Type-Hashtable-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-@{}-Blue?color=5547a8)\
A hashtable containing the query parameters to be included in the request URL. The keys represent the parameter names, and the values represent the parameter values.

  ## **-Method**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-GET-Blue?color=5547a8)\
The HTTP method to be used for the request. The default value is 'GET'.

  ## **-Body**
> ![Foo](https://img.shields.io/badge/Type-Hashtable-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-@{}-Blue?color=5547a8)\
A hashtable representing the request body. The hashtable will be converted to JSON format before sending the request.

  ## **-ContentType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-application/json-Blue?color=5547a8)\
The content type of the request body. The default value is 'application/json'.

 #### EXAMPLE 1
```powershell
PS > Invoke-TDRestMethod -Endpoint '"/api/v3/accounts/$script:AccountID/customers' -Method 'GET' -Params @{ pagesize = 1000 }

This example sends a GET request to the '/api/v3/accounts/$script:AccountID/customers' endpoint with query parameters 'pagesize=1000'.
```

