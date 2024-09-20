{{
    config(
        materialized='table'
    )
}}
SELECT
CustomerID,
FirstName,
LastName,
Email,
Phone,
Address,
--a.countrycode,
b.country_name,
Updated_at
from {{ ref('raw_customers') }} a
 inner join 
{{ ref('countrycode') }} b
on a.countrycode=b.country_code