-- Write your query below
select  customers.customer_id, customers.customer_name
from customers 
join orders on customers.customer_id = orders.customer_id
group by customers.customer_name, customers.customer_id
having 
Count(CASE when orders.product_name = 'A' Then 1 END) > 0 and 
Count(CASE when orders.product_name = 'B' Then 1 END) > 0 and 
Count(CASE when orders.product_name = 'C' Then 1 END) = 0
order by customer_name
  