# Add-Customer
## SYNOPSIS
Adds a new customer to ION.
## DESCRIPTION
The Add-Customer function adds a new customer to ION by constructing a request body and sending a POST request to the specified endpoint. It requires parameters such as customer organization, address details, customer name, email, language code, and more.
# PARAMETERS

## **-customerOrganization**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The name of the customer organization.

  ## **-street**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The street address of the customer.

  ## **-suite**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The suite or apartment number of the customer.

  ## **-city**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The city of the customer.

  ## **-state**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The state or province of the customer.

  ## **-zip**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ZIP or postal code of the customer.

  ## **-country**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The country of the customer, formatted as an ISO 3166-1 alpha-2 code (e.g., "US" for United States or "GB" for the United Kindom).

  ## **-customerName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The full name of the customer.

  ## **-customerEmail**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The email address of the customer.

  ## **-customerTitle**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The title of the customer (e.g., Mr., Mrs., Dr.).

  ## **-customerPhone**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The phone number of the customer.

  ## **-alternateEmail**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) An alternate email address for the customer.

  ## **-customerDomain**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The domain associated with the customer.

  ## **-primaryContactFirstName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The first name of the primary contact person.

  ## **-primaryContactLastName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
(Optional) The last name of the primary contact person.

  ## **-languageCode**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The language code for the customer, formatted as an ISO 639-1 code (e.g., "EN" for English).

 #### EXAMPLE 1
```powershell
PS > Add-Customer -customerOrganization "ABC Corp" -street "123 Main St" -city "New York" -state "NY" -zip "10001" -country "US" -customerName "John Doe" -customerEmail "johndoe@example.com" -languageCode "EN"

This example adds a new customer with the specified details.
```

