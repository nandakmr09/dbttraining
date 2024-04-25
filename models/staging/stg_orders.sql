select 
-- from raw orders
0.orderid,o.orderdate,o.shipdate,o.shipmode,
o.ordersellingprice - o.ordercustprice as orderprofit,
o.ordercustprice,
o.ordersellingprice,
-- from raw customer 
c.customername,c.segment,c.country,
-- from raw_product
p.category,p.productname,p.subcategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.customerid=c.customerid
left join {{ ref('raw_product') }} as p
on o.productid=p.productid