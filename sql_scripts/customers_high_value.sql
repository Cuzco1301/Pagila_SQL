--Show customers who have spent more than $100 in total.
select 
c.first_name ||' '||c.last_name as full_name, sum(amount) as total_spent
from 
customer as c
join 
payment as p using (customer_id)
group by c.customer_id, full_name
having sum(amount)>100
order by sum(amount)desc

