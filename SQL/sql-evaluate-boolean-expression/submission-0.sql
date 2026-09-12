
select left_operand, operator,right_operand,(CASE 
        WHEN e.operator = '>'  AND v.value >  v2.value THEN 'true'
        WHEN e.operator = '='  AND v.value =  v2.value THEN 'true'
        WHEN e.operator = '<'  AND v.value <  v2.value THEN 'true'
        ELSE 'false'
    END ) as value 
from expressions e
join variables v on e.left_operand = v.name
join variables v2 on e.right_operand = v2.name

