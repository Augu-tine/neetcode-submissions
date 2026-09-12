
select c.customer_id,c.customer_name
from customers c
join orders o on c.customer_id = o.customer_id
where o.product_name in ('A','B') 
and Not Exists (
    select 1
    from orders o
    where product_name = 'C' and o.customer_id = c.customer_id
) 
group by c.customer_id
having count(Distinct o.product_name) = 2
order by customer_name

