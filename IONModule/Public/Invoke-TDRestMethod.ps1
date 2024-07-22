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