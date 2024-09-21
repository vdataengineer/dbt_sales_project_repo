select  
    PRODUCTID as prod_id 
	,NAME  as Prod_name
	,CATEGORY as prod_category 
	,RETAILPRICE as price
	,RETAILPRICE * 10  as AMT
	,UPDATED_AT  

from SALES_DB.RAW.PRODUCTS