# Write your MySQL query statement below
#select
#from Logs join
#(select row_number() over(partition by num ) as id1
#from logs ) t1
#where logs.id = t1.id1
#group by num
SELECT distinct Num as ConsecutiveNums
FROM Logs
WHERE (Id + 1, Num) in (select * from Logs) and (Id + 2, Num) in (select * from Logs)