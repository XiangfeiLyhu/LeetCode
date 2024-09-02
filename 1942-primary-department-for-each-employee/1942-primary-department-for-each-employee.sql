# Write your MySQL query statement below

select employee_id, department_id
from Employee
where primary_flag = 'Y'
union all
select employee_id,department_id
from employee
group by employee_id
having count(department_id) = 1