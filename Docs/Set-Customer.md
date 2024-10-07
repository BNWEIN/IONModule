# Set-Customer
## SYNOPSIS
Updates the details of a customer.
## DESCRIPTION
The Set-Customer function is used to update the details of a customer in the system. It retrieves the existing customer details using the Get-Customer function and then updates the specified properties with the provided values.
# PARAMETERS

## **-CustomerID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the customer.

  ## **-customerOrganization**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The organization name of the customer.

  ## **-street**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The street address of the customer.

  ## **-suite**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The suite or apartment number of the customer.

  ## **-city**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The city of the customer.

  ## **-state**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The state or province of the customer.

  ## **-zip**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The postal or zip code of the customer.

  ## **-country**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The country of the customer, formatted as an ISO 3166-1 alpha-2 code (e.g., "US" for United States or "GB" for the United Kindom).

  ## **-customerName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The name of the customer.

  ## **-customerEmail**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The email address of the customer.

  ## **-customerTitle**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The title or position of the customer.

  ## **-customerPhone**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The phone number of the customer.

  ## **-alternateEmail**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
An alternate email address for the customer.

  ## **-customerDomain**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The domain associated with the customer.

  ## **-primaryContactFirstName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The first name of the primary contact person for the customer.

  ## **-primaryContactLastName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The last name of the primary contact person for the customer.

  ## **-languageCode**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The language code for the customer, formatted as an ISO 639-1 code (e.g., "EN" for English)

 #### EXAMPLE 1
```powershell
PS > Set-Customer -CustomerID "12345" -customerName "John Doe" -customerEmail "john.doe@example.com" -languageCode "en-US"
```

