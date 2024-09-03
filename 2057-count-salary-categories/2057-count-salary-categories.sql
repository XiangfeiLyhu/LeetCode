# Write your MySQL query statement below
#select category, count(category) as accounts_count
#from(
#select 
#case when income < 20000 then 'Low Salary'
#when income >= 20000 and income <= 50000 then 'Average Salary'
#when income > 50000 then 'High Salary' end as category
#from accounts 
#) t1
#group by category

select 'High Salary' as category,
sum(income > 50000) as accounts_count
from accounts
union
select 'Low Salary' as category,
sum(income < 20000) as accounts_count
from accounts 
union
select 'Average Salary' as category,
sum(income between 20000 and 50000) as accounts_count
from accounts
