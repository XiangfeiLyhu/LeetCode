# Write your MySQL query statement below
select users.user_id, concat(upper(substr(Users.name,1,1)), lower(substr(users.name,2))) as name
from users
order by
users.user_id 