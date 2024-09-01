# Write your MySQL query statement below

select a.user_id , 
round(if(action is null, 0, sum(case when action = 'timeout' then 0
when action = 'confirmed' then 1 end) / count(action)),2) as confirmation_rate
from Signups a
left join Confirmations b
on a.user_id = b.user_id
group by a.user_id


