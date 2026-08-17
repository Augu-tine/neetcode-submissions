Select seller.seller_name
from seller left join orders on seller.seller_id = orders.seller_id
and Extract (Year from sale_date) = 2020
where orders.seller_id is Null
order by seller.seller_name ASC