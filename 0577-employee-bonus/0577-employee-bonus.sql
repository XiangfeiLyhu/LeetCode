# Write your MySQL query statement below
select name, bonus
from Employee a
left outer join Bonus b
on a.empId = b.empID
where bonus < 1000
or bonus is null
