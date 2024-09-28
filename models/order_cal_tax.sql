select  OrderDate,CustomerID,StatusDesc,Revenue, 
 {{calculate_tax('Revenue')}} as amt_with_12tax , 
  {{calculate_tax('Revenue',30)}} as amt_with_30tax  
from 
{{ ref('orders_fact') }}