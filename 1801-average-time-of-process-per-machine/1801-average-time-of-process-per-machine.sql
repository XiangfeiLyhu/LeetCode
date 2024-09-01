# Write your MySQL query statement below
# 寻找 每个机器的平均耗时

select machine_id, 
round(sum(case when activity_type = 'start' then -timestamp
when activity_type = 'end' then timestamp end) / count(distinct process_id),3) as processing_time
from Activity 
group by machine_id
