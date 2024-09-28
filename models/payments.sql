select 
 order_id
,product
,payment_method
,amount
,{{convert_rupees_to_dollar('amount')}} Amt_in_dollars
 from 
{{ ref('raw_payments') }}