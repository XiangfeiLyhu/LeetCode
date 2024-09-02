# Write your MySQL query statement below
select max(num) as num
from(
select ifnull(num,null) as num
from MyNumbers 
group by num
having count(num) = 1) t1
