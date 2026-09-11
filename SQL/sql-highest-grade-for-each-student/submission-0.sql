with max_tab as (
select student_id, exam_id, max(score) over(partition by student_id order by score DESC,exam_id ) as score
,row_number() over(partition by student_id) as row_num
from exam_results)


select student_id,exam_id,score
from max_tab 
where row_num = 1 

 



