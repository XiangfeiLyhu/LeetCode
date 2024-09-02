# Write your MySQL query statement below
select date_format(trans_date,'%Y-%m') as month, country,
count(id) as trans_count, sum(if (state = 'approved',1,0)) as approved_count,
sum(amount) as trans_total_amount, sum(case when state = 'approved' then amount when state = 'declined' then 0 end) as approved_total_amount
from Transactions
group by month, country