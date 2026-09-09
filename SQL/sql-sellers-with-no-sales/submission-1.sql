select seller_name 
from seller s 
where seller_id not in (
    select seller_id 
    from orders 
    where Extract (Year from sale_date) = 2020
)
order by seller_name ASC

