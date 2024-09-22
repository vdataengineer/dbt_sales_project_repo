SELECT
OrderID,
OrderDate,
CustomerID,
EmployeeID,
StoreID,
Status ,
Updated_at
FROM {{ source('src_test', 'ORDERS') }}

 