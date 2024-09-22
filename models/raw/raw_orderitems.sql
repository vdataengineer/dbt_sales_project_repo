SELECT
OrderItemID, 
OrderID,
ProductID, 
Quantity,
UnitPrice,
Updated_at
FROM {{ source('src_test', 'ORDERITEMS') }}

 