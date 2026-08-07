-- Write your query below
Select employee_id,
CASE 
    When employee_id % 2 = 1 And name not like 'M%' Then salary
    ELSE 0 
End AS Bonus
from employees
order by employee_id ASC