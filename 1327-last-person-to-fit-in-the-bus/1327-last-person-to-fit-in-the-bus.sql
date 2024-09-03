# Write your MySQL query statement below
select person_name 
from(
select person_name, turn
from(
select person_name, weight, sum(weight) over(order by turn) as sum_weight, turn
from queue
) t1
where sum_weight <= 1000
) t2
order by turn DESC
limit 1