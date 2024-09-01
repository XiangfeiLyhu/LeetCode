# Write your MySQL query statement below

select contest_id, round(contest_cnt/user_cnt*100, 2) as percentage from
(select contest_id, count(user_id)  as contest_cnt
from Register
group by contest_id) t1
join
(select count(distinct user_id) as user_cnt 
from Users ) t2
order by percentage DESC, contest_id 
