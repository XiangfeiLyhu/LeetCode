# Write your MySQL query statement below
(select name as results
from movierating join users using(user_id)
group by name
order by count(*) DESC, name 
limit 1)

union all

(select title as results
from movierating join movies using(movie_id)
where extract(year_month from created_at) = 202002
group by title
order by avg(rating) DESC, title
limit 1)