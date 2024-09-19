SELECT
CustomerID,
FirstName,
LastName
FROM {{ ref('raw_customers') }}
