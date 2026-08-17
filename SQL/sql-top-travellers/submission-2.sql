Select name, sum(case when rides.distance is null then 0 else rides.distance end) as travelled_distance
from users left join rides on users.id = rides.user_id
group by users.id
order by travelled_distance DESC, users.name ASC