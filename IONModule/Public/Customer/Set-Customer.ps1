<#
.SYNOPSIS
Updates the details of a customer.

.DESCRIPTION
The Set-Customer function is used to update the details of a customer in the system. It retrieves the existing customer details using the Get-Customer function and then updates the specified properties with the provided values.

.PARAMETER CustomerID
The unique identifier of the customer.

.PARAMETER customerOrganization
The organization name of the customer.

.PARAMETER street
The street address of the customer.

.PARAMETER suite
The suite or apartment number of the customer.

.PARAMETER city
The city of the customer.

.PARAMETER state
The state or province of the customer.

.PARAMETER zip
The postal or zip code of the customer.

.PARAMETER country
The country of the customer, formatted as an ISO 3166-1 alpha-2 code (e.g., "US" for United States or "GB" for the United Kindom).

.PARAMETER customerName
The name of the customer.

.PARAMETER customerEmail
The email address of the customer.

.PARAMETER customerTitle
The title or position of the customer.

.PARAMETER customerPhone
The phone number of the customer.

.PARAMETER alternateEmail
An alternate email address for the customer.

.PARAMETER customerDomain
The domain associated with the customer.

.PARAMETER primaryContactFirstName
The first name of the primary contact person for the customer.

.PARAMETER primaryContactLastName
The last name of the primary contact person for the customer.

.PARAMETER languageCode
The language code for the customer, formatted as an ISO 639-1 code (e.g., "EN" for English)

.EXAMPLE
Set-Customer -CustomerID "12345" -customerName "John Doe" -customerEmail "john.doe@example.com" -languageCode "en-US"
Updates the name and email address of the customer with ID "12345" to "John Doe" and "john.doe@example.com" respectively, and sets the language code to "en-US".

.NOTES
This function requires the Get-Customer and Invoke-TDRestMethod functions to be available in the current session.
#>

function Set-Customer {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerID,
        [Parameter(Mandatory = $false)]
        [string]$customerOrganization,
        [Parameter(Mandatory = $false)]
        [string]$street,
        [Parameter(Mandatory = $false)]
        [string]$suite,
        [Parameter(Mandatory = $false)]
        [string]$city,
        [Parameter(Mandatory = $false)]
        [string]$state,
        [Parameter(Mandatory = $false)]
        [string]$zip,
        [Parameter(Mandatory = $false)]
        [string]$country,
        [Parameter(Mandatory = $false)]
        [string]$customerName,
        [Parameter(Mandatory = $false)]
        [string]$customerEmail,
        [Parameter(Mandatory = $false)]
        [string]$customerTitle,
        [Parameter(Mandatory = $false)]
        [string]$customerPhone,
        [Parameter(Mandatory = $false)]
        [string]$alternateEmail,
        [Parameter(Mandatory = $false)]
        [string]$customerDomain,
        [Parameter(Mandatory = $false)]
        [string]$primaryContactFirstName,
        [Parameter(Mandatory = $false)]
        [string]$primaryContactLastName,
        [Parameter(Mandatory = $true)]
        [string]$languageCode
    )

    $ExistingDetails = Get-Customer -CustomerID $CustomerID

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers/$CustomerID"

    $body = @{
        customerOrganization = $customerOrganization ? $customerOrganization : $ExistingDetails.customerOrganization
        customerAddress = @{
            street = $street ? $street : $ExistingDetails.customerAddress.street
            city = $city ? $city : $ExistingDetails.customerAddress.city
            state = $state ? $state : $ExistingDetails.customerAddress.state
            zip = $zip ? $zip : $ExistingDetails.customerAddress.zip
            country = $country ? $country : $ExistingDetails.customerAddress.country
        }
        customerName = $customerName ? $customerName : $ExistingDetails.customerName
        customerEmail = $customerEmail ? $customerEmail : $ExistingDetails.customerEmail
        languageCode = $languageCode ? $languageCode : $ExistingDetails.languageCode
    }

    foreach ($key in $PSBoundParameters.Keys) {
        if ($key -notin @('customerOrganization', 'street', 'city', 'state', 'zip', 'country', 'customerName', 'customerEmail', 'languageCode', 'Verbose')) {
            if ($key -eq 'suite') {
                $body.customerAddress.suite = $PSBoundParameters[$key] ? $PSBoundParameters[$key] : $ExistingDetails.customerAddress.suite
            } else {
                $body[$key] = $PSBoundParameters[$key] ? $PSBoundParameters[$key] : $ExistingDetails.$key
            }
        }
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -Body $body -Method PUT
}
