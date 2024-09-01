# Write your MySQL query statement below
select if(unique_id is null, null, unique_id) as unique_id, name
from Employees a
left join EmployeeUNI b
on a.id = b.id
