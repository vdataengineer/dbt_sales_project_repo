SELECT
CustomerID,
FirstName,
LastName,
Email,
Phone,
Address,
countrycode,
Updated_at
FROM {{ source('src_test', 'CUST') }}

 