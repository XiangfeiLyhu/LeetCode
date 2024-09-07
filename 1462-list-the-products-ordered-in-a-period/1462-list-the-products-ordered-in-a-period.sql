# Write your MySQL query statement below
select product_name,  sum(unit) as unit
from products a
left join orders b
on a.product_id = b.product_id
where order_date like '%2020-02%'
group by product_name
having sum(unit) >= 100