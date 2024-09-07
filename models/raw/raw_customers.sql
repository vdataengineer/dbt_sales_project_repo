SELECT
CustomerID,
FirstName,
LastName,
Email,
Phone,
Address,
countrycode,
Updated_at
FROM --SALES_DB.RAW.CUSTOMERS
--{{ source('src_sales', 'cust') }}