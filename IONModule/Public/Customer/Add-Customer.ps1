<#
.SYNOPSIS
Adds a new customer to ION.

.DESCRIPTION
The Add-Customer function adds a new customer to ION by constructing a request body and sending a POST request to the specified endpoint. It requires parameters such as customer organization, address details, customer name, email, language code, and more.

.PARAMETER customerOrganization
The name of the customer organization.

.PARAMETER street
The street address of the customer.

.PARAMETER suite
(Optional) The suite or apartment number of the customer.

.PARAMETER city
The city of the customer.

.PARAMETER state
The state or province of the customer.

.PARAMETER zip
The ZIP or postal code of the customer.

.PARAMETER country
The country of the customer, formatted as an ISO 3166-1 alpha-2 code (e.g., "US" for United States or "GB" for the United Kindom).

.PARAMETER customerName
The full name of the customer.

.PARAMETER customerEmail
The email address of the customer.

.PARAMETER customerTitle
(Optional) The title of the customer (e.g., Mr., Mrs., Dr.).

.PARAMETER customerPhone
(Optional) The phone number of the customer.

.PARAMETER alternateEmail
(Optional) An alternate email address for the customer.

.PARAMETER customerDomain
(Optional) The domain associated with the customer.

.PARAMETER primaryContactFirstName
(Optional) The first name of the primary contact person.

.PARAMETER primaryContactLastName
(Optional) The last name of the primary contact person.

.PARAMETER languageCode
The language code for the customer, formatted as an ISO 639-1 code (e.g., "EN" for English).

.EXAMPLE
Add-Customer -customerOrganization "ABC Corp" -street "123 Main St" -city "New York" -state "NY" -zip "10001" -country "US" -customerName "John Doe" -customerEmail "johndoe@example.com" -languageCode "EN"
Adds a new customer with the specified details.
#>

function Add-Customer {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$customerOrganization,
        [Parameter(Mandatory = $true)]
        [string]$street,
        [Parameter(Mandatory = $false)]
        [string]$suite,
        [Parameter(Mandatory = $true)]
        [string]$city,
        [Parameter(Mandatory = $true)]
        [string]$state,
        [Parameter(Mandatory = $true)]
        [string]$zip,
        [Parameter(Mandatory = $true)]
        [string]$country,
        [Parameter(Mandatory = $true)]
        [string]$customerName,
        [Parameter(Mandatory = $true)]
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

    $Endpoint = "/api/v3/accounts/$script:AccountID/customers"

    $body = @{
        customerOrganization = $customerOrganization
        customerAddress = @{
            street = $street
            city = $city
            state = $state
            zip = $zip
            country = $country
        }
        customerName = $customerName
        customerEmail = $customerEmail
        languageCode = $languageCode
    }

    foreach ($key in $PSBoundParameters.Keys) {
        if ($key -notin @('customerOrganization', 'street', 'city', 'state', 'zip', 'country', 'customerName', 'customerEmail', 'languageCode')) {
            if ($key -eq 'suite') {
                $body.customerAddress.suite = $PSBoundParameters[$key]
            } else {
                $body[$key] = $PSBoundParameters[$key]
            }
        }
    }

    Invoke-TDRestMethod -Endpoint $Endpoint -Body $body -Method POST
}
