SELECT
CustomerID,
FirstName,
LastName,
Email,
Phone,
Address,
countrycode,
Updated_at,
CONCAT(FirstName,LastName) AS CustomerName
 from {{ ref('raw_customers') }}

  