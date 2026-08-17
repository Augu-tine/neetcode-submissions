SELECT sales_person.name
FROM sales_person
LEFT JOIN orders
    ON sales_person.sales_id = orders.sales_id
LEFT JOIN company
    ON orders.com_id = company.com_id
GROUP BY sales_person.sales_id, sales_person.name
HAVING COUNT(CASE WHEN company.name = 'CRIMSON' THEN 1 END) = 0;