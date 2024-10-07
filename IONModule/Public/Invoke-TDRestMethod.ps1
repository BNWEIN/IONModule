<#
.SYNOPSIS
    Invokes a REST method using the specified parameters.

.DESCRIPTION
    The Invoke-TDRestMethod function is used to send HTTP requests to a RESTful API endpoint. It supports various HTTP methods, such as GET, POST, PUT, and DELETE. The function assembles the request parameters, including the endpoint URL, query parameters, request body, and headers, and then sends the request using the Invoke-RestMethod cmdlet.

.PARAMETER Endpoint
    The URL of the RESTful API endpoint.

.PARAMETER Params
    A hashtable containing the query parameters to be included in the request URL. The keys represent the parameter names, and the values represent the parameter values.

.PARAMETER Method
    The HTTP method to be used for the request. The default value is 'GET'.

.PARAMETER Body
    A hashtable representing the request body. The hashtable will be converted to JSON format before sending the request.

.PARAMETER ContentType
    The content type of the request body. The default value is 'application/json'.

.EXAMPLE
    Invoke-TDRestMethod -Endpoint '"/api/v3/accounts/$script:AccountID/customers' -Method 'GET' -Params @{ pagesize = 1000 }

    This example sends a GET request to the '/api/v3/accounts/$script:AccountID/customers' endpoint with query parameters 'pagesize=1000'.

.OUTPUTS
    The function returns the response received from the RESTful API endpoint.

.NOTES
    This function requires the Invoke-PreFlightCheck function to be defined in the same script or module. The Invoke-PreFlightCheck function can be used to perform any necessary pre-flight checks before sending the request.

#>
function Invoke-TDRestMethod {
    param (
        [string]$Endpoint,
        [hashtable]$Params = @{},
        [string]$Method = 'GET',
        [hashtable]$Body = @{},
        [string]$ContentType = 'application/json'
    )

    try {
        Invoke-PreFlightCheck
    } catch {
        Write-Error "$($_.Exception.Message)"
        break
    }

    # Assemble parameters
    $ParamCollection = [System.Web.HttpUtility]::ParseQueryString([String]::Empty)

    $Params.GetEnumerator() | ForEach-Object {
        $ParamCollection.Add($_.Key, $_.Value)
    }
    $Request = $ParamCollection.ToString()

    $UriBuilder = [System.UriBuilder]('{0}{1}' -f $script:baseUrl, $Endpoint)
    $UriBuilder.Query = $Request

    $BodyJson = $Body | ConvertTo-Json -Depth 10

    $Request = @{
        Uri         = $UriBuilder.ToString()
        Method      = $Method
        Headers     = $script:AuthHeader
        ContentType = $ContentType
    }

    if ($Body.Count -gt 0) {
        $Request.Add('Body', $BodyJson)
    }
    
    Write-Verbose "$Method [ $($UriBuilder.ToString()) ]"
    
    $response = Invoke-RestMethod @Request
    return $response

}